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
.label_11:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_9
	test	rax, rax
	je	.label_10
.label_9:
	pop	rbx
	ret	
.label_10:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4015a9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_11
	test	rbx, rbx
	jne	.label_11
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015c0
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
	je	.label_12
	mov	qword ptr [rax], rbx
.label_12:
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
	#Procedure 0x4016ac
	.globl sub_4016ac
	.type sub_4016ac, @function
sub_4016ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_13
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_14
	test	rax, rax
	je	.label_13
.label_14:
	pop	rbx
	ret	
.label_13:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016e5
	.globl sub_4016e5
	.type sub_4016e5, @function
sub_4016e5:

	nop	word ptr cs:[rax + rax]
.label_15:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016f5
	.globl sub_4016f5
	.type sub_4016f5, @function
sub_4016f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401703
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
	je	.label_16
	test	r15, r15
	je	.label_15
.label_16:
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
	#Procedure 0x401740
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40174a
	.globl sub_40174a
	.type sub_40174a, @function
sub_40174a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401750

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
	jne	.label_18
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_17
	test	cl, cl
	jne	.label_17
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_17
.label_18:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_17
	call	__errno_location
	mov	dword ptr [rax], 0
.label_17:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_19
	call	rpl_calloc
	test	rax, rax
	je	.label_19
	pop	rcx
	ret	
.label_19:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4017d6
	.globl sub_4017d6
	.type sub_4017d6, @function
sub_4017d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_20
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_20:
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
	#Procedure 0x401863
	.globl sub_401863
	.type sub_401863, @function
sub_401863:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870
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
	#Procedure 0x401888
	.globl sub_401888
	.type sub_401888, @function
sub_401888:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40189a
	.globl sub_40189a
	.type sub_40189a, @function
sub_40189a:

	nop	word ptr [rax + rax]
.label_26:
	test	rcx, rcx
	jne	.label_21
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_21:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_24
.label_27:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_22
	test	rbx, rbx
	jne	.label_22
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_22:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_23
	test	rax, rax
	je	.label_25
.label_23:
	pop	rbx
	ret	
.label_25:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401905
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_26
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_25
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_27
.label_24:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401937
	.globl sub_401937
	.type sub_401937, @function
sub_401937:

	nop	word ptr [rax + rax]
.label_28:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401945
	.globl sub_401945
	.type sub_401945, @function
sub_401945:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401949
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_28
	test	rsi, rsi
	je	.label_28
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
.label_32:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4019b5
	.globl sub_4019b5
	.type sub_4019b5, @function
sub_4019b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019c0

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
	je	.label_32
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
	.align	16
	#Procedure 0x401a50

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
	#Procedure 0x401a67
	.globl sub_401a67
	.type sub_401a67, @function
sub_401a67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_33
	test	rax, rax
	je	.label_34
.label_33:
	pop	rbx
	ret	
.label_34:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a8a
	.globl sub_401a8a
	.type sub_401a8a, @function
sub_401a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_35
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_36
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ab5
	.globl sub_401ab5
	.type sub_401ab5, @function
sub_401ab5:

	nop	word ptr cs:[rax + rax]
.label_37:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ac5
	.globl sub_401ac5
	.type sub_401ac5, @function
sub_401ac5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401acd

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
	je	.label_37
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
.label_43:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x401b3b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_40
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_38
	cmp	dword ptr [rbp], 0x20
	jne	.label_38
.label_40:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_43
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_42
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_42:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_39
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_46
	cmp	byte ptr [rax], 0x43
	jne	.label_48
	cmp	byte ptr [rax + 1], 0
	je	.label_45
.label_48:
	mov	esi, OFFSET FLAT:label_47
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_46
.label_45:
	xor	ebx, ebx
.label_46:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c21
	.globl sub_401c21
	.type sub_401c21, @function
sub_401c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
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
	#Procedure 0x401ca5
	.globl sub_401ca5
	.type sub_401ca5, @function
sub_401ca5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_59
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_61
.label_59:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_61:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_49
	cmp	r10d, 0x29
	jae	.label_58
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_60
.label_58:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_60:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_49
	cmp	r10d, 0x29
	jae	.label_56
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_57
.label_56:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_57:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_49
	cmp	r10d, 0x29
	jae	.label_54
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_55
.label_54:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_55:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_49
	cmp	r10d, 0x29
	jae	.label_52
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_53
.label_52:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_53:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_49
	cmp	r10d, 0x29
	jae	.label_50
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_51
.label_50:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_51:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_49
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_49
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_49
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_49
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_49:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e92
	.globl sub_401e92
	.type sub_401e92, @function
