	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/abhishek/projects/p2" "main.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s %d\n"
	.text
	.p2align 4
	.type	_thread_, @function
_thread_:
.LVL0:
.LFB29:
	.file 1 "main.c"
	.loc 1 15 1 view -0
	.cfi_startproc
	.loc 1 15 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 16 2 is_stmt 1 view .LVU2
	.loc 1 17 2 view .LVU3
	.loc 1 19 2 view .LVU4
	.loc 1 15 1 is_stmt 0 view .LVU5
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
.LVL1:
	.loc 1 20 2 is_stmt 1 view .LVU6
	.loc 1 20 13 discriminator 1 view .LVU7
	.loc 1 15 1 is_stmt 0 view .LVU8
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 20 8 view .LVU9
	xorl	%ebx, %ebx
.LVL2:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 21 3 is_stmt 1 view .LVU10
.LBB6:
.LBI6:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 84 1 view .LVU11
.LBB7:
	.loc 2 86 3 view .LVU12
	.loc 2 86 10 is_stmt 0 view .LVU13
	movl	%ebx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
.LBE7:
.LBE6:
	.loc 1 20 19 discriminator 3 view .LVU14
	addl	$1, %ebx
.LVL3:
.LBB9:
.LBB8:
	.loc 2 86 10 view .LVU15
	call	__printf_chk@PLT
.LVL4:
	.loc 2 86 10 view .LVU16
.LBE8:
.LBE9:
	.loc 1 22 3 is_stmt 1 view .LVU17
	movl	$20000, %edi
	call	us_sleep@PLT
.LVL5:
	.loc 1 23 3 view .LVU18
	call	scheduler_yield@PLT
.LVL6:
	.loc 1 20 19 discriminator 3 view .LVU19
	.loc 1 20 13 discriminator 1 view .LVU20
	cmpl	$100, %ebx
	jne	.L2
	.loc 1 25 1 is_stmt 0 view .LVU21
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL7:
	.loc 1 25 1 view .LVU22
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL8:
	.loc 1 25 1 view .LVU23
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE29:
	.size	_thread_, .-_thread_
	.section	.rodata.str1.1
.LC1:
	.string	"^"
.LC2:
	.string	"hello"
.LC3:
	.string	"world"
.LC4:
	.string	"love"
.LC5:
	.string	"this"
.LC6:
	.string	"course!"
.LC7:
	.string	"main.c"
.LC8:
	.string	"error: %s:%d: %s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL9:
.LFB30:
	.loc 1 29 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 29 1 is_stmt 0 view .LVU25
	endbr64
	.loc 1 30 2 is_stmt 1 view .LVU26
	.loc 1 30 2 view .LVU27
	.loc 1 31 2 view .LVU28
	.loc 1 31 2 view .LVU29
	.loc 1 33 2 view .LVU30
	.loc 1 29 1 is_stmt 0 view .LVU31
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 33 6 view .LVU32
	leaq	_thread_(%rip), %rbx
	leaq	.LC2(%rip), %rsi
.LVL10:
	.loc 1 33 6 view .LVU33
	movq	%rbx, %rdi
.LVL11:
	.loc 1 33 6 view .LVU34
	call	scheduler_create@PLT
.LVL12:
	.loc 1 33 5 discriminator 1 view .LVU35
	testl	%eax, %eax
	jne	.L10
	.loc 1 34 6 view .LVU36
	leaq	.LC3(%rip), %rsi
	movq	%rbx, %rdi
	call	scheduler_create@PLT
.LVL13:
	.loc 1 33 42 discriminator 1 view .LVU37
	testl	%eax, %eax
	jne	.L10
	.loc 1 35 6 view .LVU38
	leaq	.LC4(%rip), %rsi
	movq	%rbx, %rdi
	call	scheduler_create@PLT
.LVL14:
	.loc 1 34 42 view .LVU39
	testl	%eax, %eax
	jne	.L10
	.loc 1 36 6 view .LVU40
	leaq	.LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	scheduler_create@PLT
.LVL15:
	.loc 1 35 41 view .LVU41
	testl	%eax, %eax
	jne	.L10
	.loc 1 37 6 view .LVU42
	movq	%rbx, %rdi
	leaq	.LC6(%rip), %rsi
	call	scheduler_create@PLT
.LVL16:
	movl	%eax, %ebx
	.loc 1 36 41 view .LVU43
	testl	%eax, %eax
	jne	.L10
	.loc 1 41 2 is_stmt 1 view .LVU44
	call	scheduler_execute@PLT
.LVL17:
	.loc 1 42 2 view .LVU45
.L6:
	.loc 1 43 1 is_stmt 0 view .LVU46
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	.loc 1 38 3 is_stmt 1 view .LVU47
	.loc 1 38 3 view .LVU48
	xorl	%edi, %edi
	call	safe_strlen@PLT
