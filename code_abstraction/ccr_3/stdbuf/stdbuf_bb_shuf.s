	.section	.text
	.align	32
	#Procedure 0x401669
	.globl sub_401669
	.type sub_401669, @function
sub_401669:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40166a
	.globl sub_40166a
	.type sub_40166a, @function
sub_40166a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a2
	.globl sub_4016a2
	.type sub_4016a2, @function
sub_4016a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016ea
	.globl sub_4016ea
	.type sub_4016ea, @function
sub_4016ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40170c
	.globl sub_40170c
	.type sub_40170c, @function
sub_40170c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40171d
	.globl sub_40171d
	.type sub_40171d, @function
sub_40171d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401736
	.globl sub_401736
	.type sub_401736, @function
sub_401736:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401740
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401748
	.globl sub_401748
	.type sub_401748, @function
sub_401748:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401750

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
	jne	.label_13
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_19
	cmp	ecx, 0x55
	jne	.label_9
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_9
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_9
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_9
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_9
	cmp	byte ptr [rax + 5], 0
	jne	.label_9
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_17
	mov	eax, OFFSET FLAT:label_18
	jmp	.label_12
.label_19:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_9
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_9
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_9
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_9
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_9
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_9
	cmp	byte ptr [rax + 7], 0
	je	.label_14
.label_9:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_15
	mov	eax, OFFSET FLAT:label_16
.label_12:
	cmove	rax, rcx
.label_13:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_14:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_10
	mov	eax, OFFSET FLAT:label_11
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x401815
	.globl sub_401815
	.type sub_401815, @function
sub_401815:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401820
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_20
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_21
	test	rax, rax
	je	.label_20
.label_21:
	pop	rbx
	ret	
.label_20:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401855
	.globl sub_401855
	.type sub_401855, @function
sub_401855:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401860
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
	je	.label_22
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
.label_22:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4018c8
	.globl sub_4018c8
	.type sub_4018c8, @function
sub_4018c8:

	nop	dword ptr [rax + rax]
.label_23:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4018d5
	.globl sub_4018d5
	.type sub_4018d5, @function
sub_4018d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e3

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
	je	.label_24
	test	r15, r15
	je	.label_23
.label_24:
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
	.align	32
	#Procedure 0x401920

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
	jne	.label_25
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_25
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_26
.label_25:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_26:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_27
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_27:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40198e
	.globl sub_40198e
	.type sub_40198e, @function
sub_40198e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401990

	.globl xreadlink
	.type xreadlink, @function
xreadlink:
	push	rbx
	call	areadlink
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_29
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_28
.label_29:
	mov	rax, rbx
	pop	rbx
	ret	
.label_28:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019b2
	.globl sub_4019b2
	.type sub_4019b2, @function
sub_4019b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c0

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
	je	.label_30
	cmp	r15, -2
	jb	.label_30
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_30
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_30:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a16
	.globl sub_401a16
	.type sub_401a16, @function
sub_401a16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a20
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
	je	.label_31
	mov	qword ptr [rax], rbx
.label_31:
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
	.align	32
	#Procedure 0x401b0c
	.globl sub_401b0c
	.type sub_401b0c, @function
sub_401b0c:

	nop	dword ptr [rax]
.label_35:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b15
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_35
	test	rsi, rsi
	je	.label_35
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.align	32
	#Procedure 0x401bd5
	.globl sub_401bd5
	.type sub_401bd5, @function
sub_401bd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401be0
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
	.align	32
	#Procedure 0x401bf3
	.globl sub_401bf3
	.type sub_401bf3, @function
sub_401bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_36
	test	rax, rax
	je	.label_37
.label_36:
	pop	rbx
	ret	
.label_37:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c1a
	.globl sub_401c1a
	.type sub_401c1a, @function
sub_401c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_38
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_41
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_42
	call	free
	xor	eax, eax
	jmp	.label_39
.label_40:
	call	xalloc_die
.label_38:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_40
	mov	qword ptr [rsi], rbx
.label_42:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_39
	test	rax, rax
	je	.label_40
.label_39:
	pop	rbx
	ret	
.label_41:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c84
	.globl sub_401c84
	.type sub_401c84, @function
sub_401c84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_46:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_43
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_46
.label_43:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_45
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_44
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_44:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_45:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d26
	.globl sub_401d26
	.type sub_401d26, @function
sub_401d26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401d41
	.globl sub_401d41
	.type sub_401d41, @function
sub_401d41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r15, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_89
	call	setlocale
	mov	edi, OFFSET FLAT:label_97
	mov	esi, OFFSET FLAT:label_98
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_97
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 0x80001f
	lea	r14, [rsp + 0x28]
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x401db7
	.globl sub_401db7
	.type sub_401db7, @function
sub_401db7:

	nop	word ptr [rax + rax]
.label_105:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [(rbp * 8) + stdbuf],  rax
.label_94:
	mov	edx, OFFSET FLAT:label_122
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_127
	cmp	eax, 0x65
	mov	ecx, 2
	je	.label_54
	cmp	eax, 0x6f
	je	.label_55
	cmp	eax, 0x69
	jne	.label_51
	xor	ecx, ecx
	jmp	.label_54
