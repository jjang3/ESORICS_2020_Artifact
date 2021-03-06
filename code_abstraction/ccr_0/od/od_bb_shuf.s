	.section	.text
	.align	32
	#Procedure 0x4018a9
	.globl sub_4018a9
	.type sub_4018a9, @function
sub_4018a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4018aa
	.globl sub_4018aa
	.type sub_4018aa, @function
sub_4018aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e2
	.globl sub_4018e2
	.type sub_4018e2, @function
sub_4018e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40192a
	.globl sub_40192a
	.type sub_40192a, @function
sub_40192a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40194c
	.globl sub_40194c
	.type sub_40194c, @function
sub_40194c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40195d
	.globl sub_40195d
	.type sub_40195d, @function
sub_40195d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401976
	.globl sub_401976
	.type sub_401976, @function
sub_401976:

	nop	word ptr cs:[rax + rax]
.label_16:
	movabs	rsi, OFFSET FLAT:label_9
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_10
	movabs	rax, OFFSET FLAT:label_11
	movabs	rcx, OFFSET FLAT:label_12
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_13
.label_20:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_19
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_16
	movabs	rax, OFFSET FLAT:label_17
	movabs	rcx, OFFSET FLAT:label_18
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x401a17

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_20
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_13
.label_10:
	movabs	rax, OFFSET FLAT:label_14
	movabs	rcx, OFFSET FLAT:label_15
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_13:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a78
	.globl sub_401a78
	.type sub_401a78, @function
sub_401a78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a80

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vfprintf
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_22
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	jne	.label_22
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x20], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_21
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_22:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b1a
	.globl sub_401b1a
	.type sub_401b1a, @function
sub_401b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b20

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b92
	.globl sub_401b92
	.type sub_401b92, @function
sub_401b92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bbb
	.globl sub_401bbb
	.type sub_401bbb, @function
sub_401bbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bc0

	.globl dtoastr
	.type dtoastr, @function
dtoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xorps	xmm1, xmm1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomisd	xmm1, qword ptr [rbp - 0x20]
	jbe	.label_23
	movsd	xmm0, qword ptr [rbp - 0x20]
	movq	rax, xmm0
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x60], xmm0
	jmp	.label_29
.label_23:
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x60], xmm0
.label_29:
	movsd	xmm0, qword ptr [rbp - 0x60]
	movsd	xmm1,  qword ptr [word ptr [rip + label_25]]
	mov	eax, 0xf
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rbp - 0x33]
	movsd	qword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 4
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rdi
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	cmp	r9d, 0
	cmovne	edx, esi
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0
	ucomisd	xmm1, qword ptr [rbp - 0x40]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x44], eax
.label_26:
	lea	rdx, [rbp - 0x33]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x44]
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	al, 1
	call	snprintf
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_28
	mov	eax, 0x11
	cmp	eax, dword ptr [rbp - 0x44]
	jle	.label_28
	movsxd	rax, dword ptr [rbp - 0x54]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_27
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strtod
	ucomisd	xmm0, qword ptr [rbp - 0x20]
	jne	.label_27
	jp	.label_27
.label_28:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	ret	
.label_27:
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_26
	.section	.text
	.align	32
	#Procedure 0x401e14
	.globl sub_401e14
	.type sub_401e14, @function
sub_401e14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e20
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_30
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_30:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e4a
	.globl sub_401e4a
	.type sub_401e4a, @function
sub_401e4a:

	nop	word ptr [rax + rax]
.label_32:
	mov	byte ptr [rbp - 1], 0
.label_33:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e5e
	.globl sub_401e5e
	.type sub_401e5e, @function
sub_401e5e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e6c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_32
	jmp	.label_31
.label_31:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_33
.label_34:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_35
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_35
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ebc

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_34
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_34
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_36
.label_35:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_36:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f0a
	.globl sub_401f0a
	.type sub_401f0a, @function
sub_401f0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401f51
	.globl sub_401f51
	.type sub_401f51, @function
sub_401f51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f60

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fd5
	.globl sub_401fd5
	.type sub_401fd5, @function
sub_401fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_43:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_41
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_39
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_47
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_44
.label_47:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_46
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_37
.label_45:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_44:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020a0
	.globl sub_4020a0
	.type sub_4020a0, @function
sub_4020a0:

	nop	word ptr cs:[rax + rax]
.label_41:
	test	byte ptr [rbp - 0x41], 1
	je	.label_45
	mov	qword ptr [rbp - 8], -2
	jmp	.label_44
.label_46:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_38
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_48
.label_38:
	mov	byte ptr [rbp - 0x41], 1
.label_48:
	jmp	.label_37
.label_37:
	jmp	.label_40
.label_40:
	jmp	.label_39
.label_39:
	jmp	.label_42
.label_42:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_43
.label_54:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x46], cx
.label_50:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, word ptr [rbp - 0x46]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_52
.label_49:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402179
	.globl sub_402179
	.type sub_402179, @function
sub_402179:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402188

	.globl print_s_short
	.type print_s_short, @function
print_s_short:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_52:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_49
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_54
	mov	qword ptr [rbp - 0x50], 0
.label_51:
	cmp	qword ptr [rbp - 0x50], 2
	jae	.label_53
	mov	eax, 1
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_51
.label_53:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	jmp	.label_50
	.section	.text
	.align	32
	#Procedure 0x402250

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_55
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_56
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40228f
	.globl sub_40228f
	.type sub_40228f, @function
sub_40228f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402290
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_57
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_58
.label_57:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_58
.label_58:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022cb
	.globl sub_4022cb
	.type sub_4022cb, @function
sub_4022cb:

	nop	dword ptr [rax + rax]
.label_64:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_59
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_61:
	jmp	.label_63
.label_63:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_66
	.section	.text
	.align	32
	#Procedure 0x402321

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_67
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_66:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_62
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_65
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_64
.label_65:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_60
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_61
.label_62:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
.label_73:
	mov	rax,  qword ptr [word ptr [file_list]]
	add	rax, 8
	mov	qword ptr [word ptr [file_list]],  rax
	mov	rdi,  qword ptr [word ptr [input_filename]]
	mov	ecx, OFFSET FLAT:label_74
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_69
	movabs	rdi, OFFSET FLAT:label_72
	call	gettext
	xor	ecx, ecx
	mov	qword ptr [word ptr [input_filename]],  rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [word ptr [in_stream]],  rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	edi, ecx
	mov	esi, ecx
	call	xset_binary_mode
	jmp	.label_70
	.section	.text
	.align	32
	#Procedure 0x402490

	.globl open_next_file
	.type open_next_file, @function
open_next_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 2], 1
.label_78:
	mov	rax,  qword ptr [word ptr [file_list]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [word ptr [input_filename]],  rax
	cmp	qword ptr [word ptr [input_filename]],  0
	jne	.label_73
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_76
.label_69:
	movabs	rsi, OFFSET FLAT:label_68
	mov	rdi,  qword ptr [word ptr [input_filename]]
	call	fopen
	mov	qword ptr [word ptr [in_stream]],  rax
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_75
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 8], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_56
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 2], 0
.label_75:
	jmp	.label_70
.label_70:
	jmp	.label_77
.label_77:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_78
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_71
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	jne	.label_71
	xor	eax, eax
	mov	ecx, eax
	mov	edx, 2
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, rcx
	call	setvbuf
	mov	dword ptr [rbp - 0xc], eax
.label_71:
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_76:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40259b
	.globl sub_40259b
	.type sub_40259b, @function
sub_40259b:

	nop	dword ptr [rax + rax]
.label_84:
	mov	rax, qword ptr [rbp - 0x30]
	movss	xmm0, dword ptr [rax]
	movss	dword ptr [rbp - 0x48], xmm0
.label_80:
	mov	eax, 0x1f
	mov	esi, eax
	xor	eax, eax
	lea	rdi, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 4
	mov	qword ptr [rbp - 0x30], rcx
	movss	xmm0, dword ptr [rbp - 0x48]
	mov	edx, eax
	mov	ecx, eax
	call	ftoastr
	movabs	rdi, OFFSET FLAT:label_81
	lea	rdx, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x84], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_79
.label_85:
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402618
	.globl sub_402618
	.type sub_402618, @function
sub_402618:

	nop	word ptr cs:[rax + rax]
.label_83:
	movss	xmm0, dword ptr [rbp - 0x58]
	movss	dword ptr [rbp - 0x48], xmm0
	jmp	.label_80
	.section	.text
	.align	32
	#Procedure 0x402632

	.globl print_float
	.type print_float, @function
print_float:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_79:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_85
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_84
	mov	qword ptr [rbp - 0x50], 0
.label_82:
	cmp	qword ptr [rbp - 0x50], 4
	jae	.label_83
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_82
	.section	.text
	.align	32
	#Procedure 0x4026f0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_86
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_86
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_86
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_86
.label_86:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402766
	.globl sub_402766
	.type sub_402766, @function
sub_402766:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_87
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_88
.label_87:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_88
.label_88:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402835
	.globl sub_402835
	.type sub_402835, @function
sub_402835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402840
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_89
	call	xalloc_die
.label_89:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
.label_93:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_96
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x78
	je	.label_94
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x58
	jne	.label_96
.label_94:
	mov	dword ptr [rbp - 0x1c], 0x10
	jmp	.label_91
	.section	.text
	.align	32
	#Procedure 0x4028ce

	.globl parse_old_offset
	.type parse_old_offset, @function
parse_old_offset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0
	jne	.label_95
	mov	byte ptr [rbp - 1], 0
	jmp	.label_98
.label_96:
	mov	dword ptr [rbp - 0x1c], 8
.label_91:
	jmp	.label_97
.label_97:
	xor	eax, eax
	mov	esi, eax
	movabs	r8, OFFSET FLAT:label_92
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	cmp	eax, 0
	sete	r9b
	and	r9b, 1
	mov	byte ptr [rbp - 1], r9b
.label_98:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40293e
	.globl sub_40293e
	.type sub_40293e, @function
sub_40293e:

	nop	
.label_95:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_90
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_90:
	mov	esi, 0x2e
	mov	rdi, qword ptr [rbp - 0x10]
	call	strchr
	cmp	rax, 0
	je	.label_93
	mov	dword ptr [rbp - 0x1c], 0xa
	jmp	.label_97
.label_100:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_101:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40299e
	.globl sub_40299e
	.type sub_40299e, @function
sub_40299e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029a6

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_99
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_100
.label_99:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_101
.label_103:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_102:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029f7
	.globl sub_4029f7
	.type sub_4029f7, @function
sub_4029f7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a02

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_103
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_102
.label_104:
	mov	byte ptr [rbp - 1], 0
.label_108:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a3e
	.globl sub_402a3e
	.type sub_402a3e, @function
sub_402a3e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a49
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_105
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_105
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_104
	jmp	.label_105
.label_105:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_108
.label_112:
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_111
	.section	.text
	.align	32
	#Procedure 0x402ab3
	.globl sub_402ab3
	.type sub_402ab3, @function
sub_402ab3:

	nop	word ptr [rax + rax]
.label_116:
	fld	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x80]
