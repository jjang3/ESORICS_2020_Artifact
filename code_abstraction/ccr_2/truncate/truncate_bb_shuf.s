	.section	.text
	.align	16
	#Procedure 0x4014b9
	.globl sub_4014b9
	.type sub_4014b9, @function
sub_4014b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4014ba
	.globl sub_4014ba
	.type sub_4014ba, @function
sub_4014ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014f2
	.globl sub_4014f2
	.type sub_4014f2, @function
sub_4014f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40153a
	.globl sub_40153a
	.type sub_40153a, @function
sub_40153a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40155c
	.globl sub_40155c
	.type sub_40155c, @function
sub_40155c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40156d
	.globl sub_40156d
	.type sub_40156d, @function
sub_40156d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401586
	.globl sub_401586
	.type sub_401586, @function
sub_401586:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401590

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r15, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	test	eax, eax
	je	.label_15
	cmp	eax, 1
	je	.label_16
	cmp	eax, 3
	jne	.label_17
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_10
.label_14:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_11
	mov	dword ptr [rax], 0x4b
	jmp	.label_10
.label_15:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_12
	cmp	rbx, r12
	jle	.label_9
.label_12:
	cmp	rbx, 0x40000000
	jl	.label_14
.label_16:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_10
.label_11:
	mov	dword ptr [rax], 0x22
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x401613
	.globl sub_401613
	.type sub_401613, @function
sub_401613:

	nop	word ptr cs:[rax + rax]
.label_17:
	call	__errno_location
.label_10:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r15
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_9:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401670

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_19
	cmp	byte ptr [rax], 0x43
	jne	.label_21
	cmp	byte ptr [rax + 1], 0
	je	.label_18
.label_21:
	mov	esi, OFFSET FLAT:label_20
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_19
.label_18:
	xor	ebx, ebx
.label_19:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016a1
	.globl sub_4016a1
	.type sub_4016a1, @function
sub_4016a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4016c9
	.globl sub_4016c9
	.type sub_4016c9, @function
sub_4016c9:

	nop	dword ptr [rax]
.label_26:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016d5
	.globl sub_4016d5
	.type sub_4016d5, @function
sub_4016d5:

	nop	word ptr cs:[rax + rax]
.label_24:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016e6
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_23
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_26
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_25
	call	free
	xor	eax, eax
	jmp	.label_22
.label_23:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_24
	mov	qword ptr [rsi], rbx
.label_25:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_22
	test	rax, rax
	je	.label_24
.label_22:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401740

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_27
	test	r15, r15
	je	.label_28
.label_27:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_28:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40177c
	.globl sub_40177c
	.type sub_40177c, @function
sub_40177c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401780

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_32
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_31
	cmp	dword ptr [rbp], 0x20
	jne	.label_31
.label_32:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_34
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_31:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_33
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_33:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_34:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x401840
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_35:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_35
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401861
	.globl sub_401861
	.type sub_401861, @function
sub_401861:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40187a
	.globl sub_40187a
	.type sub_40187a, @function
sub_40187a:

	nop	word ptr [rax + rax]
.label_37:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401885
	.globl sub_401885
	.type sub_401885, @function
sub_401885:

	nop	dword ptr [rax + rax]
.label_38:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_36
	test	rax, rax
	je	.label_37
.label_36:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018a1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_37
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_38
	test	rbx, rbx
	jne	.label_38
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018d0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4018e8
	.globl sub_4018e8
	.type sub_4018e8, @function
sub_4018e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_39
	test	rbx, rbx
	jne	.label_39
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_41:
	call	xalloc_die
.label_39:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_40
	test	rax, rax
	je	.label_41
.label_40:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401920

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_42
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_43
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401945
	.globl sub_401945
	.type sub_401945, @function
sub_401945:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401950
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019be
	.globl sub_4019be
	.type sub_4019be, @function
sub_4019be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4019c0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019cf
	.globl sub_4019cf
	.type sub_4019cf, @function
sub_4019cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4019d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019d8
	.globl sub_4019d8
	.type sub_4019d8, @function
sub_4019d8:

	nop	dword ptr [rax + rax]
