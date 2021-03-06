	.section	.text
	.align	32
	#Procedure 0x4015e9
	.globl sub_4015e9
	.type sub_4015e9, @function
sub_4015e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015ea
	.globl sub_4015ea
	.type sub_4015ea, @function
sub_4015ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401622
	.globl sub_401622
	.type sub_401622, @function
sub_401622:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40166a
	.globl sub_40166a
	.type sub_40166a, @function
sub_40166a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40168c
	.globl sub_40168c
	.type sub_40168c, @function
sub_40168c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40169d
	.globl sub_40169d
	.type sub_40169d, @function
sub_40169d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4016b6
	.globl sub_4016b6
	.type sub_4016b6, @function
sub_4016b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_9
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_9
	test	byte ptr [rbx + 1], 1
	je	.label_9
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_9:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4016f3
	.globl sub_4016f3
	.type sub_4016f3, @function
sub_4016f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401700

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
	je	.label_10
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
.label_10:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401768
	.globl sub_401768
	.type sub_401768, @function
sub_401768:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770
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
	#Procedure 0x401789
	.globl sub_401789
	.type sub_401789, @function
sub_401789:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401790

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
	je	.label_21
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_13
.label_21:
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_22
	jmp	qword ptr [(r12 * 8) + label_23]
.label_455:
	add	rsp, 8
	jmp	.label_14
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	jmp	.label_14
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	mov	esi, OFFSET FLAT:label_11
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
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	jmp	.label_14
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	jmp	.label_14
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	jmp	.label_14
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	jmp	.label_14
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	jmp	.label_14
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
.label_14:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ae8
	.globl sub_401ae8
	.type sub_401ae8, @function
sub_401ae8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0
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
	je	.label_30
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
.label_30:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b5c
	.globl sub_401b5c
	.type sub_401b5c, @function
sub_401b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b60
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401b71
	.globl sub_401b71
	.type sub_401b71, @function
sub_401b71:

	nop	word ptr cs:[rax + rax]
.label_31:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b86
	.globl sub_401b86
	.type sub_401b86, @function
sub_401b86:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b8b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_31
	test	rdx, rdx
	je	.label_31
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bb0

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
	#Procedure 0x401bc9
	.globl sub_401bc9
	.type sub_401bc9, @function
sub_401bc9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bd0
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
	je	.label_35
	test	rdx, rdx
	je	.label_35
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_35:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c3e
	.globl sub_401c3e
	.type sub_401c3e, @function
sub_401c3e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c40
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

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
	#Procedure 0x401c5a
	.globl sub_401c5a
	.type sub_401c5a, @function
sub_401c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c60
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
	je	.label_38
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
.label_38:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401cc8
	.globl sub_401cc8
	.type sub_401cc8, @function
sub_401cc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0
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
	je	.label_39
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
.label_39:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d65
	.globl sub_401d65
	.type sub_401d65, @function
sub_401d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_40
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_41
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d95
	.globl sub_401d95
	.type sub_401d95, @function
sub_401d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401da0
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
	je	.label_42
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
.label_42:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401e01
	.globl sub_401e01
	.type sub_401e01, @function
sub_401e01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_44
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401e40

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
	jne	.label_46
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_53
	cmp	ecx, 0x55
	jne	.label_45
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_45
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_45
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_45
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_45
	cmp	byte ptr [rax + 5], 0
	jne	.label_45
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_50
	mov	eax, OFFSET FLAT:label_51
	jmp	.label_52
.label_53:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_45
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_45
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_45
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_45
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_45
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_45
	cmp	byte ptr [rax + 7], 0
	je	.label_47
.label_45:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_48
	mov	eax, OFFSET FLAT:label_49
.label_52:
	cmove	rax, rcx
.label_46:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_47:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_54
	mov	eax, OFFSET FLAT:label_55
	jmp	.label_52
	.section	.text
	.align	32
	#Procedure 0x401f05
	.globl sub_401f05
	.type sub_401f05, @function
sub_401f05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

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
.label_164:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_161
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_104]
.label_402:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_169
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_49
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_403:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_63
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_63
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_83:
	cmp	r14, r11
	jae	.label_80
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_80:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_83
.label_63:
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
	jmp	.label_90
.label_395:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_90
.label_398:
	mov	al, 1
.label_396:
	mov	r12b, 1
.label_399:
	test	r12b, 1
	mov	cl, 1
	je	.label_102
	mov	ecx, eax
.label_102:
	mov	al, cl
.label_397:
	test	r12b, 1
	jne	.label_106
	test	r11, r11
	je	.label_108
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_108:
	mov	r14d, 1
	jmp	.label_109