.label_55:
	mov	ecx, 1
.label_54:
	lea	rbp, [rcx + rcx*2]
	mov	dword ptr [(rbp * 8) + label_57],  eax
	mov	rdi, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rdi]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_58
	inc	rdi
	nop	word ptr [rax + rax]
.label_72:
	bt	ebx, ecx
	jae	.label_71
	mov	qword ptr [rip + optarg],  rdi
	movsx	ecx, byte ptr [rdi]
	add	ecx, -9
	inc	rdi
	cmp	ecx, 0x18
	jb	.label_72
.label_71:
	dec	rdi
.label_58:
	mov	qword ptr [(rbp * 8) + label_67],  rdi
	mov	cl, byte ptr [rdi]
	cmp	eax, 0x69
	jne	.label_68
	cmp	cl, 0x4c
	je	.label_88
.label_68:
	cmp	cl, 0x4c
	jne	.label_91
	cmp	byte ptr [rdi + 1], 0
	je	.label_94
.label_91:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_100
	mov	rcx, r14
	call	xstrtoumax
	test	eax, eax
	je	.label_105
	cmp	eax, 1
	jne	.label_108
	mov	ebx, 0x4b
	call	__errno_location
	jmp	.label_112
.label_127:
	cmp	eax, -1
	jne	.label_113
	movsxd	r13, dword ptr [rip + optind]
	cmp	r13d, r12d
	jge	.label_117
	mov	rax, qword ptr [rip + label_67]
	test	rax, rax
	je	.label_121
	mov	bl, byte ptr [rax]
	mov	r8d, dword ptr [rip + label_57]
	mov	eax, r8d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_124
	movsxd	rbp, r8d
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r8d, dword ptr [rax + rbp*4]
.label_124:
	cmp	bl, 0x4c
	jne	.label_48
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
	jmp	.label_61
.label_121:
	xor	eax, eax
	jmp	.label_62
.label_48:
	mov	r9, qword ptr [rip + stdbuf]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
.label_61:
	test	eax, eax
	js	.label_73
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_81
	mov	al, 1
.label_62:
	mov	rcx, qword ptr [rip + label_83]
	test	rcx, rcx
	je	.label_84
	mov	bl, byte ptr [rcx]
	mov	r8d, dword ptr [rip + label_92]
	mov	eax, r8d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_93
	movsxd	rbp, r8d
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r8d, dword ptr [rax + rbp*4]
.label_93:
	cmp	bl, 0x4c
	jne	.label_106
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
	jmp	.label_114
.label_106:
	mov	r9, qword ptr [rip + label_115]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
.label_114:
	test	eax, eax
	js	.label_73
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_81
	mov	al, 1
.label_84:
	mov	rcx, qword ptr [rip + label_130]
	test	rcx, rcx
	je	.label_131
	mov	bl, byte ptr [rcx]
	mov	r8d, dword ptr [rip + label_128]
	mov	eax, r8d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_129
	movsxd	rbp, r8d
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r8d, dword ptr [rax + rbp*4]
.label_129:
	cmp	bl, 0x4c
	jne	.label_66
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
	jmp	.label_75
.label_131:
	test	al, al
	jne	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	jmp	.label_79
.label_66:
	mov	r9, qword ptr [rip + label_82]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
.label_75:
	test	eax, eax
	js	.label_73
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_81
.label_123:
	mov	rbp, qword ptr [rip + program_name]
	mov	esi, 0x2f
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	qword ptr [rsp + 8], r15
	je	.label_111
	mov	rdi, rbp
	call	dir_name
	mov	rbx, rax
	mov	qword ptr [rip + program_path],  rbx
	jmp	.label_116
.label_111:
	mov	edi, OFFSET FLAT:label_119
	call	xreadlink
	mov	r14, rax
	test	r14, r14
	je	.label_59
	mov	rdi, r14
	call	dir_name
	mov	qword ptr [rip + program_path],  rax
	jmp	.label_47
.label_59:
	mov	edi, OFFSET FLAT:label_125
	call	getenv
	xor	r14d, r14d
	test	rax, rax
	je	.label_47
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_52
	mov	rdi, r14
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x40211d
	.globl sub_40211d
	.type sub_40211d, @function
sub_40211d:

	nop	dword ptr [rax]
.label_80:
	mov	rdi, rbx
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
.label_53:
	call	strtok
	test	rax, rax
	je	.label_47
	xor	edx, edx
	mov	rdi, rax
	mov	rsi, rbp
	call	file_name_concat
	mov	rbx, rax
	mov	esi, 1
	mov	rdi, rbx
	call	access
	test	eax, eax
	jne	.label_80
	mov	rdi, rbx
	call	dir_name
	mov	qword ptr [rip + program_path],  rax
	mov	rdi, rbx
	call	free
.label_47:
	mov	rdi, r14
	call	free
	mov	rbx, qword ptr [rip + program_path]