sub_401e92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ea0

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
	je	.label_62
	cmp	r15, -2
	jb	.label_62
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_62
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_62:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ef6
	.globl sub_401ef6
	.type sub_401ef6, @function
sub_401ef6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_63
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_65:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_65
.label_63:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_66
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_67], OFFSET FLAT:slot0
.label_66:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_64
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_64:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f91
	.globl sub_401f91
	.type sub_401f91, @function
sub_401f91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fa0
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
	#Procedure 0x401fb8
	.globl sub_401fb8
	.type sub_401fb8, @function
sub_401fb8:

	nop	dword ptr [rax + rax]
.label_68:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fc5
	.globl sub_401fc5
	.type sub_401fc5, @function
sub_401fc5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fcd
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
	je	.label_68
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
	.align	16
	#Procedure 0x402030
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x40209f
	.globl sub_40209f
	.type sub_40209f, @function
sub_40209f:

	nop	
.label_73:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_69
	mov	qword ptr [rsi], rbx
.label_71:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_70
	test	rax, rax
	je	.label_69
.label_70:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020c8
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_73
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_72
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_71
	call	free
	xor	eax, eax
	jmp	.label_70
.label_72:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4020ff
	.globl sub_4020ff
	.type sub_4020ff, @function
sub_4020ff:

	nop	word ptr cs:[rax + rax]
.label_69:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402110
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402121
	.globl sub_402121
	.type sub_402121, @function
sub_402121:

	nop	word ptr cs:[rax + rax]
.label_75:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_74
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_74:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402164
	.globl sub_402164
	.type sub_402164, @function
sub_402164:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402166

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
	jne	.label_76
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_76
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_75
.label_76:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4021a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x40220e
	.globl sub_40220e
	.type sub_40220e, @function
sub_40220e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_77
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_77
	test	byte ptr [rbx + 1], 1
	je	.label_77
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_77:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402243
	.globl sub_402243
	.type sub_402243, @function
sub_402243:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402250

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
	je	.label_87
	mov	edx, OFFSET FLAT:label_93
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_80
.label_87:
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_88
	jmp	qword ptr [(r12 * 8) + label_89]
.label_400:
	add	rsp, 8
	jmp	.label_81
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
	jmp	.label_81
.label_401:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
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
.label_403:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	jmp	.label_81
.label_405:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
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
	jmp	.label_81
.label_406:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	jmp	.label_81
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
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
	jmp	.label_81
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
	jmp	.label_81
.label_408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
.label_81:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025a8
	.globl sub_4025a8
	.type sub_4025a8, @function
sub_4025a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025b8
	.globl sub_4025b8
	.type sub_4025b8, @function
sub_4025b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x402614
	.globl sub_402614
	.type sub_402614, @function
sub_402614:

	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_97
	test	rax, rax
	je	.label_98
.label_97:
	pop	rbx
	ret	
.label_98:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402639
	.globl sub_402639
	.type sub_402639, @function
sub_402639:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402641
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_98
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_99
	test	rbx, rbx
	jne	.label_99
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402670
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
	#Procedure 0x402683
	.globl sub_402683
	.type sub_402683, @function
sub_402683:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690

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
	#Procedure 0x4026a9
	.globl sub_4026a9
	.type sub_4026a9, @function
sub_4026a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026b0

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
	jne	.label_101
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_108
	cmp	ecx, 0x55
	jne	.label_100
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_100
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_100
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_100
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_100
	cmp	byte ptr [rax + 5], 0
	jne	.label_100
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_105
	mov	eax, OFFSET FLAT:label_106
	jmp	.label_107
.label_108:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_100
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_100
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_100
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_100
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_100
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_100
	cmp	byte ptr [rax + 7], 0
	je	.label_102
.label_100:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_103
	mov	eax, OFFSET FLAT:label_104
.label_107:
	cmove	rax, rcx
.label_101:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_102:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_109
	mov	eax, OFFSET FLAT:label_110
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x402775
	.globl sub_402775
	.type sub_402775, @function
sub_402775:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_112:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027b5
	.globl sub_4027b5
	.type sub_4027b5, @function
sub_4027b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c4
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
	je	.label_112
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
	#Procedure 0x402820
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
	#Procedure 0x40282f
	.globl sub_40282f
	.type sub_40282f, @function
sub_40282f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402830

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
	jae	.label_119
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_113:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_113
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_115
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
	je	.label_122
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_130
	cmp	eax, 0x22
	jne	.label_115
	mov	ebp, 1
.label_130:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_124
	jmp	.label_116