.label_106:
	xor	r14d, r14d
.label_109:
	mov	ecx, OFFSET FLAT:label_49
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_90
.label_400:
	test	r12b, 1
	jne	.label_120
	test	r11, r11
	je	.label_123
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_123:
	mov	r14d, 1
	jmp	.label_125
.label_401:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_48
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_90
.label_120:
	xor	r14d, r14d
.label_125:
	mov	eax, OFFSET FLAT:label_48
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_90:
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
	jmp	.label_146
	.section	.text
	.align	32
	#Procedure 0x4021fd
	.globl sub_4021fd
	.type sub_4021fd, @function
sub_4021fd:

	nop	dword ptr [rax]
.label_84:
	inc	rsi
.label_146:
	cmp	rbp, -1
	je	.label_57
	cmp	rsi, rbp
	jne	.label_59
	jmp	.label_60
	.section	.text
	.align	32
	#Procedure 0x402213
	.globl sub_402213
	.type sub_402213, @function
sub_402213:

	nop	word ptr cs:[rax + rax]
.label_57:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_64
.label_59:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_70
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_73
	cmp	rbp, -1
	jne	.label_73
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
.label_73:
	cmp	rbx, rbp
	jbe	.label_91
.label_70:
	xor	r8d, r8d
.label_126:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_92
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_96]
.label_413:
	test	rsi, rsi
	jne	.label_86
	jmp	.label_99
	.section	.text
	.align	32
	#Procedure 0x4022b5
	.globl sub_4022b5
	.type sub_4022b5, @function
sub_4022b5:

	nop	word ptr cs:[rax + rax]
.label_91:
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
	jne	.label_113
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_126
	jmp	.label_119
.label_113:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_126
.label_417:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_135
	test	rsi, rsi
	jne	.label_137
	cmp	rbp, 1
	je	.label_99
	xor	r13d, r13d
	jmp	.label_66
.label_406:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_143
	cmp	byte ptr [rsp + 6], 0
	jne	.label_105
	cmp	r12d, 2
	jne	.label_149
	mov	eax, r9d
	and	al, 1
	jne	.label_149
	cmp	r14, r11
	jae	.label_152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_152:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_155
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_155:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_173
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_173:
	add	r14, 3
	mov	r9b, 1
.label_149:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_93
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_93:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_166
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_166
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_166
	cmp	r14, r11
	jae	.label_58
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_58:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_122
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_122:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_66
.label_407:
	mov	bl, 0x62
	jmp	.label_75
.label_408:
	mov	cl, 0x74
	jmp	.label_78
.label_409:
	mov	bl, 0x76
	jmp	.label_75
.label_410:
	mov	bl, 0x66
	jmp	.label_75
.label_411:
	mov	cl, 0x72
	jmp	.label_78
.label_414:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_82
	cmp	byte ptr [rsp + 6], 0
	jne	.label_85
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
	jae	.label_89
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_89:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_98
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_98:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_103
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_103:
	add	r14, 3
	xor	r9d, r9d
.label_82:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_66
.label_415:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_110
	cmp	r12d, 2
	jne	.label_86
	cmp	byte ptr [rsp + 6], 0
	je	.label_86
	jmp	.label_85
.label_416:
	cmp	r12d, 2
	jne	.label_121
	cmp	byte ptr [rsp + 6], 0
	jne	.label_85
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_71
.label_92:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_132
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
.label_79:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_148
	test	r8b, r8b
	je	.label_148
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_66
.label_135:
	test	rsi, rsi
	jne	.label_165
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_165
.label_99:
	mov	dl, 1
.label_412:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_85
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_66:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_172
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_174
	jmp	.label_56
	.section	.text
	.align	32
	#Procedure 0x402604
	.globl sub_402604
	.type sub_402604, @function
sub_402604:

	nop	word ptr cs:[rax + rax]
.label_172:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_56
.label_174:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_61
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_71
	jmp	.label_77
	.section	.text
	.align	32
	#Procedure 0x40264d
	.globl sub_40264d
	.type sub_40264d, @function
sub_40264d:

	nop	dword ptr [rax]
.label_56:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_77
	jmp	.label_71
.label_61:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_77
.label_143:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_84
	xor	r15d, r15d
	jmp	.label_86
.label_121:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_78
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_71
.label_78:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_85
.label_75:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_66
	nop	word ptr cs:[rax + rax]