.label_116:
	mov	r15, r13
	test	rbx, rbx
	jne	.label_99
	mov	edi, OFFSET FLAT:label_101
	call	xstrdup
	mov	rbx, rax
	mov	qword ptr [rip + program_path],  rbx
.label_99:
	mov	edi, OFFSET FLAT:label_77
	call	getenv
	mov	r14, rax
	mov	qword ptr [rsp + 0x10], rbx
	mov	eax, OFFSET FLAT:label_109
	movq	xmm0, rax
	movups	xmmword ptr [rsp + 0x18], xmm0
	cmp	byte ptr [rbx], 0
	je	.label_110
	lea	r13, [rsp + 0x18]
	lea	r12, [rsp]
	lea	rbp, [rsp + 0x28]
.label_60:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_90
	mov	r8d, OFFSET FLAT:label_65
	xor	eax, eax
	mov	rdi, r12
	mov	rcx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_73
	mov	rsi, qword ptr [rsp]
	mov	edi, 1
	mov	rdx, rbp
	call	__xstat
	test	eax, eax
	mov	rbx, qword ptr [rsp]
	je	.label_50
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r13], 0
	je	.label_56
	mov	rbx, qword ptr [r13]
	add	r13, 8
	cmp	byte ptr [rbx], 0
	jne	.label_60
.label_110:
	mov	edi, OFFSET FLAT:label_65
	call	xstrdup
	mov	rbx, rax
	mov	qword ptr [rsp], rbx
.label_50:
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	test	r14, r14
	je	.label_70
	mov	edx, OFFSET FLAT:label_76
	mov	ecx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	r8, r14
	mov	r9, rbx
	call	__asprintf_chk
	jmp	.label_126
.label_70:
	mov	edx, OFFSET FLAT:label_87
	mov	ecx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	r8, rbx
	call	__asprintf_chk
.label_126:
	test	eax, eax
	js	.label_95
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_81
	mov	rax, qword ptr [rsp + 8]
	lea	rbx, [rax + r15*8]
	mov	rdi, qword ptr [rip + program_path]
	call	free
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbx
	call	execvp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	cmp	r14d, 2
	sete	bpl
	or	ebp, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_73:
	call	xalloc_die
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_65
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_113:
	cmp	eax, 0xffffff7d
	je	.label_74
	cmp	eax, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_81:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	jmp	.label_96
.label_74:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_102
	mov	edx, OFFSET FLAT:label_103
	mov	r8d, OFFSET FLAT:label_104
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	jmp	.label_79
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
.label_79:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_95:
	call	xalloc_die
.label_51:
	mov	edi, 0x7d
	call	usage
.label_108:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_112:
	mov	dword ptr [rax], ebx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rip + optarg]
.label_96:
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402440

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
	.align	32
	#Procedure 0x402459
	.globl sub_402459
	.type sub_402459, @function
sub_402459:

	nop	dword ptr [rax]
.label_132:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402465
	.globl sub_402465
	.type sub_402465, @function
sub_402465:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402469

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
	je	.label_133
	test	r15, r15
	je	.label_132
.label_133:
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
	.align	32
	#Procedure 0x4024a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_134
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_134
	test	byte ptr [rbx + 1], 1
	je	.label_134
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_134:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4024d3
	.globl sub_4024d3
	.type sub_4024d3, @function
sub_4024d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024e0
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
	.align	32
	#Procedure 0x4024f8
	.globl sub_4024f8
	.type sub_4024f8, @function
sub_4024f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40250e
	.globl sub_40250e
	.type sub_40250e, @function
sub_40250e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402510

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
	js	.label_138
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_141
	cmp	r12d, 0x7fffffff
	je	.label_136
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
	jne	.label_139
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_139:
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
.label_141:
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
	jbe	.label_137
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_140
.label_137:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_135
	mov	rdi, r14
	call	free
.label_135:
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
.label_140:
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
.label_138:
	call	abort
.label_136:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4026cd
	.globl sub_4026cd
	.type sub_4026cd, @function
sub_4026cd:

	nop	dword ptr [rax]
.label_147:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
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
	.align	32
	#Procedure 0x402708
	.globl sub_402708
	.type sub_402708, @function
sub_402708:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40270d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_147
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_103
	mov	ecx, OFFSET FLAT:label_146
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_152
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_152
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_146
	mov	ecx, OFFSET FLAT:label_102
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_102
	mov	ecx, OFFSET FLAT:label_154
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402930
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
	.align	32
	#Procedure 0x402966
	.globl sub_402966
	.type sub_402966, @function
sub_402966:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402970

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x402a1f
	.globl sub_402a1f
	.type sub_402a1f, @function
sub_402a1f:

	nop	
.label_186:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_170
	or	al, dl
	jne	.label_170
	test	dil, 1
	jne	.label_185
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_170
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_188
	jmp	.label_170
.label_478:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_193
	test	rbp, rbp
	je	.label_196
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_196:
	mov	r14d, 1
	jmp	.label_199