.label_115:
	fld	xword ptr [rbp - 0x80]
	fstp	xword ptr [rbp - 0x60]
	lea	rax, [rbp - 0x4b]
	mov	qword ptr [rbp - 0x70], rax
	lea	rax, [rbp - 0x4a]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x4b], 0x25
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0x2d
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	ecx, eax
	and	ecx, 1
	mov	eax, ecx
	mov	rsi, rdx
	add	rsi, rax
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rdx + rax], 0x2b
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	shr	ecx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x20
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 4
	shr	ecx, 2
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x30
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 8
	shr	ecx, 3
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2e
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0x4c
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dil, cl
	test	dil, 0x10
	mov	dil, 0x47
	mov	r8b, 0x67
	mov	qword ptr [rbp - 0x88], rax
	mov	byte ptr [rbp - 0x89], r8b
	mov	byte ptr [rbp - 0x8a], dil
	jne	.label_114
	mov	al, byte ptr [rbp - 0x89]
	mov	byte ptr [rbp - 0x8a], al
.label_114:
	mov	al, byte ptr [rbp - 0x8a]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 2
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	byte ptr [rcx + 1], al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rdx], 0
	fld	xword ptr [rbp - 0x60]
	fld	xword ptr [word ptr [rip + label_113]]
	fucomip	st(1)
	fstp	st(0)
	mov	esi, 1
	mov	edi, 0x12
	cmova	edi, esi
	mov	dword ptr [rbp - 0x64], edi
.label_111:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x4b]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x64]
	fld	xword ptr [rbp - 0x40]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	r9d, r9d
	mov	r10b, r9b
	mov	al, r10b
	call	snprintf
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_110
	mov	eax, 0x15
	cmp	eax, dword ptr [rbp - 0x64]
	jle	.label_110
	movsxd	rax, dword ptr [rbp - 0x74]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_112
	mov	rdi, qword ptr [rbp - 8]
	xor	eax, eax
	mov	esi, eax
	call	strtold
	fld	st(0)
	fld	xword ptr [rbp - 0x30]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x94]
	jne	.label_112
	jnp	.label_110
	jmp	.label_112
.label_110:
	mov	eax, dword ptr [rbp - 0x74]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c9b

	.globl ldtoastr
	.type ldtoastr, @function
ldtoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	fld	xword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	fld	st(0)
	fstp	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x30]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_116
	jmp	.label_117
.label_117:
	fld	xword ptr [rbp - 0x30]
	fchs	
	fstp	xword ptr [rbp - 0x80]
	jmp	.label_115
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl xprintf
	.type xprintf, @function
xprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_118
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_118:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x20]
	call	xvprintf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e41
	.globl sub_402e41
	.type sub_402e41, @function
sub_402e41:

	nop	word ptr cs:[rax + rax]
.label_123:
	movsd	xmm0, qword ptr [rbp - 0x60]
	movsd	qword ptr [rbp - 0x50], xmm0
	jmp	.label_121
.label_124:
	mov	rax, qword ptr [rbp - 0x30]
	movsd	xmm0, qword ptr [rax]
	movsd	qword ptr [rbp - 0x50], xmm0
.label_121:
	mov	eax, 0x28
	mov	esi, eax
	xor	eax, eax
	lea	rdi, [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 8
	mov	qword ptr [rbp - 0x30], rcx
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	edx, eax
	mov	ecx, eax
	call	dtoastr
	movabs	rdi, OFFSET FLAT:label_81
	lea	rdx, [rbp - 0x90]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x94], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_122
	.section	.text
	.align	32
	#Procedure 0x402ed4

	.globl print_double
	.type print_double, @function
print_double:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_122:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_120
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_124
	mov	qword ptr [rbp - 0x58], 0
.label_119:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_123
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_119
.label_120:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f9b
	.globl sub_402f9b
	.type sub_402f9b, @function
sub_402f9b:

	nop	dword ptr [rax + rax]
.label_129:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], cl
.label_126:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, byte ptr [rbp - 0x45]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_128
	.section	.text
	.align	32
	#Procedure 0x402fe1

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_128:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_130
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_129
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_131
	jmp	.label_129
.label_131:
	mov	qword ptr [rbp - 0x50], 0
.label_125:
	cmp	qword ptr [rbp - 0x50], 1
	jae	.label_127
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_125
.label_127:
	mov	al, byte ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_126
.label_130:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030bc
	.globl sub_4030bc
	.type sub_4030bc, @function
sub_4030bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030e7
	.globl sub_4030e7
	.type sub_4030e7, @function
sub_4030e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030f0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_132
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_133
.label_132:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403137
	.globl sub_403137
	.type sub_403137, @function
sub_403137:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_134
	jmp	.label_136
.label_136:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_135
.label_134:
	mov	byte ptr [rbp - 1], 0
.label_135:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403172
	.globl sub_403172
	.type sub_403172, @function
sub_403172:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031aa
	.globl sub_4031aa
	.type sub_4031aa, @function
sub_4031aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031e1
	.globl sub_4031e1
	.type sub_4031e1, @function
sub_4031e1:

	nop	word ptr cs:[rax + rax]
.label_139:
	movabs	rdi, OFFSET FLAT:label_137
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_140:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403258
	.globl sub_403258
	.type sub_403258, @function
sub_403258:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403259

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_139
	movabs	rdi, OFFSET FLAT:label_138
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_140
.label_141:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032ba
	.globl sub_4032ba
	.type sub_4032ba, @function
sub_4032ba:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032c6

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_141
	call	abort
.label_143:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_144:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40330b
	.globl sub_40330b
	.type sub_40330b, @function
sub_40330b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403314
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_143
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_144
.label_146:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_147:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403352
	.globl sub_403352
	.type sub_403352, @function
sub_403352:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403361

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_145
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_145:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_146
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_146
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_146
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_147
	.section	.text
	.align	32
	#Procedure 0x4033f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_148
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_151
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_152
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_150
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_149
.label_152:
	mov	byte ptr [rbp - 5], 0
.label_149:
	jmp	.label_148
.label_148:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403463
	.globl sub_403463
	.type sub_403463, @function
sub_403463:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403470

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_153
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_153:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034ab
	.globl sub_4034ab
	.type sub_4034ab, @function
sub_4034ab:

	nop	dword ptr [rax + rax]
.label_161:
	mov	rax,  qword ptr [word ptr [file_list]]
	mov	rdi, qword ptr [rax - 8]
	mov	ecx, OFFSET FLAT:label_74
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_156
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_156
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_56
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 5], 0
.label_156:
	jmp	.label_155
.label_155:
	mov	qword ptr [word ptr [in_stream]],  0
.label_158:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_154
	movabs	rdi, OFFSET FLAT:label_157
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 5], 0
.label_154:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40357a
	.globl sub_40357a
	.type sub_40357a, @function
sub_40357a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403584

	.globl check_and_close
	.type check_and_close, @function
check_and_close:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_158
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_161
	movabs	rdi, OFFSET FLAT:label_159
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx,  qword ptr [word ptr [file_list]]
	mov	rdi, qword ptr [rcx - 8]
	mov	esi, OFFSET FLAT:label_74
	call	strcmp
	cmp	eax, 0
	je	.label_160
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x1c], eax
.label_160:
	mov	byte ptr [rbp - 5], 0
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_165
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_162
.label_165:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_166
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_164
.label_166:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_164
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_164:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_163
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_163:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_162:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036fe
	.globl sub_4036fe
	.type sub_4036fe, @function
sub_4036fe:

	nop	
.label_171:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403706
	.globl sub_403706
	.type sub_403706, @function
sub_403706:

	nop	dword ptr [rax]
.label_169:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
.label_170:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 4
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	edx, dword ptr [rbp - 0x48]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_167
.label_168:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_170
	.section	.text
	.align	32
	#Procedure 0x403755

	.globl print_int
	.type print_int, @function
print_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_167:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_171
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_169
	mov	qword ptr [rbp - 0x50], 0
.label_172:
	cmp	qword ptr [rbp - 0x50], 4
	jae	.label_168
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl format_address_paren
	.type format_address_paren, @function
format_address_paren:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x28
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	edi, esi
	call	putchar_unlocked
	mov	esi, 0x29
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	call	format_address_std
	cmp	byte ptr [rbp - 9], 0
	je	.label_173
	movsx	edi, byte ptr [rbp - 9]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_173:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40385b
	.globl sub_40385b
	.type sub_40385b, @function
sub_40385b:

	nop	dword ptr [rax + rax]
.label_181:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_175
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_176
.label_175:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_176:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_174
	movabs	rsi, OFFSET FLAT:label_177
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_174
	movabs	rsi, OFFSET FLAT:label_178
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_179
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_179:
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403943
	.globl sub_403943
	.type sub_403943, @function
sub_403943:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40394a

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_181
	movabs	rdi, OFFSET FLAT:label_180
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403980

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039be
	.globl sub_4039be
	.type sub_4039be, @function
sub_4039be:

	nop	
.label_1057:
	movabs	rax, OFFSET FLAT:label_182
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
.label_1053:
	movabs	rax, OFFSET FLAT:label_189
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
.label_1052:
	movabs	rax, OFFSET FLAT:label_185
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
.label_1050:
	movabs	rax, OFFSET FLAT:label_196
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
.label_195:
	add	rsp, 0x80
	pop	rbp
	ret	
.label_1055:
	movabs	rax, OFFSET FLAT:label_193
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
.label_1051:
	movabs	rax, OFFSET FLAT:label_186
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
.label_184:
	lea	rdi, [rbp - 0x54]
	movzx	eax, byte ptr [rbp - 0x41]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	movabs	rcx, OFFSET FLAT:label_191
	movabs	rdi, OFFSET FLAT:label_192
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x78]
	movzx	esi, word ptr [rax + rdx*2]
	and	esi, 0x4000
	cmp	esi, 0
	cmovne	rcx, rdi
	movzx	edx, byte ptr [rbp - 0x41]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rcx
	mov	al, 0
	call	sprintf
	lea	rcx, [rbp - 0x54]
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x7c], eax
.label_183:
	movabs	rdi, OFFSET FLAT:label_81
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x40]
	add	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x80], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_187
.label_1056:
	movabs	rax, OFFSET FLAT:label_194
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
.label_1054:
	movabs	rax, OFFSET FLAT:label_188
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_183
	.section	.text
	.align	32
	#Procedure 0x403afc

	.globl print_ascii
	.type print_ascii, @function
print_ascii:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_187:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_195
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	dec	rcx
	imul	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dil, byte ptr [rax]
	mov	byte ptr [rbp - 0x41], dil
	movzx	esi, byte ptr [rbp - 0x41]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0xd
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], rcx
	ja	.label_184
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_190]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x403ba0

	.globl dump_hexl_mode_trailer
	.type dump_hexl_mode_trailer, @function
dump_hexl_mode_trailer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_197
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], eax
.label_200:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_199
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x28], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_198
	movzx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_201
.label_198:
	mov	eax, 0x2e
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_201
.label_201:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	cl, al
	mov	byte ptr [rbp - 0x1a], cl
	movzx	edi, byte ptr [rbp - 0x1a]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_200
.label_199:
	mov	edi, 0x3c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c6f
	.globl sub_403c6f
	.type sub_403c6f, @function
sub_403c6f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403caf
	.globl sub_403caf
	.type sub_403caf, @function
sub_403caf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d5d
	.globl sub_403d5d
	.type sub_403d5d, @function
sub_403d5d:

	nop	dword ptr [rax]
.label_203:
	mov	byte ptr [rbp - 1], 0
.label_205:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d6e
	.globl sub_403d6e
	.type sub_403d6e, @function
sub_403d6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403d70
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_202
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_203
	jmp	.label_202
.label_202:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_205
	.section	.text
	.align	32
	#Procedure 0x403db0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_206
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_206:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f14
	.globl sub_403f14
	.type sub_403f14, @function