.label_77:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_105
	cmp	r12d, 2
	jne	.label_107
	mov	eax, r9d
	and	al, 1
	jne	.label_107
	cmp	r14, r11
	jae	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_124:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_114
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_114:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_65
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_65:
	add	r14, 3
	mov	r9b, 1
.label_107:
	cmp	r14, r11
	jae	.label_88
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_88:
	inc	r14
	jmp	.label_129
.label_132:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_133
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_133:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_134:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_154
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_157
	cmp	rbp, -2
	je	.label_160
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_100
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_67:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_144
	bt	rsi, rdx
	jb	.label_170
.label_144:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_67
.label_100:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_81
	xor	r13d, r13d
.label_81:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_134
	jmp	.label_79
.label_166:
	xor	r13d, r13d
	jmp	.label_66
.label_165:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_66
.label_110:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_86
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_86
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_86
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_141
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_163
	cmp	byte ptr [rsp + 6], 0
	jne	.label_131
	cmp	r14, r11
	jae	.label_171
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_171:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_111
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_111:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_112
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_112:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_151
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_151:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_66
.label_86:
	xor	eax, eax
.label_137:
	xor	r13d, r13d
	jmp	.label_66
.label_148:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_130
	.section	.text
	.align	32
	#Procedure 0x402932
	.globl sub_402932
	.type sub_402932, @function
sub_402932:

	nop	word ptr cs:[rax + rax]
.label_87:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_130:
	test	r8b, r8b
	je	.label_138
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_139
	cmp	r14, r11
	jae	.label_140
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_140:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x40297c
	.globl sub_40297c
	.type sub_40297c, @function
sub_40297c:

	nop	dword ptr [rax]
.label_138:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_119
	cmp	r12d, 2
	jne	.label_153
	mov	eax, r9d
	and	al, 1
	jne	.label_153
	cmp	r14, r11
	jae	.label_156
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_156:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_158
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_158:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_162
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_162:
	add	r14, 3
	mov	r9b, 1
.label_153:
	cmp	r14, r11
	jae	.label_116
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_116:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_136
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_136:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_175
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_175:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_139:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_71
	test	r9b, 1
	je	.label_72
	mov	ebx, eax
	and	bl, 1
	jne	.label_72
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_74
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_74:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_101
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_101:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_72:
	cmp	r14, r11
	jae	.label_87
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_87
	.section	.text
	.align	32
	#Procedure 0x402a83
	.globl sub_402a83
	.type sub_402a83, @function
sub_402a83:

	nop	word ptr cs:[rax + rax]
.label_71:
	test	r9b, 1
	je	.label_94
	and	al, 1
	jne	.label_94
	cmp	r14, r11
	jae	.label_97
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_97:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	add	r14, 2
	xor	r9d, r9d
.label_94:
	mov	ebx, r15d
.label_129:
	cmp	r14, r11
	jae	.label_76
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_76:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_84
.label_157:
	xor	r13d, r13d
.label_154:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_79
.label_160:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_118
	mov	rsi, qword ptr [rsp + 0x58]
.label_127:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_128
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_127
	xor	r13d, r13d
	jmp	.label_79
.label_118:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_79
.label_128:
	xor	r13d, r13d
	jmp	.label_79
.label_141:
	xor	r13d, r13d
	jmp	.label_66
.label_163:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_66
	.section	.text
	.align	32
	#Procedure 0x402b58
	.globl sub_402b58
	.type sub_402b58, @function
sub_402b58:

	nop	dword ptr [rax + rax]
.label_60:
	mov	rcx, rsi
.label_64:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_142
	or	al, dl
	je	.label_147
.label_142:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_150
	or	al, dl
	jne	.label_150
	test	r10b, 1
	jne	.label_159
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_150
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_164
.label_150:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_168
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_68
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_68
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_62:
	cmp	r14, r11
	jae	.label_95
	mov	byte ptr [rcx + r14], al
.label_95:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_62
	jmp	.label_68
.label_105:
	mov	qword ptr [rsp + 0x20], rbp
.label_119:
	mov	rdx, rdi
	jmp	.label_69
.label_85:
	mov	qword ptr [rsp + 0x20], rbp
.label_170:
	mov	rdx, rdi
	mov	eax, 2
.label_145:
	mov	qword ptr [rsp + 0x38], rax
.label_69:
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
.label_115:
	mov	r14, rax
.label_117:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_147:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_69
.label_159:
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
	jmp	.label_115
.label_168:
	mov	rcx, qword ptr [rsp + 8]
.label_68:
	cmp	r14, r11
	jae	.label_117
	mov	byte ptr [rcx + r14], 0
	jmp	.label_117