.label_479:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_15
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_202
.label_193:
	xor	r14d, r14d
.label_199:
	mov	eax, OFFSET FLAT:label_15
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_225
	.section	.text
	.align	32
	#Procedure 0x402aef
	.globl sub_402aef
	.type sub_402aef, @function
sub_402aef:

	nop	
.label_188:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_223
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_231]
.label_480:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_237
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_16
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_481:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_200
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_200
	xor	r14d, r14d
	nop	
.label_251:
	cmp	r14, rbp
	jae	.label_230
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_230:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_251
.label_200:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_202
.label_473:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_202
.label_476:
	mov	al, 1
.label_474:
	mov	r12b, 1
.label_477:
	test	r12b, 1
	mov	cl, 1
	je	.label_279
	mov	ecx, eax
.label_279:
	mov	al, cl
.label_475:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_281
	test	rbp, rbp
	je	.label_286
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_286:
	mov	r14d, 1
	jmp	.label_162
.label_281:
	xor	r14d, r14d
.label_162:
	mov	ecx, OFFSET FLAT:label_16
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_225:
	mov	sil, r12b
.label_202:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_175
	.section	.text
	.align	32
	#Procedure 0x402cb1
	.globl sub_402cb1
	.type sub_402cb1, @function
sub_402cb1:

	nop	word ptr cs:[rax + rax]
.label_177:
	inc	r12
.label_175:
	cmp	r11, -1
	je	.label_209
	cmp	r12, r11
	jne	.label_212
	jmp	.label_215
	.section	.text
	.align	32
	#Procedure 0x402cd3
	.globl sub_402cd3
	.type sub_402cd3, @function
sub_402cd3:

	nop	word ptr cs:[rax + rax]
.label_209:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_272
.label_212:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_224
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_229
	cmp	r11, -1
	jne	.label_229
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_229:
	cmp	rbx, r11
	jbe	.label_243
.label_224:
	xor	esi, esi
.label_213:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_245
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_248]
.label_502:
	test	r12, r12
	jne	.label_167
	jmp	.label_254
	.section	.text
	.align	32
	#Procedure 0x402d66
	.globl sub_402d66
	.type sub_402d66, @function
sub_402d66:

	nop	word ptr cs:[rax + rax]
.label_243:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_262
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_213
	jmp	.label_174
.label_262:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_213
.label_506:
	xor	eax, eax
	cmp	r11, -1
	je	.label_275
	test	r12, r12
	jne	.label_278
	cmp	r11, 1
	je	.label_254
	xor	r13d, r13d
	jmp	.label_183
.label_495:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_283
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_174
	cmp	r8d, 2
	jne	.label_166
	mov	eax, r9d
	and	al, 1
	jne	.label_166
	cmp	r14, rbp
	jae	.label_169
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_169:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_178
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_178:
	add	r14, 3
	mov	r9b, 1
.label_166:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_184
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_184:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_205
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_205
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_205
	cmp	r14, rbp
	jae	.label_256
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_256:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_274
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_274:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_183
.label_496:
	mov	bl, 0x62
	jmp	.label_211
.label_497:
	mov	cl, 0x74
	jmp	.label_203
.label_498:
	mov	bl, 0x76
	jmp	.label_211
.label_499:
	mov	bl, 0x66
	jmp	.label_211
.label_500:
	mov	cl, 0x72
	jmp	.label_203
.label_503:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_221
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_207
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_232
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_246
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_246:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	add	r14, 3
	xor	r9d, r9d
.label_221:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_183
.label_504:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_257
	cmp	r8d, 2
	jne	.label_167
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_167
	jmp	.label_207
.label_505:
	cmp	r8d, 2
	jne	.label_266
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_207
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_280
.label_245:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_273
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_259
.label_275:
	test	r12, r12
	jne	.label_163
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_163
.label_254:
	mov	dl, 1
.label_501:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_207
	xor	eax, eax
	mov	r13b, dl
.label_183:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_176
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_179
	jmp	.label_181
	.section	.text
	.align	32
	#Procedure 0x403044
	.globl sub_403044
	.type sub_403044, @function
sub_403044:

	nop	word ptr cs:[rax + rax]
.label_176:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_181
.label_179:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_164
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_189
	.section	.text
	.align	32
	#Procedure 0x40307d
	.globl sub_40307d
	.type sub_40307d, @function
sub_40307d:

	nop	dword ptr [rax]
.label_181:
	test	sil, sil
.label_189:
	mov	ebx, r15d
	je	.label_192
	jmp	.label_195
.label_164:
	mov	ebx, r15d
	jmp	.label_195
.label_283:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_177
	xor	r15d, r15d
	jmp	.label_167
.label_266:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_203
	xor	eax, eax
	mov	r15b, 0x5c
.label_280:
	xor	r13d, r13d
	jmp	.label_192
.label_203:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_207
.label_211:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_183
	nop	