.label_53:
	test	rcx, rcx
	jne	.label_47
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_47:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_50
.label_52:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_48
	test	rbx, rbx
	jne	.label_48
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_51:
	call	xalloc_die
.label_50:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a36
	.globl sub_401a36
	.type sub_401a36, @function
sub_401a36:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a3f
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_53
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_51
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_52
.label_48:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_49
	test	rax, rax
	je	.label_51
.label_49:
	pop	rbx
	ret	
.label_73:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401ab8
	.globl sub_401ab8
	.type sub_401ab8, @function
sub_401ab8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401abd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_62
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_67
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_55
	mov	ecx, OFFSET FLAT:label_56
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401ce0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_42
	call	setlocale
	mov	edi, OFFSET FLAT:label_79
	mov	esi, OFFSET FLAT:label_80
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_79
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r13d, r13d
	movabs	r12, 0x7fffffffffffffff
	xor	ebp, ebp
	jmp	.label_86
.label_552:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
.label_86:
	mov	edx, OFFSET FLAT:label_102
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_109
	add	eax, -0x63
	cmp	eax, 0x10
	ja	.label_129
	jmp	qword ptr [(rax * 8) + label_116]
.label_550:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_86
.label_551:
	mov	byte ptr [rip + block_mode],  1
	jmp	.label_86
.label_553:
	mov	rbx, qword ptr [rip + optarg]
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	je	.label_126
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ebp, byte ptr [rbx]
	mov	rcx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	jne	.label_134
	dec	rbx
.label_126:
	movsx	ecx, bpl
	add	ecx, -0x25
	cmp	ecx, 0x19
	ja	.label_81
	jmp	qword ptr [(rcx * 8) + label_149]
.label_546:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 5
	jmp	.label_81
.label_547:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 4
	jmp	.label_81
.label_548:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 3
	jmp	.label_81
.label_549:
	inc	rbx
	mov	qword ptr [rip + optarg],  rbx
	mov	r13d, 2
.label_81:
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_150
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	jne	.label_143
	dec	rbx
.label_150:
	cmp	cl, 0x2d
	je	.label_110
	cmp	cl, 0x2b
	jne	.label_123
.label_110:
	test	r13d, r13d
	mov	r13d, 1
	jne	.label_114
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	lea	rsi, [r12 + 1]
	mov	ecx, OFFSET FLAT:label_115
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r12
	mov	r8, rax
	call	xdectoimax
	mov	rbx, rax
	mov	eax, r13d
	or	eax, 1
	mov	bpl, 1
	cmp	eax, 5
	jne	.label_86
	test	rbx, rbx
	jne	.label_86
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_109:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, -1
	jne	.label_151
	movsxd	r13, dword ptr [rip + optind]
	mov	rsi, qword ptr [rip + ref_file]
	test	bpl, bpl
	jne	.label_76
	test	rsi, rsi
	je	.label_82
.label_76:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_87
	test	bpl, bpl
	je	.label_87
	test	rsi, rsi
	jne	.label_91
.label_87:
	test	bpl, bpl
	jne	.label_154
	test	byte ptr [rip + block_mode],  1
	jne	.label_95
.label_154:
	cmp	r13d, r14d
	jge	.label_98
	test	rsi, rsi
	mov	qword ptr [rsp + 0x20], rbx
	je	.label_101
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_111
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_112
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	jns	.label_118
	jmp	.label_100
.label_101:
	mov	rdx, -1
	jmp	.label_122
.label_112:
	mov	rdi, qword ptr [rip + ref_file]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r12d, eax
	test	r12d, r12d
	js	.label_100
	xor	esi, esi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [rsp + 0xc], eax
	mov	edi, r12d
	call	close
	test	rbx, rbx
	js	.label_144
.label_118:
	cmp	bpl, 1
	sbb	rdx, rdx
	or	rdx, rbx
	test	bpl, bpl
	mov	rax, qword ptr [rsp + 0x20]
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x20], rax
.label_122:
	lea	r12, [r15 + r13*8]
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	setne	al
	mov	cl, byte ptr [rip + no_create]
	test	cl, cl
	mov	ecx, 0x801
	mov	r13d, 0x841
	cmovne	r13d, ecx
	mov	qword ptr [rsp + 0x28], rdx
	test	rdx, rdx
	sets	cl
	and	cl, al
	mov	byte ptr [rsp + 0xc], cl
	xor	r14d, r14d
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402041
	.globl sub_402041
	.type sub_402041, @function
