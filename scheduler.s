	.file	"scheduler.c"
	.text
.Ltext0:
	.file 0 "/home/abhishek/projects/p2" "scheduler.c"
	.p2align 4
	.globl	scheduler_create
	.type	scheduler_create, @function
scheduler_create:
.LVL0:
.LFB9:
	.file 1 "scheduler.c"
	.loc 1 46 54 view -0
	.cfi_startproc
	.loc 1 46 54 is_stmt 0 view .LVU1
	endbr64
	.loc 1 47 5 is_stmt 1 view .LVU2
	.loc 1 46 54 is_stmt 0 view .LVU3
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	.loc 1 47 44 view .LVU4
	movl	$248, %edi
.LVL1:
	.loc 1 46 54 view .LVU5
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 47 44 view .LVU6
	call	malloc@PLT
.LVL2:
	.loc 1 48 5 is_stmt 1 view .LVU7
	.loc 1 48 8 is_stmt 0 view .LVU8
	testq	%rax, %rax
	je	.L3
	.loc 1 51 26 view .LVU9
	movq	%r12, 224(%rax)
	movq	%rax, %rbx
	.loc 1 51 5 is_stmt 1 view .LVU10
	.loc 1 52 5 view .LVU11
	.loc 1 52 26 is_stmt 0 view .LVU12
	movq	%rbp, 216(%rax)
	.loc 1 53 5 is_stmt 1 view .LVU13
	.loc 1 53 24 is_stmt 0 view .LVU14
	movl	$0, 232(%rax)
	.loc 1 54 5 is_stmt 1 view .LVU15
	.loc 1 54 56 is_stmt 0 view .LVU16
	call	page_size@PLT
.LVL3:
	.loc 1 54 41 discriminator 1 view .LVU17
	leaq	1048576(%rax), %rdi
	call	malloc@PLT
.LVL4:
	.loc 1 54 31 discriminator 2 view .LVU18
	movq	%rax, 208(%rbx)
	.loc 1 55 5 is_stmt 1 view .LVU19
	.loc 1 55 32 is_stmt 0 view .LVU20
	call	page_size@PLT
.LVL5:
	.loc 1 55 32 discriminator 1 view .LVU21
	movq	208(%rbx), %rdi
	.loc 1 55 32 view .LVU22
	movq	%rax, %rsi
	.loc 1 55 32 discriminator 1 view .LVU23
	call	memory_align@PLT
.LVL6:
	.loc 1 55 30 discriminator 2 view .LVU24
	movq	%rax, 200(%rbx)
	.loc 1 56 5 is_stmt 1 view .LVU25
	.loc 1 56 22 is_stmt 0 view .LVU26
	movq	head@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	.loc 1 57 10 view .LVU27
	movq	%rbx, (%rax)
	.loc 1 59 12 view .LVU28
	xorl	%eax, %eax
	.loc 1 56 22 view .LVU29
	movq	%rdx, 240(%rbx)
	.loc 1 57 5 is_stmt 1 view .LVU30
	.loc 1 59 5 view .LVU31
.LVL7:
.L1:
	.loc 1 60 1 is_stmt 0 view .LVU32
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL8:
	.loc 1 60 1 view .LVU33
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL9:
	.loc 1 60 1 view .LVU34
	ret
.LVL10:
.L3:
	.cfi_restore_state
	.loc 1 49 16 view .LVU35
	orl	$-1, %eax
.LVL11:
	.loc 1 49 16 view .LVU36
	jmp	.L1
	.cfi_endproc
.LFE9:
	.size	scheduler_create, .-scheduler_create
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	scheduler_execute
	.type	scheduler_execute, @function
scheduler_execute:
.LFB13:
	.loc 1 102 29 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 103 5 view .LVU38
	movq	ctx@GOTPCREL(%rip), %rdi
	.loc 1 102 29 is_stmt 0 view .LVU39
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 103 5 view .LVU40
	call	_setjmp@PLT
.LVL12:
	endbr64
	.loc 1 104 5 is_stmt 1 view .LVU41
.LBB8:
.LBI8:
	.loc 1 84 13 view .LVU42
.LBB9:
	.loc 1 85 5 view .LVU43
	.loc 1 86 5 view .LVU44
.LBB10:
.LBI10:
	.loc 1 73 23 view .LVU45