.label_195:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_174
	cmp	r8d, 2
	jne	.label_222
	mov	eax, r9d
	and	al, 1
	jne	.label_222
	cmp	r14, rbp
	jae	.label_228
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_233:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_236:
	add	r14, 3
	mov	r9b, 1
.label_222:
	cmp	r14, rbp
	jae	.label_244
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_244:
	inc	r14
	jmp	.label_242
.label_273:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_249
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_249:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_190
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_165:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_267
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_276
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_182
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_284
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_270:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_252
	bt	rsi, rdx
	jb	.label_207
.label_252:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_270
.label_284:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_269
	xor	r13d, r13d
.label_269:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_165
	jmp	.label_255
.label_205:
	xor	r13d, r13d
	jmp	.label_183
.label_163:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_183
.label_257:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_167
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_167
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_167
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_206
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_241
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_218
	cmp	r14, rbp
	jae	.label_219
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_226
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_226:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_180
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_180:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_197
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_197:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_241:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_183
.label_167:
	xor	eax, eax
.label_278:
	xor	r13d, r13d
	jmp	.label_183
.label_190:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_227:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_263
	cmp	rbp, -1
	je	.label_265
	cmp	rbp, -2
	je	.label_267
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_271
	xor	r13d, r13d
.label_271:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_227
	jmp	.label_255
.label_267:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_234
	lea	rax, [r10 + r12]
.label_253:
	cmp	byte ptr [rax + rsi], 0
	je	.label_234
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_253
.label_234:
	mov	qword ptr [rsp + 0x40], rsi
.label_276:
	xor	r13d, r13d
	jmp	.label_182
.label_265:
	xor	r13d, r13d
.label_263:
	mov	r10, qword ptr [rsp + 0x28]
.label_182:
	mov	r12, qword ptr [rsp + 0x40]
.label_255:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_259:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_173
	test	al, al
	je	.label_173
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_183
.label_173:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_187
	.section	.text
	.align	32
	#Procedure 0x403477
	.globl sub_403477
	.type sub_403477, @function
sub_403477:

	nop	word ptr [rax + rax]
.label_277:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_187:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_194
	test	sil, 1
	je	.label_204
	cmp	r14, rbp
	jae	.label_198
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_198:
	inc	r14
	xor	esi, esi
	jmp	.label_204
	.section	.text
	.align	32
	#Procedure 0x4034b5
	.globl sub_4034b5
	.type sub_4034b5, @function
sub_4034b5:

	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_174
	cmp	r8d, 2
	jne	.label_214
	mov	eax, r9d
	and	al, 1
	jne	.label_214
	cmp	r14, rbp
	jae	.label_217
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_217:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_220
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_220:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_216
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_216:
	add	r14, 3
	mov	r9b, 1
.label_214:
	cmp	r14, rbp
	jae	.label_235
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_235:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_239
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_239:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_247
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_247:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_204:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_192
	test	r9b, 1
	je	.label_258
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_191
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_261
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_261:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_268
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_268:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_258
	.section	.text
	.align	32
	#Procedure 0x4035c6
	.globl sub_4035c6
	.type sub_4035c6, @function
sub_4035c6:

	nop	word ptr cs:[rax + rax]
.label_191:
	mov	rbx, rcx
.label_258:
	cmp	r14, rbp
	jae	.label_277
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_277
	.section	.text
	.align	32
	#Procedure 0x4035ee
	.globl sub_4035ee
	.type sub_4035ee, @function
sub_4035ee:

	nop	
.label_192:
	test	r9b, 1
	je	.label_282
	and	al, 1
	jne	.label_282
	cmp	r14, rbp
	jae	.label_285
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_285:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_210
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_210:
	add	r14, 2
	xor	r9d, r9d
.label_282:
	mov	ebx, r15d
.label_242:
	cmp	r14, rbp
	jae	.label_172
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_172:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_177
.label_206:
	xor	r13d, r13d
	jmp	.label_183
	.section	.text
	.align	32
	#Procedure 0x403651
	.globl sub_403651
	.type sub_403651, @function
sub_403651:

	nop	word ptr cs:[rax + rax]
.label_215:
	mov	rcx, r12
.label_272:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_186
	or	al, dl
	jne	.label_186
	mov	r11, rcx
	jmp	.label_174
.label_207:
	mov	eax, 2
.label_264:
	mov	qword ptr [rsp + 0x38], rax
.label_174:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_208:
	mov	r14, rax
.label_260:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_170:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_201
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_168
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_168
	inc	rdx
	nop	dword ptr [rax + rax]
.label_240:
	cmp	r14, rbp
	jae	.label_238
	mov	byte ptr [rcx + r14], al
.label_238:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_240
	jmp	.label_168
.label_185:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_208
.label_201:
	mov	rcx, qword ptr [rsp + 0x10]
.label_168:
	cmp	r14, rbp
	jae	.label_260
	mov	byte ptr [rcx + r14], 0
	jmp	.label_260
.label_218:
	mov	eax, 5
	jmp	.label_264
.label_223:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4037a0
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_288:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_287
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_288
.label_287:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037db
	.globl sub_4037db
	.type sub_4037db, @function