sub_402041:

	nop	word ptr cs:[rax + rax]
.label_121:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r14b, 1
.label_78:
	add	r12, 8
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	r12, rcx
	mov	r15, qword ptr [r12 - 8]
	test	r15, r15
	je	.label_119
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	mov	esi, r13d
	call	open
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_133
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	cmp	bl, 1
	jne	.label_136
	lea	rcx, [r12 + 8]
	cmp	dword ptr [rax], 2
	je	.label_135
.label_136:
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x4020e4
	.globl sub_4020e4
	.type sub_4020e4, @function
sub_4020e4:

	nop	word ptr cs:[rax + rax]
.label_133:
	mov	al, byte ptr [rip + block_mode]
	or	al, byte ptr [rsp + 0xc]
	test	al, 1
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x30], r14
	je	.label_92
	mov	edi, 1
	mov	esi, ebp
	lea	rdx, [rsp + 0x38]
	call	__fxstat
	test	eax, eax
	je	.label_88
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
.label_148:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_77
.label_88:
	cmp	byte ptr [rip + block_mode],  1
	mov	rcx, rbx
	jne	.label_92
	mov	rax, qword ptr [rsp + 0x70]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	inc	rax
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jg	.label_105
	movabs	rax, 0x7fffffffffffffff
	cqo	
	idiv	rcx
	cmp	rax, rbx
	jge	.label_132
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	mov	qword ptr [rsp + 0x18], rcx
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	r9, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
	call	error
	jmp	.label_77
.label_132:
	imul	rcx, rbx
.label_92:
	mov	rax, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_85
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	mov	rsi, rax
	jns	.label_96
	movzx	eax, word ptr [rsp + 0x50]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_90
	mov	rsi, qword ptr [rsp + 0x68]
	test	rsi, rsi
	jns	.label_96
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	jmp	.label_128
.label_90:
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	mov	rbx, rcx
	call	lseek
	mov	rcx, rbx
	mov	rsi, rax
	test	rsi, rsi
	js	.label_106
.label_96:
	mov	rax, qword ptr [rsp + 0x10]
	lea	eax, [rax - 2]
	cmp	eax, 3
	ja	.label_131
	jmp	qword ptr [(rax * 8) + label_117]
.label_516:
	cmp	rsi, rcx
	cmova	rcx, rsi
	jmp	.label_85
.label_131:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rsi
	cmp	rcx, rax
	jle	.label_113
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	jmp	.label_128
.label_517:
	cmp	rsi, rcx
	cmovb	rcx, rsi
	jmp	.label_85
.label_518:
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jmp	.label_85
.label_519:
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	mov	rcx, rsi
	jns	.label_85
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
.label_128:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_77
.label_113:
	add	rcx, rsi
.label_85:
	xor	ebx, ebx
	test	rcx, rcx
	mov	r14d, 0
	cmovns	r14, rcx
	mov	edi, ebp
	mov	rsi, r14
	call	ftruncate
	cmp	eax, -1
	jne	.label_108
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x18], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x18]
	mov	rdx, rbx
	mov	r8, r14
	call	error
.label_77:
	mov	bl, 1
.label_108:
	mov	r14, qword ptr [rsp + 0x30]
	or	r14b, bl
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_78
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	jmp	.label_121
.label_106:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	jmp	.label_148
.label_119:
	movzx	eax, r14b
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_151:
	cmp	eax, 0xffffff7d
	je	.label_137
	cmp	eax, 0xffffff7e
	jne	.label_129
	xor	edi, edi
	call	usage