.label_131:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_145
.label_161:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402d17
	.globl sub_402d17
	.type sub_402d17, @function
sub_402d17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20
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
	#Procedure 0x402d8e
	.globl sub_402d8e
	.type sub_402d8e, @function
sub_402d8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_179
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_182
	cmp	dword ptr [rbp], 0x20
	jne	.label_182
.label_179:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_176
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_180:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_178
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_176:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_182:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_180
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_44
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_183:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_181
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_181:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e84
	.globl sub_402e84
	.type sub_402e84, @function
sub_402e84:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402e86

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
	jne	.label_184
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_184
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_183
.label_184:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x402ec0

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
	je	.label_185
	cmp	r15, -2
	jb	.label_185
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_185
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_185:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f16
	.globl sub_402f16
	.type sub_402f16, @function
sub_402f16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl nth_parent
	.type nth_parent, @function
nth_parent:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movabs	rax, 0x2aaaaaaaaaaaaaab
	cmp	rbx, rax
	jae	.label_186
	lea	r14, [rbx + rbx*2]
	mov	rdi, r14
	call	xmalloc
	test	rbx, rbx
	mov	rcx, rax
	je	.label_188
	lea	rdx, [rbx - 1]
	mov	ecx, ebx
	and	ecx, 7
	cmp	rdx, 7
	mov	rdx, rax
	jb	.label_191
	mov	rsi, rcx
	sub	rsi, rbx
	mov	rdx, rax
	nop	dword ptr [rax]
.label_190:
	mov	byte ptr [rdx + 2], 0x2f
	mov	word ptr [rdx], 0x2e2e
	mov	byte ptr [rdx + 5], 0x2f
	mov	word ptr [rdx + 3], 0x2e2e
	mov	byte ptr [rdx + 8], 0x2f
	mov	word ptr [rdx + 6], 0x2e2e
	mov	byte ptr [rdx + 0xb], 0x2f
	mov	word ptr [rdx + 9], 0x2e2e
	mov	byte ptr [rdx + 0xe], 0x2f
	mov	word ptr [rdx + 0xc], 0x2e2e
	mov	byte ptr [rdx + 0x11], 0x2f
	mov	word ptr [rdx + 0xf], 0x2e2e
	mov	byte ptr [rdx + 0x14], 0x2f
	mov	word ptr [rdx + 0x12], 0x2e2e
	mov	byte ptr [rdx + 0x17], 0x2f
	mov	word ptr [rdx + 0x15], 0x2e2e
	add	rdx, 0x18
	add	rsi, 8
	jne	.label_190
.label_191:
	test	rcx, rcx
	je	.label_189
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	byte ptr [rdx + 2], 0x2f
	mov	word ptr [rdx], 0x2e2e
	add	rdx, 3
	inc	rcx
	jne	.label_187
.label_189:
	mov	rcx, rax
	add	rcx, r14
.label_188:
	mov	byte ptr [rcx - 1], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_186:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403009
	.globl sub_403009
	.type sub_403009, @function
sub_403009:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403010
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_192:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_192
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403031
	.globl sub_403031
	.type sub_403031, @function
sub_403031:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403040
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
	#Procedure 0x403053
	.globl sub_403053
	.type sub_403053, @function
sub_403053:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403060
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
	#Procedure 0x403078
	.globl sub_403078
	.type sub_403078, @function
sub_403078:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403080
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40308a
	.globl sub_40308a
	.type sub_40308a, @function
sub_40308a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403090

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_193
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_193:
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
	#Procedure 0x403113
	.globl sub_403113
	.type sub_403113, @function
sub_403113:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403128
	.globl sub_403128
	.type sub_403128, @function
sub_403128:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40313e
	.globl sub_40313e
	.type sub_40313e, @function
sub_40313e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403140

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
	js	.label_194
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_197
	cmp	r12d, 0x7fffffff
	je	.label_199
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
	jne	.label_195
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_195:
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
.label_197:
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
	jbe	.label_200
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_196
.label_200:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_198
	mov	rdi, r14
	call	free
.label_198:
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
.label_196:
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
.label_194:
	call	abort
.label_199:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4032fd
	.globl sub_4032fd
	.type sub_4032fd, @function
sub_4032fd:

	nop	dword ptr [rax]
.label_202:
	mov	ecx, 1
.label_201:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403310
	.globl sub_403310
	.type sub_403310, @function
sub_403310:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403315

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_202
	test	rsi, rsi
	mov	ecx, 1
	je	.label_201
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_201
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403350

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_204
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_203
.label_204:
	mov	rax, rbx
	pop	rbx
	ret	