.label_122:
	test	r14, r14
	je	.label_115
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_115
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_115
.label_124:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_116
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_123
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_118
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_118
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_118
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_114
	cmp	eax, 0x44
	je	.label_114
	cmp	eax, 0x69
	jne	.label_118
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_118
.label_114:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_118:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_123
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_132]
.label_461:
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
	jmp	.label_133
.label_123:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_121
.label_462:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_125
.label_463:
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
	jmp	.label_117
.label_465:
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
	jmp	.label_134
.label_459:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_131
.label_460:
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
	jmp	.label_117
.label_464:
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
.label_134:
	or	dl, r10b
.label_133:
	or	dl, bl
.label_117:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_120
.label_466:
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
	jmp	.label_126
.label_467:
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
.label_126:
	movzx	eax, dl
.label_125:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_120
.label_468:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_131:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_120
.label_469:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_120:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_116:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_121:
	mov	r13d, r15d
.label_115:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_119:
	mov	edi, OFFSET FLAT:label_127
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_129
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402e61
	.globl sub_402e61
	.type sub_402e61, @function
sub_402e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e70
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
	je	.label_135
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
.label_135:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402edc
	.globl sub_402edc
	.type sub_402edc, @function
sub_402edc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0
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
	#Procedure 0x402fa1
	.globl sub_402fa1
	.type sub_402fa1, @function
sub_402fa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0

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
.label_163:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_160
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_167]
.label_453:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_172
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_104
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_454:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_192
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_192
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_206:
	cmp	r14, r11
	jae	.label_238
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_238:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_206
.label_192:
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
	jmp	.label_210
.label_446:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_210
.label_449:
	mov	al, 1
.label_447:
	mov	r12b, 1
.label_450:
	test	r12b, 1
	mov	cl, 1
	je	.label_221
	mov	ecx, eax
.label_221:
	mov	al, cl
.label_448:
	test	r12b, 1
	jne	.label_223
	test	r11, r11
	je	.label_225
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_225:
	mov	r14d, 1
	jmp	.label_226
.label_223:
	xor	r14d, r14d
.label_226:
	mov	ecx, OFFSET FLAT:label_104
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_210
.label_451:
	test	r12b, 1
	jne	.label_239
	test	r11, r11
	je	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_241:
	mov	r14d, 1
	jmp	.label_244
.label_452:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_103
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_210
.label_239:
	xor	r14d, r14d
.label_244:
	mov	eax, OFFSET FLAT:label_103
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_210:
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
	jmp	.label_143
	.section	.text
	.align	16
	#Procedure 0x40329d
	.globl sub_40329d
	.type sub_40329d, @function
sub_40329d:

	nop	dword ptr [rax]
.label_207:
	inc	rsi
.label_143:
	cmp	rbp, -1
	je	.label_183
	cmp	rsi, rbp
	jne	.label_185
	jmp	.label_187
	.section	.text
	.align	16
	#Procedure 0x4032b3
	.globl sub_4032b3
	.type sub_4032b3, @function
sub_4032b3:

	nop	word ptr cs:[rax + rax]
.label_183:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_193
.label_185:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_199
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_188
	cmp	rbp, -1
	jne	.label_188
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
.label_188:
	cmp	rbx, rbp
	jbe	.label_211
.label_199:
	xor	r8d, r8d
.label_139:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_213
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_217]
.label_513:
	test	rsi, rsi
	jne	.label_198
	jmp	.label_220
	.section	.text
	.align	16
	#Procedure 0x403355
	.globl sub_403355
	.type sub_403355, @function
sub_403355:

	nop	word ptr cs:[rax + rax]
.label_211:
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
	jne	.label_231
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_139
	jmp	.label_194
.label_231:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_139
.label_517:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_251
	test	rsi, rsi
	jne	.label_252
	cmp	rbp, 1
	je	.label_220
	xor	r13d, r13d
	jmp	.label_159
.label_506:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_137
	cmp	byte ptr [rsp + 6], 0
	jne	.label_142
	cmp	r12d, 2
	jne	.label_146
	mov	eax, r9d
	and	al, 1
	jne	.label_146
	cmp	r14, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_149:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_153
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_153:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_242
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	add	r14, 3
	mov	r9b, 1
.label_146:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_165
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_165:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_169
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_169
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_169
	cmp	r14, r11
	jae	.label_176
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_176:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_232
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_232:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_159
.label_507:
	mov	bl, 0x62
	jmp	.label_196
.label_508:
	mov	cl, 0x74
	jmp	.label_200
.label_509:
	mov	bl, 0x76
	jmp	.label_196