.label_137:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_55
	mov	edx, OFFSET FLAT:label_66
	mov	r8d, OFFSET FLAT:label_97
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_129:
	mov	edi, 1
	call	usage
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	jmp	.label_84
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
.label_84:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_145
	jmp	.label_146
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_93
.label_146:
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	jmp	.label_125
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
.label_125:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_111:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	jmp	.label_142
.label_144:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [r14], eax
.label_100:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
.label_142:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + ref_file]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	.section	.text
	.align	16
	#Procedure 0x402530
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x402584
	.globl sub_402584
	.type sub_402584, @function
sub_402584:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402590
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402598
	.globl sub_402598
	.type sub_402598, @function
sub_402598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4025d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_156
	test	rsi, rsi
	mov	ecx, 1
	je	.label_157
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_157
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_156:
	mov	ecx, 1
.label_157:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40261b
	.globl sub_40261b
	.type sub_40261b, @function
sub_40261b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_158
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_158
	test	byte ptr [rbx + 1], 1
	je	.label_158
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_158:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402653
	.globl sub_402653
	.type sub_402653, @function
sub_402653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_159
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_161
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_159
.label_161:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_159
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_160
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_160:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_159:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4026d4
	.globl sub_4026d4
	.type sub_4026d4, @function
sub_4026d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4026f8
	.globl sub_4026f8
	.type sub_4026f8, @function
sub_4026f8:

	nop	dword ptr [rax + rax]
.label_163:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_162
	call	__errno_location
	mov	dword ptr [rax], 0
.label_162:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40271b

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_163
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_162
	test	cl, cl
	jne	.label_162
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_162
	.section	.text
	.align	16
	#Procedure 0x402760
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_165
	test	r14, r14
	je	.label_164
.label_165:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_164:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402796
	.globl sub_402796
	.type sub_402796, @function
sub_402796:

	nop	word ptr cs:[rax + rax]
.label_166:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027a5
	.globl sub_4027a5
	.type sub_4027a5, @function
sub_4027a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b4
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_166
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x402810
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402846
	.globl sub_402846
	.type sub_402846, @function
sub_402846:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_167
	test	rsi, rsi
	je	.label_167
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_167:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4028c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4028d1
	.globl sub_4028d1
	.type sub_4028d1, @function
sub_4028d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_168
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_168:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402975
	.globl sub_402975
	.type sub_402975, @function
sub_402975:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029ef
	.globl sub_4029ef
	.type sub_4029ef, @function
sub_4029ef:

	nop	
.label_169:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4029f5
	.globl sub_4029f5
	.type sub_4029f5, @function
sub_4029f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a03
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_170
	test	r15, r15
	je	.label_169
.label_170:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_171
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_172
	test	rax, rax
	je	.label_171
.label_172:
	pop	rbx
	ret	
.label_171:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a75
	.globl sub_402a75
	.type sub_402a75, @function
sub_402a75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_173
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_173:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b03
	.globl sub_402b03
	.type sub_402b03, @function
sub_402b03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_174
	test	rax, rax
	je	.label_175
.label_174:
	pop	rbx
	ret	
.label_175:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b2a
	.globl sub_402b2a
	.type sub_402b2a, @function
sub_402b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b30
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b63
	.globl sub_402b63
	.type sub_402b63, @function
sub_402b63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b70

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_176
	cmp	r15, -2
	jb	.label_176
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_176
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_176:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bc6
	.globl sub_402bc6
	.type sub_402bc6, @function
sub_402bc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_177
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_179:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_179
.label_177:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_181
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_180], OFFSET FLAT:slot0
.label_181:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_178
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_178:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c61
	.globl sub_402c61
	.type sub_402c61, @function
sub_402c61:

	nop	word ptr cs:[rax + rax]
.label_186:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_182
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402c90
	.globl sub_402c90
	.type sub_402c90, @function
sub_402c90:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c9f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_186
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_184
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_184
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_183
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_183:
	mov	rbx, r14
.label_184:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d20
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_188
	test	rdx, rdx
	je	.label_188
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_188:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d4b
	.globl sub_402d4b
	.type sub_402d4b, @function
sub_402d4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402d69
	.globl sub_402d69
	.type sub_402d69, @function
sub_402d69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d70

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_189
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_189:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402dd8
	.globl sub_402dd8
	.type sub_402dd8, @function
sub_402dd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402de0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_190
	test	rax, rax
	je	.label_191