.label_203:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403376
	.globl sub_403376
	.type sub_403376, @function
sub_403376:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380
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
	je	.label_205
	test	rsi, rsi
	je	.label_205
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
.label_205:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033ec
	.globl sub_4033ec
	.type sub_4033ec, @function
sub_4033ec:

	nop	dword ptr [rax]
.label_206:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033f5
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
	je	.label_206
	test	rsi, rsi
	je	.label_206
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
	#Procedure 0x403460
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_207
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_208
	test	rax, rax
	je	.label_207
.label_208:
	pop	rbx
	ret	
.label_207:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403495
	.globl sub_403495
	.type sub_403495, @function
sub_403495:

	nop	word ptr cs:[rax + rax]
.label_209:
	call	xalloc_die
.label_210:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_211
	test	rax, rax
	je	.label_209
.label_211:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034b9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_210
	test	rbx, rbx
	jne	.label_210
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034d8
	.globl sub_4034d8
	.type sub_4034d8, @function
sub_4034d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0
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
	#Procedure 0x403516
	.globl sub_403516
	.type sub_403516, @function
sub_403516:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403520

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_213
	cmp	byte ptr [rax], 0x43
	jne	.label_215
	cmp	byte ptr [rax + 1], 0
	je	.label_212
.label_215:
	mov	esi, OFFSET FLAT:label_214
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_213
.label_212:
	xor	ebx, ebx
.label_213:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403551
	.globl sub_403551
	.type sub_403551, @function
sub_403551:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403560
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
	#Procedure 0x40356f
	.globl sub_40356f
	.type sub_40356f, @function
sub_40356f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403570
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
	je	.label_217
	test	r15, r15
	je	.label_216
.label_217:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_216:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4035b2
	.globl sub_4035b2
	.type sub_4035b2, @function
sub_4035b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_218
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_219
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_218
.label_219:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_218
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_220
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_220:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_218:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403634
	.globl sub_403634
	.type sub_403634, @function
sub_403634:

	nop	word ptr cs:[rax + rax]
.label_223:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403645
	.globl sub_403645
	.type sub_403645, @function
sub_403645:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40364d
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_223
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_222
	test	rbx, rbx
	jne	.label_222
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_222:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_221
	test	rax, rax
	je	.label_223
.label_221:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403690
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
	je	.label_225
	test	r14, r14
	je	.label_224
.label_225:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_224:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4036c6
	.globl sub_4036c6
	.type sub_4036c6, @function
sub_4036c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_226
	call	rpl_calloc
	test	rax, rax
	je	.label_226
	pop	rcx
	ret	
.label_226:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4036f6
	.globl sub_4036f6
	.type sub_4036f6, @function
sub_4036f6:

	nop	word ptr cs:[rax + rax]
.label_228:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_227
	call	__errno_location
	mov	dword ptr [rax], 0
.label_227:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40371b

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
	jne	.label_228
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_227
	test	cl, cl
	jne	.label_227
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_227
.label_231:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_229
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403780
	.globl sub_403780
	.type sub_403780, @function
sub_403780:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40378f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_231
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_232
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_232
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_230
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_230:
	mov	rbx, r14
.label_232:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_240
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_242
.label_240:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_242:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_237
	cmp	r10d, 0x29
	jae	.label_239
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_241
.label_239:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_241:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_237
	cmp	r10d, 0x29
	jae	.label_236
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_238
.label_236:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_238:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_237
	cmp	r10d, 0x29
	jae	.label_247
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_235
.label_247:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_235:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_237
	cmp	r10d, 0x29
	jae	.label_245
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_246
.label_245:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_246:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_237
	cmp	r10d, 0x29
	jae	.label_243
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_244
.label_243:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_244:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_237
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_237
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_237
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_237
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_237:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039f2
	.globl sub_4039f2
	.type sub_4039f2, @function
sub_4039f2:

	nop	word ptr cs:[rax + rax]
.label_250:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
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
	#Procedure 0x403a38
	.globl sub_403a38
	.type sub_403a38, @function
sub_403a38:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a45

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_250
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_252
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_255
	mov	ecx, OFFSET FLAT:label_251
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_253
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_253
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_251
	mov	ecx, OFFSET FLAT:label_252
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_252
	mov	ecx, OFFSET FLAT:label_262
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403c10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1f8
	mov	rbp, rsi
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_276
	call	getenv
	test	rax, rax
	setne	r14b
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_40
	call	setlocale
	mov	edi, OFFSET FLAT:label_291
	mov	esi, OFFSET FLAT:label_292
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_291
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_287
	.section	.text
	.align	32
	#Procedure 0x403c74
	.globl sub_403c74
	.type sub_403c74, @function