.label_510:
	mov	bl, 0x66
	jmp	.label_196
.label_511:
	mov	cl, 0x72
	jmp	.label_200
.label_514:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_204
	cmp	byte ptr [rsp + 6], 0
	jne	.label_170
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
	jae	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_209:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_219:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_222
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	add	r14, 3
	xor	r9d, r9d
.label_204:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_159
.label_515:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_228
	cmp	r12d, 2
	jne	.label_198
	cmp	byte ptr [rsp + 6], 0
	je	.label_198
	jmp	.label_170
.label_516:
	cmp	r12d, 2
	jne	.label_240
	cmp	byte ptr [rsp + 6], 0
	jne	.label_170
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_184
.label_213:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_248
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
.label_202:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_145
	test	r8b, r8b
	je	.label_145
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_159
.label_251:
	test	rsi, rsi
	jne	.label_156
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_156
.label_220:
	mov	dl, 1
.label_512:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_170
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_159:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_178
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_179
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x4036a4
	.globl sub_4036a4
	.type sub_4036a4, @function
sub_4036a4:

	nop	word ptr cs:[rax + rax]
.label_178:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_182
.label_179:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_190
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_184
	jmp	.label_201
	.section	.text
	.align	16
	#Procedure 0x4036ed
	.globl sub_4036ed
	.type sub_4036ed, @function
sub_4036ed:

	nop	dword ptr [rax]
.label_182:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_201
	jmp	.label_184
.label_190:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_201
.label_137:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_207
	xor	r15d, r15d
	jmp	.label_198
.label_240:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_200
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_184
.label_200:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_170
.label_196:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_159
	nop	word ptr cs:[rax + rax]
.label_201:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_142
	cmp	r12d, 2
	jne	.label_174
	mov	eax, r9d
	and	al, 1
	jne	.label_174
	cmp	r14, r11
	jae	.label_250
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_250:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_233
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_233:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_236
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_236:
	add	r14, 3
	mov	r9b, 1
.label_174:
	cmp	r14, r11
	jae	.label_243
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_243:
	inc	r14
	jmp	.label_246
.label_248:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_249
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_249:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_205:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_152
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_155
	cmp	rbp, -2
	je	.label_158
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_140
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_254:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_224
	bt	rsi, rdx
	jb	.label_181
.label_224:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_254
.label_140:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_177
	xor	r13d, r13d
.label_177:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_205
	jmp	.label_202
.label_169:
	xor	r13d, r13d
	jmp	.label_159
.label_156:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_159
.label_228:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_198
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_198
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_198
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_212
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_227
	cmp	byte ptr [rsp + 6], 0
	jne	.label_138
	cmp	r14, r11
	jae	.label_215
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_203
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_203:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_230
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_230:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_214
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_214:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_159
.label_198:
	xor	eax, eax
.label_252:
	xor	r13d, r13d
	jmp	.label_159
.label_145:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_247
	.section	.text
	.align	16
	#Procedure 0x4039d2
	.globl sub_4039d2
	.type sub_4039d2, @function
sub_4039d2:

	nop	word ptr cs:[rax + rax]
.label_208:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_247:
	test	r8b, r8b
	je	.label_253
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_141
	cmp	r14, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_255:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_141
	.section	.text
	.align	16
	#Procedure 0x403a1c
	.globl sub_403a1c
	.type sub_403a1c, @function
sub_403a1c:

	nop	dword ptr [rax]
.label_253:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_194
	cmp	r12d, 2
	jne	.label_151
	mov	eax, r9d
	and	al, 1
	jne	.label_151
	cmp	r14, r11
	jae	.label_154
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_154:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_150
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_150:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_161
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_161:
	add	r14, 3
	mov	r9b, 1
.label_151:
	cmp	r14, r11
	jae	.label_186
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_173
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_173:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_180
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_180:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_141:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_184
	test	r9b, 1
	je	.label_162
	mov	ebx, eax
	and	bl, 1
	jne	.label_162
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_197
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_197:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_229:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_162:
	cmp	r14, r11
	jae	.label_208
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_208
	.section	.text
	.align	16
	#Procedure 0x403b23
	.globl sub_403b23
	.type sub_403b23, @function
sub_403b23:

	nop	word ptr cs:[rax + rax]
.label_184:
	test	r9b, 1
	je	.label_216
	and	al, 1
	jne	.label_216
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_168
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_168:
	add	r14, 2
	xor	r9d, r9d
.label_216:
	mov	ebx, r15d
.label_246:
	cmp	r14, r11
	jae	.label_164
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_164:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_207
.label_155:
	xor	r13d, r13d