.label_190:
	pop	rbx
	ret	
.label_191:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402dfa
	.globl sub_402dfa
	.type sub_402dfa, @function
sub_402dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_192
	mov	edx, OFFSET FLAT:label_202
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_208
.label_192:
	mov	edx, OFFSET FLAT:label_209
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_208:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_197
	jmp	qword ptr [(r12 * 8) + label_198]
.label_554:
	add	rsp, 8
	jmp	.label_196
.label_197:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_196
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_196
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_196
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_196
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_196
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_196
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_196:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403158
	.globl sub_403158
	.type sub_403158, @function
sub_403158:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403221
	.globl sub_403221
	.type sub_403221, @function
sub_403221:

	nop	word ptr cs:[rax + rax]
.label_211:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403235
	.globl sub_403235
	.type sub_403235, @function
sub_403235:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40323f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_211
	call	rpl_calloc
	test	rax, rax
	je	.label_211
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403260

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403283
	.globl sub_403283
	.type sub_403283, @function
sub_403283:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403290
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_212
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_212:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4032f8
	.globl sub_4032f8
	.type sub_4032f8, @function
sub_4032f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40330f
	.globl sub_40330f
	.type sub_40330f, @function
sub_40330f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403310

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x403327
	.globl sub_403327
	.type sub_403327, @function
sub_403327:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403330
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40333e
	.globl sub_40333e
	.type sub_40333e, @function
sub_40333e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403340

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_213
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_216
	cmp	r12d, 0x7fffffff
	je	.label_218
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_214
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_214:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_216:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_219
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_215
.label_219:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_217
	mov	rdi, r14
	call	free
.label_217:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_215:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_213:
	call	abort
.label_218:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4034fd
	.globl sub_4034fd
	.type sub_4034fd, @function
sub_4034fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403513
	.globl sub_403513
	.type sub_403513, @function
sub_403513:

	nop	word ptr cs:[rax + rax]
.label_224:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_220
	mov	eax, OFFSET FLAT:label_221
	jmp	.label_222
	.section	.text
	.align	16
	#Procedure 0x40352f
	.globl sub_40352f
	.type sub_40352f, @function
sub_40352f:

	nop	word ptr cs:[rax + rax]
.label_229:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_223
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_223
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_223
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_223
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_223
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_223
	cmp	byte ptr [rax + 7], 0
	je	.label_224
.label_223:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_225
	mov	eax, OFFSET FLAT:label_226
.label_222:
	cmove	rax, rcx
.label_230:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403582

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_230
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_229
	cmp	ecx, 0x55
	jne	.label_223
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_223
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_223
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_223
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_223
	cmp	byte ptr [rax + 5], 0
	jne	.label_223
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_227
	mov	eax, OFFSET FLAT:label_228
	jmp	.label_222
.label_231:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035f5
	.globl sub_4035f5
	.type sub_4035f5, @function
sub_4035f5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035f7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_231
	test	rdx, rdx
	je	.label_231
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403660
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_232
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_232:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4036cc
	.globl sub_4036cc
	.type sub_4036cc, @function
sub_4036cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403725
	.globl sub_403725
	.type sub_403725, @function
sub_403725:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403730

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_347:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_345
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_322]
.label_468:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_233
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_226
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_469:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_251
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_251
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_265:
	cmp	r14, r11
	jae	.label_259
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_259:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_265
.label_251:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_272
.label_461:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_272
.label_464:
	mov	al, 1
.label_462:
	mov	r12b, 1
.label_465:
	test	r12b, 1
	mov	cl, 1
	je	.label_286
	mov	ecx, eax
.label_286:
	mov	al, cl
.label_463:
	test	r12b, 1
	jne	.label_289
	test	r11, r11
	je	.label_316
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_316:
	mov	r14d, 1
	jmp	.label_292
.label_289:
	xor	r14d, r14d
.label_292:
	mov	ecx, OFFSET FLAT:label_226
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_272
.label_466:
	test	r12b, 1
	jne	.label_303
	test	r11, r11
	je	.label_305
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_305:
	mov	r14d, 1
	jmp	.label_309
.label_467:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_225
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_272
.label_303:
	xor	r14d, r14d