.LBB11:
	.loc 1 74 5 view .LVU46
	.loc 1 74 17 is_stmt 0 view .LVU47
	movq	current_thread@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
.LVL13:
	.loc 1 75 5 is_stmt 1 view .LVU48
	.loc 1 75 14 view .LVU49
	testq	%rbx, %rbx
	jne	.L10
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 79 9 view .LVU50
	.loc 1 79 11 is_stmt 0 view .LVU51
	movq	240(%rbx), %rbx
.LVL14:
	.loc 1 75 14 is_stmt 1 view .LVU52
	testq	%rbx, %rbx
	je	.L14
.L10:
	.loc 1 76 9 view .LVU53
	.loc 1 76 14 is_stmt 0 view .LVU54
	movl	232(%rbx), %eax
	.loc 1 76 12 view .LVU55
	testl	$-3, %eax
	jne	.L15
.LVL15:
	.loc 1 76 12 view .LVU56
.LBE11:
.LBE10:
	.loc 1 87 5 is_stmt 1 view .LVU57
	.loc 1 87 20 is_stmt 0 view .LVU58
	movq	current_thread@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rdx)
	.loc 1 88 5 is_stmt 1 view .LVU59
	.loc 1 88 8 is_stmt 0 view .LVU60
	testl	%eax, %eax
	jne	.L11
	.loc 1 89 9 is_stmt 1 view .LVU61
	.loc 1 91 9 is_stmt 0 view .LVU62
	movq	216(%rbx), %rdi
	.loc 1 89 25 view .LVU63
	addq	$1048576, 200(%rbx)
	.loc 1 90 9 is_stmt 1 view .LVU64
	.loc 1 90 19 is_stmt 0 view .LVU65
	movl	$1, 232(%rbx)
	.loc 1 91 9 is_stmt 1 view .LVU66
	call	*224(%rbx)
.LVL16:
	.loc 1 92 9 view .LVU67
	.loc 1 93 9 is_stmt 0 view .LVU68
	movq	ctx@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	.loc 1 92 19 view .LVU69
	movl	$3, 232(%rbx)
	.loc 1 93 9 is_stmt 1 view .LVU70
	call	longjmp@PLT
.LVL17:
	.p2align 4,,10
	.p2align 3
.L11:
	.loc 1 96 9 view .LVU71
	.loc 1 96 19 is_stmt 0 view .LVU72
	movl	$1, 232(%rbx)
	.loc 1 97 9 is_stmt 1 view .LVU73
	movl	$1, %esi
	movq	%rbx, %rdi
	call	longjmp@PLT
.LVL18:
.L14:
.LBB14:
.LBB12:
	.loc 1 97 9 is_stmt 0 view .LVU74
	jmp	.L8
	.loc 1 97 9 view .LVU75
.LBE12:
.LBE14:
.LBE9:
.LBE8:
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	scheduler_execute.cold, @function
scheduler_execute.cold:
.LFSB13:
.LBB17:
.LBB16:
.LBB15:
.LBB13:
.L8:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LVL19:
	.loc 1 97 9 view -0
.LBE13:
.LBE15:
	.loc 1 87 5 is_stmt 1 view .LVU77
	.loc 1 87 20 is_stmt 0 view .LVU78
	movq	current_thread@GOTPCREL(%rip), %rax
	xorl	%edx, %edx
	movq	%rdx, (%rax)
	.loc 1 88 5 is_stmt 1 view .LVU79
	.loc 1 88 10 is_stmt 0 view .LVU80
	movl	232, %eax
	ud2
.LBE16:
.LBE17:
	.cfi_endproc
.LFE13:
	.text
	.size	scheduler_execute, .-scheduler_execute
	.section	.text.unlikely
	.size	scheduler_execute.cold, .-scheduler_execute.cold
.LCOLDE0:
	.text
.LHOTE0:
	.p2align 4
	.globl	scheduler_yield
	.type	scheduler_yield, @function
scheduler_yield:
.LFB14:
	.loc 1 108 27 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 109 5 view .LVU82
	.loc 1 108 27 is_stmt 0 view .LVU83
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 109 10 view .LVU84
	movq	current_thread@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc 1 109 10 discriminator 1 view .LVU85
	call	_setjmp@PLT