sub_403c74:

	nop	word ptr cs:[rax + rax]
.label_308:
	xor	r14d, r14d
.label_287:
	mov	edx, OFFSET FLAT:label_302
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_305
	mov	r14b, 1
	cmp	eax, 0x4c
	je	.label_287
	cmp	eax, 0x50
	je	.label_308
	jmp	.label_297
.label_305:
	cmp	eax, -1
	jne	.label_311
	cmp	dword ptr [rip + optind],  ebx
	jge	.label_314
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_314:
	test	r14b, r14b
	je	.label_269
	mov	edi, OFFSET FLAT:label_327
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_269
	cmp	byte ptr [rbx], 0x2f
	jne	.label_269
	mov	esi, OFFSET FLAT:label_273
	mov	rdi, rbx
	jmp	.label_274
	.section	.text
	.align	32
	#Procedure 0x403d16
	.globl sub_403d16
	.type sub_403d16, @function
sub_403d16:

	nop	word ptr cs:[rax + rax]
.label_288:
	inc	rax
	mov	esi, OFFSET FLAT:label_273
	mov	rdi, rax
.label_274:
	call	strstr
	test	rax, rax
	je	.label_278
	movzx	ecx, byte ptr [rax + 2]
	cmp	cl, 0x2e
	jne	.label_281
	movzx	ecx, byte ptr [rax + 3]
.label_281:
	test	cl, cl
	je	.label_269
	cmp	cl, 0x2f
	jne	.label_288
	jmp	.label_269
.label_278:
	lea	rdx, [rsp + 0x168]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	jne	.label_269
	lea	rdx, [rsp + 0xd8]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_267
	call	__xstat
	test	eax, eax
	jne	.label_269
	mov	rax, qword ptr [rsp + 0x170]
	cmp	rax, qword ptr [rsp + 0xe0]
	jne	.label_269
	mov	rax, qword ptr [rsp + 0x168]
	cmp	rax, qword ptr [rsp + 0xd8]
	jne	.label_269
	mov	rdi, rbx
	call	puts
	jmp	.label_309
.label_269:
	call	xgetcwd
	mov	rbx, rax
	test	rbx, rbx
	je	.label_312
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	jmp	.label_319
.label_312:
	mov	edi, 0x18
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rbp + 8], 0x2000
	mov	edi, 0x2000
	call	xmalloc
	mov	qword ptr [rbp], rax
	lea	rcx, [rax + 0x1fff]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp + 0x10], rcx
	mov	byte ptr [rax + 0x1fff], 0
	lea	rdi, [rsp + 0x38]
	call	get_root_dev_ino
	mov	r14, rax
	test	r14, r14
	je	.label_277
	mov	qword ptr [rsp], rbp
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_267
	call	__xstat
	test	eax, eax
	js	.label_290
	mov	r13d, 1
	lea	rbx, [rsp + 0x168]
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x403e54
	.globl sub_403e54
	.type sub_403e54, @function
sub_403e54:

	nop	word ptr cs:[rax + rax]
.label_304:
	inc	r13
	mov	edx, 0x90
	lea	rdi, [rsp + 0x48]
	lea	rbx, [rsp + 0x168]
	mov	rsi, rbx
	call	memcpy
	mov	r14, qword ptr [rsp + 0x10]
.label_285:
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, qword ptr [r14]
	jne	.label_301
	mov	rax, qword ptr [rsp + 0x48]
	cmp	rax, qword ptr [r14 + 8]
	je	.label_303
.label_301:
	mov	edi, OFFSET FLAT:label_306
	call	opendir
	mov	r15, rax
	test	r15, r15
	je	.label_323
	mov	rdi, r15
	call	dirfd
	mov	ebp, eax
	test	ebp, ebp
	js	.label_313
	mov	edi, ebp
	call	fchdir
	jmp	.label_318
	.section	.text
	.align	32
	#Procedure 0x403ec8
	.globl sub_403ec8
	.type sub_403ec8, @function
sub_403ec8:

	nop	dword ptr [rax + rax]
.label_313:
	mov	edi, OFFSET FLAT:label_306
	call	chdir
.label_318:
	test	eax, eax
	js	.label_322
	mov	edi, 1
	test	ebp, ebp
	js	.label_326
	mov	esi, ebp
	mov	rdx, rbx
	call	__fxstat
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x403ef7
	.globl sub_403ef7
	.type sub_403ef7, @function
sub_403ef7:

	nop	word ptr [rax + rax]