sub_403f14:

	nop	word ptr cs:[rax + rax]
.label_212:
	lea	rax, [rbp - 0x52]
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dl, cl
	mov	byte ptr [rbp - 0x52], dl
	mov	byte ptr [rbp - 0x51], 0
	mov	qword ptr [rbp - 0x50], rax
.label_208:
	jmp	.label_209
.label_209:
	movabs	rdi, OFFSET FLAT:label_81
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x40]
	add	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x403f73

	.globl print_named_ascii
	.type print_named_ascii, @function
print_named_ascii:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_211:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_213
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	movzx	esi, byte ptr [rax]
	and	esi, 0x7f
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 0x7f
	jne	.label_207
	movabs	rax, OFFSET FLAT:label_210
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_209
.label_213:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40400f
	.globl sub_40400f
	.type sub_40400f, @function
sub_40400f:

	nop	word ptr [rax + rax]
.label_207:
	cmp	dword ptr [rbp - 0x44], 0x20
	jg	.label_212
	movabs	rax, OFFSET FLAT:charname
	movsxd	rcx, dword ptr [rbp - 0x44]
	shl	rcx, 2
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_208
	.section	.text
	.align	32
	#Procedure 0x404040

	.globl print_short
	.type print_short, @function
print_short:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_215:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_216
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_214
	mov	qword ptr [rbp - 0x50], 0
.label_218:
	cmp	qword ptr [rbp - 0x50], 2
	jae	.label_219
	mov	eax, 1
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_218
.label_216:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404101
	.globl sub_404101
	.type sub_404101, @function
sub_404101:

	nop	word ptr cs:[rax + rax]
.label_214:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x46], cx
.label_217:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, word ptr [rbp - 0x46]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_215
.label_219:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	jmp	.label_217
.label_221:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_220:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40417b
	.globl sub_40417b
	.type sub_40417b, @function
sub_40417b:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40417f

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_221
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_220
.label_223:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_222
.label_222:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404233
	.globl sub_404233
	.type sub_404233, @function
sub_404233:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404241

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_223
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_222
.label_239:
	jmp	.label_242
.label_242:
	jmp	.label_235
.label_230:
	jmp	.label_243
.label_243:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_246
	jmp	.label_225
.label_229:
	jmp	.label_226
.label_226:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_225
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fileno
	lea	rsi, [rbp - 0xa8]
	mov	edi, eax
	call	fstat
	cmp	eax, 0
	jne	.label_234
	lea	rdi, [rbp - 0xa8]
	call	usable_st_size
	test	al, 1
	jne	.label_240
	jmp	.label_241
.label_240:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x70]
	jge	.label_236
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x70], rax
	ja	.label_236
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20c8], rax
	jmp	.label_224
.label_227:
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rpl_fseeko
	cmp	eax, 0
	je	.label_231
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	byte ptr [rbp - 0x11], 0
.label_231:
	mov	qword ptr [rbp - 0x10], 0
.label_228:
	jmp	.label_243
.label_246:
	jmp	.label_238
.label_245:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_232:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20d0
	pop	rbp
	ret	
.label_225:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_245
	movabs	rdi, OFFSET FLAT:label_244
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x404395

	.globl skip
	.type skip, @function
skip:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20d0
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_229
	mov	byte ptr [rbp - 1], 1
	jmp	.label_232
.label_233:
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_239
	jmp	.label_230
.label_236:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20c8], rcx
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x20c8]
	cmp	rax, qword ptr [rbp - 0x78]
	jge	.label_241
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_227
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_228
.label_234:
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20cc], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_56
	mov	esi, dword ptr [rbp - 0x20cc]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
.label_238:
	mov	edi, dword ptr [rbp - 0x18]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_226
.label_241:
	mov	qword ptr [rbp - 0x20c0], 0x2000
.label_235:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_230
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20c0]
	jae	.label_237
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20c0], rax
.label_237:
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x20b0]
	mov	rdx, qword ptr [rbp - 0x20c0]
	mov	rcx,  qword ptr [word ptr [in_stream]]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20b8], rax
	mov	rax, qword ptr [rbp - 0x20b8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x20b8]
	cmp	rax, qword ptr [rbp - 0x20c0]
	je	.label_242
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_233
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	byte ptr [rbp - 0x11], 0
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x404560
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404576
	.globl sub_404576
	.type sub_404576, @function
sub_404576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404580

	.globl write_block
	.type write_block, @function
write_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  1
	je	.label_247
	test	byte ptr [byte ptr [write_block.first]],  1
	jne	.label_247
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_247
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx,  qword ptr [word ptr [bytes_per_block]]
	call	memcmp
	cmp	eax, 0
	jne	.label_247
	test	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	je	.label_254
	jmp	.label_257
.label_248:
	jmp	.label_255
.label_255:
	mov	byte ptr [byte ptr [write_block.first]],  0
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40460a
	.globl sub_40460a
	.type sub_40460a, @function
sub_40460a:

	nop	dword ptr [rax + rax]
.label_254:
	movabs	rdi, OFFSET FLAT:label_251
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	mov	dword ptr [rbp - 0x40], eax
.label_257:
	jmp	.label_255
.label_247:
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  0
	mov	qword ptr [rbp - 0x28], 0
.label_256:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_248
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	eax, ecx
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	movsxd	rdx, dword ptr [rbp - 0x2c]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x48], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x48]
	div	rsi
	mov	ecx, eax
	mov	dword ptr [rbp - 0x30], ecx
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	sub	rax, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_253
	xor	esi, esi
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 8]
	call	rax
	jmp	.label_249
.label_253:
	movabs	rdi, OFFSET FLAT:label_81
	movabs	rdx, OFFSET FLAT:label_250
	mov	esi,  dword ptr [dword ptr [address_pad_len]]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_249:
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rax, qword ptr [rax + 8]
	movsxd	rdi, dword ptr [rbp - 0x30]
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	add	rcx, 0x10
	mov	r8, qword ptr [rbp - 0x28]
	imul	r8, r8, 0x28
	add	r8,  qword ptr [word ptr [spec]]
	mov	r8d, dword ptr [r8 + 0x1c]
	mov	r9, qword ptr [rbp - 0x28]
	imul	r9, r9, 0x28
	add	r9,  qword ptr [word ptr [spec]]
	mov	r9d, dword ptr [r9 + 0x20]
	call	rax
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	test	byte ptr [rax + 0x18], 1
	je	.label_252
	movabs	rdi, OFFSET FLAT:label_81
	movabs	rdx, OFFSET FLAT:label_250
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x1c]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x20]
	imul	ecx, dword ptr [rbp - 0x34]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x58], rdx
	cdq	
	idiv	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x34]
	imul	eax, dword ptr [rbp - 0x38]
	add	eax, dword ptr [rbp - 0x3c]
	mov	esi, eax
	mov	r8, qword ptr [rbp - 0x58]
	mov	rdx, r8
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x5c], eax
	call	dump_hexl_mode_trailer
.label_252:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x60], eax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_256
.label_260:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_259
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_259:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404923
	.globl sub_404923
	.type sub_404923, @function
sub_404923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40492f

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_260
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_258
.label_287:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_365
	call	dump_strings
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x114], ecx
	jmp	.label_359
.label_355:
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_341
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2b
	jne	.label_344
.label_341:
	lea	rsi, [rbp - 0x70]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_357
	jmp	.label_344
.label_357:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
.label_344:
	jmp	.label_263
.label_311:
	mov	dword ptr [dword ptr [label_370]],  1
	mov	dword ptr [dword ptr [label_371]],  2
	mov	dword ptr [dword ptr [label_372]],  3
	mov	dword ptr [dword ptr [label_373]],  4
	mov	dword ptr [dword ptr [label_373]],  5
	mov	qword ptr [rbp - 0x20], 0
.label_280:
	cmp	qword ptr [rbp - 0x20], 0x10
	ja	.label_276
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_280
.label_1008:
	movabs	rdi, OFFSET FLAT:label_283
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_300:
	jmp	.label_294
.label_294:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	je	.label_295
	movabs	rax, OFFSET FLAT:format_address_none
	cmp	qword ptr [word ptr [format_address]],  rax
	jne	.label_297
	movabs	rax, OFFSET FLAT:format_address_paren
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	qword ptr [word ptr [format_address]],  rax
	jmp	.label_303
.label_289:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	je	.label_352
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_317
.label_328:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [string_min]],  rax
.label_369:
	mov	byte ptr [byte ptr [flag_dump_strings]],  1
	jmp	.label_269
.label_1016:
	movabs	rdi, OFFSET FLAT:label_323
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_349:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_335
	cmp	qword ptr [word ptr [n_specs]],  0
	jbe	.label_335
	movabs	rdi, OFFSET FLAT:label_337
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_335:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x14], eax
	test	byte ptr [rbp - 0x31], 1
	je	.label_345
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_294
.label_345:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 1
	mov	dword ptr [rbp - 0xe4], eax
	mov	dword ptr [rbp - 0xe8], ecx
	je	.label_355
	jmp	.label_315
.label_315:
	mov	eax, dword ptr [rbp - 0xe4]
	sub	eax, 2
	mov	dword ptr [rbp - 0xec], eax
	je	.label_362
	jmp	.label_367
.label_367:
	mov	eax, dword ptr [rbp - 0xe4]
	sub	eax, 3
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_368
	jmp	.label_263
.label_1020:
	movabs	rdi, OFFSET FLAT:label_265
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
	.section	.text
	.align	32
	#Procedure 0x404c39

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x32], 0
	mov	byte ptr [rbp - 0x33], 1
	mov	qword ptr [rbp - 0x40], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_250
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_292
	movabs	rsi, OFFSET FLAT:label_293
	mov	qword ptr [rbp - 0x90], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_292
	mov	qword ptr [rbp - 0x98], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0xa0], rax
	call	atexit
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0xa4], eax
.label_313:
	cmp	qword ptr [rbp - 0x20], 8
	ja	.label_311
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_313
.label_1010:
	movabs	rdi, OFFSET FLAT:label_321
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_1011:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:max_bytes_to_format
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_336
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_343:
	test	byte ptr [rbp - 0x33], 1
	jne	.label_349
	mov	dword ptr [rbp - 4], 1
	jmp	.label_350
.label_1005:
	mov	byte ptr [rbp - 0x31], 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x64
	mov	eax, ecx
	sub	ecx, 0x14
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_354
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_363]]
	jmp	rcx
.label_368:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_273
	lea	rsi, [rbp - 0x70]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_270
	jmp	.label_273
.label_270:
	lea	rsi, [rbp - 0x78]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_281
	jmp	.label_273
.label_281:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [optind]]
	add	edx, 2
	movsxd	rcx, edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	sub	edx, 2
	mov	dword ptr [rbp - 0x14], edx
.label_273:
	jmp	.label_263
.label_263:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_300
	mov	eax, 1
	cmp	eax, dword ptr [rbp - 0x14]
	jge	.label_300
	movabs	rdi, OFFSET FLAT:label_306
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0xf8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_322
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_56
	mov	edi, esi
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_336:
	jmp	.label_269
.label_1022:
	movabs	rdi, OFFSET FLAT:label_334
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_1007:
	movabs	rdi, OFFSET FLAT:label_338
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_1023:
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_307:
	movabs	rax, OFFSET FLAT:default_file_list
	mov	qword ptr [word ptr [file_list]],  rax
.label_310:
	call	open_next_file
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_366
	jmp	.label_299