.LVL20:
	endbr64
	.loc 1 109 8 discriminator 2 view .LVU86
	testl	%eax, %eax
	je	.L20
	.loc 1 113 1 view .LVU87
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L20:
	.cfi_restore_state
	.loc 1 110 9 is_stmt 1 view .LVU88
	.loc 1 110 32 is_stmt 0 view .LVU89
	movq	current_thread@GOTPCREL(%rip), %rax
	.loc 1 111 9 view .LVU90
	movq	ctx@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	.loc 1 110 32 view .LVU91
	movq	(%rax), %rax
	movl	$2, 232(%rax)
	.loc 1 111 9 is_stmt 1 view .LVU92
	call	longjmp@PLT
.LVL21:
	.cfi_endproc
.LFE14:
	.size	scheduler_yield, .-scheduler_yield
	.globl	ctx
	.bss
	.align 32
	.type	ctx, @object
	.size	ctx, 200
ctx:
	.zero	200
	.globl	current_thread
	.align 8
	.type	current_thread, @object
	.size	current_thread, 8
current_thread:
	.zero	8
	.globl	head
	.align 8
	.type	head, @object
	.size	head, 8
head:
	.zero	8
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h"
	.file 6 "/usr/include/setjmp.h"
	.file 7 "scheduler.h"
	.file 8 "system.h"
	.file 9 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4cb
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL8
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x19
	.byte	0x8
	.uleb128 0x6
	.long	0x69
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x3f
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x1f
	.byte	0x12
	.long	0x88
	.uleb128 0xa
	.long	0x5b
	.long	0x98
	.uleb128 0xb
	.long	0x3f
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.byte	0x80
	.byte	0x4
	.byte	0x5
	.byte	0x9
	.long	0xaf
	.uleb128 0x1
	.long	.LASF13
	.byte	0x4
	.byte	0x7
	.byte	0x15
	.long	0xaf
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x3f
	.long	0xbf
	.uleb128 0xb
	.long	0x3f
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x8
	.byte	0x3
	.long	0x98
	.uleb128 0xf
	.long	.LASF25
	.byte	0xc8
	.byte	0x5
	.byte	0x1a
	.byte	0x8
	.long	0x100
	.uleb128 0x1
	.long	.LASF14
	.byte	0x5
	.byte	0x20
	.byte	0xf
	.long	0x7c
	.byte	0
	.uleb128 0x1
	.long	.LASF15
	.byte	0x5
	.byte	0x21
	.byte	0x9
	.long	0x54
	.byte	0x40
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.byte	0x22
	.byte	0x10
	.long	0xbf
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x6
	.byte	0x20
	.byte	0x1e
	.long	0x10c
	.uleb128 0xa
	.long	0xcb
	.long	0x11c
	.uleb128 0xb
	.long	0x3f
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF18
	.byte	0x7
	.byte	0x13
	.byte	0x10
	.long	0x128
	.uleb128 0x6
	.long	0x12d
	.uleb128 0x1a
	.long	0x138
	.uleb128 0x3
	.long	0x62
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.long	0x15c
	.uleb128 0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x1f
	.byte	0xf
	.long	0x64
	.byte	0
	.uleb128 0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x20
	.byte	0xf
	.long	0x64
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.long	0x17e
	.uleb128 0xd
	.string	"arg"
	.byte	0x23
	.byte	0xf
	.long	0x62
	.byte	0
	.uleb128 0xd
	.string	"fnc"
	.byte	0x24
	.byte	0x19
	.long	0x11c
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0x38
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.long	0x1a5
	.uleb128 0x8
	.long	.LASF21
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.uleb128 0x8
	.long	.LASF23
	.byte	0x2
	.uleb128 0x8
	.long	.LASF24
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF26
	.byte	0xf8
	.byte	0x1
	.byte	0x1c
	.byte	0x10
	.long	0x1f3
	.uleb128 0xd
	.string	"ctx"
	.byte	0x1d
	.byte	0xd
	.long	0x100
	.byte	0
	.uleb128 0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.long	0x138
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.long	0x15c
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x26
	.byte	0x2e
	.long	0x17e
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x27
	.byte	0x14
	.long	0x1f3
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.long	0x1a5
	.uleb128 0x5
	.long	.LASF31
	.byte	0x1
	.byte	0x28
	.byte	0x2
	.long	0x1a5
	.uleb128 0x10
	.long	.LASF32
	.byte	0x2a
	.long	0x218
	.uleb128 0x9
	.byte	0x3
	.quad	head
	.uleb128 0x6
	.long	0x1f8
	.uleb128 0x10
	.long	.LASF33
	.byte	0x2b
	.long	0x218
	.uleb128 0x9
	.byte	0x3
	.quad	current_thread
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.long	0x100
	.uleb128 0x9
	.byte	0x3
	.quad	ctx
	.uleb128 0x1d
	.long	.LASF42
	.byte	0x9
	.value	0x2af
	.byte	0xd
	.long	0x25a
	.uleb128 0x3
	.long	0x62
	.byte	0
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x6
	.byte	0x36
	.byte	0xd
	.long	0x271
	.uleb128 0x3
	.long	0x271
	.uleb128 0x3
	.long	0x54
	.byte	0
	.uleb128 0x6
	.long	0xcb
	.uleb128 0x11
	.long	.LASF35
	.byte	0x6
	.byte	0x2d
	.byte	0xc
	.long	0x54
	.long	0x28c
	.uleb128 0x3
	.long	0x271
	.byte	0
	.uleb128 0x11
	.long	.LASF36
	.byte	0x8
	.byte	0x42
	.byte	0x7
	.long	0x62
	.long	0x2a7
	.uleb128 0x3
	.long	0x62
	.uleb128 0x3
	.long	0x70
	.byte	0
	.uleb128 0x1f
	.long	.LASF43
	.byte	0x8
	.byte	0x40
	.byte	0x8
	.long	0x70
	.uleb128 0x20
	.long	.LASF37
	.byte	0x9
	.value	0x2a0
	.byte	0xe
	.long	0x62
	.long	0x2ca
	.uleb128 0x3
	.long	0x70
	.byte	0
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.byte	0x6c
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x316
	.uleb128 0x7
	.quad	.LVL20
	.long	0x276
	.uleb128 0xe
	.quad	.LVL21
	.long	0x25a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	ctx
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF44
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.long	.LLRL3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d9
	.uleb128 0x12
	.long	0x3d9
	.quad	.LBI8
	.byte	.LVU42
	.long	.LLRL4
	.byte	0x68
	.byte	0x5
	.long	0x3bd
	.uleb128 0x13
	.long	.LLRL4
	.uleb128 0x14
	.long	0x3e6
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x12
	.long	0x3f0
	.quad	.LBI10
	.byte	.LVU45
	.long	.LLRL6
	.byte	0x56
	.byte	0x9
	.long	0x37e
	.uleb128 0x13
	.long	.LLRL6
	.uleb128 0x14
	.long	0x401
	.long	.LLST7
	.long	.LVUS7
	.byte	0
	.byte	0
	.uleb128 0x15
	.quad	.LVL17
	.long	0x25a
	.long	0x3a2
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	ctx
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.quad	.LVL18
	.long	0x25a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LVL12
	.long	0x276
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	ctx
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF45
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.byte	0x1
	.long	0x3f0
	.uleb128 0x9
	.string	"t"
	.byte	0x55
	.byte	0x11
	.long	0x218
	.byte	0
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.byte	0x49
	.byte	0x17
	.long	0x1f3
	.byte	0x1
	.long	0x40b
	.uleb128 0x9
	.string	"t"
	.byte	0x4a
	.byte	0x11
	.long	0x218
	.byte	0
	.uleb128 0x25
	.long	.LASF47
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.long	0x42b
	.uleb128 0x9
	.string	"t"
	.byte	0x3f
	.byte	0x11
	.long	0x218
	.uleb128 0x9
	.string	"t_"
	.byte	0x3f
	.byte	0x15
	.long	0x218
	.byte	0
	.uleb128 0x26
	.long	.LASF39
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.long	0x54
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.string	"fnc"
	.byte	0x26
	.long	0x11c
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x16
	.string	"arg"
	.byte	0x31
	.long	0x62
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x27
	.long	.LASF40
	.byte	0x1
	.byte	0x2f
	.byte	0x11
	.long	0x218
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x15
	.quad	.LVL2
	.long	0x2b3
	.long	0x499
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.byte	0
	.uleb128 0x7
	.quad	.LVL3
	.long	0x2a7
	.uleb128 0x7
	.quad	.LVL4
	.long	0x2b3
	.uleb128 0x7
	.quad	.LVL5
	.long	0x2a7
	.uleb128 0x7
	.quad	.LVL6
	.long	0x28c
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
	.uleb128 0xb
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xe
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 46
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 .LVU56
	.uleb128 .LVU74
	.uleb128 0
	.uleb128 0
