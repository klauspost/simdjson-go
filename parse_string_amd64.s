//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x5c5c5c5c5c5c5c5c
DATA LCDATA1<>+0x008(SB)/8, $0x5c5c5c5c5c5c5c5c
DATA LCDATA1<>+0x010(SB)/8, $0x5c5c5c5c5c5c5c5c
DATA LCDATA1<>+0x018(SB)/8, $0x5c5c5c5c5c5c5c5c
DATA LCDATA1<>+0x020(SB)/8, $0x2222222222222222
DATA LCDATA1<>+0x028(SB)/8, $0x2222222222222222
DATA LCDATA1<>+0x030(SB)/8, $0x2222222222222222
DATA LCDATA1<>+0x038(SB)/8, $0x2222222222222222
DATA LCDATA1<>+0x070(SB)/8, $0x0706050403020100
DATA LCDATA1<>+0x078(SB)/8, $0xffffffffffff0908
DATA LCDATA1<>+0x080(SB)/8, $0xff0f0e0d0c0b0aff
DATA LCDATA1<>+0x088(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x090(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x098(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0a0(SB)/8, $0xff0f0e0d0c0b0aff
DATA LCDATA1<>+0x0a8(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0b0(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0b8(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0c0(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0c8(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0d0(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0d8(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0e0(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0e8(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0f0(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x0f8(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x100(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x108(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x110(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x118(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x120(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x128(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x130(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x138(SB)/8, $0xffffffffffffffff
DATA LCDATA1<>+0x140(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x148(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x150(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x158(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x160(SB)/8, $0x0000000000220000
DATA LCDATA1<>+0x168(SB)/8, $0x2f00000000000000
DATA LCDATA1<>+0x170(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x178(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x180(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x188(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x190(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x198(SB)/8, $0x0000005c00000000
DATA LCDATA1<>+0x1a0(SB)/8, $0x000c000000080000
DATA LCDATA1<>+0x1a8(SB)/8, $0x000a000000000000
DATA LCDATA1<>+0x1b0(SB)/8, $0x00000009000d0000
DATA LCDATA1<>+0x1b8(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1c0(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1c8(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1d0(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1d8(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1e0(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1e8(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1f0(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x1f8(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x200(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x208(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x210(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x218(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x220(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x228(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x230(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x238(SB)/8, $0x0000000000000000
GLOBL LCDATA1<>(SB), 8, $576

TEXT ·_parse_string(SB), $0-24

    MOVQ src+0(FP), DI
    MOVQ dst+8(FP), SI
    MOVQ pcurrent_string_buf_loc+16(FP), DX
    LEAQ LCDATA1<>(SB), BP

    LONG $0x076ffec5             // vmovdqu    ymm0, yword [rdi]
    LONG $0x067ffec5             // vmovdqu    yword [rsi], ymm0
    LONG $0x4d74fdc5; BYTE $0x00 // vpcmpeqb    ymm1, ymm0, yword 0[rbp] /* [rip + LCPI0_0] */
    LONG $0xc1d7fdc5             // vpmovmskb    eax, ymm1
    LONG $0x4574fdc5; BYTE $0x20 // vpcmpeqb    ymm0, ymm0, yword 32[rbp] /* [rip + LCPI0_1] */
    LONG $0xd8d7fdc5             // vpmovmskb    ebx, ymm0
    WORD $0x488d; BYTE $0xff     // lea    ecx, [rax - 1]
    WORD $0xd985                 // test    ecx, ebx
	JE LBB0_2
    WORD $0x8949; BYTE $0xf4     // mov    r12, rsi
	JMP LBB0_23
LBB0_2:
    LONG $0x456ffdc5; BYTE $0x00 // vmovdqa    ymm0, yword 0[rbp] /* [rip + LCPI0_0] */
    LONG $0x4d6ffdc5; BYTE $0x20 // vmovdqa    ymm1, yword 32[rbp] /* [rip + LCPI0_1] */
    LONG $0x407d8d4c             // lea    r15, 64[rbp] /* [rip + __ZL10digittoval] */
    LONG $0x0001b841; WORD $0x0000 // mov    r8d, 1
    LONG $0x40b58d4c; WORD $0x0001; BYTE $0x00 // lea    r14, 320[rbp] /* [rip + __ZL10escape_map] */
    WORD $0x8949; BYTE $0xf4     // mov    r12, rsi
	JMP LBB0_9
LBB0_3:
    LONG $0xfffb8141; WORD $0x0007; BYTE $0x00 // cmp    r11d, 2047
	JA LBB0_5
    WORD $0x8944; BYTE $0xd8     // mov    eax, r11d
    WORD $0xe8c1; BYTE $0x06     // shr    eax, 6
    LONG $0x0000c005; BYTE $0x00 // add    eax, 192
    LONG $0x24048841             // mov    byte [r12], al
    LONG $0x3fe38041             // and    r11b, 63
    LONG $0x80cb8041             // or    r11b, -128
    LONG $0x245c8845; BYTE $0x01 // mov    byte [r12 + 1], r11b
    LONG $0x000002b8; BYTE $0x00 // mov    eax, 2
	JMP LBB0_21
LBB0_5:
    LONG $0xfffb8141; WORD $0x00ff; BYTE $0x00 // cmp    r11d, 65535
	JA LBB0_7
    WORD $0x8944; BYTE $0xd8     // mov    eax, r11d
    WORD $0xe8c1; BYTE $0x0c     // shr    eax, 12
    LONG $0x0000e005; BYTE $0x00 // add    eax, 224
    LONG $0x24048841             // mov    byte [r12], al
    WORD $0x8944; BYTE $0xd8     // mov    eax, r11d
    WORD $0xe8c1; BYTE $0x06     // shr    eax, 6
    WORD $0x3f24                 // and    al, 63
    WORD $0x800c                 // or    al, -128
    LONG $0x24448841; BYTE $0x01 // mov    byte [r12 + 1], al
    LONG $0x3fe38041             // and    r11b, 63
    LONG $0x80cb8041             // or    r11b, -128
    LONG $0x245c8845; BYTE $0x02 // mov    byte [r12 + 2], r11b
    LONG $0x000003b8; BYTE $0x00 // mov    eax, 3
	JMP LBB0_21
LBB0_7:
    LONG $0xfffb8141; WORD $0x10ff; BYTE $0x00 // cmp    r11d, 1114111
	JA LBB0_26
    WORD $0x8944; BYTE $0xd8     // mov    eax, r11d
    WORD $0xe8c1; BYTE $0x12     // shr    eax, 18
    LONG $0x0000f005; BYTE $0x00 // add    eax, 240
    LONG $0x24048841             // mov    byte [r12], al
    WORD $0x8944; BYTE $0xd8     // mov    eax, r11d
    WORD $0xe8c1; BYTE $0x0c     // shr    eax, 12
    WORD $0x3f24                 // and    al, 63
    WORD $0x800c                 // or    al, -128
    LONG $0x24448841; BYTE $0x01 // mov    byte [r12 + 1], al
    WORD $0x8944; BYTE $0xd8     // mov    eax, r11d
    WORD $0xe8c1; BYTE $0x06     // shr    eax, 6
    WORD $0x3f24                 // and    al, 63
    WORD $0x800c                 // or    al, -128
    LONG $0x24448841; BYTE $0x02 // mov    byte [r12 + 2], al
    LONG $0x3fe38041             // and    r11b, 63
    LONG $0x80cb8041             // or    r11b, -128
    LONG $0x245c8845; BYTE $0x03 // mov    byte [r12 + 3], r11b
    LONG $0x000004b8; BYTE $0x00 // mov    eax, 4
	JMP LBB0_21
LBB0_9:
    WORD $0xcbff                 // dec    ebx
    WORD $0xc385                 // test    ebx, eax
	JE LBB0_18
    WORD $0xc089                 // mov    eax, eax
    LONG $0xbc0f48f3; BYTE $0xc0 // tzcnt    rax, rax
    LONG $0x074cb60f; BYTE $0x01 // movzx    ecx, byte [rdi + rax + 1]
    LONG $0x75f98348             // cmp    rcx, 117
	JNE LBB0_19
    LONG $0x074cb60f; BYTE $0x02 // movzx    ecx, byte [rdi + rax + 2]
    LONG $0x2cbe0f46; BYTE $0x39 // movsx    r13d, byte [rcx + r15]
    LONG $0x075cb60f; BYTE $0x03 // movzx    ebx, byte [rdi + rax + 3]
    LONG $0x1cbe0f42; BYTE $0x3b // movsx    ebx, byte [rbx + r15]
    LONG $0x074cb60f; BYTE $0x04 // movzx    ecx, byte [rdi + rax + 4]
    LONG $0x1cbe0f46; BYTE $0x39 // movsx    r11d, byte [rcx + r15]
    LONG $0x074cb60f; BYTE $0x05 // movzx    ecx, byte [rdi + rax + 5]
    LONG $0x0cbe0f42; BYTE $0x39 // movsx    ecx, byte [rcx + r15]
    LONG $0x0ce5c141             // shl    r13d, 12
    WORD $0xe3c1; BYTE $0x08     // shl    ebx, 8
    WORD $0x0944; BYTE $0xeb     // or    ebx, r13d
    LONG $0x04e3c141             // shl    r11d, 4
    WORD $0x0941; BYTE $0xcb     // or    r11d, ecx
    WORD $0x0941; BYTE $0xdb     // or    r11d, ebx
    LONG $0x076c8d4c; BYTE $0x06 // lea    r13, [rdi + rax + 6]
    WORD $0x8944; BYTE $0xd9     // mov    ecx, r11d
    LONG $0xfc00e181; WORD $0xffff // and    ecx, -1024
    LONG $0xd800f981; WORD $0x0000 // cmp    ecx, 55296
	JNE LBB0_16
    LONG $0x007d8041; BYTE $0x5c // cmp    byte [r13], 92
	JNE LBB0_26
    WORD $0x0148; BYTE $0xc7     // add    rdi, rax
    LONG $0x75077f80             // cmp    byte [rdi + 7], 117
	JNE LBB0_26
    LONG $0x084fb60f             // movzx    ecx, byte [rdi + 8]
    LONG $0x2cbe0f46; BYTE $0x39 // movsx    r13d, byte [rcx + r15]
    LONG $0x094fb60f             // movzx    ecx, byte [rdi + 9]
    LONG $0x1cbe0f42; BYTE $0x39 // movsx    ebx, byte [rcx + r15]
    LONG $0x0a4fb60f             // movzx    ecx, byte [rdi + 10]
    LONG $0x0cbe0f46; BYTE $0x39 // movsx    r9d, byte [rcx + r15]
    LONG $0x57b60f44; BYTE $0x0b // movzx    r10d, byte [rdi + 11]
    LONG $0x14be0f47; BYTE $0x3a // movsx    r10d, byte [r10 + r15]
    LONG $0x0ce5c141             // shl    r13d, 12
    WORD $0xe3c1; BYTE $0x08     // shl    ebx, 8
    WORD $0x0944; BYTE $0xeb     // or    ebx, r13d
    LONG $0x04e1c141             // shl    r9d, 4
    WORD $0x0945; BYTE $0xd1     // or    r9d, r10d
    WORD $0x0941; BYTE $0xd9     // or    r9d, ebx
    WORD $0x8944; BYTE $0xc9     // mov    ecx, r9d
    WORD $0x0944; BYTE $0xd9     // or    ecx, r11d
    LONG $0xfffff981; WORD $0x0000 // cmp    ecx, 65535
	JA LBB0_26
    LONG $0x0ae3c141             // shl    r11d, 10
    LONG $0x00c38141; WORD $0xa000; BYTE $0xfc // add    r11d, -56623104
    LONG $0x00c18141; WORD $0xff24; BYTE $0xff // add    r9d, -56320
    WORD $0x0945; BYTE $0xd9     // or    r9d, r11d
    LONG $0x00c18141; WORD $0x0100; BYTE $0x00 // add    r9d, 65536
    LONG $0x0cc78348             // add    rdi, 12
    WORD $0x8949; BYTE $0xfd     // mov    r13, rdi
    WORD $0x8945; BYTE $0xcb     // mov    r11d, r9d
LBB0_16:
    WORD $0x0149; BYTE $0xc4     // add    r12, rax
    LONG $0x7ffb8341             // cmp    r11d, 127
	JA LBB0_3
    LONG $0x241c8845             // mov    byte [r12], r11b
    WORD $0x014d; BYTE $0xc4     // add    r12, r8
	JMP LBB0_22
LBB0_18:
    LONG $0x20c78348             // add    rdi, 32
    LONG $0x20c48349             // add    r12, 32
    WORD $0x8949; BYTE $0xfd     // mov    r13, rdi
	JMP LBB0_22
LBB0_19:
    LONG $0x0cb60f42; BYTE $0x31 // movzx    ecx, byte [rcx + r14]
    WORD $0xc984                 // test    cl, cl
	JE LBB0_26
    LONG $0x040c8841             // mov    byte [r12 + rax], cl
    LONG $0x076c8d4c; BYTE $0x02 // lea    r13, [rdi + rax + 2]
    WORD $0xff48; BYTE $0xc0     // inc    rax
LBB0_21:
    WORD $0x0149; BYTE $0xc4     // add    r12, rax
LBB0_22:
    LONG $0x6f7ec1c4; WORD $0x0055 // vmovdqu    ymm2, yword [r13]
    LONG $0x7f7ec1c4; WORD $0x2414 // vmovdqu    yword [r12], ymm2
    LONG $0xd874edc5             // vpcmpeqb    ymm3, ymm2, ymm0
    LONG $0xc3d7fdc5             // vpmovmskb    eax, ymm3
    LONG $0xd174edc5             // vpcmpeqb    ymm2, ymm2, ymm1
    LONG $0xdad7fdc5             // vpmovmskb    ebx, ymm2
    WORD $0x488d; BYTE $0xff     // lea    ecx, [rax - 1]
    WORD $0x894c; BYTE $0xef     // mov    rdi, r13
    WORD $0xd985                 // test    ecx, ebx
	JE LBB0_9
LBB0_23:
    WORD $0xd889                 // mov    eax, ebx
    LONG $0xbc0f48f3; BYTE $0xc8 // tzcnt    rcx, rax
    LONG $0x0c04c641; BYTE $0x00 // mov    byte [r12 + rcx], 0
    WORD $0x894c; BYTE $0xe0     // mov    rax, r12
    WORD $0x2948; BYTE $0xf0     // sub    rax, rsi
    WORD $0x0148; BYTE $0xc8     // add    rax, rcx
    WORD $0x8b48; BYTE $0x32     // mov    rsi, qword [rdx]
    WORD $0x0688                 // mov    byte [rsi], al
    WORD $0x8b48; BYTE $0x32     // mov    rsi, qword [rdx]
    WORD $0x6688; BYTE $0x01     // mov    byte [rsi + 1], ah
    WORD $0xc689                 // mov    esi, eax
    WORD $0xeec1; BYTE $0x10     // shr    esi, 16
    WORD $0x8b48; BYTE $0x3a     // mov    rdi, qword [rdx]
    LONG $0x02778840             // mov    byte [rdi + 2], sil
    WORD $0xe8c1; BYTE $0x18     // shr    eax, 24
    WORD $0x8b48; BYTE $0x32     // mov    rsi, qword [rdx]
    WORD $0x4688; BYTE $0x03     // mov    byte [rsi + 3], al
    LONG $0x0c448d49; BYTE $0x01 // lea    rax, [r12 + rcx + 1]
    WORD $0x8948; BYTE $0x02     // mov    qword [rdx], rax
    WORD $0x01b0                 // mov    al, 1
LBB0_24:
    VZEROUPPER
    RET
LBB0_26:
    WORD $0xc031                 // xor    eax, eax
	JMP LBB0_24