.label_326:
	mov	esi, OFFSET FLAT:label_267
	mov	rdx, rbx
	call	__xstat
.label_328:
	test	eax, eax
	js	.label_275
	mov	rbx, qword ptr [rsp + 0x168]
	mov	r12, qword ptr [rsp + 0x48]
	call	__errno_location
	mov	r14, rax
.label_282:
	mov	dword ptr [r14], 0
	nop	word ptr cs:[rax + rax]
.label_272:
	mov	rdi, r15
	call	readdir
	test	rax, rax
	je	.label_268
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_293
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_272
	test	cl, cl
	je	.label_272
	test	rbp, rbp
	jne	.label_286
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x403f85
	.globl sub_403f85
	.type sub_403f85, @function
sub_403f85:

	nop	word ptr cs:[rax + rax]
.label_293:
	mov	rbp, rax
.label_286:
	cmp	rbx, r12
	jne	.label_299
	mov	rax, qword ptr [rbp]
	test	rax, rax
	jne	.label_294
.label_299:
	lea	rsi, [rbp + 0x13]
	mov	edi, 1
	lea	rdx, [rsp + 0xd8]
	call	__lxstat
	test	eax, eax
	js	.label_282
	mov	rax, qword ptr [rsp + 0xe0]
.label_294:
	cmp	rax, qword ptr [rsp + 0x50]
	jne	.label_282
	cmp	rbx, r12
	je	.label_307
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_282
.label_307:
	add	rbp, 0x13
	mov	rdi, rbp
	call	strlen
	mov	rdi, qword ptr [rsp]
	mov	rdx, qword ptr [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	r12, rcx
	sub	r12, rdx
	lea	rbx, [rax + 1]
	cmp	r12, rbx
	jae	.label_329
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 0x28], rax
	add	rbx, rax
	movabs	rax, 0x3fffffffffffffff
	cmp	rbx, rax
	ja	.label_300
	lea	rdi, [rbx + rbx]
	mov	qword ptr [rsp + 0x20], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	rdx, qword ptr [rsp + 0x28]
	sub	rdx, r12
	lea	rdi, [rax + rbx*2]
	sub	rdi, rdx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rdi
	mov	rbx, qword ptr [rsp + 0x30]
	add	r12, rbx
	mov	rsi, r12
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rsp + 8]
.label_329:
	mov	rdx, rcx
	mov	rsi, rax
	not	rsi
	lea	rcx, [rdx + rsi]
	mov	qword ptr [rdi + 0x10], rcx
	mov	byte ptr [rdx + rsi], 0x2f
	mov	rcx, qword ptr [rdi + 0x10]
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rcx + 1]
	mov	rsi, rbp
	mov	rdx, rax
	call	memcpy
	mov	bl, 1
	jmp	.label_320
	.section	.text
	.align	32
	#Procedure 0x4040cf
	.globl sub_4040cf
	.type sub_4040cf, @function
sub_4040cf:

	nop	
.label_268:
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	jne	.label_325
	xor	ebx, ebx
.label_320:
	mov	rdi, r15
	call	closedir
	test	eax, eax
	jne	.label_296
	test	bl, bl
	jne	.label_304
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r13
	call	nth_parent
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_303:
	mov	rdi, qword ptr [rsp + 8]
	cmp	byte ptr [rdi], 0
	je	.label_280
	mov	rbp, qword ptr [rsp]
	jmp	.label_283
.label_280:
	mov	rbp, qword ptr [rsp]
	mov	r14, qword ptr [rbp]
	cmp	rdi, r14
	jne	.label_284
	mov	r12, qword ptr [rbp + 8]
	lea	r13, [r12 + 1]
	movabs	rax, 0x3fffffffffffffff
	cmp	r13, rax
	ja	.label_289
	lea	rdi, [r13 + r13]
	mov	qword ptr [rsp + 0x10], rdi
	call	xmalloc
	mov	r15, rax
	lea	rbx, [r15 + r13*2]
	sub	rbx, r12
	mov	qword ptr [rbp + 0x10], rbx
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	mov	rdi, r14
	call	free
	mov	rdi, rbx
	mov	qword ptr [rbp], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
.label_284:
	lea	rax, [rdi - 1]
	mov	qword ptr [rbp + 0x10], rax
	mov	byte ptr [rdi - 1], 0x2f
	mov	rdi, qword ptr [rbp + 0x10]
.label_283:
	call	puts
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, rbp
.label_319:
	call	free
.label_309:
	xor	eax, eax
	add	rsp, 0x1f8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	jmp	.label_271