.label_1004:
	xor	edi, edi
	call	usage
.label_1015:
	movabs	rdi, OFFSET FLAT:label_264
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_1027:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	eax, OFFSET FLAT:label_275
	mov	edi, eax
	mov	eax, OFFSET FLAT:endian_args
	mov	edx, eax
	mov	eax, OFFSET FLAT:endian_types
	mov	ecx, eax
	mov	eax, 4
	mov	r8d, eax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + endian_types]]
	test	r10d, r10d
	mov	dword ptr [rbp - 0xd4], r10d
	je	.label_284
	jmp	.label_288
.label_288:
	mov	eax, dword ptr [rbp - 0xd4]
	sub	eax, 1
	mov	dword ptr [rbp - 0xd8], eax
	jne	.label_290
	jmp	.label_296
.label_296:
	mov	byte ptr [byte ptr [input_swap]],  1
	jmp	.label_290
.label_342:
	jmp	.label_298
.label_298:
	cmp	qword ptr [word ptr [n_specs]],  0
	jne	.label_272
	movabs	rdi, OFFSET FLAT:label_304
	call	decode_format_string
	mov	byte ptr [rbp - 0xf9], al
.label_272:
	cmp	dword ptr [rbp - 0x14], 0
	jle	.label_307
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [file_list]],  rax
	jmp	.label_310
.label_1046:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0x10
	mov	dword ptr [dword ptr [address_pad_len]],  6
	jmp	.label_268
.label_1009:
	movabs	rdi, OFFSET FLAT:label_316
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_352:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x108], rcx
	jmp	.label_317
.label_317:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [word ptr [pseudo_offset]],  rax
	call	get_lcm
	mov	dword ptr [rbp - 0x24], eax
	test	byte ptr [rbp - 0x32], 1
	je	.label_339
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_324
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x24]
	xor	edx, edx
	div	rcx
	cmp	rdx, 0
	jne	.label_324
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
	jmp	.label_351
.label_266:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdx + rax*8]
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
.label_278:
	jmp	.label_261
.label_261:
	jmp	.label_263
.label_301:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x33]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_350:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405229
	.globl sub_405229
	.type sub_405229, @function
sub_405229:

	nop	
.label_354:
	movabs	rdi, OFFSET FLAT:label_274
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rcx]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1043:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0xa
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_268
.label_365:
	call	dump
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x114], ecx
.label_359:
	mov	eax, dword ptr [rbp - 0x114]
	mov	cl, byte ptr [rbp - 0x33]
	and	cl, 1
	movzx	edx, cl
	and	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x33], cl
.label_299:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_301
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_301
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_72
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x118], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1018:
	movabs	rdi, OFFSET FLAT:label_320
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_353:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_328
	movabs	rdi, OFFSET FLAT:label_333
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xd0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1019:
	movabs	rdi, OFFSET FLAT:label_318
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_340:
	mov	eax, dword ptr [rbp - 0x5c]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x104
	mov	qword ptr [rbp - 0xb0], rcx
	mov	dword ptr [rbp - 0xb4], eax
	ja	.label_312
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_361]]
	jmp	rcx
.label_1013:
	mov	byte ptr [rbp - 0x31], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_364
	mov	qword ptr [word ptr [string_min]],  3
	jmp	.label_369
.label_1025:
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_262
	mov	qword ptr [rbp - 0x30], 0x20
	jmp	.label_271
.label_329:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x30], rax
.label_271:
	jmp	.label_269
.label_284:
	mov	byte ptr [byte ptr [input_swap]],  0
.label_290:
	jmp	.label_269
.label_339:
	cmp	dword ptr [rbp - 0x24], 0x10
	jge	.label_279
	mov	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x24]
	cdq	
	idiv	dword ptr [rbp - 0x24]
	imul	ecx, eax
	movsxd	rsi, ecx
	mov	qword ptr [word ptr [bytes_per_block]],  rsi
	jmp	.label_358
.label_1014:
	movabs	rdi, OFFSET FLAT:label_285
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_1003:
	movabs	rsi, OFFSET FLAT:label_346
	movabs	rdx, OFFSET FLAT:label_347
	movabs	r8, OFFSET FLAT:label_348
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_262:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x68]
	movabs	r8, OFFSET FLAT:label_250
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_319
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_269:
	jmp	.label_326
.label_319:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_329
	movabs	rdi, OFFSET FLAT:label_333
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xe0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1026:
	mov	byte ptr [byte ptr [traditional]],  1
	jmp	.label_269
.label_362:
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_305
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2b
	je	.label_305
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_261
.label_305:
	lea	rsi, [rbp - 0x78]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_374
	jmp	.label_261
.label_374:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_266
	lea	rsi, [rbp - 0x70]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_302
	jmp	.label_266
.label_302:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 2
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_278
.label_366:
	mov	rdi,  qword ptr [word ptr [n_bytes_to_skip]]
	call	skip
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_289
	jmp	.label_299
.label_1012:
	movabs	rdi, OFFSET FLAT:label_356
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_276:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	dword ptr [dword ptr [label_330]],  6
	mov	dword ptr [dword ptr [label_331]],  8
	mov	dword ptr [dword ptr [label_332]],  7
	mov	qword ptr [word ptr [n_specs]],  0
	mov	qword ptr [word ptr [n_specs_allocated]],  0
	mov	qword ptr [word ptr [spec]],  0
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	byte ptr [byte ptr [flag_dump_strings]],  0
.label_326:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x58]
	mov	dword ptr [rbp - 0x58], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], -1
	jne	.label_340
	jmp	.label_343
.label_364:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	lea	rcx, [rbp - 0x50]
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_353
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_1021:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:n_bytes_to_skip
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_267
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_267:
	jmp	.label_269
.label_279:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
.label_358:
	jmp	.label_325
.label_325:
	mov	qword ptr [rbp - 0x20], 0
.label_309:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_282
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	edx, dword ptr [rcx + 4]
	mov	ecx, edx
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x7c], esi
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	add	esi, 1
	imul	esi, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x80], esi
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x80]
	cmp	rax, rcx
	jae	.label_286
	movsxd	rax, dword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x40], rax
.label_286:
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_309
.label_324:
	movabs	rdi, OFFSET FLAT:label_314
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x110], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x110]
	mov	al, 0
	call	error
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rcx
.label_351:
	jmp	.label_325
.label_1006:
	movabs	rdi, OFFSET FLAT:label_327
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_297:
	movabs	rax, OFFSET FLAT:format_address_label
	mov	qword ptr [word ptr [format_address]],  rax
.label_303:
	jmp	.label_295
.label_295:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_298
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	add	rax,  qword ptr [word ptr [max_bytes_to_format]]
	mov	qword ptr [word ptr [end_offset]],  rax
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	jae	.label_342
	movabs	rdi, OFFSET FLAT:label_360
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1024:
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  0
	jmp	.label_269
.label_1045:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_268
.label_1044:
	movabs	rax, OFFSET FLAT:format_address_none
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_pad_len]],  0
	jmp	.label_268
.label_312:
	mov	edi, 1
	call	usage
.label_1017:
	movabs	rdi, OFFSET FLAT:label_277
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_269
.label_282:
	mov	qword ptr [rbp - 0x20], 0
.label_291:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_287
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	edx, dword ptr [rcx + 4]
	mov	ecx, edx
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x84], esi
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	imul	esi, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x88], esi
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x88]
	sub	rax, rcx
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	dword ptr [rax + 0x20], esi
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_291
.label_268:
	jmp	.label_269
	.section	.text
	.align	32
	#Procedure 0x405b10

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b43
	.globl sub_405b43
	.type sub_405b43, @function
sub_405b43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b50

	.globl print_long_long
	.type print_long_long, @function
print_long_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_379:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_378
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_376
	mov	qword ptr [rbp - 0x58], 0
.label_375:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_380
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_375
.label_378:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c11
	.globl sub_405c11
	.type sub_405c11, @function
sub_405c11:

	nop	word ptr cs:[rax + rax]
.label_376:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_377:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_379
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_377
.label_381:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_56
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_382:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x405c9a

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_383
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_385
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_383
.label_385:
	movabs	rdi, OFFSET FLAT:label_157
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_381
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_384
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_382
.label_383:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_386
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_386:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d57
	.globl sub_405d57
	.type sub_405d57, @function
sub_405d57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d93
	.globl sub_405d93
	.type sub_405d93, @function
sub_405d93:

	nop	word ptr cs:[rax + rax]
.label_388:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_387:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dbc
	.globl sub_405dbc
	.type sub_405dbc, @function
sub_405dbc:

	nop	word ptr cs:[rax + rax]
.label_389:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_387
	.section	.text
	.align	32
	#Procedure 0x405df0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_388
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_388
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_388
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_389
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_387
	.section	.text
	.align	32
	#Procedure 0x405e70

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ea2
	.globl sub_405ea2
	.type sub_405ea2, @function
sub_405ea2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl get_lcm
	.type get_lcm, @function
get_lcm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], 1
	mov	qword ptr [rbp - 0x10], 0
.label_390:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_391
	movsxd	rdi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	eax, ecx
	movsxd	rsi,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	call	lcm
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_390
.label_391:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f1e
	.globl sub_405f1e
	.type sub_405f1e, @function
sub_405f1e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405f20

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f26
	.globl sub_405f26
	.type sub_405f26, @function
sub_405f26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_397:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_396
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_393
.label_392:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fd3
	.globl sub_405fd3
	.type sub_405fd3, @function
sub_405fd3:

	nop	dword ptr [rax]
.label_396:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_393:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_398:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_395
	jmp	.label_392
.label_395:
	jmp	.label_394
.label_394:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_397
.label_400:
	mov	dword ptr [rbp - 4], 0
.label_399:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406050
	.globl sub_406050
	.type sub_406050, @function
sub_406050:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406057

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_401
	test	byte ptr [rbp - 0x13], 1
	je	.label_400
	test	byte ptr [rbp - 0x11], 1
	jne	.label_401
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_400
.label_401:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_402
	call	__errno_location
	mov	dword ptr [rax], 0
.label_402:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_399
	.section	.text
	.align	32
	#Procedure 0x4060f0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060fe
	.globl sub_4060fe
	.type sub_4060fe, @function
sub_4060fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406100
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_403
	jmp	.label_404
.label_404:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_405
.label_403:
	mov	byte ptr [rbp - 1], 0
.label_405:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40612f
	.globl sub_40612f
	.type sub_40612f, @function
sub_40612f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406130
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406158
	.globl sub_406158
	.type sub_406158, @function
sub_406158:

	nop	dword ptr [rax + rax]
.label_407:
	mov	byte ptr [rbp - 1], 0
.label_408:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40616e
	.globl sub_40616e
	.type sub_40616e, @function
sub_40616e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40617c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_407
	jmp	.label_406
.label_406:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_408
	.section	.text
	.align	32
	#Procedure 0x4061a0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061d7
	.globl sub_4061d7
	.type sub_4061d7, @function
sub_4061d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406217
	.globl sub_406217
	.type sub_406217, @function
sub_406217:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_409
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406250

	.globl simple_strtoul
	.type simple_strtoul, @function