.label_152:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_202
.label_158:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_237
	mov	rsi, qword ptr [rsp + 0x58]
.label_245:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_166
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_245
	xor	r13d, r13d
	jmp	.label_202
.label_237:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_202
.label_166:
	xor	r13d, r13d
	jmp	.label_202
.label_212:
	xor	r13d, r13d
	jmp	.label_159
.label_227:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_159
	.section	.text
	.align	16
	#Procedure 0x403bf8
	.globl sub_403bf8
	.type sub_403bf8, @function
sub_403bf8:

	nop	dword ptr [rax + rax]
.label_187:
	mov	rcx, rsi
.label_193:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_136
	or	al, dl
	je	.label_144
.label_136:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_147
	or	al, dl
	jne	.label_147
	test	r10b, 1
	jne	.label_157
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_147
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_163
.label_147:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_171
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_175
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_175
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	r14, r11
	jae	.label_148
	mov	byte ptr [rcx + r14], al
.label_148:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_191
	jmp	.label_175
.label_142:
	mov	qword ptr [rsp + 0x20], rbp
.label_194:
	mov	rdx, rdi
	jmp	.label_195
.label_170:
	mov	qword ptr [rsp + 0x20], rbp
.label_181:
	mov	rdx, rdi
	mov	eax, 2
.label_189:
	mov	qword ptr [rsp + 0x38], rax
.label_195:
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
.label_234:
	mov	r14, rax
.label_235:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_144:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_195
.label_157:
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
	jmp	.label_234
.label_171:
	mov	rcx, qword ptr [rsp + 8]
.label_175:
	cmp	r14, r11
	jae	.label_235
	mov	byte ptr [rcx + r14], 0
	jmp	.label_235
.label_138:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_189
.label_160:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403db7
	.globl sub_403db7
	.type sub_403db7, @function
sub_403db7:

	nop	word ptr [rax + rax]
.label_256:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403dc5
	.globl sub_403dc5
	.type sub_403dc5, @function
sub_403dc5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dcb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_256
	test	rdx, rdx
	je	.label_256
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e30
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_257
	test	rdx, rdx
	je	.label_257
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_257:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e9e
	.globl sub_403e9e
	.type sub_403e9e, @function
sub_403e9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ea0
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_258
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_258:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ef7
	.globl sub_403ef7
	.type sub_403ef7, @function
sub_403ef7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00
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
	#Procedure 0x403f0f
	.globl sub_403f0f
	.type sub_403f0f, @function
sub_403f0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f10

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_259
	test	rsi, rsi
	mov	ecx, 1
	je	.label_260
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_260
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_259:
	mov	ecx, 1
.label_260:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403f5b
	.globl sub_403f5b
	.type sub_403f5b, @function
sub_403f5b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60
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
	#Procedure 0x403f93
	.globl sub_403f93
	.type sub_403f93, @function
sub_403f93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_268
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_287:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_266
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_287
	xor	eax, eax
	test	bl, bl
	jne	.label_266
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_266
.label_268:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x40403f
	.globl sub_40403f
	.type sub_40403f, @function
sub_40403f:

	nop	
.label_261:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_270:
	cmp	bl, 0x2c
	jle	.label_286
	cmp	bl, 0x2d
	je	.label_273
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_261
	jmp	.label_278
	.section	.text
	.align	16
	#Procedure 0x40405f
	.globl sub_40405f
	.type sub_40405f, @function
sub_40405f:

	nop	
.label_286:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_261
	test	bl, bl
	je	.label_282
.label_278:
	xor	edx, edx
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x404072
	.globl sub_404072
	.type sub_404072, @function
sub_404072:

	nop	word ptr cs:[rax + rax]
.label_273:
	mov	edx, 1
	jmp	.label_261
.label_282:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_262
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_267
	.section	.text
	.align	16
	#Procedure 0x4040ac

	.globl sub_4040ac
	.type sub_4040ac, @function
sub_4040ac:
	inc	r14
	nop	
.label_267:
	xor	esi, esi
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x4040b4
	.globl sub_4040b4
	.type sub_4040b4, @function
sub_4040b4:

	nop	word ptr cs:[rax + rax]
.label_417:
	or	esi, 0x207
	inc	r14
.label_265:
	movzx	edx, byte ptr [r14]
	movsx	ecx, dl
	lea	edi, [rcx - 0x61]
	cmp	edi, 0x14
	ja	.label_272
	jmp	qword ptr [(rdi * 8) + label_276]
.label_415:
	or	esi, 0xfff
	inc	r14
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x4040ea
	.globl sub_4040ea
	.type sub_4040ea, @function
