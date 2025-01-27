package simdjson

import (
	"bufio"
	"errors"
	"fmt"
	"io"

	"github.com/klauspost/cpuid"
)

// SupportedCPU will return whether the CPU is supported.
func SupportedCPU() bool {
	const want = cpuid.AVX2 | cpuid.CLMUL
	return cpuid.CPU.Features&want == want
}

// Parse a block of data and return the parsed JSON.
// An optional block of previously parsed json can be supplied to reduce allocations.
func Parse(b []byte, reuse *ParsedJson) (*ParsedJson, error) {
	if !SupportedCPU() {
		return nil, errors.New("Host CPU does not meet target specs")
	}
	var pj *internalParsedJson
	if reuse != nil && reuse.internal != nil {
		pj = reuse.internal
		pj.ParsedJson = *reuse
		pj.ParsedJson.internal = nil
		reuse = &ParsedJson{}
	}
	if pj == nil {
		pj = &internalParsedJson{}
	}
	pj.initialize(len(b) * 3 / 2)
	err := pj.parseMessage(b)
	if err != nil {
		return nil, err
	}
	parsed := &pj.ParsedJson
	pj.ParsedJson = ParsedJson{}
	parsed.internal = pj
	return parsed, nil
}

// ParseND will parse newline delimited JSON.
// An optional block of previously parsed json can be supplied to reduce allocations.
func ParseND(b []byte, reuse *ParsedJson) (*ParsedJson, error) {
	if !SupportedCPU() {
		return nil, errors.New("Host CPU does not meet target specs")
	}
	var pj internalParsedJson
	if reuse != nil {
		pj.ParsedJson = *reuse
	}
	pj.initialize(len(b) * 3 / 2)

	// FIXME(fwessels): We should not modify input.
	err := pj.parseMessageNdjson(b)
	if err != nil {
		return nil, err
	}
	return &pj.ParsedJson, nil
}

// A Stream is used to stream back results.
// Either Error or Value will be set on returned results.
type Stream struct {
	Value *ParsedJson
	Error error
}

// ParseNDStream will parse a stream and return parsed JSON to the supplied result channel.
// The method will return immediately.
// Each element is contained within a root tag.
//   <root>Element 1</root><root>Element 2</root>...
// Each result will contain an unspecified number of full elements,
// so it can be assumed that each result starts and ends with a root tag.
// The parser will keep parsing until writes to the result stream blocks.
// A stream is finished when a non-nil Error is returned.
// If the stream was parsed until the end the Error value will be io.EOF
// The channel will be closed after an error has been returned.
// An optional channel for returning consumed results can be provided.
// There is no guarantee that elements will be consumed, so always use
// non-blocking writes to the reuse channel.
func ParseNDStream(r io.Reader, res chan<- Stream, reuse <-chan *ParsedJson) {
	if !SupportedCPU() {
		go func() {
			res <- Stream{
				Value: nil,
				Error: fmt.Errorf("Host CPU does not meet target specs"),
			}
			close(res)
		}()
		return
	}
	const tmpSize = 10 << 20
	buf := bufio.NewReaderSize(r, tmpSize)
	tmp := make([]byte, tmpSize+1024)
	go func() {
		defer close(res)
		var pj internalParsedJson
		for {
			tmp = tmp[:tmpSize]
			n, err := buf.Read(tmp)
			if err != nil && err != io.EOF {
				res <- Stream{
					Value: nil,
					Error: fmt.Errorf("reading input: %w", err),
				}
				return
			}
			tmp = tmp[:n]
			// Read until Newline
			if err != io.EOF {
				b, err := buf.ReadBytes('\n')
				if err != nil && err != io.EOF {
					res <- Stream{
						Value: nil,
						Error: fmt.Errorf("reading input: %w", err),
					}
					return
				}
				tmp = append(tmp, b...)
			}
			// TODO: Do the parsing in several goroutines, but keep output in order.
			if len(tmp) > 0 {
				// We cannot reuse the result since we share it
				pj.ParsedJson = ParsedJson{}
				pj.initialize(len(tmp) * 3 / 2)
				parseErr := pj.parseMessageNdjson(tmp)
				if parseErr != nil {
					res <- Stream{
						Value: nil,
						Error: fmt.Errorf("parsing input: %w", parseErr),
					}
					return
				}
				parsed := pj.ParsedJson
				res <- Stream{
					Value: &parsed,
					Error: nil,
				}
			}
			if err != nil {
				// Should only really be io.EOF
				res <- Stream{
					Value: nil,
					Error: err,
				}
				return
			}
		}
	}()
}