simple_strtoul:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
.label_411:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_412
	mov	eax, 0xa
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 0x10], rdi
	movsx	eax, byte ptr [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	sub	rdx, rdi
	mov	rax, rdx
	xor	r8d, r8d
	mov	edx, r8d
	div	rcx
	cmp	rsi, rax
	jbe	.label_413
	mov	byte ptr [rbp - 1], 0
	jmp	.label_410
.label_412:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_410:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062ee
	.globl sub_4062ee
	.type sub_4062ee, @function
sub_4062ee:

	nop	word ptr cs:[rax + rax]
.label_413:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_411
	.section	.text
	.align	32
	#Procedure 0x406310
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_414
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_415
.label_414:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406382
	.globl sub_406382
	.type sub_406382, @function
sub_406382:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406390

	.globl format_address_none
	.type format_address_none, @function
format_address_none:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063cd
	.globl sub_4063cd
	.type sub_4063cd, @function
sub_4063cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4063d0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_416
	call	xset_binary_mode_error
.label_416:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063fd
	.globl sub_4063fd
	.type sub_4063fd, @function
sub_4063fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406400
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40643a
	.globl sub_40643a
	.type sub_40643a, @function
sub_40643a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406440
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406465
	.globl sub_406465
	.type sub_406465, @function
sub_406465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406470

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	vprintf
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_417
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror
	cmp	eax, 0
	jne	.label_417
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x18], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_21
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_417:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064ec
	.globl sub_4064ec
	.type sub_4064ec, @function
sub_4064ec:

	nop	dword ptr [rax]
.label_419:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_418:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406527
	.globl sub_406527
	.type sub_406527, @function
sub_406527:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40652f

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_419
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_418
	.section	.text
	.align	32
	#Procedure 0x406580

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40658e
	.globl sub_40658e
	.type sub_40658e, @function
sub_40658e:

	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406590

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_420
	jmp	.label_422
.label_422:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_421
.label_420:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_421:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065c7
	.globl sub_4065c7
	.type sub_4065c7, @function
sub_4065c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_423
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_426
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_426:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_424
	call	xalloc_die
.label_424:
	jmp	.label_425
.label_423:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_427
	call	xalloc_die
.label_427:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066b7
	.globl sub_4066b7
	.type sub_4066b7, @function
sub_4066b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_428
	movabs	rax, OFFSET FLAT:label_250
	mov	qword ptr [rbp - 8], rax
.label_428:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_429
	movabs	rax, OFFSET FLAT:label_430
	mov	qword ptr [rbp - 8], rax
.label_429:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406717
	.globl sub_406717
	.type sub_406717, @function
sub_406717:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406720

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_431
	jmp	.label_433
.label_433:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_432
.label_431:
	jmp	.label_432
.label_432:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40676a
	.globl sub_40676a
	.type sub_40676a, @function
sub_40676a:

	nop	word ptr [rax + rax]
.label_436:
	mov	qword ptr [rbp - 8], 0
.label_434:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406782
	.globl sub_406782
	.type sub_406782, @function
sub_406782:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406789
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_438:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_436
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_434
.label_435:
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_438
	.section	.text
	.align	32
	#Procedure 0x406810
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_439
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_441]]
	jmp	rcx
.label_439:
	mov	byte ptr [rbp - 1], 0
.label_440:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1109:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_440
.label_445:
	jmp	.label_443
.label_1175:
	mov	dword ptr [rbp - 0x3c], 3
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_hex_digits]]
	mov	dword ptr [rbp - 0x58], edx
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0x100], rax
	mov	dword ptr [rbp - 0x104], edx
	jne	.label_468
	movabs	rax, OFFSET FLAT:label_456
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_457
.label_1039:
	movabs	rax, OFFSET FLAT:print_short
	movabs	rcx, OFFSET FLAT:print_s_short
	cmp	dword ptr [rbp - 0x3c], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_445
.label_462:
	movabs	rdi, OFFSET FLAT:label_502
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x168], rax
	mov	dword ptr [rbp - 0x16c], ecx
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x168]
	mov	ecx, dword ptr [rbp - 0x16c]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_448
.label_1172:
	mov	dword ptr [rbp - 0x3c], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_signed_dec_digits]]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xb0], rax
	jne	.label_453
	movabs	rax, OFFSET FLAT:label_451
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_463
.label_455:
	cmp	qword ptr [rbp - 0x38], 0x10
	ja	.label_469
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	jne	.label_473
.label_469:
	movabs	rdi, OFFSET FLAT:label_481
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rax
	call	quote
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_448
.label_506:
	movabs	rdi, OFFSET FLAT:label_498
	movabs	rsi, OFFSET FLAT:label_493
	mov	edx, 0x286
	movabs	rcx, OFFSET FLAT:label_494
	call	__assert_fail
.label_1166:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x51], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x18], rdx
	movsx	esi, byte ptr [rax + 1]
	add	esi, -0x43
	mov	eax, esi
	sub	esi, 0x10
	mov	qword ptr [rbp - 0x80], rax
	mov	dword ptr [rbp - 0x84], esi
	ja	.label_509
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_452]]
	jmp	rcx
.label_461:
	jmp	.label_443
.label_444:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	mov	eax, ecx
	sub	ecx, 0x17
	mov	qword ptr [rbp - 0x70], rax
	mov	dword ptr [rbp - 0x74], ecx
	ja	.label_462
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_454]]
	jmp	rcx
.label_473:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_486:
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + fp_type_size]]
	mov	dword ptr [rbp - 0x2c], ecx
	call	localeconv
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_479
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_442
.label_1165:
	movabs	rax, OFFSET FLAT:print_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x3c], 6
	mov	dword ptr [rbp - 0x2c], 1
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_443
.label_478:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_505
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_510
.label_479:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x150], rcx
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x154], ecx
	mov	dword ptr [rbp - 0x158], edx
	je	.label_472
	jmp	.label_507
.label_507:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 7
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_458
	jmp	.label_512
.label_512:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 8
	mov	dword ptr [rbp - 0x160], eax
	je	.label_464
	jmp	.label_482
.label_447:
	mov	eax, dword ptr [rbp - 0x2c]
	dec	eax
	mov	ecx, eax
	sub	eax, 4
	mov	qword ptr [rbp - 0x120], rcx
	mov	dword ptr [rbp - 0x124], eax
	ja	.label_471
	mov	rax, qword ptr [rbp - 0x120]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_483]]
	jmp	rcx
.label_484:
	movabs	rdi, OFFSET FLAT:label_492
	movabs	rsi, OFFSET FLAT:label_493
	mov	edx, 0x2e9
	movabs	rcx, OFFSET FLAT:label_494
	call	__assert_fail
.label_480:
	movabs	rax, OFFSET FLAT:label_496
	movabs	rcx, OFFSET FLAT:label_490
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xd8], rax
.label_491:
	mov	rax, qword ptr [rbp - 0xd8]
	movabs	rsi, OFFSET FLAT:label_501
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	edx, dword ptr [rbp - 0xcc]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_467
.label_475:
	movabs	rax, OFFSET FLAT:label_499
	movabs	rcx, OFFSET FLAT:label_465
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xf0], rax
.label_466:
	mov	rax, qword ptr [rbp - 0xf0]
	movabs	rsi, OFFSET FLAT:label_459
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_467
.label_449:
	call	abort
.label_1041:
	movabs	rax, OFFSET FLAT:print_long
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_445
.label_1173:
	mov	dword ptr [rbp - 0x3c], 2
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_oct_digits]]
	mov	dword ptr [rbp - 0x58], edx
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xc8], rax
	mov	dword ptr [rbp - 0xcc], edx
	jne	.label_480
	movabs	rax, OFFSET FLAT:label_490
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_491
.label_482:
	call	abort
.label_1190:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_446
	.section	.text
	.align	32
	#Procedure 0x406ced

	.globl decode_one_format
	.type decode_one_format, @function
decode_one_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_506
	jmp	.label_444
.label_1040:
	movabs	rax, OFFSET FLAT:print_int
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_445
.label_1174:
	mov	dword ptr [rbp - 0x3c], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_unsigned_dec_digits]]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xe8], rax
	jne	.label_475
	movabs	rax, OFFSET FLAT:label_465
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_466
.label_509:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	simple_strtoul
	test	al, 1
	jne	.label_478
	movabs	rdi, OFFSET FLAT:label_474
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_448
.label_476:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_477
.label_497:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 0x10
	jmp	.label_477
.label_489:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_477
.label_504:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_510:
	jmp	.label_446
.label_446:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + integral_type_size]]
	mov	dword ptr [rbp - 0x2c], ecx
	movsx	ecx, byte ptr [rbp - 0x51]
	add	ecx, -0x64
	mov	eax, ecx
	sub	ecx, 0x14
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_449
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_460]]
	jmp	rcx
.label_503:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	simple_strtoul
	test	al, 1
	jne	.label_470
	movabs	rdi, OFFSET FLAT:label_474
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x140], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_448
.label_1192:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 2
	jmp	.label_446
.label_505:
	mov	eax, 8
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	jb	.label_500
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	jne	.label_504
.label_500:
	movabs	rdi, OFFSET FLAT:label_508
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_448
.label_1191:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_446
.label_458:
	movabs	rax, OFFSET FLAT:print_double
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x12
	add	rax, 1
	add	rax, 4
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_461
.label_1038:
	movabs	rax, OFFSET FLAT:print_char
	movabs	rcx, OFFSET FLAT:print_s_char
	cmp	dword ptr [rbp - 0x3c], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_445
.label_443:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rcx
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x7a
	sete	sil
	mov	rcx, qword ptr [rbp - 0x28]
	and	sil, 1
	mov	byte ptr [rcx + 0x18], sil
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x18], 1
	je	.label_485
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_485:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_511
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_511:
	mov	byte ptr [rbp - 1], 1
.label_448:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x170
	pop	rbp
	ret	
.label_453:
	movabs	rax, OFFSET FLAT:label_450
	movabs	rcx, OFFSET FLAT:label_451
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xb8], rax
.label_463:
	mov	rax, qword ptr [rbp - 0xb8]
	movabs	rsi, OFFSET FLAT:label_459
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_467
.label_464:
	movabs	rax, OFFSET FLAT:print_long_double
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x16
	add	rax, 1
	add	rax, 5
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_461
.label_1042:
	movabs	rax, OFFSET FLAT:print_long_long
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_445
.label_468:
	movabs	rax, OFFSET FLAT:label_488
	movabs	rcx, OFFSET FLAT:label_456
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
.label_457:
	mov	rax, qword ptr [rbp - 0x110]
	movabs	rsi, OFFSET FLAT:label_501
	mov	rdi, qword ptr [rbp - 0x100]
	mov	edx, dword ptr [rbp - 0x104]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_467
.label_1164:
	movabs	rax, OFFSET FLAT:print_named_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x3c], 5
	mov	dword ptr [rbp - 0x2c], 1
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_443
.label_470:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_455
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_486
.label_472:
	movabs	rax, OFFSET FLAT:print_float
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0xa
	add	rax, 1
	add	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_461
.label_1167:
	mov	dword ptr [rbp - 0x3c], 4
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x44
	mov	dword ptr [rbp - 0x128], edx
	mov	dword ptr [rbp - 0x12c], esi
	je	.label_476
	jmp	.label_487
.label_487:
	mov	eax, dword ptr [rbp - 0x128]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x130], eax
	je	.label_489
	jmp	.label_495
.label_495:
	mov	eax, dword ptr [rbp - 0x128]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x134], eax
	je	.label_497
	jmp	.label_503
.label_471:
	call	abort
.label_1189:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 1
	jmp	.label_446
.label_467:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rdi, rax
	call	strlen
	cmp	rax, 8
	jae	.label_484
	jmp	.label_447
	.section	.text
	.align	32
	#Procedure 0x407220

	.globl gcd
	.type gcd, @function