sub_4040ea:

	nop	word ptr [rax + rax]
.label_416:
	or	esi, 0x438
	inc	r14
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x4040fb
	.globl sub_4040fb
	.type sub_4040fb, @function
sub_4040fb:

	nop	dword ptr [rax + rax]
.label_418:
	or	esi, 0x9c0
	inc	r14
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x40410b
	.globl sub_40410b
	.type sub_40410b, @function
sub_40410b:

	nop	dword ptr [rax + rax]
.label_272:
	mov	edi, ecx
	cmp	ecx, 0x3d
	ja	.label_264
	bt	r8, rdi
	jae	.label_264
.label_472:
	lea	rbx, [r14 + 1]
	movsx	ecx, byte ptr [r14 + 1]
	mov	edi, ecx
	add	edi, -0x30
	cmp	edi, 0x45
	ja	.label_269
	jmp	qword ptr [(rdi * 8) + label_271]
.label_411:
	xor	edi, edi
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_280:
	movsx	ecx, cl
	lea	edi, [rcx + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_264
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	ebx, ecx
	and	bl, 0xf8
	cmp	bl, 0x30
	je	.label_280
	test	esi, esi
	jne	.label_264
	mov	r11b, 1
	mov	esi, 0xfff
	test	cl, cl
	je	.label_281
	cmp	cl, 0x2c
	mov	r10d, 0xfff
	je	.label_263
	jmp	.label_264
.label_281:
	mov	r10d, 0xfff
	jmp	.label_263
.label_269:
	mov	r11b, 1
	xor	r10d, r10d
	mov	r14, rbx
	xor	edi, edi
	jmp	.label_283
	.section	.text
	.align	16
	#Procedure 0x4041b4
	.globl sub_4041b4
	.type sub_4041b4, @function
sub_4041b4:

	nop	word ptr cs:[rax + rax]
.label_277:
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	r11d, ebx
.label_283:
	movsx	ecx, cl
	add	ecx, -0x58
	cmp	ecx, 0x20
	ja	.label_263
	mov	bl, 2
	jmp	qword ptr [(rcx * 8) + label_275]
.label_429:
	or	edi, 0x124
	jmp	.label_279
.label_430:
	or	edi, 0xc00
	jmp	.label_279
.label_431:
	or	edi, 0x200
	jmp	.label_279
.label_432:
	or	edi, 0x92
	jmp	.label_279
.label_433:
	or	edi, 0x49
	nop	word ptr cs:[rax + rax]
.label_279:
	mov	ebx, r11d
	jmp	.label_277
.label_412:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x38
	jmp	.label_263
.label_413:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 7
	jmp	.label_263
.label_414:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x1c0
	nop	word ptr cs:[rax + rax]
.label_263:
	mov	rcx, r9
	shl	rcx, 4
	mov	byte ptr [rax + rcx], dl
	mov	byte ptr [rax + rcx + 1], r11b
	mov	dword ptr [rax + rcx + 4], esi
	mov	dword ptr [rax + rcx + 8], edi
	test	r10d, r10d
	jne	.label_274
	cmp	esi, 1
	sbb	r10d, r10d
	or	r10d, esi
	and	r10d, edi
.label_274:
	inc	r9
	mov	dword ptr [rax + rcx + 0xc], r10d
	mov	dl, byte ptr [r14]
	mov	ecx, edx
	add	cl, 0xd5
	movzx	ecx, cl
	cmp	cl, 0x12
	ja	.label_284
	jmp	qword ptr [(rcx * 8) + label_285]
.label_284:
	test	dl, dl
	jne	.label_264
	shl	r9, 4
	mov	byte ptr [rax + r9 + 1], 0
	jmp	.label_266
.label_264:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_266:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_262:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4042bc
	.globl sub_4042bc
	.type sub_4042bc, @function
sub_4042bc:

	nop	dword ptr [rax]
.label_288:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4042c5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_288
	test	rsi, rsi
	je	.label_288
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
	.align	16
	#Procedure 0x404330
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_289
	test	rdx, rdx
	je	.label_289
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_289:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40435b
	.globl sub_40435b
	.type sub_40435b, @function
sub_40435b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404360
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
	#Procedure 0x404396
	.globl sub_404396
	.type sub_404396, @function
sub_404396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4043ae
	.globl sub_4043ae
	.type sub_4043ae, @function
sub_4043ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043b0

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
	js	.label_293
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_296
	cmp	r12d, 0x7fffffff
	je	.label_291
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
	jne	.label_294
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_294:
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
.label_296:
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
	jbe	.label_292
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_295
.label_292:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_290
	mov	rdi, r14
	call	free
.label_290:
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
.label_295:
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
.label_293:
	call	abort
.label_291:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40456d
	.globl sub_40456d
	.type sub_40456d, @function
sub_40456d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404570

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_301
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_302:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_297
	cmp	ebp, 3
	jne	.label_300
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_300
	.section	.text
	.align	16
	#Procedure 0x404608
	.globl sub_404608
	.type sub_404608, @function
sub_404608:

	nop	dword ptr [rax + rax]
.label_297:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_300:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_304
	cmp	esi, 0x2d
	je	.label_303
	cmp	esi, 0x3d
	jne	.label_298
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x40466a
	.globl sub_40466a
	.type sub_40466a, @function
sub_40466a:

	nop	word ptr [rax + rax]
.label_304:
	or	r13d, ebp
	or	edi, ebp
.label_298:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_302
.label_301:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_299
	mov	dword ptr [rax], r13d
.label_299:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40469f
	.globl sub_40469f
	.type sub_40469f, @function
sub_40469f:

	nop	
.label_303:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x4046a9
	.globl sub_4046a9
	.type sub_4046a9, @function
sub_4046a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_35
	call	setlocale
	mov	edi, OFFSET FLAT:label_305
	mov	esi, OFFSET FLAT:label_306
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_305
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	jmp	.label_329
	.section	.text
	.align	16
	#Procedure 0x404704
	.globl sub_404704
	.type sub_404704, @function
sub_404704:

	nop	word ptr cs:[rax + rax]
.label_323:
	mov	r14, qword ptr [rip + optarg]
.label_329:
	mov	edx, OFFSET FLAT:label_309
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_319
	cmp	eax, 0x5a
	je	.label_322
	cmp	eax, 0x6d
	je	.label_323
	jmp	.label_325
	.section	.text
	.align	16
	#Procedure 0x404743
	.globl sub_404743
	.type sub_404743, @function
sub_404743:

	nop	word ptr cs:[rax + rax]
.label_322:
	cmp	qword ptr [rip + optarg],  0
	je	.label_329
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_329
.label_319:
	cmp	eax, -1
	jne	.label_336
	mov	r15d, 0x1b6
	test	r14, r14
	je	.label_339
	mov	rdi, r14
	call	mode_compile
	mov	rbp, rax
	test	rbp, rbp
	je	.label_340
	xor	edi, edi
	call	umask
	mov	ebx, eax
	mov	edi, ebx
	call	umask
	mov	edi, 0x1b6
	xor	esi, esi
	xor	r8d, r8d
	mov	edx, ebx
	mov	rcx, rbp
	call	mode_adjust
	mov	r15d, eax
	mov	rdi, rbp
	call	free
	cmp	r15d, 0x200
	jae	.label_345
.label_339:
	movsxd	rax, dword ptr [rip + optind]
	mov	bpl, 1
	cmp	eax, r12d
	jge	.label_347
	lea	ecx, [rax + 1]
	cmp	ecx, r12d
	jge	.label_351
	mov	rcx, qword ptr [r13 + rax*8 + 8]
	cmp	byte ptr [rcx], 0x70
	sete	bpl
	jmp	.label_347
.label_351:
	xor	ebp, ebp
.label_347:
	xor	ecx, ecx
	test	bpl, bpl
	sete	cl
	lea	rbx, [rcx + rcx + 2]
	mov	ecx, r12d
	sub	ecx, eax
	movsxd	rcx, ecx
	cmp	rcx, rbx
	jb	.label_307
	cmp	rbx, rcx
	jb	.label_317
	mov	rcx, qword ptr [r13 + rax*8 + 8]
	movsx	ecx, byte ptr [rcx]
	add	ecx, -0x62
	cmp	ecx, 0x13
	ja	.label_320
	mov	ebp, 0x6000
	jmp	qword ptr [(rcx * 8) + label_326]
.label_491:
	mov	ebp, 0x2000
.label_490:
	mov	r12, qword ptr [r13 + rax*8 + 0x10]
	mov	rbx, qword ptr [r13 + rax*8 + 0x18]
	lea	rcx, [rsp]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, r12
	call	xstrtoumax
	test	eax, eax
	jne	.label_332
	mov	rax, qword ptr [rsp]
	mov	ecx, eax
	cmp	rax, rcx
	jne	.label_332
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, rbx
	call	xstrtoumax
	test	eax, eax
	jne	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, eax
	cmp	rax, rcx
	jne	.label_342
	mov	rdx, qword ptr [rsp]
	movzx	esi, al
	mov	rdi, rdx
	shl	rdi, 8
	and	edi, 0xfff00
	shl	rax, 0xc
	movabs	rcx, 0xffffff00000
	and	rcx, rax
	and	rdx, 0xfffffffffffff000
	shl	rdx, 0x20
	or	rcx, rsi
	or	rcx, rdx
	or	rcx, rdi
	cmp	rcx, -1
	je	.label_343
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r13 + rax*8]
	or	ebp, r15d
	mov	qword ptr [rsp + 0x10], rcx
	lea	rcx, [rsp + 0x10]
	xor	edi, edi
	mov	edx, ebp
	call	__xmknod
	jmp	.label_310
