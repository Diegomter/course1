	.file	"main.c"
	.text
.Ltext0:
	.comm	buffer,10,1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 35 0
	movl	$10, %esi
	movl	$buffer, %edi
	call	clear_all
	.loc 1 36 0
	movl	$2, %edx
	movl	$43, %esi
	movl	$buffer+8, %edi
	call	set_all
	.loc 1 37 0
	movl	$97, %edx
	movl	$0, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 38 0
	movl	$9, %esi
	movl	$buffer, %edi
	call	get_value
	movb	%al, -5(%rbp)
	.loc 1 39 0
	movzbl	-5(%rbp), %eax
	addl	$39, %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$9, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 40 0
	movl	$55, %edx
	movl	$3, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 41 0
	movl	$88, %edx
	movl	$1, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 42 0
	movl	$50, %edx
	movl	$4, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 43 0
	movl	$1, %esi
	movl	$buffer, %edi
	call	get_value
	movb	%al, -5(%rbp)
	.loc 1 44 0
	movl	$121, %edx
	movl	$2, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 45 0
	movzbl	-5(%rbp), %eax
	subl	$12, %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$7, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 46 0
	movl	$95, %edx
	movl	$5, %esi
	movl	$buffer, %edi
	call	set_value
	.loc 1 48 0
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	.loc 1 49 0 discriminator 3
	movl	-4(%rbp), %eax
	movzbl	buffer(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 48 0 discriminator 3
	addl	$1, -4(%rbp)
.L2:
	.loc 1 48 0 is_stmt 0 discriminator 1
	cmpl	$9, -4(%rbp)
	jbe	.L3
	.loc 1 51 0 is_stmt 1
	movl	$10, %edi
	call	putchar
	.loc 1 52 0
	movl	$0, %eax
	.loc 1 53 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF10
	.byte	0x1
	.long	.LASF11
	.long	.LASF12
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x1e
	.long	0x57
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x20
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0xbf
	.uleb128 0x8
	.long	0x65
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x1b
	.long	0xaf
	.uleb128 0x9
	.byte	0x3
	.quad	buffer
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x4
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"GNU C 4.9.2 -mtune=generic -march=x86-64 -g -O0 -std=c99"
.LASF11:
	.string	"main.c"
.LASF0:
	.string	"long unsigned int"
.LASF8:
	.string	"char"
.LASF12:
	.string	"/home/parallels/cursera/ese-coursera-course1/assessments/m2_solution/src"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"main"
.LASF6:
	.string	"long int"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF9:
	.string	"value"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"buffer"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Debian 4.9.2-10+deb8u2) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