.LLST5:
	.byte	0x8
	.quad	.LVL15
	.uleb128 .LVL18-.LVL15
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.quad	.LVL19
	.uleb128 .LFE13-.LVL19
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU48
	.uleb128 .LVU56
	.uleb128 .LVU74
	.uleb128 0
	.uleb128 0
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-.LVL13
	.uleb128 .LHOTE0-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.quad	.LFSB13
	.uleb128 .LVL19-.LFSB13
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LFE9-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LFE9-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS2:
	.uleb128 .LVU7
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU32
	.uleb128 .LVU35
	.uleb128 .LVU36
.LLST2:
	.byte	0x6
	.quad	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-1-.LVL2
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-1-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL10-.LVL2
	.uleb128 .LVL11-.LVL2
	.uleb128 0x1
	.byte	0x50
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
	.quad	.Ltext_cold0
	.quad	.Letext_cold0-.Ltext_cold0
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
	.byte	0x7
	.quad	.LFB13
	.uleb128 .LHOTE0-.LFB13
	.byte	0x7
	.quad	.LFSB13
	.uleb128 .LCOLDE0-.LFSB13
	.byte	0
.LLRL4:
	.byte	0x7
	.quad	.LBB8
	.uleb128 .LBE8-.LBB8
	.byte	0x7
	.quad	.LBB17
	.uleb128 .LBE17-.LBB17
	.byte	0