sub_4037db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_290:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_289
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_290
.label_289:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403806
	.globl sub_403806
	.type sub_403806, @function
sub_403806:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810
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
	.align	32
	#Procedure 0x403829
	.globl sub_403829
	.type sub_403829, @function
sub_403829:

	nop	dword ptr [rax]
.label_291:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403835
	.globl sub_403835
	.type sub_403835, @function
sub_403835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40383f
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
	je	.label_292
	test	r14, r14
	je	.label_291
.label_292:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403870
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
	.align	32
	#Procedure 0x403888
	.globl sub_403888
	.type sub_403888, @function
sub_403888:

	nop	dword ptr [rax + rax]
.label_293:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403895
	.globl sub_403895
	.type sub_403895, @function
sub_403895:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038a0
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
	je	.label_293
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
	.section	.text
	.align	32
	#Procedure 0x403930
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_298
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_297
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_294
.label_297:
	call	xalloc_die
.label_295:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403967
	.globl sub_403967
	.type sub_403967, @function
sub_403967:

	nop	word ptr [rax + rax]
.label_299:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_300
	test	rax, rax
	je	.label_297
.label_300:
	pop	rbx
	ret	
.label_298:
	test	rcx, rcx
	jne	.label_296
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_296:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_295
.label_294:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_299
	test	rbx, rbx
	jne	.label_299
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039d0

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
	jne	.label_302
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_301
	test	cl, cl
	jne	.label_301
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_301
.label_302:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_301
	call	__errno_location
	mov	dword ptr [rax], 0
.label_301:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a30
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a3f
	.globl sub_403a3f
	.type sub_403a3f, @function
sub_403a3f:

	nop	
.label_303:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a45
	.globl sub_403a45
	.type sub_403a45, @function
sub_403a45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a4f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_303
	call	rpl_calloc
	test	rax, rax
	je	.label_303
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a70

	.globl careadlinkatcwd
	.type careadlinkatcwd, @function
careadlinkatcwd:
	cmp	edi, -0x64
	jne	.label_304
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, rcx
	jmp	readlink
.label_304:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a89
	.globl sub_403a89
	.type sub_403a89, @function
sub_403a89:

	nop	dword ptr [rax]
.label_309:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_305
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ab0
	.globl sub_403ab0
	.type sub_403ab0, @function
sub_403ab0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403abf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_309
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_307
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_307
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_306
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_306:
	mov	rbx, r14
.label_307:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b40

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x403b57
	.globl sub_403b57
	.type sub_403b57, @function
sub_403b57:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b60
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_311
	test	rdx, rdx
	je	.label_311
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_311:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403bca
	.globl sub_403bca
	.type sub_403bca, @function
sub_403bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bd0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_312
	test	rdx, rdx
	je	.label_312
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_312:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c3e
	.globl sub_403c3e
	.type sub_403c3e, @function
sub_403c3e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c40
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403c4a
	.globl sub_403c4a
	.type sub_403c4a, @function
sub_403c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_313
	pop	rcx
	ret	
.label_313:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c62
	.globl sub_403c62
	.type sub_403c62, @function
sub_403c62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_314
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_316:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_316
.label_314:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_317
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_318], OFFSET FLAT:slot0
.label_317:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_315
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_315:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d01
	.globl sub_403d01
	.type sub_403d01, @function
sub_403d01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d10

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_89
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_319
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d35
	.globl sub_403d35
	.type sub_403d35, @function
sub_403d35:

	nop	word ptr cs:[rax + rax]
.label_321:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d44
	.globl sub_403d44
	.type sub_403d44, @function
sub_403d44:

	nop	dword ptr [rax]
.label_320:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_324:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_320
	test	dl, dl
	je	.label_321
	mov	ecx, esi
	and	cl, 1
	je	.label_322
	xor	esi, esi
.label_322:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_320
	.section	.text
	.align	32
	#Procedure 0x403d70

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_323:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_323
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x403d93
	.globl sub_403d93
	.type sub_403d93, @function
sub_403d93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403da0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_331
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_345:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_345
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_335
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_333
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_341
	cmp	eax, 0x22
	jne	.label_335
	mov	ebp, 1
.label_341:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_343
	jmp	.label_328
.label_333:
	test	r14, r14
	je	.label_335
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_335
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_335
.label_343:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_328
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_334
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_330
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_330
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_330
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_327
	cmp	eax, 0x44
	je	.label_327
	cmp	eax, 0x69
	jne	.label_330
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_330
.label_327:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_330:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_334
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_342]
.label_547:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_344
.label_334:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_332
.label_548:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_336
.label_549:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_329
.label_551:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_326
.label_545:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_346
.label_546:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_329
.label_550:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_326:
	or	dl, r10b
.label_344:
	or	dl, bl
.label_329:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_325
.label_552:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_337
.label_553:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_337:
	movzx	eax, dl
.label_336:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_325
.label_554:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_346:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_325
.label_555:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_325:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_328:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_332:
	mov	r13d, r15d