.label_323:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	jmp	.label_271
.label_322:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	jmp	.label_271
.label_325:
	mov	rdi, r15
	call	closedir
	mov	dword ptr [r14], ebx
.label_296:
	mov	r14d, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
.label_271:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r13
	call	nth_parent
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_311:
	cmp	eax, 0xffffff7d
	je	.label_295
	cmp	eax, 0xffffff7e
	jne	.label_297
	xor	edi, edi
	call	usage
.label_295:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_252
	mov	edx, OFFSET FLAT:label_255
	mov	r8d, OFFSET FLAT:label_298
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_297:
	mov	edi, 1
	call	usage
.label_277:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_316
	jmp	.label_317
.label_290:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_267
.label_317:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_300:
	call	xalloc_die
.label_289:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40431a
	.globl sub_40431a
	.type sub_40431a, @function
sub_40431a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404320

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
	#Procedure 0x404337
	.globl sub_404337
	.type sub_404337, @function
sub_404337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340
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
	#Procedure 0x404373
	.globl sub_404373
	.type sub_404373, @function
sub_404373:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404380
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
	#Procedure 0x4043f5
	.globl sub_4043f5
	.type sub_4043f5, @function
sub_4043f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400
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
	#Procedure 0x404418
	.globl sub_404418
	.type sub_404418, @function
sub_404418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420
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
	#Procedure 0x404474
	.globl sub_404474
	.type sub_404474, @function
sub_404474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480
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
	je	.label_331
	mov	qword ptr [rax], rbx
.label_331:
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
	#Procedure 0x40456c
	.globl sub_40456c
	.type sub_40456c, @function
sub_40456c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404570
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_334
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_336
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_333
	call	free
	xor	eax, eax
	jmp	.label_335
.label_334:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_332
	mov	qword ptr [rsi], rbx
.label_333:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_335
	test	rax, rax
	je	.label_332
.label_335:
	pop	rbx
	ret	
.label_332:
	call	xalloc_die
.label_336:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4045d4
	.globl sub_4045d4
	.type sub_4045d4, @function
sub_4045d4:

	nop	word ptr cs:[rax + rax]
.label_342:
	test	rcx, rcx
	jne	.label_337
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_337:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_341
.label_343:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_340
	test	rbx, rbx
	jne	.label_340
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_339:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404631
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_342
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_339
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_343
.label_340:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_338
	test	rax, rax
	je	.label_339
.label_338:
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404677
	.globl sub_404677
	.type sub_404677, @function
sub_404677:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404680

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_316
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_344
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_344:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046c2
	.globl sub_4046c2
	.type sub_4046c2, @function
sub_4046c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0

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
	#Procedure 0x404725
	.globl sub_404725
	.type sub_404725, @function
sub_404725:

	nop	word ptr cs:[rax + rax]
.label_345:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404735
	.globl sub_404735
	.type sub_404735, @function
sub_404735:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40473b
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
	je	.label_345
	test	rdx, rdx
	je	.label_345
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
	.align	32
	#Procedure 0x4047a0

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
	je	.label_346
	test	r15, r15
	je	.label_347
.label_346:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_347:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047dc
	.globl sub_4047dc
	.type sub_4047dc, @function
sub_4047dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_349
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_255
	mov	ecx, OFFSET FLAT:label_251
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404854
	.globl sub_404854
	.type sub_404854, @function
sub_404854:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40486a
	.globl sub_40486a
	.type sub_40486a, @function
sub_40486a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870
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
	#Procedure 0x404931
	.globl sub_404931
	.type sub_404931, @function
sub_404931:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404940
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_352
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_355:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_355
.label_352:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_356
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_354], OFFSET FLAT:slot0
.label_356:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_353
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_353:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049d1
	.globl sub_4049d1
	.type sub_4049d1, @function
sub_4049d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0
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
	#Procedure 0x4049ef
	.globl sub_4049ef
	.type sub_4049ef, @function
sub_4049ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4049f0
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
	#Procedure 0x404a5f
	.globl sub_404a5f
	.type sub_404a5f, @function
sub_404a5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_357
	test	rax, rax
	je	.label_358
.label_357:
	pop	rbx
	ret	
.label_358:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a7a
	.globl sub_404a7a
	.type sub_404a7a, @function
sub_404a7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ae5
	.globl sub_404ae5
	.type sub_404ae5, @function
sub_404ae5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af2
	.globl sub_404af2
	.type sub_404af2, @function
sub_404af2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b16
	.globl sub_404b16
	.type sub_404b16, @function
sub_404b16:

	nop	word ptr cs:[rax + rax]