.label_492:
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	mkfifo
.label_310:
	test	eax, eax
	jne	.label_318
	test	r14, r14
	je	.label_321
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	chmod
	test	eax, eax
	jne	.label_327
.label_321:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_336:
	cmp	eax, 0xffffff7d
	je	.label_331
	cmp	eax, 0xffffff7e
	jne	.label_325
	xor	edi, edi
	call	usage
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_342:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_307:
	xor	edi, edi
	cmp	eax, r12d
	jge	.label_346
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r12d
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_311
.label_331:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_312
	mov	edx, OFFSET FLAT:label_313
	mov	r8d, OFFSET FLAT:label_314
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, dword ptr [rip + optind]
	add	rax, rbx
	mov	rdi, qword ptr [r13 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	test	bpl, bpl
	je	.label_333
	sub	r12d, dword ptr [rip + optind]
	cmp	r12d, 4
	jne	.label_333
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_324
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_333:
	mov	edi, 1
	call	usage
.label_320:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_325:
	mov	edi, 1
	call	usage
.label_318:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [r13 + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbx
	call	error
.label_340:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	jmp	.label_335
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
.label_335:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_327:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r13 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_346:
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_311:
	test	bpl, bpl
	jne	.label_308
	sub	r12d, dword ptr [rip + optind]
	cmp	r12d, 2
	jne	.label_308
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_324
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_308:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x404c5b
	.globl sub_404c5b
	.type sub_404c5b, @function
sub_404c5b:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_353:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_353
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404c81
	.globl sub_404c81
	.type sub_404c81, @function
sub_404c81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90
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
	#Procedure 0x404ca9
	.globl sub_404ca9
	.type sub_404ca9, @function
sub_404ca9:

	nop	dword ptr [rax]
.label_355:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x404cbc
	.globl sub_404cbc
	.type sub_404cbc, @function
sub_404cbc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_355
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_354
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_355
.label_354:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_355
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_356
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_356:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d30
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
	mov	edx, OFFSET FLAT:label_313
	mov	ecx, OFFSET FLAT:label_361
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
	#Procedure 0x404da4
	.globl sub_404da4
	.type sub_404da4, @function
sub_404da4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x404e05
	.globl sub_404e05
	.type sub_404e05, @function
sub_404e05:

	nop	word ptr cs:[rax + rax]
.label_368:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
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
	#Procedure 0x404e48
	.globl sub_404e48
	.type sub_404e48, @function
sub_404e48:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e55

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_368
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_312
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_313
	mov	ecx, OFFSET FLAT:label_361
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_363
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_363
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_361
	mov	ecx, OFFSET FLAT:label_312
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_312
	mov	ecx, OFFSET FLAT:label_364
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_383:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_381
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4050a0
	.globl sub_4050a0
	.type sub_4050a0, @function
sub_4050a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050af

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_383
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_384
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_384
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_382
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_382:
	mov	rbx, r14
.label_384:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_387:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405135
	.globl sub_405135
	.type sub_405135, @function
sub_405135:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40513f
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
	je	.label_388
	test	r14, r14
	je	.label_387
.label_388:
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
	.align	16
	#Procedure 0x405170

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
	je	.label_389
	test	r15, r15
	je	.label_390
.label_389:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_390:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4051ac
	.globl sub_4051ac
	.type sub_4051ac, @function
sub_4051ac:

	nop	dword ptr [rax]
.label_391:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4051b5
	.globl sub_4051b5
	.type sub_4051b5, @function
sub_4051b5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051bb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_392
	test	rax, rax
	je	.label_391
.label_392:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051d8
	.globl sub_4051d8
	.type sub_4051d8, @function
sub_4051d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405245
	.globl sub_405245
	.type sub_405245, @function
sub_405245:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405252
	.globl sub_405252
	.type sub_405252, @function
sub_405252:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405276
	.globl sub_405276
	.type sub_405276, @function
sub_405276:

	nop	word ptr cs:[rax + rax]