.label_309:
	mov	eax, OFFSET FLAT:label_225
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_272:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_326
	.section	.text
	.align	16
	#Procedure 0x403a1d
	.globl sub_403a1d
	.type sub_403a1d, @function
sub_403a1d:

	nop	dword ptr [rax]
.label_266:
	inc	rsi
.label_326:
	cmp	rbp, -1
	je	.label_242
	cmp	rsi, rbp
	jne	.label_244
	jmp	.label_246
	.section	.text
	.align	16
	#Procedure 0x403a33
	.globl sub_403a33
	.type sub_403a33, @function
sub_403a33:

	nop	word ptr cs:[rax + rax]
.label_242:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_252
.label_244:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_351
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_258
	cmp	rbp, -1
	jne	.label_258
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_258:
	cmp	rbx, rbp
	jbe	.label_273
.label_351:
	xor	r8d, r8d
.label_299:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_275
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_278]
.label_442:
	test	rsi, rsi
	jne	.label_268
	jmp	.label_284
	.section	.text
	.align	16
	#Procedure 0x403ad5
	.globl sub_403ad5
	.type sub_403ad5, @function
sub_403ad5:

	nop	word ptr cs:[rax + rax]
.label_273:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_295
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_299
	jmp	.label_307
.label_295:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_299
.label_446:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_317
	test	rsi, rsi
	jne	.label_319
	cmp	rbp, 1
	je	.label_284
	xor	r13d, r13d
	jmp	.label_261
.label_435:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_324
	cmp	byte ptr [rsp + 6], 0
	jne	.label_288
	cmp	r12d, 2
	jne	.label_329
	mov	eax, r9d
	and	al, 1
	jne	.label_329
	cmp	r14, r11
	jae	.label_332
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_332:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_337
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_337:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_315
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	add	r14, 3
	mov	r9b, 1
.label_329:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_349
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_349:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_235
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_235
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_235
	cmp	r14, r11
	jae	.label_340
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_340:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_336
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_336:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_261
.label_436:
	mov	bl, 0x62
	jmp	.label_255
.label_437:
	mov	cl, 0x74
	jmp	.label_238
.label_438:
	mov	bl, 0x76
	jmp	.label_255
.label_439:
	mov	bl, 0x66
	jmp	.label_255
.label_440:
	mov	cl, 0x72
	jmp	.label_238
.label_443:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_262
	cmp	byte ptr [rsp + 6], 0
	jne	.label_267
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_270
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_283
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_283:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_287
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_287:
	add	r14, 3
	xor	r9d, r9d
.label_262:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_261
.label_444:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_293
	cmp	r12d, 2
	jne	.label_268
	cmp	byte ptr [rsp + 6], 0
	je	.label_268
	jmp	.label_267
.label_445:
	cmp	r12d, 2
	jne	.label_304
	cmp	byte ptr [rsp + 6], 0
	jne	.label_267
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_256
.label_275:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_313
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_247:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_328
	test	r8b, r8b
	je	.label_328
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_261
.label_317:
	test	rsi, rsi
	jne	.label_335
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_335
.label_284:
	mov	dl, 1
.label_441:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_267
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_261:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_237
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_276
	jmp	.label_241
	.section	.text
	.align	16
	#Procedure 0x403e24
	.globl sub_403e24
	.type sub_403e24, @function
sub_403e24:

	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_241
.label_276:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_249
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_256
	jmp	.label_264
	.section	.text
	.align	16
	#Procedure 0x403e6d
	.globl sub_403e6d
	.type sub_403e6d, @function
sub_403e6d:

	nop	dword ptr [rax]
.label_241:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_264
	jmp	.label_256
.label_249:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_264
.label_324:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_266
	xor	r15d, r15d
	jmp	.label_268
.label_304:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_238
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_256
.label_238:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_267
.label_255:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_261
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_288
	cmp	r12d, 2
	jne	.label_290
	mov	eax, r9d
	and	al, 1
	jne	.label_290
	cmp	r14, r11
	jae	.label_344
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_344:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_297
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_297:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	mov	r9b, 1
.label_290:
	cmp	r14, r11
	jae	.label_306
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_306:
	inc	r14
	jmp	.label_325