.LVL18:
.LBB10:
.LBB11:
	.loc 2 79 10 is_stmt 0 view .LVU49
	movl	$38, %r8d
.LBE11:
.LBE10:
	.loc 1 38 3 discriminator 2 view .LVU50
	leaq	.LC1(%rip), %r9
.LBB16:
.LBB12:
	.loc 2 79 10 view .LVU51
	leaq	.LC7(%rip), %rcx
.LBE12:
.LBE16:
	.loc 1 38 3 discriminator 2 view .LVU52
	testq	%rax, %rax
	movl	$0, %eax
.LBB17:
.LBB13:
	.loc 2 79 10 view .LVU53
	leaq	.LC8(%rip), %rdx
	movl	$2, %esi
.LBE13:
.LBE17:
	.loc 1 38 3 discriminator 2 view .LVU54
	cmovne	%rax, %r9
.LVL19:
.LBB18:
.LBI10:
	.loc 2 77 1 is_stmt 1 view .LVU55
.LBB14:
	.loc 2 79 3 view .LVU56
	.loc 2 79 10 is_stmt 0 view .LVU57
	movq	stderr@GOTPCREL(%rip), %rax
.LVL20:
	.loc 2 79 10 view .LVU58
.LBE14:
.LBE18:
	.loc 1 39 10 view .LVU59
	orl	$-1, %ebx
.LBB19:
.LBB15:
	.loc 2 79 10 view .LVU60
	movq	(%rax), %rdi
	xorl	%eax, %eax
.LVL21:
	.loc 2 79 10 view .LVU61
	call	__fprintf_chk@PLT
.LVL22:
	.loc 2 79 10 view .LVU62