gcd:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_513:
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_513
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40725d
	.globl sub_40725d
	.type sub_40725d, @function
sub_40725d:

	nop	dword ptr [rax]
.label_694:
	jmp	.label_530
.label_530:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_643
	test	byte ptr [rbp - 0x7b], 1
	je	.label_643
	jmp	.label_524
.label_1089:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_550
.label_610:
	jmp	.label_542
.label_1086:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_550
.label_564:
	jmp	.label_650
.label_650:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_651
	jmp	.label_544
.label_613:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_610
	jmp	.label_524
.label_622:
	call	abort
.label_990:
	mov	byte ptr [rbp - 0x79], 1
.label_989:
	mov	byte ptr [rbp - 0x7b], 1
.label_991:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_658
	mov	byte ptr [rbp - 0x79], 1
.label_658:
	jmp	.label_661
.label_661:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_580
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_668
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_668:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_580
.label_580:
	movabs	rax, OFFSET FLAT:label_14
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_540
.label_612:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_680
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_584
.label_706:
	test	byte ptr [rbp - 0x79], 1
	je	.label_694
	test	byte ptr [rbp - 0x7b], 1
	je	.label_694
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_694
	jmp	.label_527
.label_684:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_693:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_554
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_554
	test	byte ptr [rbp - 0x7b], 1
	je	.label_712
	jmp	.label_524
.label_988:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_540
.label_993:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_992:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_522
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_528
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_522
.label_522:
	movabs	rax, OFFSET FLAT:label_15
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_540
.label_617:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_547
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_547
	test	byte ptr [rbp - 0x7d], 1
	je	.label_547
	test	byte ptr [rbp - 0x7e], 1
	je	.label_553
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_696
.label_595:
	jmp	.label_567
.label_567:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_540
	.section	.text
	.align	32
	#Procedure 0x4074f8

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_629:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_622
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_604]]
	jmp	rcx
.label_712:
	mov	byte ptr [rbp - 0x81], 1
.label_554:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_612
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_620]]
	jmp	rcx
.label_553:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_626
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_626
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_629
.label_591:
	jmp	.label_544
.label_544:
	test	byte ptr [rbp - 0x79], 1
	je	.label_635
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_637
.label_635:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_639
.label_637:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_639
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_642
.label_639:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_642
	jmp	.label_527
.label_532:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_652
	jmp	.label_593
.label_601:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_655
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_655
	jmp	.label_659
.label_659:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_660
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_660:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_672
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_672:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_665
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_665:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_655:
	jmp	.label_683
.label_683:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_714
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_714:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_689
.label_689:
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_692
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_704
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_704:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_709
.label_698:
	jmp	.label_515
.label_642:
	jmp	.label_517
.label_517:
	jmp	.label_519
.label_519:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_521
	jmp	.label_524
.label_708:
	jmp	.label_527
.label_1091:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_530
.label_675:
	jmp	.label_579
.label_579:
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_535
.label_994:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_540
.label_710:
	jmp	.label_542
.label_542:
	jmp	.label_544
.label_596:
	test	byte ptr [rbp - 0x81], 1
	je	.label_546
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_549:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_546:
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_715
	jmp	.label_563
.label_649:
	jmp	.label_559
.label_559:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_569
	mov	byte ptr [rbp - 0x91], 0
.label_569:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_592
.label_592:
	jmp	.label_576
.label_576:
	jmp	.label_577
.label_577:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_590
.label_515:
	jmp	.label_584
.label_584:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_586
	test	byte ptr [rbp - 0x79], 1
	je	.label_591
	test	byte ptr [rbp - 0x91], 1
	jne	.label_591
.label_586:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_703:
	test	byte ptr [rbp - 0x79], 1
	je	.label_596
	test	byte ptr [rbp - 0x91], 1
	jne	.label_596
	jmp	.label_600
.label_600:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_601
	jmp	.label_524
.label_540:
	mov	qword ptr [rbp - 0x58], 0
.label_697:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_607
.label_677:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_617
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_617
	test	byte ptr [rbp - 0x7b], 1
	je	.label_617
	jmp	.label_524
.label_715:
	jmp	.label_625
.label_625:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_615
	test	byte ptr [rbp - 0x82], 1
	jne	.label_615
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_632
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_632:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_640
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_640:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_615:
	jmp	.label_645
.label_645:
	jmp	.label_647
.label_647:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_648
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_648:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_703
.label_1085:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_550
.label_624:
	jmp	.label_656
.label_656:
	jmp	.label_543
.label_543:
	jmp	.label_542
.label_652:
	jmp	.label_621
.label_621:
	jmp	.label_544
.label_605:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_607:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_673
	jmp	.label_677
.label_673:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_554
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_554
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_554
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_684
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_684
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_693
.label_572:
	jmp	.label_544
.label_520:
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_700
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_700:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_696
.label_603:
	jmp	.label_544
.label_1096:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_706
	test	byte ptr [rbp - 0x7b], 1
	je	.label_708
	jmp	.label_524
.label_626:
	jmp	.label_711
.label_711:
	jmp	.label_547
.label_547:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_514
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_514
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_520
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_529
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_518
.label_598:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_545
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_515
.label_1090:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_550
.label_1094:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_552
	test	byte ptr [rbp - 0x7b], 1
	je	.label_555
	jmp	.label_524
.label_561:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_564
.label_568:
	jmp	.label_544
.label_1097:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_564
	jmp	.label_568
.label_651:
	jmp	.label_570
.label_570:
	mov	byte ptr [rbp - 0x83], 1
.label_1092:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_572
	test	byte ptr [rbp - 0x7b], 1
	je	.label_572
	jmp	.label_524
.label_1088:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_530
.label_680:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_582
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_582:
	jmp	.label_590
.label_590:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_598
	jmp	.label_515
.label_643:
	jmp	.label_550
.label_550:
	test	byte ptr [rbp - 0x79], 1
	je	.label_603
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_517
.label_555:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_608
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_608
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_608:
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_687
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_628
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_628:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_636
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_636:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_552:
	jmp	.label_544
.label_679:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_559
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_559
	mov	qword ptr [rbp - 0xb8], 1
.label_535:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_649
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_587
	jmp	.label_662
.label_662:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_587
	jmp	.label_669
.label_669:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_587
	jmp	.label_674
.label_674:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_675
	jmp	.label_587
.label_587:
	jmp	.label_524
.label_563:
	jmp	.label_527
.label_545:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_679
	mov	byte ptr [rbp - 0x91], 0
.label_699:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_682
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_682:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_695
	jmp	.label_698
.label_695:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_699
.label_1087:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_530
.label_581:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_705
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_713
.label_713:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_516
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_516:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_688
.label_688:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_531
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_531:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_541
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_541:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_656
.label_537:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_551
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_551
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_557
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_566
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_566:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_574
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_574:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_551:
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_671
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_589
.label_589:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_534
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_534
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_534
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_534
	jmp	.label_611
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_602
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_602:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_614
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_614:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_534
.label_534:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_621
.label_521:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_627
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_627
	jmp	.label_631
.label_631:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_633
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_633:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_641
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_644
.label_644:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_646
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_646:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_627:
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_657
.label_657:
	jmp	.label_527
.label_527:
	jmp	.label_663
.label_663:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_664
	test	byte ptr [rbp - 0x82], 1
	jne	.label_664
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_616
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_616:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_676
.label_676:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_678
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_678:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_664:
	jmp	.label_707
.label_707:
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_686
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_686:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_690
	mov	byte ptr [rbp - 0x7e], 0
.label_690:
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_697
.label_1093:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_544
.label_524:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_702
	test	byte ptr [rbp - 0x79], 1
	je	.label_702
	mov	dword ptr [rbp - 0x34], 4
.label_702:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_696:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40842c
	.globl sub_40842c
	.type sub_40842c, @function
sub_40842c:

	nop	dword ptr [rax + rax]
.label_1084:
	test	byte ptr [rbp - 0x79], 1
	je	.label_532
	jmp	.label_536
.label_536:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_537
	jmp	.label_524
.label_619:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_543
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_543
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_543
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_560
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_560
	jmp	.label_565
.label_565:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_560
	jmp	.label_571
.label_571:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_560
	jmp	.label_575
.label_575:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_624
	jmp	.label_560
.label_560:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_581
	jmp	.label_524
.label_995:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_585
	movabs	rdi, OFFSET FLAT:label_588
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_14
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_585:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_567
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_606:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_595
	jmp	.label_578
.label_578:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_597
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_597:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_606
.label_1095:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_613
	jmp	.label_618
.label_618:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_619
	jmp	.label_710
.label_716:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40861e

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_718
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_718:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_717
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_716
.label_717:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408670
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_719
	jmp	.label_722
.label_722:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_721
	jmp	.label_719
.label_719:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_720
.label_721:
	mov	byte ptr [rbp - 1], 0
.label_720:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086bb
	.globl sub_4086bb
	.type sub_4086bb, @function
sub_4086bb:

	nop	dword ptr [rax + rax]
.label_726:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_723
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_725]],  rax
.label_723:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_724
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_724:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408746
	.globl sub_408746
	.type sub_408746, @function
sub_408746:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408752
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_727:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_726
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_727
	.section	.text
	.align	32
	#Procedure 0x4087a0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_728
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_728:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087dd
	.globl sub_4087dd
	.type sub_4087dd, @function
sub_4087dd:

	nop	dword ptr [rax]
.label_733:
	fld	xword ptr [rbp - 0x80]
	fstp	xword ptr [rbp - 0x60]
	jmp	.label_729
.label_734:
	mov	rax, qword ptr [rbp - 0x30]
	fld	xword ptr [rax]
	fstp	xword ptr [rbp - 0x60]
.label_729:
	mov	eax, 0x2d
	mov	ecx, eax
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, 0x10
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rbp - 0xb0]
	fld	xword ptr [rbp - 0x60]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	esi, 0x2d
	xor	r8d, r8d
	mov	edx, r8d
	mov	qword ptr [rbp - 0xb8], rcx
	mov	ecx, r8d
	mov	dword ptr [rbp - 0xbc], eax
	call	ldtoastr
	movabs	rdi, OFFSET FLAT:label_81
	lea	rdx, [rbp - 0xb0]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xc0], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0xc4], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_732
	.section	.text
	.align	32
	#Procedure 0x408876

	.globl print_long_double
	.type print_long_double, @function
print_long_double:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_732:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_731
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_734
	mov	qword ptr [rbp - 0x68], 0
.label_730:
	cmp	qword ptr [rbp - 0x68], 0x10
	jae	.label_733
	mov	eax, 0xf
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp + rcx - 0x80], sil
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_730
.label_731:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40893d
	.globl sub_40893d
	.type sub_40893d, @function
sub_40893d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408940

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_735
	jmp	.label_752
.label_752:
	movabs	rdi, OFFSET FLAT:label_743
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_738
.label_735:
	movabs	rdi, OFFSET FLAT:label_739
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_737
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:label_748
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_740
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_749
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_741
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_750
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_746
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_751
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_745
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_736
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_744
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_742
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_747
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_346
	mov	dword ptr [rbp - 0x4c], eax
	call	emit_ancillary_info
.label_738:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x408ba2
	.globl sub_408ba2
	.type sub_408ba2, @function
sub_408ba2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bb0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bd8
	.globl sub_408bd8
	.type sub_408bd8, @function
sub_408bd8:

	nop	dword ptr [rax + rax]