.label_313:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_314
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_314:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_348:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_334
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_339
	cmp	rbp, -2
	je	.label_343
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_308
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_253:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_350
	bt	rsi, rdx
	jb	.label_240
.label_350:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_253
.label_308:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_285
	xor	r13d, r13d
.label_285:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_348
	jmp	.label_247
.label_235:
	xor	r13d, r13d
	jmp	.label_261
.label_335:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_261
.label_293:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_268
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_268
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_268
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_277
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_248
	cmp	byte ptr [rsp + 6], 0
	jne	.label_296
	cmp	r14, r11
	jae	.label_243
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_243:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_294
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_294:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_263
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_263:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_261
.label_268:
	xor	eax, eax
.label_319:
	xor	r13d, r13d
	jmp	.label_261
.label_328:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x404152
	.globl sub_404152
	.type sub_404152, @function
sub_404152:

	nop	word ptr cs:[rax + rax]
.label_269:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_312:
	test	r8b, r8b
	je	.label_320
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_321
	cmp	r14, r11
	jae	.label_291
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_291:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_321
	.section	.text
	.align	16
	#Procedure 0x40419c
	.globl sub_40419c
	.type sub_40419c, @function
sub_40419c:

	nop	dword ptr [rax]
.label_320:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_307
	cmp	r12d, 2
	jne	.label_333
	mov	eax, r9d
	and	al, 1
	jne	.label_333
	cmp	r14, r11
	jae	.label_338
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_338:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_341
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_341:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_346
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_346:
	add	r14, 3
	mov	r9b, 1
.label_333:
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_234
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_234:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_239
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_239:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_321:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_256
	test	r9b, 1
	je	.label_257
	mov	ebx, eax
	and	bl, 1
	jne	.label_257
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_301
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_301:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_310
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_310:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_257:
	cmp	r14, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_269
	.section	.text
	.align	16
	#Procedure 0x4042a3
	.globl sub_4042a3
	.type sub_4042a3, @function
sub_4042a3:

	nop	word ptr cs:[rax + rax]
.label_256:
	test	r9b, 1
	je	.label_279
	and	al, 1
	jne	.label_279
	cmp	r14, r11
	jae	.label_281
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_281:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_280
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_280:
	add	r14, 2
	xor	r9d, r9d
.label_279:
	mov	ebx, r15d
.label_325:
	cmp	r14, r11
	jae	.label_318
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_318:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_266
.label_339:
	xor	r13d, r13d
.label_334:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_247
.label_343:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_274
	mov	rsi, qword ptr [rsp + 0x58]
.label_311:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_331
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_311
	xor	r13d, r13d
	jmp	.label_247
.label_274:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_247
.label_331:
	xor	r13d, r13d
	jmp	.label_247
.label_277:
	xor	r13d, r13d
	jmp	.label_261
.label_248:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x404378
	.globl sub_404378
	.type sub_404378, @function
sub_404378:

	nop	dword ptr [rax + rax]
.label_246:
	mov	rcx, rsi
.label_252:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_323
	or	al, dl
	je	.label_327
.label_323:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_330
	or	al, dl
	jne	.label_330
	test	r10b, 1
	jne	.label_342
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_330
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_347
.label_330:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_352
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_236
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_236
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	r14, r11
	jae	.label_302
	mov	byte ptr [rcx + r14], al
.label_302:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_250
	jmp	.label_236
.label_288:
	mov	qword ptr [rsp + 0x20], rbp
.label_307:
	mov	rdx, rdi
	jmp	.label_254
.label_267:
	mov	qword ptr [rsp + 0x20], rbp
.label_240:
	mov	rdx, rdi
	mov	eax, 2
.label_282:
	mov	qword ptr [rsp + 0x38], rax
.label_254:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_298:
	mov	r14, rax
.label_300:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_327:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_254
.label_342:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_298
.label_352:
	mov	rcx, qword ptr [rsp + 8]
.label_236:
	cmp	r14, r11
	jae	.label_300
	mov	byte ptr [rcx + r14], 0
	jmp	.label_300