.LBE15:
.LBE19:
	.loc 1 38 3 is_stmt 1 discriminator 1 view .LVU63
	.loc 1 39 3 view .LVU64
	.loc 1 39 10 is_stmt 0 view .LVU65
	jmp	.L6
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 8 "scheduler.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdio2-decl.h"
	.file 10 "system.h"
	.file 11 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5d2
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL10
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x6
	.long	.LASF9
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x36
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	.LASF10
	.byte	0x4
	.byte	0x2d
	.byte	0x1b
	.long	0x36
	.uleb128 0x6
	.long	.LASF11
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x67
	.uleb128 0x6
	.long	.LASF12
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x67
	.uleb128 0x17
	.byte	0x8
	.uleb128 0x3
	.long	0x99
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x18
	.long	0x99
	.uleb128 0x3
	.long	0xa0
	.uleb128 0xe
	.long	0xa5
	.uleb128 0x19
	.long	.LASF63
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x219
	.uleb128 0x1
	.long	.LASF14
	.byte	0x33
	.byte	0x7
	.long	0x60
	.byte	0
	.uleb128 0x1
	.long	.LASF15
	.byte	0x36
	.byte	0x9
	.long	0x94
	.byte	0x8
	.uleb128 0x1
	.long	.LASF16
	.byte	0x37
	.byte	0x9
	.long	0x94
	.byte	0x10
	.uleb128 0x1
	.long	.LASF17
	.byte	0x38
	.byte	0x9
	.long	0x94
	.byte	0x18
	.uleb128 0x1
	.long	.LASF18
	.byte	0x39
	.byte	0x9
	.long	0x94
	.byte	0x20
	.uleb128 0x1
	.long	.LASF19
	.byte	0x3a
	.byte	0x9
	.long	0x94
	.byte	0x28
	.uleb128 0x1
	.long	.LASF20
	.byte	0x3b
	.byte	0x9
	.long	0x94
	.byte	0x30
	.uleb128 0x1
	.long	.LASF21
	.byte	0x3c
	.byte	0x9
	.long	0x94
	.byte	0x38
	.uleb128 0x1
	.long	.LASF22
	.byte	0x3d
	.byte	0x9
	.long	0x94
	.byte	0x40
	.uleb128 0x1
	.long	.LASF23
	.byte	0x40
	.byte	0x9
	.long	0x94
	.byte	0x48
	.uleb128 0x1
	.long	.LASF24
	.byte	0x41
	.byte	0x9
	.long	0x94
	.byte	0x50
	.uleb128 0x1
	.long	.LASF25
	.byte	0x42
	.byte	0x9
	.long	0x94
	.byte	0x58
	.uleb128 0x1
	.long	.LASF26
	.byte	0x44
	.byte	0x16
	.long	0x232
	.byte	0x60
	.uleb128 0x1
	.long	.LASF27
	.byte	0x46
	.byte	0x14
	.long	0x237
	.byte	0x68
	.uleb128 0x1
	.long	.LASF28
	.byte	0x48
	.byte	0x7
	.long	0x60
	.byte	0x70
	.uleb128 0x1
	.long	.LASF29
	.byte	0x49
	.byte	0x7
	.long	0x60
	.byte	0x74
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4a
	.byte	0xb
	.long	0x7a
	.byte	0x78
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4d
	.byte	0x12
	.long	0x44
	.byte	0x80
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4e
	.byte	0xf
	.long	0x52
	.byte	0x82
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4f
	.byte	0x8
	.long	0x23c
	.byte	0x83
	.uleb128 0x1
	.long	.LASF34
	.byte	0x51
	.byte	0xf
	.long	0x24c
	.byte	0x88
	.uleb128 0x1
	.long	.LASF35
	.byte	0x59
	.byte	0xd
	.long	0x86
	.byte	0x90
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5b
	.byte	0x17
	.long	0x256
	.byte	0x98
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5c
	.byte	0x19
	.long	0x260
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5d
	.byte	0x14
	.long	0x237
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5e
	.byte	0x9
	.long	0x92
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5f
	.byte	0xa
	.long	0x2a
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF41
	.byte	0x60
	.byte	0x7
	.long	0x60
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x62
	.byte	0x8
	.long	0x265
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xaf
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xa
	.long	.LASF44
	.uleb128 0x3
	.long	0x22d
	.uleb128 0x3
	.long	0xaf
	.uleb128 0xf
	.long	0x99
	.long	0x24c
	.uleb128 0x10
	.long	0x36
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x225
	.uleb128 0xa
	.long	.LASF45
	.uleb128 0x3
	.long	0x251
	.uleb128 0xa
	.long	.LASF46
	.uleb128 0x3
	.long	0x25b
	.uleb128 0xf
	.long	0x99
	.long	0x275
	.uleb128 0x10
	.long	0x36
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x219
	.uleb128 0xe
	.long	0x275
	.uleb128 0x1b
	.long	.LASF57
	.byte	0xb
	.byte	0x97
	.byte	0xe
	.long	0x275
	.uleb128 0x6
	.long	.LASF47
	.byte	0x7
	.byte	0x1b
	.byte	0x14
	.long	0x6e
	.uleb128 0x6
	.long	.LASF48
	.byte	0x8
	.byte	0x13
	.byte	0x10
	.long	0x2a3
	.uleb128 0x3
	.long	0x2a8
	.uleb128 0x1c
	.long	0x2b3
	.uleb128 0x4
	.long	0x92
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0x31
	.byte	0xc
	.long	0x60
	.long	0x2d4
	.uleb128 0x4
	.long	0x27a
	.uleb128 0x4
	.long	0x60
	.uleb128 0x4
	.long	0xaa
	.uleb128 0x9
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0x34
	.byte	0xc
	.long	0x60
	.long	0x2f0
	.uleb128 0x4
	.long	0x60
	.uleb128 0x4
	.long	0xaa
	.uleb128 0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF51
	.byte	0x32
	.uleb128 0x1d
	.long	.LASF65
	.byte	0xa
	.byte	0x38
	.byte	0x6
	.long	0x308
	.uleb128 0x4
	.long	0x28b
	.byte	0
	.uleb128 0x11
	.long	.LASF52
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF53
	.byte	0xa
	.byte	0x3e
	.byte	0x8
	.long	0x2a
	.long	0x324
	.uleb128 0x4
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x8
	.byte	0x1e
	.byte	0x5
	.long	0x60
	.long	0x33f
	.uleb128 0x4
	.long	0x297
	.uleb128 0x4
	.long	0x92
	.byte	0
	.uleb128 0x1e
	.long	.LASF66
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0x60
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c4
	.uleb128 0x12
	.long	.LASF55
	.byte	0xa
	.long	0x60
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x12
	.long	.LASF56
	.byte	0x16
	.long	0x4c4
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x13
	.long	0x5b0
	.quad	.LBI10
	.byte	.LVU55
	.long	.LLRL7
	.byte	0x26
	.long	0x3ea
	.uleb128 0xb
	.long	0x5c8
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xb
	.long	0x5bd
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xc
	.quad	.LVL22
	.long	0x2b3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL12
	.long	0x324
	.long	0x40f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x7
	.quad	.LVL13
	.long	0x324
	.long	0x434
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x7
	.quad	.LVL14
	.long	0x324
	.long	0x459
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x7
	.quad	.LVL15
	.long	0x324
	.long	0x47e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x7
	.quad	.LVL16
	.long	0x324
	.long	0x4a3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x14
	.quad	.LVL17
	.long	0x308
	.uleb128 0xc
	.quad	.LVL18
	.long	0x30e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x94
	.uleb128 0x1f
	.long	.LASF67
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.long	0x92
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x21
	.long	.LASF58
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.long	0xa5
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.long	0x60
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x13
	.long	0x592
	.quad	.LBI6
	.byte	.LVU11
	.long	.LLRL3
	.byte	0x15
	.long	0x56b
	.uleb128 0xb
	.long	0x5a3
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0xc
	.quad	.LVL4
	.long	0x2d4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL5
	.long	0x2f6
	.long	0x584
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x4e20
	.byte	0
	.uleb128 0x14
	.quad	.LVL6
	.long	0x2f0
	.byte	0
	.uleb128 0x23
	.long	.LASF68
	.byte	0x2
	.byte	0x54
	.byte	0x1
	.long	0x60
	.byte	0x3
	.long	0x5b0
	.uleb128 0xd
	.long	.LASF60
	.byte	0x54
	.byte	0x20
	.long	0xaa
	.uleb128 0x9
	.byte	0
	.uleb128 0x24
	.long	.LASF59
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.long	0x60
	.byte	0x3
	.uleb128 0xd
	.long	.LASF61
	.byte	0x4d
	.byte	0x1b
	.long	0x27a
	.uleb128 0xd
	.long	.LASF60
	.byte	0x4d
	.byte	0x3c
	.long	0xaa
	.uleb128 0x9
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 28
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS5:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL11-.LVL9
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL11-.LVL9
	.uleb128 .LFE30-.LVL9
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL10-.LVL9
	.uleb128 .LFE30-.LVL9
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU55
	.uleb128 .LVU62