.LLRL6:
	.byte	0x5
	.quad	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB14-.LBB10
	.uleb128 .LBE14-.LBB10
	.byte	0x7
	.quad	.LBB15
	.uleb128 .LBE15-.LBB15
	.byte	0
.LLRL8:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.Ltext_cold0
	.uleb128 .Letext_cold0-.Ltext_cold0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"size_t"
.LASF33:
	.string	"current_thread"
.LASF18:
	.string	"scheduler_fnc_t"
.LASF39:
	.string	"scheduler_create"
.LASF20:
	.string	"memory_"
.LASF15:
	.string	"__mask_was_saved"
.LASF27:
	.string	"stack"
.LASF13:
	.string	"__val"
.LASF21:
	.string	"INIT"
.LASF41:
	.string	"GNU C89 13.2.0 -mtune=generic -march=x86-64 -g -O3 -ansi -fpic -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF29:
	.string	"status"
.LASF23:
	.string	"SLEEPING"
.LASF46:
	.string	"Candidate"
.LASF6:
	.string	"signed char"
.LASF35:
	.string	"_setjmp"
.LASF2:
	.string	"unsigned char"
.LASF14:
	.string	"__jmpbuf"
.LASF11:
	.string	"__jmp_buf"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"thread"
.LASF40:
	.string	"new_thread"
.LASF36:
	.string	"memory_align"
.LASF28:
	.string	"code"
.LASF32:
	.string	"head"
.LASF31:
	.string	"thread_tem"
.LASF34:
	.string	"longjmp"
.LASF5:
	.string	"long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF45:
	.string	"schedule"
.LASF47:
	.string	"destroy"
.LASF38:
	.string	"scheduler_yield"
.LASF30:
	.string	"link"
.LASF42:
	.string	"free"
.LASF44:
	.string	"scheduler_execute"
.LASF7:
	.string	"short int"
.LASF25:
	.string	"__jmp_buf_tag"
.LASF12:
	.string	"__sigset_t"
.LASF8:
	.string	"long int"
.LASF22:
	.string	"RUNNING"
.LASF17:
	.string	"jmp_buf"
.LASF24:
	.string	"TERMINATED"
.LASF19:
	.string	"memory"
.LASF37:
	.string	"malloc"
.LASF16:
	.string	"__saved_mask"
.LASF43:
	.string	"page_size"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/abhishek/projects/p2"
.LASF0:
	.string	"scheduler.c"
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