.label_296:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_282
.label_345:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404537
	.globl sub_404537
	.type sub_404537, @function
sub_404537:

	nop	word ptr [rax + rax]
.label_354:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_353
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_353:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404574
	.globl sub_404574
	.type sub_404574, @function
sub_404574:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404576

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_355
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_355
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_354
.label_355:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4045b0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404625
	.globl sub_404625
	.type sub_404625, @function
sub_404625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_356
	test	rdx, rdx
	je	.label_356
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_356:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40469a
	.globl sub_40469a
	.type sub_40469a, @function
sub_40469a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_358
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_62
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404714
	.globl sub_404714
	.type sub_404714, @function
sub_404714:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404720

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_371
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_373
.label_371:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_373:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_362
	cmp	r10d, 0x29
	jae	.label_370
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_372
.label_370:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_372:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_362
	cmp	r10d, 0x29
	jae	.label_368
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_369
.label_368:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_369:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_362
	cmp	r10d, 0x29
	jae	.label_366
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_367
.label_366:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_367:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_362
	cmp	r10d, 0x29
	jae	.label_364
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_365
.label_364:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_365:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_362
	cmp	r10d, 0x29
	jae	.label_361
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_363
.label_361:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_363:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_362
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_362
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_362
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_362
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_362:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404902
	.globl sub_404902
	.type sub_404902, @function
sub_404902:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_374
	mov	qword ptr [rax], rbx
.label_374:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049fc
	.globl sub_4049fc
	.type sub_4049fc, @function
sub_4049fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_375
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_422
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_393
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_391
	mov	r13d, 1
.label_393:
	test	r14, r14
	je	.label_399
	mov	r15d, r13d
	jmp	.label_405
.label_422:
	mov	r13d, 4
	test	r14, r14
	je	.label_391
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_391
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_391
.label_405:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_414
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_410
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_378
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_378
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_378
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_384
	cmp	eax, 0x44
	je	.label_384
	cmp	eax, 0x69
	jne	.label_378
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_378
.label_399:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_391
.label_384:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_378:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_410
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_400]
.label_487:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_408
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_408:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_418
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_418:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_425
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_425:
	or	ecx, r14d
	jmp	.label_381
.label_410:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_385
.label_488:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_381
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_381
.label_489:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_397
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_397:
	cmp	rsi, rdi
	jl	.label_412
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_412:
	or	ecx, r11d
	jmp	.label_381
.label_491:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_419
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_419:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_379
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_379:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_388
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_388:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_395
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_395:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_381
.label_485:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_402
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_398
.label_486:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_416
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_416:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_382
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_382:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_424
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_424:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_390
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_390:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_401
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_401:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_411
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_411:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_381
.label_490:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_421
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_421:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_383
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_383:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_389
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_389:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_396
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_396:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_409
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_409:
	or	ecx, r14d
	jmp	.label_381
.label_492:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_417
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_417:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_376
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_376:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_387
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_387:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_392
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_392:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_403
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_403:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_413
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_413:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_420
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_420:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_377
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_404
.label_493:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_386
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_386:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_394
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_394:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_407
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_407:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_415
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_415:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_423
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_423:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_380
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_380:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_377
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_404:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_377:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_381
.label_494:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_402
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_398
.label_495:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_406
.label_402:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_381
.label_406:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_398:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_381:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_414:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_385:
	mov	r13d, r15d
.label_391:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_375:
	mov	edi, OFFSET FLAT:label_426
	mov	esi, OFFSET FLAT:label_427
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_428
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405318
	.globl sub_405318
	.type sub_405318, @function
sub_405318:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40532a
	.globl sub_40532a
	.type sub_40532a, @function
sub_40532a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_44]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_46]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_429
	test	rsi, rsi
	je	.label_429
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_429:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40539c
	.globl sub_40539c
	.type sub_40539c, @function
sub_40539c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405405
	.globl sub_405405
	.type sub_405405, @function
sub_405405:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405412
	.globl sub_405412
	.type sub_405412, @function
sub_405412:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405436
	.globl sub_405436
	.type sub_405436, @function
sub_405436:

	nop	word ptr cs:[rax + rax]