.label_1069:
	movabs	rdi, OFFSET FLAT:label_753
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_754
.label_1066:
	movabs	rdi, OFFSET FLAT:label_757
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_754
.label_1060:
	jmp	.label_754
.label_1064:
	movabs	rdi, OFFSET FLAT:label_765
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_754
.label_1062:
	movabs	rdi, OFFSET FLAT:label_771
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_754
.label_1067:
	movabs	rdi, OFFSET FLAT:label_770
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_754
.label_1065:
	movabs	rdi, OFFSET FLAT:label_769
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_754
	.section	.text
	.align	32
	#Procedure 0x408ec6

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_755
	movabs	rsi, OFFSET FLAT:label_768
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_760
.label_1068:
	movabs	rdi, OFFSET FLAT:label_763
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_754
.label_755:
	movabs	rsi, OFFSET FLAT:label_756
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_760:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_766
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_761
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_759
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_758]]
	jmp	rcx
.label_759:
	movabs	rdi, OFFSET FLAT:label_764
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_754:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40911e
	.globl sub_40911e
	.type sub_40911e, @function
sub_40911e:

	nop	
.label_1063:
	movabs	rdi, OFFSET FLAT:label_762
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_754
.label_1061:
	movabs	rdi, OFFSET FLAT:label_767
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_754
.label_781:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	xor	edi, edi
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_774:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091e3
	.globl sub_4091e3
	.type sub_4091e3, @function
sub_4091e3:

	nop	
.label_790:
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x84], eax
.label_777:
	jmp	.label_793
.label_793:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_795
.label_778:
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_784
	jmp	.label_783
.label_784:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_780
.label_782:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_789
.label_775:
	mov	esi, 0x20
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 1
	mov	rdi, rcx
	call	rax
	mov	qword ptr [rbp - 0x30], 0
.label_795:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x34], edx
	cmp	edx, 0
	je	.label_782
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, -7
	mov	ecx, eax
	sub	eax, 6
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x64], eax
	ja	.label_790
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_792]]
	jmp	rcx
.label_1150:
	movabs	rdi, OFFSET FLAT:label_182
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x78], eax
	jmp	.label_777
.label_772:
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_776
	jmp	.label_783
.label_797:
	mov	rax,  qword ptr [word ptr [string_min]]
	mov	qword ptr [rbp - 0x40], rax
.label_796:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x20], rax
	mov	byte ptr [rbp - 0x21], 1
.label_789:
	jmp	.label_783
.label_783:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_773
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [string_min]]
	jb	.label_791
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax,  qword ptr [word ptr [string_min]]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_773
.label_791:
	jmp	.label_781
	.section	.text
	.align	32
	#Procedure 0x4093a6

	.globl dump_strings
	.type dump_strings, @function
dump_strings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	eax, 0x64
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [string_min]]
	jbe	.label_797
	mov	eax, 0x64
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_796
.label_776:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	jmp	.label_785
.label_773:
	mov	qword ptr [rbp - 0x30], 0
.label_780:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [string_min]]
	jae	.label_794
	lea	rdi, [rbp - 0x34]
	call	read_char
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0x20], rdi
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_778
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_774
.label_1144:
	movabs	rdi, OFFSET FLAT:label_186
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_777
.label_1148:
	movabs	rdi, OFFSET FLAT:label_193
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_777
.label_1145:
	movabs	rdi, OFFSET FLAT:label_185
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_777
.label_794:
	jmp	.label_785
.label_785:
	mov	al, 1
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	byte ptr [rbp - 0x49], al
	je	.label_786
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	setb	cl
	mov	byte ptr [rbp - 0x49], cl
.label_786:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_788
	jmp	.label_775
.label_788:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_787
	lea	rsi, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2realloc
	mov	qword ptr [rbp - 0x18], rax
.label_787:
	lea	rdi, [rbp - 0x34]
	call	read_char
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0x20], rdi
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_779
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_774
.label_1149:
	movabs	rdi, OFFSET FLAT:label_194
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x70], eax
	jmp	.label_777
.label_779:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_772
	jmp	.label_775
.label_1146:
	movabs	rdi, OFFSET FLAT:label_189
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_777
.label_1147:
	movabs	rdi, OFFSET FLAT:label_188
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_777
.label_798:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095d9
	.globl sub_4095d9
	.type sub_4095d9, @function
sub_4095d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4095dc

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_799:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_798
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_799
	.section	.text
	.align	32
	#Procedure 0x409620

	.globl format_address_label
	.type format_address_label, @function
format_address_label:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	esi, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	format_address_std
	mov	rdi, qword ptr [rbp - 8]
	add	rdi,  qword ptr [word ptr [pseudo_offset]]
	movsx	esi, byte ptr [rbp - 9]
	call	format_address_paren
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40965b
	.globl sub_40965b
	.type sub_40965b, @function
sub_40965b:

	nop	dword ptr [rax + rax]
.label_838:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_817
.label_817:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_830:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_826
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_830
.label_1129:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_818:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_832
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_810
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_809
.label_837:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_838
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_817
.label_1135:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
	.section	.text
	.align	32
	#Procedure 0x409776

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_839
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_839
	jmp	.label_837
.label_800:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_815:
	jmp	.label_831
.label_831:
	jmp	.label_829
.label_829:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_813
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_835]]
	jmp	rcx
.label_1131:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_813:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_809
.label_1130:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_1138:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_820:
	jmp	.label_819
.label_807:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_821
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_823
	mov	dword ptr [rbp - 4], 4
	jmp	.label_809
.label_1136:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_1134:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_1132:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_1133:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_1127:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_825:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_807
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_811
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_811
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_811
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_820
.label_839:
	movabs	rdi, OFFSET FLAT:label_840
	movabs	rsi, OFFSET FLAT:label_841
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_842
	call	__assert_fail
.label_826:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_825
	mov	dword ptr [rbp - 4], 4
	jmp	.label_809
.label_810:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_802
	jmp	.label_834
.label_834:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_802
	jmp	.label_833
.label_833:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_802
	jmp	.label_803
.label_803:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_802
	jmp	.label_805
.label_805:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_802
	jmp	.label_816
.label_816:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_802
	jmp	.label_814
.label_814:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_802
	jmp	.label_806
.label_806:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_802
	jmp	.label_822
.label_822:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_802
	jmp	.label_824
.label_824:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_802
	jmp	.label_827
.label_827:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_829
	jmp	.label_802
.label_802:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_831
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_800
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_800
	jmp	.label_804
.label_804:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_815
	jmp	.label_808
.label_808:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_812
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_812:
	jmp	.label_815
.label_823:
	mov	dword ptr [rbp - 0x4c], 1
.label_821:
	jmp	.label_819
.label_819:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_818
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_809
.label_811:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_809
.label_1128:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_801
.label_801:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_828
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_828:
	jmp	.label_832
.label_832:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_809:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bff
	.globl sub_409bff
	.type sub_409bff, @function
sub_409bff:

	nop	dword ptr [rax + rax]
.label_1137:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_801
.label_847:
	jmp	.label_844
.label_844:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_845
	.section	.text
	.align	32
	#Procedure 0x409c23
	.globl sub_409c23
	.type sub_409c23, @function
sub_409c23:

	nop	word ptr [rax + rax]
.label_848:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	dword ptr [rbp - 0x50], xmm0
.label_849:
	movss	xmm0, dword ptr [rbp - 0x50]
	movss	xmm1,  dword ptr [dword ptr [rip + label_846]]
	mov	eax, 6
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rbp - 0x33]
	movss	dword ptr [rbp - 0x38], xmm0
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 4
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdi
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	cmp	r9d, 0
	cmovne	edx, esi
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0
	ucomiss	xmm1, dword ptr [rbp - 0x38]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
.label_845:
	lea	rdx, [rbp - 0x33]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x3c]
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	al, 1
	call	snprintf
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jl	.label_843
	mov	eax, 9
	cmp	eax, dword ptr [rbp - 0x3c]
	jle	.label_843
	movsxd	rax, dword ptr [rbp - 0x4c]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_847
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strtof
	ucomiss	xmm0, dword ptr [rbp - 0x1c]
	jne	.label_847
	jp	.label_847
.label_843:
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e12

	.globl ftoastr
	.type ftoastr, @function
ftoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xorps	xmm1, xmm1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	movss	dword ptr [rbp - 0x1c], xmm0
	cvtss2sd	xmm0, dword ptr [rbp - 0x1c]
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomiss	xmm1, dword ptr [rbp - 0x1c]
	jbe	.label_848
	movss	xmm0, dword ptr [rbp - 0x1c]
	movd	eax, xmm0
	xor	eax, 0x80000000
	movd	xmm0, eax
	movss	dword ptr [rbp - 0x50], xmm0
	jmp	.label_849
	.section	.text
	.align	32
	#Procedure 0x409e60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_850
	cmp	qword ptr [rbp - 8], 0
	je	.label_850
	call	xalloc_die
.label_850:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e9e
	.globl sub_409e9e
	.type sub_409e9e, @function
sub_409e9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409ea0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_851
	jmp	.label_853
.label_853:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_854
	jmp	.label_851
.label_851:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_852
.label_854:
	mov	byte ptr [rbp - 1], 0
.label_852:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ee8
	.globl sub_409ee8
	.type sub_409ee8, @function
sub_409ee8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ef0

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409efb
	.globl sub_409efb
	.type sub_409efb, @function
sub_409efb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f00

	.globl lcm
	.type lcm, @function
lcm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rax
	call	gcd
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, rcx
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 0x28]
	div	rsi
	mov	rdi, qword ptr [rbp - 0x18]
	imul	rdi, rax
	mov	rax, rdi
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f55
	.globl sub_409f55
	.type sub_409f55, @function
sub_409f55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f60
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_855
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_855:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x10
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x30]
	call	xvfprintf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0c5
	.globl sub_40a0c5
	.type sub_40a0c5, @function
sub_40a0c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0d0
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0ef
	.globl sub_40a0ef
	.type sub_40a0ef, @function
sub_40a0ef:

	nop	
.label_856:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 9], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.label_858
.label_857:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a148
	.globl sub_40a148
	.type sub_40a148, @function
sub_40a148:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a152

	.globl read_char
	.type read_char, @function
read_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0xffffffff
.label_858:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_857
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fgetc
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], -1
	je	.label_856
	jmp	.label_857
.label_860:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], cl
.label_861:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, byte ptr [rbp - 0x45]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_859
	.section	.text
	.align	32
	#Procedure 0x40a1e1

	.globl print_s_char
	.type print_s_char, @function
print_s_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_859:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_864
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_860
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_865
	jmp	.label_860
.label_865:
	mov	qword ptr [rbp - 0x50], 0
.label_863:
	cmp	qword ptr [rbp - 0x50], 1
	jae	.label_862
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_863
.label_864:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2b1
	.globl sub_40a2b1
	.type sub_40a2b1, @function
sub_40a2b1:

	nop	dword ptr [rax]
.label_862:
	mov	al, byte ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_861
	.section	.text
	.align	32
	#Procedure 0x40a2c0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_866
	jmp	.label_868
.label_868:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_866
	jmp	.label_867
.label_867:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_869
	jmp	.label_866
.label_866:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_870
.label_869:
	mov	byte ptr [rbp - 1], 0
.label_870:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a325
	.globl sub_40a325
	.type sub_40a325, @function
sub_40a325:

	nop	word ptr cs:[rax + rax]
.label_875:
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_872
	jmp	.label_873