.LLST8:
	.byte	0x8
	.quad	.LVL19
	.uleb128 .LVL22-.LVL19
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU58
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
.LLST9:
	.byte	0x6
	.quad	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL21-.LVL20
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL21-.LVL20
	.uleb128 .LVL22-1-.LVL20
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LFE29-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL8-.LVL1
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL8-.LVL1
	.uleb128 .LFE29-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU7
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU22
.LLST2:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL4-1-.LVL1
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL4-1-.LVL1
	.uleb128 .LVL6-.LVL1
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL7-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS4:
	.uleb128 .LVU11
	.uleb128 .LVU16
.LLST4:
	.byte	0x8
	.quad	.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL3:
	.byte	0x5
	.quad	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB9-.LBB6
	.uleb128 .LBE9-.LBB6
	.byte	0
.LLRL7:
	.byte	0x5
	.quad	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB16-.LBB10
	.uleb128 .LBE16-.LBB10
	.byte	0x4
	.uleb128 .LBB17-.LBB10
	.uleb128 .LBE17-.LBB10
	.byte	0x4
	.uleb128 .LBB18-.LBB10
	.uleb128 .LBE18-.LBB10
	.byte	0x4
	.uleb128 .LBB19-.LBB10
	.uleb128 .LBE19-.LBB10
	.byte	0
.LLRL10:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"printf"
.LASF11:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF9:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF21:
	.string	"_IO_buf_base"
.LASF36:
	.string	"_codecvt"
.LASF6:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF45:
	.string	"_IO_codecvt"
.LASF50:
	.string	"__printf_chk"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF44:
	.string	"_IO_marker"
.LASF5:
	.string	"unsigned int"
.LASF39:
	.string	"_freeres_buf"
.LASF59:
	.string	"fprintf"
.LASF61:
	.string	"__stream"
.LASF2:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF58:
	.string	"name"
.LASF4:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF67:
	.string	"_thread_"
.LASF20:
	.string	"_IO_write_end"
.LASF47:
	.string	"uint64_t"
.LASF64:
	.string	"_IO_lock_t"
.LASF63:
	.string	"_IO_FILE"
.LASF10:
	.string	"__uint64_t"
.LASF51:
	.string	"scheduler_yield"
.LASF26:
	.string	"_markers"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF46:
	.string	"_IO_wide_data"
.LASF32:
	.string	"_vtable_offset"
.LASF43:
	.string	"FILE"
.LASF49:
	.string	"__fprintf_chk"
.LASF65:
	.string	"us_sleep"
.LASF52:
	.string	"scheduler_execute"
.LASF13:
	.string	"char"
.LASF48:
	.string	"scheduler_fnc_t"
.LASF12:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF60:
	.string	"__fmt"
.LASF54:
	.string	"scheduler_create"
.LASF62:
	.string	"GNU C89 13.2.0 -mtune=generic -march=x86-64 -g -O3 -ansi -fpic -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF57:
	.string	"stderr"
.LASF56:
	.string	"argv"
.LASF53:
	.string	"safe_strlen"
.LASF24:
	.string	"_IO_backup_base"
.LASF55:
	.string	"argc"
.LASF38:
	.string	"_freeres_list"
.LASF37:
	.string	"_wide_data"
.LASF66:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/abhishek/projects/p2"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