.label_335:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_331:
	mov	edi, OFFSET FLAT:label_338
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_340
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4043d1
	.globl sub_4043d1
	.type sub_4043d1, @function
sub_4043d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_348
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_103
	mov	ecx, OFFSET FLAT:label_146
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404454
	.globl sub_404454
	.type sub_404454, @function
sub_404454:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460

	.globl careadlinkat
	.type careadlinkat, @function
careadlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x428
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0xc], edi
	test	r8, r8
	mov	ebp, OFFSET FLAT:stdlib_allocator
	cmovne	rbp, r8
	test	rcx, rcx
	mov	r13d, 0x400
	cmovne	r13, rcx
	lea	rax, [rsp + 0x20]
	cmove	rdx, rax
	mov	qword ptr [rsp], rdx
	mov	rbx, rdx
	nop	dword ptr [rax + rax]
.label_362:
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	mov	rcx, r13
	call	qword ptr [rsp + 0x18]
	mov	r15, rax
	test	r15, r15
	jns	.label_354
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
	cmp	r14d, 0x22
	jne	.label_358
.label_354:
	cmp	r15, r13
	jb	.label_361
	cmp	rbx, qword ptr [rsp]
	je	.label_363
	mov	rdi, rbx
	call	qword ptr [rbp + 0x10]
.label_363:
	movabs	rax, 0x4000000000000000
	cmp	r13, rax
	ja	.label_366
	add	r13, r13
	jmp	.label_352
	.section	.text
	.align	32
	#Procedure 0x404506
	.globl sub_404506
	.type sub_404506, @function
sub_404506:

	nop	word ptr cs:[rax + rax]
.label_366:
	test	r13, r13
	movabs	r13, 0x8000000000000000
	js	.label_357
.label_352:
	mov	rdi, r13
	call	qword ptr [rbp]
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_362
.label_355:
	mov	rax, qword ptr [rbp + 0x18]
	test	rax, rax
	je	.label_365
	mov	rdi, r13
	call	rax
.label_365:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_351
.label_361:
	mov	rax, r15
	inc	r15
	mov	byte ptr [rbx + rax], 0
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_356
	cmp	rbx, qword ptr [rsp]
	je	.label_360
	cmp	r15, r13
	jae	.label_360
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	je	.label_364
	mov	rdi, rbx
	mov	rsi, r15
	call	rcx
	mov	r13, rax
	test	r13, r13
	cmove	r13, rbx
	jmp	.label_359
.label_357:
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_351
.label_358:
	xor	r13d, r13d
	cmp	rbx, qword ptr [rsp]
	je	.label_359
	mov	rdi, rbx
	call	qword ptr [rbp + 0x10]
	mov	dword ptr [r12], r14d
.label_351:
	xor	r13d, r13d
.label_359:
	mov	rax, r13
	add	rsp, 0x428
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_356:
	mov	rdi, r15
	call	qword ptr [rbp]
	mov	r13, rax
	test	r13, r13
	je	.label_353
	lea	rsi, [rsp + 0x20]
	mov	rdi, r13
	mov	rdx, r15
	call	memcpy
	jmp	.label_359
.label_360:
	mov	r13, rbx
	jmp	.label_359
.label_353:
	mov	r13, r15
	jmp	.label_355
.label_364:
	mov	r13, rbx
	jmp	.label_359
	.section	.text
	.align	32
	#Procedure 0x4045ee
	.globl sub_4045ee
	.type sub_4045ee, @function
sub_4045ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_368
	cmp	byte ptr [rax], 0x43
	jne	.label_370
	cmp	byte ptr [rax + 1], 0
	je	.label_367
.label_370:
	mov	esi, OFFSET FLAT:label_369
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_368
.label_367:
	xor	ebx, ebx
.label_368:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404621
	.globl sub_404621
	.type sub_404621, @function
sub_404621:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.align	32
	#Procedure 0x40469e
	.globl sub_40469e
	.type sub_40469e, @function
sub_40469e:

	nop	
.label_373:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_371
	test	rax, rax
	je	.label_372
.label_371:
	pop	rbx
	ret	
.label_372:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4046b9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_373
	test	rbx, rbx
	jne	.label_373
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046d0
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
	je	.label_374
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
.label_374:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40473c
	.globl sub_40473c
	.type sub_40473c, @function
sub_40473c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404740
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.align	32
	#Procedure 0x404794
	.globl sub_404794
	.type sub_404794, @function
sub_404794:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_376
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4047d0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_377
	pop	rcx
	ret	
.label_377:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047e2
	.globl sub_4047e2
	.type sub_4047e2, @function
sub_4047e2:

	nop	word ptr cs:[rax + rax]
.label_378:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4047f5
	.globl sub_4047f5
	.type sub_4047f5, @function
sub_4047f5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047fd
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
	je	.label_378
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
	.section	.text
	.align	32
	#Procedure 0x404860
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
	.align	32
	#Procedure 0x4048d5
	.globl sub_4048d5
	.type sub_4048d5, @function