.label_872:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_871
.label_873:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_874:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3a7
	.globl sub_40a3a7
	.type sub_40a3a7, @function
sub_40a3a7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3b6

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_875
	mov	dword ptr [rbp - 4], 0
	jmp	.label_874
.label_880:
	movabs	rax, OFFSET FLAT:label_882
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_877
.label_878:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_881:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a449
	.globl sub_40a449
	.type sub_40a449, @function
sub_40a449:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a454

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_885
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_886
	jmp	.label_888
.label_888:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_883
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_880
	jmp	.label_887
.label_887:
	call	abort
.label_883:
	movabs	rax, OFFSET FLAT:label_876
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_877
.label_886:
	movabs	rax, OFFSET FLAT:label_884
	mov	qword ptr [rbp - 0x38], rax
.label_877:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_878
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_881
	.section	.text
	.align	32
	#Procedure 0x40a520
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a556
	.globl sub_40a556
	.type sub_40a556, @function
sub_40a556:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a560

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a598
	.globl sub_40a598
	.type sub_40a598, @function
sub_40a598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5a0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5bf
	.globl sub_40a5bf
	.type sub_40a5bf, @function
sub_40a5bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a5c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5ef
	.globl sub_40a5ef
	.type sub_40a5ef, @function
sub_40a5ef:

	nop	
.label_896:
	jmp	.label_889
.label_889:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 7
	add	rax, 0x30
	mov	cl, al
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 3
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_889
	jmp	.label_892
	.section	.text
	.align	32
	#Procedure 0x40a630

	.globl format_address_std
	.type format_address_std, @function
format_address_std:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rdi
	mov	byte ptr [rbp - 0x18], 0
	mov	al, byte ptr [rbp - 9]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, rdi
	dec	rcx
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rdi - 1], al
	mov	rcx, qword ptr [rbp - 0x38]
	movsxd	rdi,  dword ptr [dword ptr [rip + address_pad_len]]
	sub	rcx, rdi
	mov	qword ptr [rbp - 0x40], rcx
	mov	esi,  dword ptr [dword ptr [rip + address_base]]
	mov	edx, esi
	sub	edx, 8
	mov	dword ptr [rbp - 0x44], esi
	mov	dword ptr [rbp - 0x48], edx
	je	.label_896
	jmp	.label_897
.label_897:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_899
	jmp	.label_894
.label_894:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x10
	mov	dword ptr [rbp - 0x50], eax
	je	.label_895
	jmp	.label_892
.label_899:
	jmp	.label_893
.label_893:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_893
	jmp	.label_892
.label_891:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x54], eax
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a72c
	.globl sub_40a72c
	.type sub_40a72c, @function
sub_40a72c:

	nop	dword ptr [rax + rax]
.label_895:
	jmp	.label_898
.label_898:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0xf
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + label_900]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 4
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_898
	jmp	.label_892
.label_892:
	jmp	.label_890
.label_890:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_891
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax - 1], 0x30
	jmp	.label_890
.label_902:
	mov	byte ptr [rbp - 1], 0
.label_903:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7ae
	.globl sub_40a7ae
	.type sub_40a7ae, @function
sub_40a7ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7bc
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_902
	jmp	.label_901
.label_901:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_903
	.section	.text
	.align	32
	#Procedure 0x40a7e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
.label_906:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_904
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_904:
	movabs	rdi, OFFSET FLAT:label_915
	call	gettext
	movabs	rsi, OFFSET FLAT:label_347
	movabs	rdx, OFFSET FLAT:label_913
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_905
	movabs	rsi, OFFSET FLAT:label_912
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_905
	movabs	rdi, OFFSET FLAT:label_907
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_905:
	movabs	rdi, OFFSET FLAT:label_914
	call	gettext
	movabs	rsi, OFFSET FLAT:label_913
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_909
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_250
	movabs	rsi, OFFSET FLAT:label_911
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a925
	.globl sub_40a925
	.type sub_40a925, @function
sub_40a925:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a92c

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_910:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_908
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_908:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_916
	jmp	.label_906
.label_916:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_910
	.section	.text
	.align	32
	#Procedure 0x40a9a0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9cc
	.globl sub_40a9cc
	.type sub_40a9cc, @function
sub_40a9cc:

	nop	dword ptr [rax]
.label_917:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9e7
	.globl sub_40a9e7
	.type sub_40a9e7, @function
sub_40a9e7:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9ef

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_917
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40aa20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_920:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_918
	jmp	.label_919
.label_919:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_920
.label_918:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_921
	call	gettext
	movabs	rsi, OFFSET FLAT:label_923
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_924
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_347
	movabs	rdx, OFFSET FLAT:label_913
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_922
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab16
	.globl sub_40ab16
	.type sub_40ab16, @function
sub_40ab16:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab20

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_925
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_930:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_927:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_931
	.section	.text
	.align	32
	#Procedure 0x40ab93

	.globl print_long
	.type print_long, @function
print_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_931:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_926
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_930
	mov	qword ptr [rbp - 0x58], 0
.label_929:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_928
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_929
.label_928:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_927
.label_926:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac61
	.globl sub_40ac61
	.type sub_40ac61, @function
sub_40ac61:

	nop	word ptr cs:[rax + rax]
.label_938:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
.label_934:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_933
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_932
	jmp	.label_933
.label_932:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_934
.label_933:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad44
	.globl sub_40ad44
	.type sub_40ad44, @function
sub_40ad44:

	nop	dword ptr [rax]
.label_937:
	movabs	rdi, OFFSET FLAT:label_935
	movabs	rsi, OFFSET FLAT:label_493
	mov	edx, 0x508
	movabs	rcx, OFFSET FLAT:label_936
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40ad73

	.globl read_block
	.type read_block, @function
read_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 1
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_937
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	ja	.label_937
	jmp	.label_938
	.section	.text
	.align	32
	#Procedure 0x40adb0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_939
	jmp	.label_941
.label_941:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_940
.label_939:
	mov	byte ptr [rbp - 1], 0
.label_940:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ade2
	.globl sub_40ade2
	.type sub_40ade2, @function
sub_40ade2:

	nop	word ptr cs:[rax + rax]
.label_946:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_947
	jmp	.label_948
.label_948:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [n_specs]]
	add	rax, 1
	mov	qword ptr [word ptr [n_specs]],  rax
	jmp	.label_942
.label_953:
	movabs	rdi, OFFSET FLAT:label_951
	movabs	rsi, OFFSET FLAT:label_493
	mov	edx, 0x3d8
	movabs	rcx, OFFSET FLAT:label_944
	call	__assert_fail
.label_950:
	mov	byte ptr [rbp - 1], 1
.label_949:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae5e
	.globl sub_40ae5e
	.type sub_40ae5e, @function
sub_40ae5e:

	nop	word ptr [rax + rax]
.label_947:
	movabs	rdi, OFFSET FLAT:label_943
	movabs	rsi, OFFSET FLAT:label_493
	mov	edx, 0x3e4
	movabs	rcx, OFFSET FLAT:label_944
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40ae8f

	.globl decode_format_string
	.type decode_format_string, @function
decode_format_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_953
	jmp	.label_952
.label_952:
	jmp	.label_942
.label_942:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_950
	mov	rax,  qword ptr [word ptr [n_specs_allocated]]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	ja	.label_945
	movabs	rsi, OFFSET FLAT:n_specs_allocated
	mov	eax, 0x28
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [spec]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [spec]],  rax
.label_945:
	lea	rdx, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax,  qword ptr [word ptr [n_specs]]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rcx, rax
	call	decode_one_format
	test	al, 1
	jne	.label_946
	mov	byte ptr [rbp - 1], 0
	jmp	.label_949
	.section	.text
	.align	32
	#Procedure 0x40af40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_954
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_955
.label_954:
	call	xalloc_die
.label_955:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af96
	.globl sub_40af96
	.type sub_40af96, @function
sub_40af96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afa0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_963
	call	abort
.label_957:
	test	byte ptr [rbp - 0x31], 1
	je	.label_961
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_962
.label_963:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_958
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_957
	call	xalloc_die
.label_961:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_962:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_960
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_725]]
	mov	qword ptr [rax + 8], rcx
.label_960:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_958:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_956
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_959
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_959:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_956:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b213
	.globl sub_40b213
	.type sub_40b213, @function
sub_40b213:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b220
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b247
	.globl sub_40b247
	.type sub_40b247, @function
sub_40b247:

	nop	word ptr [rax + rax]
.label_969:
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 0x48], rax
.label_974:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdx, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0x19]
	and	cl, 1
	movzx	esi, cl
	mov	eax, esi
	mov	rsi, qword ptr [rbp + rax*8 - 0x10]
	call	read_block
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	r9d, al
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_964
	jmp	.label_970
.label_964:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_975
	jmp	.label_965
.label_965:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_976
	.section	.text
	.align	32
	#Procedure 0x40b317

	.globl dump
	.type dump, @function
dump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 2
	mov	edi, eax
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 1
	mov	rsi,  qword ptr [word ptr [bytes_per_block]]
	call	xnmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_981
	jmp	.label_976
.label_976:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_973
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_970
.label_970:
	jmp	.label_966
.label_979:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_980
	jmp	.label_978
.label_975:
	movabs	rdi, OFFSET FLAT:label_971
	movabs	rsi, OFFSET FLAT:label_493
	mov	edx, 0x576
	movabs	rcx, OFFSET FLAT:label_972
	call	__assert_fail
.label_978:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_977
.label_973:
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_969
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_974
.label_981:
	jmp	.label_977
.label_977:
	lea	rdx, [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [bytes_per_block]]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	esi, ecx
	mov	rsi, qword ptr [rbp + rsi*8 - 0x10]
	call	read_block
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	r8d, al
	and	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_979
	jmp	.label_982
.label_980:
	movabs	rdi, OFFSET FLAT:label_971
	movabs	rsi, OFFSET FLAT:label_493
	mov	edx, 0x584
	movabs	rcx, OFFSET FLAT:label_972
	call	__assert_fail
.label_982:
	jmp	.label_966
.label_966:
	cmp	qword ptr [rbp - 0x28], 0
	jbe	.label_967
	call	get_lcm
	xor	esi, esi
	mov	dword ptr [rbp - 0x34], eax
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x34]
	add	rdx, rdi
	sub	rdx, 1
	movsxd	rdi, dword ptr [rbp - 0x34]
	mov	rax, rdx
	xor	r8d, r8d
	mov	edx, r8d
	div	rdi
	imul	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	r9b, byte ptr [rbp - 0x19]
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	r9b, byte ptr [rbp - 0x19]
	xor	r9b, 0xff
	and	r9b, 1
	movzx	r8d, r9b
	movsxd	rax, r8d
	mov	rdx, qword ptr [rbp + rax*8 - 0x10]
	mov	r9b, byte ptr [rbp - 0x19]
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rcx, qword ptr [rbp + rax*8 - 0x10]
	call	write_block
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_967:
	mov	esi, 0xa
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_968
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_968
	xor	edi, edi
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
.label_968:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5eb
	.globl sub_40b5eb
	.type sub_40b5eb, @function
sub_40b5eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b655
	.globl sub_40b655
	.type sub_40b655, @function
sub_40b655:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b662
	.globl sub_40b662
	.type sub_40b662, @function
sub_40b662:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b686
	.globl sub_40b686
	.type sub_40b686, @function
sub_40b686:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b699
	.globl sub_40b699
	.type sub_40b699, @function
sub_40b699:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b6a0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