sub_4048d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048ef
	.globl sub_4048ef
	.type sub_4048ef, @function
sub_4048ef:

	nop	
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
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
	jmp	.label_380
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
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
	jmp	.label_380
	.section	.text
	.align	32
	#Procedure 0x404979

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
	je	.label_396
	mov	edx, OFFSET FLAT:label_395
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_386
.label_396:
	mov	edx, OFFSET FLAT:label_393
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
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
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_384
	jmp	qword ptr [(r12 * 8) + label_385]
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
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
	jmp	.label_380
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_380
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
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
	jmp	.label_380
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
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
.label_380:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bc4
	.globl sub_404bc4
	.type sub_404bc4, @function
sub_404bc4:

	nop	dword ptr [rax + rax]
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
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
	jmp	.label_380
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
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
.label_455:
	add	rsp, 8
	jmp	.label_380
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_398
	test	rsi, rsi
	mov	ecx, 1
	je	.label_399
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_399
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_398:
	mov	ecx, 1
.label_399:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404c9b
	.globl sub_404c9b
	.type sub_404c9b, @function
sub_404c9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_400
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_400:
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
	.align	32
	#Procedure 0x404d23
	.globl sub_404d23
	.type sub_404d23, @function
sub_404d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30
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
	.align	32
	#Procedure 0x404d63
	.globl sub_404d63
	.type sub_404d63, @function
sub_404d63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_401
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_403
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_401
.label_403:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_401
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_402
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_402:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_401:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404de4
	.globl sub_404de4
	.type sub_404de4, @function
sub_404de4:

	nop	word ptr cs:[rax + rax]
.label_404:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404df5
	.globl sub_404df5
	.type sub_404df5, @function
sub_404df5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dfb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_405
	test	rax, rax
	je	.label_404
.label_405:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e10
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
	.align	32
	#Procedure 0x404ed1
	.globl sub_404ed1
	.type sub_404ed1, @function
sub_404ed1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_416
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_418
.label_416:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_418:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_415
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_417
.label_415:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_417:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_413
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_414
.label_413:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_414:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_411
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_412
.label_411:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_412:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_409
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_410
.label_409:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_410:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_406
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_408
.label_406:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_408:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_407:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050c2
	.globl sub_4050c2
	.type sub_4050c2, @function
sub_4050c2:

	nop	word ptr cs:[rax + rax]
.label_419:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4050d5
	.globl sub_4050d5
	.type sub_4050d5, @function
sub_4050d5:

	nop	dword ptr [rax + rax]
.label_421:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_420
	test	rax, rax
	je	.label_419
.label_420:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050f1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_419
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_421
	test	rbx, rbx
	jne	.label_421
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405120
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405128
	.globl sub_405128
	.type sub_405128, @function
sub_405128:

	nop	dword ptr [rax + rax]
.label_422:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405136
	.globl sub_405136
	.type sub_405136, @function
sub_405136:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40513b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_422
	test	rdx, rdx
	je	.label_422
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_424:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_427
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_376
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4051a1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_426
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_424
	cmp	dword ptr [rbp], 0x20
	jne	.label_424
.label_426:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_428
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_427:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_425
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_428:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x405220

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_433
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_429
	cmp	byte ptr [r15], 0x2f
	je	.label_429
	mov	r12b, 0x2f
	jmp	.label_430
.label_433:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_430
.label_429:
	xor	r12d, r12d
.label_430:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_432
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_431
	mov	qword ptr [rax], rbp
.label_431:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_432:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052f8
	.globl sub_4052f8
	.type sub_4052f8, @function
sub_4052f8:

	nop	dword ptr [rax + rax]
.label_434:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405305
	.globl sub_405305
	.type sub_405305, @function
sub_405305:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405314
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
	je	.label_434
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
.label_435:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405375
	.globl sub_405375
	.type sub_405375, @function
sub_405375:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405379
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_435
	test	rsi, rsi
	je	.label_435
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
	.section	.text
	.align	32
	#Procedure 0x4053e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_436:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_436
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x405401
	.globl sub_405401
	.type sub_405401, @function
sub_405401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40541a
	.globl sub_40541a
	.type sub_40541a, @function
sub_40541a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405420
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.align	32
	#Procedure 0x40548f
	.globl sub_40548f
	.type sub_40548f, @function
sub_40548f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405490

	.globl areadlink
	.type areadlink, @function
areadlink:
	mov	rax, rdi
	mov	edi, 0xffffff9c
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, OFFSET FLAT:careadlinkatcwd
	mov	rsi, rax
	jmp	careadlinkat
	.section	.text
	.align	32
	#Procedure 0x4054ad
	.globl sub_4054ad
	.type sub_4054ad, @function
sub_4054ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405515
	.globl sub_405515
	.type sub_405515, @function
sub_405515:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405522
	.globl sub_405522
	.type sub_405522, @function
sub_405522:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405546
	.globl sub_405546
	.type sub_405546, @function
sub_405546:

	nop	word ptr cs:[rax + rax]
