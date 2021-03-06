	.section	.text
	.align	16
	#Procedure 0x401b79
	.globl sub_401b79
	.type sub_401b79, @function
sub_401b79:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401b7a
	.globl sub_401b7a
	.type sub_401b7a, @function
sub_401b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb2
	.globl sub_401bb2
	.type sub_401bb2, @function
sub_401bb2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bfa
	.globl sub_401bfa
	.type sub_401bfa, @function
sub_401bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c1c
	.globl sub_401c1c
	.type sub_401c1c, @function
sub_401c1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c2d
	.globl sub_401c2d
	.type sub_401c2d, @function
sub_401c2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c46
	.globl sub_401c46
	.type sub_401c46, @function
sub_401c46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c50

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	call	_obstack_free
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_free
	.section	.text
	.align	16
	#Procedure 0x401c7c
	.globl sub_401c7c
	.type sub_401c7c, @function
sub_401c7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c8a
	.globl sub_401c8a
	.type sub_401c8a, @function
sub_401c8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_9
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_9:
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
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d28
	.globl sub_401d28
	.type sub_401d28, @function
sub_401d28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d30
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_10
	test	rdx, rdx
	je	.label_10
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_10:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d5b
	.globl sub_401d5b
	.type sub_401d5b, @function
sub_401d5b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d60
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
	#Procedure 0x401d96
	.globl sub_401d96
	.type sub_401d96, @function
sub_401d96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401da0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_11
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401deb
	.globl sub_401deb
	.type sub_401deb, @function
sub_401deb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401df0

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_12
	mov	rax, qword ptr [rdi + 8]
	ret	
.label_12:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e08
	.globl sub_401e08
	.type sub_401e08, @function
sub_401e08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_13
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_13:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
.label_14:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ea5
	.globl sub_401ea5
	.type sub_401ea5, @function
sub_401ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0

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
	je	.label_14
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
	#Procedure 0x401f40

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
	je	.label_15
	cmp	r15, -2
	jb	.label_15
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_15
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_15:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f96
	.globl sub_401f96
	.type sub_401f96, @function
sub_401f96:

	nop	word ptr cs:[rax + rax]
.label_16:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fa5
	.globl sub_401fa5
	.type sub_401fa5, @function
sub_401fa5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fab
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_16
	test	rdx, rdx
	je	.label_16
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
	#Procedure 0x402010
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
	#Procedure 0x402028
	.globl sub_402028
	.type sub_402028, @function
sub_402028:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402030

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_begin
	.section	.text
	.align	16
	#Procedure 0x402091
	.globl sub_402091
	.type sub_402091, @function
sub_402091:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020a0

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_20
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_23
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_21
.label_20:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_22
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_21
.label_22:
	mov	dword ptr [r14], 2
.label_24:
	xor	eax, eax
.label_21:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40210a
	.globl sub_40210a
	.type sub_40210a, @function
sub_40210a:

	nop	word ptr cs:[rax + rax]
.label_23:
	mov	rdi, qword ptr [rbx]
	call	feof
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx + 2]
	mov	dword ptr [r14], eax
	jmp	.label_24
	.section	.text
	.align	16
	#Procedure 0x402130

	.globl write_counts
	.type write_counts, @function
write_counts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	r14, r8
	mov	r12, rcx
	mov	rbp, rdx
	mov	rax, rsi
	mov	ebx, OFFSET FLAT:label_32
	cmp	byte ptr [rip + print_lines],  1
	jne	.label_33
	mov	r15d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rbx, rax
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_32
	xor	eax, eax
	mov	edx, r15d
	call	__printf_chk
	mov	rax, rbx
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_33:
	cmp	byte ptr [rip + print_words],  1
	jne	.label_27
	mov	r15, r13
	mov	r13, r12
	mov	r12, r14
	mov	r14d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, r14d
	mov	r14, r12
	mov	r12, r13
	mov	r13, r15
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_27:
	cmp	byte ptr [rip + print_chars],  1
	jne	.label_28
	mov	r15d, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, r15d
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_28:
	cmp	byte ptr [rip + print_bytes],  1
	jne	.label_26
	mov	ebp, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, r12
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_26:
	cmp	byte ptr [rip + print_linelength],  1
	jne	.label_35
	mov	ebp, dword ptr [rip + number_width]
	lea	rsi, [rsp]
	mov	rdi, r14
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
.label_35:
	test	r13, r13
	je	.label_34
	mov	esi, 0xa
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_25
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	r13, rax
.label_25:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rdx, r13
	call	__printf_chk
.label_34:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_31
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_30:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_31:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x4022e2
	.globl sub_4022e2
	.type sub_4022e2, @function
sub_4022e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_36
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_37
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402315
	.globl sub_402315
	.type sub_402315, @function
sub_402315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402320

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_38
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_38:
	mov	rax, rcx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40234c
	.globl sub_40234c
	.type sub_40234c, @function
sub_40234c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402350
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402358
	.globl sub_402358
	.type sub_402358, @function
sub_402358:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402360
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_39
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_41:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_41
.label_39:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_42
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_43], OFFSET FLAT:slot0
.label_42:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_40
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_40:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023f1
	.globl sub_4023f1
	.type sub_4023f1, @function
sub_4023f1:

	nop	word ptr cs:[rax + rax]
.label_48:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402405
	.globl sub_402405
	.type sub_402405, @function
sub_402405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402411
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_47
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_48
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_46
	call	free
	xor	eax, eax
	jmp	.label_44
.label_45:
	call	xalloc_die
.label_47:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_45
	mov	qword ptr [rsi], rbx
.label_46:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_44
	test	rax, rax
	je	.label_45
.label_44:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402470
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
	#Procedure 0x40247f
	.globl sub_40247f
	.type sub_40247f, @function
sub_40247f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402480
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
	je	.label_49
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
.label_49:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4024ec
	.globl sub_4024ec
	.type sub_4024ec, @function
sub_4024ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4024fa
	.globl sub_4024fa
	.type sub_4024fa, @function
sub_4024fa:

	nop	word ptr [rax + rax]
.label_51:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_50
	call	__errno_location
	mov	dword ptr [rax], 0
.label_50:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40251b

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
	jne	.label_51
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_50
	test	cl, cl
	jne	.label_50
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_50
	.section	.text
	.align	16
	#Procedure 0x402560

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
	jmp	.label_77
	.section	.text
	.align	16
	#Procedure 0x40260f
	.globl sub_40260f
	.type sub_40260f, @function
sub_40260f:

	nop	
.label_74:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_55
	or	al, dl
	jne	.label_55
	test	dil, 1
	jne	.label_73
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_55
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_77
	jmp	.label_55
.label_589:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_81
	test	rbp, rbp
	je	.label_85
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_85:
	mov	r14d, 1
	jmp	.label_87
.label_590:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_88
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_92
.label_81:
	xor	r14d, r14d
.label_87:
	mov	eax, OFFSET FLAT:label_88
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_89
	.section	.text
	.align	16
	#Procedure 0x4026df
	.globl sub_4026df
	.type sub_4026df, @function
sub_4026df:

	nop	
.label_77:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_111
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_160]
.label_591:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_123
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_53
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_592:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_72
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_72
	xor	r14d, r14d
	nop	
.label_117:
	cmp	r14, rbp
	jae	.label_145
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_145:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_117
.label_72:
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
	jmp	.label_92
.label_584:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_92
.label_587:
	mov	al, 1
.label_585:
	mov	r12b, 1
.label_588:
	test	r12b, 1
	mov	cl, 1
	je	.label_168
	mov	ecx, eax
.label_168:
	mov	al, cl
.label_586:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_171
	test	rbp, rbp
	je	.label_176
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_176:
	mov	r14d, 1
	jmp	.label_178
.label_171:
	xor	r14d, r14d
.label_178:
	mov	ecx, OFFSET FLAT:label_53
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_89:
	mov	sil, r12b
.label_92:
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
	jmp	.label_62
	.section	.text
	.align	16
	#Procedure 0x4028a1
	.globl sub_4028a1
	.type sub_4028a1, @function
sub_4028a1:

	nop	word ptr cs:[rax + rax]
.label_66:
	inc	r12
.label_62:
	cmp	r11, -1
	je	.label_97
	cmp	r12, r11
	jne	.label_99
	jmp	.label_101
	.section	.text
	.align	16
	#Procedure 0x4028c3
	.globl sub_4028c3
	.type sub_4028c3, @function
sub_4028c3:

	nop	word ptr cs:[rax + rax]
.label_97:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_159
.label_99:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_113
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_116
	cmp	r11, -1
	jne	.label_116
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_116:
	cmp	rbx, r11
	jbe	.label_128
.label_113:
	xor	esi, esi
.label_126:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_129
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_133]
.label_528:
	test	r12, r12
	jne	.label_84
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x402956
	.globl sub_402956
	.type sub_402956, @function
sub_402956:

	nop	word ptr cs:[rax + rax]
.label_128:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_148
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_126
	jmp	.label_64
.label_148:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_126
.label_532:
	xor	eax, eax
	cmp	r11, -1
	je	.label_161
	test	r12, r12
	jne	.label_164
	cmp	r11, 1
	je	.label_138
	xor	r13d, r13d
	jmp	.label_56
.label_521:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_173
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_64
	cmp	r8d, 2
	jne	.label_167
	mov	eax, r9d
	and	al, 1
	jne	.label_167
	cmp	r14, rbp
	jae	.label_54
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_54:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_57
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_57:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_67
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_67:
	add	r14, 3
	mov	r9b, 1
.label_167:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_71
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_71:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_59
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_59
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_59
	cmp	r14, rbp
	jae	.label_121
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_121:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_142
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_142:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_56
.label_522:
	mov	bl, 0x62
	jmp	.label_98
.label_523:
	mov	cl, 0x74
	jmp	.label_80
.label_524:
	mov	bl, 0x76
	jmp	.label_98
.label_525:
	mov	bl, 0x66
	jmp	.label_98
.label_526:
	mov	cl, 0x72
	jmp	.label_80
.label_529:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_109
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_61
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
	jae	.label_118
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_118:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_131
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_131:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_135
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_135:
	add	r14, 3
	xor	r9d, r9d
.label_109:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_56
.label_530:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_143
	cmp	r8d, 2
	jne	.label_84
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_84
	jmp	.label_61
.label_531:
	cmp	r8d, 2
	jne	.label_152
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_61
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_156
.label_129:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_157
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_170
.label_161:
	test	r12, r12
	jne	.label_52
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_52
.label_138:
	mov	dl, 1
.label_527:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_61
	xor	eax, eax
	mov	r13b, dl
.label_56:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_63
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_68
	jmp	.label_69
	.section	.text
	.align	16
	#Procedure 0x402c34
	.globl sub_402c34
	.type sub_402c34, @function
sub_402c34:

	nop	word ptr cs:[rax + rax]
.label_63:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_69
.label_68:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_158
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402c6d
	.globl sub_402c6d
	.type sub_402c6d, @function
sub_402c6d:

	nop	dword ptr [rax]
.label_69:
	test	sil, sil
.label_78:
	mov	ebx, r15d
	je	.label_94
	jmp	.label_83
.label_158:
	mov	ebx, r15d
	jmp	.label_83
.label_173:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_66
	xor	r15d, r15d
	jmp	.label_84
.label_152:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_80
	xor	eax, eax
	mov	r15b, 0x5c
.label_156:
	xor	r13d, r13d
	jmp	.label_94
.label_80:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_61
.label_98:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_56
	nop	
.label_83:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_64
	cmp	r8d, 2
	jne	.label_110
	mov	eax, r9d
	and	al, 1
	jne	.label_110
	cmp	r14, rbp
	jae	.label_115
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_115:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_119
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_119:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_122
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_122:
	add	r14, 3
	mov	r9b, 1
.label_110:
	cmp	r14, rbp
	jae	.label_104
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_104:
	inc	r14
	jmp	.label_65
.label_157:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_134
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_134:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_140
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_177:
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
	je	.label_153
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_162
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_127
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_174
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_137:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_139
	bt	rsi, rdx
	jb	.label_61
.label_139:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_137
.label_174:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_70
	xor	r13d, r13d
.label_70:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_177
	jmp	.label_79
.label_59:
	xor	r13d, r13d
	jmp	.label_56
.label_52:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_56
.label_143:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_84
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_84
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_84
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_95
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_130
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_136
	cmp	r14, rbp
	jae	.label_107
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_107:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_141
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_141:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_166
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_166:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_165
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_165:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_130:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_56
.label_84:
	xor	eax, eax
.label_164:
	xor	r13d, r13d
	jmp	.label_56
.label_140:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_106:
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
	je	.label_149
	cmp	rbp, -1
	je	.label_151
	cmp	rbp, -2
	je	.label_153
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_155
	xor	r13d, r13d
.label_155:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_106
	jmp	.label_79
.label_153:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_96
	lea	rax, [r10 + r12]
.label_105:
	cmp	byte ptr [rax + rsi], 0
	je	.label_96
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_105
.label_96:
	mov	qword ptr [rsp + 0x40], rsi
.label_162:
	xor	r13d, r13d
	jmp	.label_127
.label_151:
	xor	r13d, r13d
.label_149:
	mov	r10, qword ptr [rsp + 0x28]
.label_127:
	mov	r12, qword ptr [rsp + 0x40]
.label_79:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_170:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_60
	test	al, al
	je	.label_60
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_56
.label_60:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x403067
	.globl sub_403067
	.type sub_403067, @function
sub_403067:

	nop	word ptr [rax + rax]
.label_163:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_76:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_82
	test	sil, 1
	je	.label_93
	cmp	r14, rbp
	jae	.label_86
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_86:
	inc	r14
	xor	esi, esi
	jmp	.label_93
	.section	.text
	.align	16
	#Procedure 0x4030a5
	.globl sub_4030a5
	.type sub_4030a5, @function
sub_4030a5:

	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_64
	cmp	r8d, 2
	jne	.label_100
	mov	eax, r9d
	and	al, 1
	jne	.label_100
	cmp	r14, rbp
	jae	.label_102
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_102:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_108
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_108:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_75
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_75:
	add	r14, 3
	mov	r9b, 1
.label_100:
	cmp	r14, rbp
	jae	.label_120
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_120:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_125
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_125:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_132
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_132:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_93:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_94
	test	r9b, 1
	je	.label_144
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_90
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_147
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_147:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_154
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_154:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x4031b6
	.globl sub_4031b6
	.type sub_4031b6, @function
sub_4031b6:

	nop	word ptr cs:[rax + rax]
.label_90:
	mov	rbx, rcx
.label_144:
	cmp	r14, rbp
	jae	.label_163
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x4031de
	.globl sub_4031de
	.type sub_4031de, @function
sub_4031de:

	nop	
.label_94:
	test	r9b, 1
	je	.label_172
	and	al, 1
	jne	.label_172
	cmp	r14, rbp
	jae	.label_175
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_169
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_169:
	add	r14, 2
	xor	r9d, r9d
.label_172:
	mov	ebx, r15d
.label_65:
	cmp	r14, rbp
	jae	.label_58
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_58:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_66
.label_95:
	xor	r13d, r13d
	jmp	.label_56
	.section	.text
	.align	16
	#Procedure 0x403241
	.globl sub_403241
	.type sub_403241, @function
sub_403241:

	nop	word ptr cs:[rax + rax]
.label_101:
	mov	rcx, r12
.label_159:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_74
	or	al, dl
	jne	.label_74
	mov	r11, rcx
	jmp	.label_64
.label_61:
	mov	eax, 2
.label_150:
	mov	qword ptr [rsp + 0x38], rax
.label_64:
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
.label_112:
	mov	r14, rax
.label_103:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_55:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_146
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_114
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_114
	inc	rdx
	nop	dword ptr [rax + rax]
.label_91:
	cmp	r14, rbp
	jae	.label_124
	mov	byte ptr [rcx + r14], al
.label_124:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_91
	jmp	.label_114
.label_73:
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
	jmp	.label_112
.label_146:
	mov	rcx, qword ptr [rsp + 0x10]
.label_114:
	cmp	r14, rbp
	jae	.label_103
	mov	byte ptr [rcx + r14], 0
	jmp	.label_103
.label_136:
	mov	eax, 5
	jmp	.label_150
.label_111:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_179
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_179:
	mov	rax, rcx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033bb
	.globl sub_4033bb
	.type sub_4033bb, @function
sub_4033bb:

	nop	dword ptr [rax + rax]
.label_186:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_183
	movsd	xmm0, qword ptr [rip + label_185]
.label_184:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_183:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_180]
	subpd	xmm0, xmmword ptr [rip + label_181]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x403408
	.globl sub_403408
	.type sub_403408, @function
sub_403408:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40340c
	.globl physmem_total
	.type physmem_total, @function
physmem_total:

	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_186
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_182:
	mulsd	xmm0, xmm1
	jmp	.label_184
	.section	.text
	.align	16
	#Procedure 0x403440

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_194
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_192
.label_194:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_187
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_193
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_189:
	mulsd	xmm0, xmm1
	jmp	.label_190
.label_187:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1, xmmword ptr [rip + label_180]
	punpckldq	xmm0, xmm1
	movapd	xmm2, xmmword ptr [rip + label_181]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
	jmp	.label_192
.label_193:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_191
	movsd	xmm0, qword ptr [rip + label_185]
.label_190:
	mulsd	xmm0, qword ptr [rip + label_188]
.label_192:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_191:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_180]
	subpd	xmm0, xmmword ptr [rip + label_181]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_189
	.section	.text
	.align	16
	#Procedure 0x40355a
	.globl sub_40355a
	.type sub_40355a, @function
sub_40355a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403560
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403575
	.globl sub_403575
	.type sub_403575, @function
sub_403575:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403580

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
	je	.label_195
	test	r15, r15
	je	.label_196
.label_195:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_196:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035bc
	.globl sub_4035bc
	.type sub_4035bc, @function
sub_4035bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_197
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_201
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_198
.label_197:
	test	rcx, rcx
	jne	.label_202
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_202:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_199
.label_198:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_200
	test	rbx, rbx
	jne	.label_200
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_199:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40363e
	.globl sub_40363e
	.type sub_40363e, @function
sub_40363e:

	nop	word ptr [rax + rax]
.label_200:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_203
	test	rax, rax
	je	.label_201
.label_203:
	pop	rbx
	ret	
.label_201:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403660

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_206:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403692
	.globl sub_403692
	.type sub_403692, @function
sub_403692:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403695
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_206
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4036b0
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
	je	.label_208
	test	r15, r15
	je	.label_207
.label_208:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_207:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4036f2
	.globl sub_4036f2
	.type sub_4036f2, @function
sub_4036f2:

	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_209
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403720
	.globl sub_403720
	.type sub_403720, @function
sub_403720:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40372f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_210
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_211
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_211
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_213
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_213:
	mov	rbx, r14
.label_211:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_215:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4037b5
	.globl sub_4037b5
	.type sub_4037b5, @function
sub_4037b5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4037b7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_215
	test	rdx, rdx
	je	.label_215
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
	#Procedure 0x403820

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_216
	test	rbx, rbx
	jne	.label_216
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_218:
	call	xalloc_die
.label_216:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_217
	test	rax, rax
	je	.label_218
.label_217:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403850

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_219
	test	byte ptr [rbx + 1], 1
	je	.label_219
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_219:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403883
	.globl sub_403883
	.type sub_403883, @function
sub_403883:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403890
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
	je	.label_220
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
.label_220:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4038f8
	.globl sub_4038f8
	.type sub_4038f8, @function
sub_4038f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403900
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x403954
	.globl sub_403954
	.type sub_403954, @function
sub_403954:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_221
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_222
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_221
.label_222:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_221
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_223
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_223:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_221:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4039d4
	.globl sub_4039d4
	.type sub_4039d4, @function
sub_4039d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0

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
	jne	.label_229
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_225
	cmp	ecx, 0x55
	jne	.label_224
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_224
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_224
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_224
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_224
	cmp	byte ptr [rax + 5], 0
	jne	.label_224
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_231
	mov	eax, OFFSET FLAT:label_232
	jmp	.label_228
.label_225:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_224
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_224
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_224
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_224
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_224
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_224
	cmp	byte ptr [rax + 7], 0
	je	.label_230
.label_224:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_88
	mov	eax, OFFSET FLAT:label_53
.label_228:
	cmove	rax, rcx
.label_229:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_230:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_226
	mov	eax, OFFSET FLAT:label_227
	jmp	.label_228
	.section	.text
	.align	16
	#Procedure 0x403aa5
	.globl sub_403aa5
	.type sub_403aa5, @function
sub_403aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_233
	call	rpl_calloc
	test	rax, rax
	je	.label_233
	pop	rcx
	ret	
.label_233:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ad6
	.globl sub_403ad6
	.type sub_403ad6, @function
sub_403ad6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_234
	test	rax, rax
	je	.label_235
.label_234:
	pop	rbx
	ret	
.label_235:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403afa
	.globl sub_403afa
	.type sub_403afa, @function
sub_403afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_236:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_236
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403b21
	.globl sub_403b21
	.type sub_403b21, @function
sub_403b21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b30
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x403b9f
	.globl sub_403b9f
	.type sub_403b9f, @function
sub_403b9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ba0
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
	#Procedure 0x403bb8
	.globl sub_403bb8
	.type sub_403bb8, @function
sub_403bb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0

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
	#Procedure 0x403bd7
	.globl sub_403bd7
	.type sub_403bd7, @function
sub_403bd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_237
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_237:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c70

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_253
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_249
	mov	ecx, OFFSET FLAT:label_250
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_248
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_248
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_248:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_250
	mov	ecx, OFFSET FLAT:label_238
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_238
	mov	ecx, OFFSET FLAT:label_239
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_253:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
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
	#Procedure 0x403e6e
	.globl sub_403e6e
	.type sub_403e6e, @function
sub_403e6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e70

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_257
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_261:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_263
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_263:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_264
	mov	rdi, rbx
	call	save_token
.label_264:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_261
	jmp	.label_258
.label_257:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_258:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_265
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_267
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_267:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_265:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_262
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_262:
	mov	qword ptr [rax], 0
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rdx, rax
	jne	.label_259
	or	byte ptr [rbx + 0xc0], 2
.label_259:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_268
	mov	qword ptr [rbx + 0x88], rbp
	mov	rcx, rbp
.label_268:
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	mov	rdx, qword ptr [rbx + 0xe0]
	cmp	rdx, rax
	jne	.label_266
	or	byte ptr [rbx + 0x118], 2
.label_266:
	mov	rcx, qword ptr [rbx + 0xf8]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_260
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_260:
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40403a
	.globl sub_40403a
	.type sub_40403a, @function
sub_40403a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404040
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
	#Procedure 0x404059
	.globl sub_404059
	.type sub_404059, @function
sub_404059:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404060

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_269
	xor	eax, eax
	nop	dword ptr [rax]
.label_270:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_270
.label_269:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_271
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, dword ptr [rip + exit_failure]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4040bb
	.globl sub_4040bb
	.type sub_4040bb, @function
sub_4040bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040c0

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
	jne	.label_272
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_272
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_273
.label_272:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_273:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_274
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_274:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40412e
	.globl sub_40412e
	.type sub_40412e, @function
sub_40412e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404130
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
	#Procedure 0x404163
	.globl sub_404163
	.type sub_404163, @function
sub_404163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40417e
	.globl sub_40417e
	.type sub_40417e, @function
sub_40417e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404180

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
	js	.label_275
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_278
	cmp	r12d, 0x7fffffff
	je	.label_280
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
	jne	.label_276
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_276:
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
.label_278:
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
	jbe	.label_281
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_277
.label_281:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_279
	mov	rdi, r14
	call	free
.label_279:
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
.label_277:
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
.label_275:
	call	abort
.label_280:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40433d
	.globl sub_40433d
	.type sub_40433d, @function
sub_40433d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404340

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1d8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_36
	call	setlocale
	mov	edi, OFFSET FLAT:label_346
	mov	esi, OFFSET FLAT:label_347
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_346
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	getpagesize
	cdqe	
	mov	qword ptr [rip + page_size],  rax
	mov	rdi, qword ptr [rip + stdout]
	xor	r13d, r13d
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	edi, OFFSET FLAT:label_354
	call	getenv
	test	rax, rax
	setne	byte ptr [rip + posixly_correct]
	mov	byte ptr [rip + print_bytes],  0
	mov	byte ptr [rip + print_chars],  0
	mov	byte ptr [rip + print_words],  0
	mov	byte ptr [rip + print_lines],  0
	mov	byte ptr [rip + print_linelength],  0
	mov	qword ptr [rip + max_line_length],  0
	mov	qword ptr [rip + total_bytes],  0
	mov	qword ptr [rip + total_chars],  0
	mov	qword ptr [rip + total_words],  0
	mov	qword ptr [rip + total_lines],  0
	jmp	.label_300
.label_544:
	mov	byte ptr [rip + print_linelength],  1
	nop	dword ptr [rax]
.label_300:
	mov	edx, OFFSET FLAT:label_290
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_293
	add	eax, -0x4c
	cmp	eax, 0x34
	ja	.label_294
	jmp	qword ptr [(rax * 8) + label_299]
.label_545:
	mov	byte ptr [rip + print_bytes],  1
	jmp	.label_300
.label_548:
	mov	byte ptr [rip + print_words],  1
	jmp	.label_300
.label_549:
	mov	r13, qword ptr [rip + optarg]
	jmp	.label_300
.label_546:
	mov	byte ptr [rip + print_lines],  1
	jmp	.label_300
.label_547:
	mov	byte ptr [rip + print_chars],  1
	jmp	.label_300
.label_293:
	cmp	eax, -1
	jne	.label_309
	mov	al, byte ptr [rip + print_lines]
	test	al, al
	jne	.label_312
	mov	al, byte ptr [rip + print_words]
	test	al, al
	jne	.label_312
	mov	al, byte ptr [rip + print_chars]
	test	al, al
	jne	.label_312
	mov	al, byte ptr [rip + print_bytes]
	test	al, al
	jne	.label_312
	mov	al, byte ptr [rip + print_linelength]
	test	al, al
	jne	.label_312
	mov	byte ptr [rip + print_bytes],  1
	mov	byte ptr [rip + print_words],  1
	mov	byte ptr [rip + print_lines],  1
.label_312:
	movsxd	rax, dword ptr [rip + optind]
	test	r13, r13
	je	.label_322
	cmp	eax, ebp
	jl	.label_350
	cmp	byte ptr [r13], 0x2d
	jne	.label_327
	cmp	byte ptr [r13 + 1], 0
	je	.label_328
.label_327:
	mov	esi, OFFSET FLAT:label_330
	mov	rdi, r13
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_333
.label_331:
	mov	rdi, rbx
	call	fileno
	lea	rdx, [rsp + 0x28]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	test	eax, eax
	jne	.label_337
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0x8000
	jne	.label_337
	mov	rax, qword ptr [rsp + 0x58]
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rsp + 8], xmm0
	call	physmem_available
	movapd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_342]
	movsd	xmm0, qword ptr [rip + label_343]
	ucomisd	xmm1, xmm0
	ja	.label_344
	call	physmem_available
	mulsd	xmm0, qword ptr [rip + label_342]
.label_344:
	ucomisd	xmm0, qword ptr [rsp + 8]
	jae	.label_349
.label_337:
	mov	rdi, rbx
	call	argv_iter_init_stream
	mov	r15, rax
	xor	edx, edx
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_341
.label_322:
	sub	ebp, eax
	lea	rax, [rbx + rax*8]
	mov	r14d, OFFSET FLAT:main.stdin_only
	cmovg	r14, rax
	movsxd	rax, ebp
	mov	ebx, 1
	cmovg	rbx, rax
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	r15, rax
	xor	edx, edx
.label_341:
	test	r15, r15
	je	.label_359
	test	rbx, rbx
	mov	eax, 1
	cmovne	rax, rbx
	movabs	rcx, 0xd79435e50d7944
	cmp	rax, rcx
	jae	.label_359
	mov	qword ptr [rsp + 0x20], rdx
	imul	rdi, rax, 0x98
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_282
	cmp	rbx, 1
	jne	.label_287
	movzx	eax, byte ptr [rip + print_lines]
	movzx	ecx, byte ptr [rip + print_words]
	add	ecx, eax
	movzx	eax, byte ptr [rip + print_chars]
	add	eax, ecx
	movzx	ecx, byte ptr [rip + print_bytes]
	add	ecx, eax
	movzx	eax, byte ptr [rip + print_linelength]
	add	eax, ecx
	cmp	eax, 1
	jne	.label_287
.label_282:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 1
	jmp	.label_296
.label_287:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 8]
	nop	word ptr cs:[rax + rax]
.label_317:
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_303
	cmp	byte ptr [rsi], 0x2d
	jne	.label_305
	cmp	byte ptr [rsi + 1], 0
	je	.label_303
.label_305:
	mov	edi, 1
	mov	rdx, rbp
	call	__xstat
	jmp	.label_311
	.section	.text
	.align	16
	#Procedure 0x404692
	.globl sub_404692
	.type sub_404692, @function
sub_404692:

	nop	word ptr cs:[rax + rax]
.label_303:
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rbp
	call	__fxstat
.label_311:
	mov	dword ptr [rbp - 8], eax
	add	rbp, 0x98
	add	r14, 8
	dec	rbx
	jne	.label_317
.label_296:
	mov	edi, 1
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_310
	mov	rax, qword ptr [rsp + 8]
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	jg	.label_310
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	esi, 1
	xor	ecx, ecx
	mov	edx, 0xf000
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_324
	.section	.text
	.align	16
	#Procedure 0x4046fe
	.globl sub_4046fe
	.type sub_4046fe, @function
sub_4046fe:

	nop	
.label_335:
	mov	ebp, dword ptr [rax + 0x78]
	add	rax, 0x98
.label_324:
	test	ebp, ebp
	jne	.label_291
	mov	ebp, dword ptr [rax]
	and	ebp, edx
	cmp	ebp, 0x8000
	jne	.label_332
	add	rcx, qword ptr [rax + 0x18]
	jmp	.label_291
.label_332:
	mov	esi, 7
	nop	word ptr cs:[rax + rax]
.label_291:
	dec	rdi
	jne	.label_335
	mov	edi, 1
	cmp	rcx, 0xa
	jb	.label_336
	mov	edi, 1
	movabs	rbp, 0xcccccccccccccccd
	nop	
.label_340:
	inc	edi
	mov	rax, rcx
	mul	rbp
	shr	rdx, 3
	cmp	rcx, 0x63
	mov	rcx, rdx
	ja	.label_340
.label_336:
	cmp	edi, esi
	cmovl	edi, esi
.label_310:
	mov	dword ptr [rip + number_width],  edi
	lea	rsi, [rsp + 0x28]
	mov	rdi, r15
	call	argv_iter
	mov	rbx, rax
	mov	r14b, 1
	test	rbx, rbx
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_348
	mov	r14b, 1
	xor	r12d, r12d
	jmp	.label_352
.label_288:
	xor	eax, eax
	jmp	.label_353
.label_326:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	jmp	.label_306
.label_289:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	error
	mov	al, 1
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x404803
	.globl sub_404803
	.type sub_404803, @function
sub_404803:

	nop	word ptr cs:[rax + rax]
.label_352:
	test	r13, r13
	je	.label_286
	cmp	byte ptr [r13], 0x2d
	jne	.label_286
	cmp	byte ptr [r13 + 1], 0
	jne	.label_286
	movzx	ecx, byte ptr [rbx]
	cmp	cl, 0x2d
	jne	.label_288
	cmp	byte ptr [rbx + 1], 0
	je	.label_289
	nop	word ptr cs:[rax + rax]
.label_286:
	xor	eax, eax
.label_362:
	movzx	ecx, byte ptr [rbx]
.label_353:
	test	cl, cl
	je	.label_292
	test	al, al
	je	.label_355
	xor	r14d, r14d
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x404859
	.globl sub_404859
	.type sub_404859, @function
sub_404859:

	nop	dword ptr [rax]
.label_292:
	test	r13, r13
	je	.label_301
	mov	rdi, r15
	call	argv_iter_n_args
	mov	r15, rax
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_313
	xor	eax, eax
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r15, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	error
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x4048c5
	.globl sub_4048c5
	.type sub_4048c5, @function
sub_4048c5:

	nop	word ptr cs:[rax + rax]
.label_355:
	test	rbp, rbp
	mov	rax, r12
	cmove	rax, rbp
	imul	rbp, rax, 0x98
	add	rbp, qword ptr [rsp + 8]
	cmp	cl, 0x2d
	jne	.label_320
	cmp	byte ptr [rbx + 1], 0
	je	.label_326
.label_320:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r15d, eax
	cmp	r15d, -1
	je	.label_329
	xor	ecx, ecx
	mov	edi, r15d
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_323
.label_329:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_323:
	mov	r15, qword ptr [rsp + 0x18]
.label_306:
	and	r14b, bpl
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_297
.label_301:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
.label_297:
	test	rbp, rbp
	jne	.label_351
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 1
.label_351:
	inc	r12
	mov	rdi, r15
	lea	rsi, [rsp + 0x28]
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_352
.label_348:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	eax, 2
	je	.label_356
	cmp	eax, 4
	jne	.label_357
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_283
.label_356:
	test	r13, r13
	jne	.label_283
	test	r14b, r14b
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_285
	mov	rdi, r15
	call	argv_iter_n_args
	test	rax, rax
	jne	.label_285
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	xor	esi, esi
	mov	rcx, -1
	mov	rdx, qword ptr [rsp + 8]
	call	wc
	and	al, r14b
	mov	r14b, al
	jmp	.label_285
.label_283:
	mov	rbx, qword ptr [rsp + 0x20]
.label_285:
	test	bl, bl
	je	.label_298
	lea	rdi, [rsp + 0xb8]
	call	readtokens0_free
.label_298:
	mov	rdi, r15
	call	argv_iter_n_args
	cmp	rax, 2
	jb	.label_302
	mov	rbx, qword ptr [rip + total_lines]
	mov	rbp, qword ptr [rip + total_words]
	mov	r15, qword ptr [rip + total_chars]
	mov	r12, qword ptr [rip + total_bytes]
	mov	r13, qword ptr [rip + max_line_length]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r15
	mov	r15, qword ptr [rsp + 0x18]
	mov	rcx, r12
	mov	r8, r13
	mov	r9, rax
	call	write_counts
.label_302:
	mov	rdi, r15
	call	argv_iter_free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_321
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_325
.label_321:
	not	r14b
	and	r14b, 1
	movzx	eax, r14b
	add	rsp, 0x1d8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_328:
	mov	rbx, qword ptr [rip + stdin]
	jmp	.label_331
.label_349:
	lea	rbp, [rsp + 0xb8]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	je	.label_334
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_334
	mov	rbx, qword ptr [rsp + 0xb8]
	mov	r14, qword ptr [rsp + 0xc0]
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	r15, rax
	mov	dl, 1
	jmp	.label_341
.label_309:
	cmp	eax, 0xffffff7d
	je	.label_345
	cmp	eax, 0xffffff7e
	jne	.label_294
	xor	edi, edi
	call	usage
.label_345:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_238
	mov	edx, OFFSET FLAT:label_249
	mov	r8d, OFFSET FLAT:label_338
	mov	r9d, OFFSET FLAT:label_339
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_294:
	mov	edi, 1
	call	usage
.label_359:
	call	xalloc_die
.label_357:
	cmp	eax, 3
	jne	.label_318
	call	xalloc_die
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [rbx + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_271
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_333:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_325:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_308
	xor	eax, eax
	call	error
.label_318:
	mov	edi, OFFSET FLAT:label_314
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 0x33f
	mov	ecx, OFFSET FLAT:label_316
	call	__assert_fail
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0
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
	je	.label_363
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
.label_363:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d51
	.globl sub_404d51
	.type sub_404d51, @function
sub_404d51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_365
	cmp	byte ptr [rax], 0x43
	jne	.label_367
	cmp	byte ptr [rax + 1], 0
	je	.label_364
.label_367:
	mov	esi, OFFSET FLAT:label_366
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_365
.label_364:
	xor	ebx, ebx
.label_365:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d91
	.globl sub_404d91
	.type sub_404d91, @function
sub_404d91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0

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
	je	.label_368
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
.label_368:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e08
	.globl sub_404e08
	.type sub_404e08, @function
sub_404e08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e10
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404e21
	.globl sub_404e21
	.type sub_404e21, @function
sub_404e21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_369
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	je	.label_369
.label_370:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e65
	.globl sub_404e65
	.type sub_404e65, @function
sub_404e65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70

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
	je	.label_381
	mov	edx, OFFSET FLAT:label_377
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_383
.label_381:
	mov	edx, OFFSET FLAT:label_384
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
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
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_372
	jmp	qword ptr [(r12 * 8) + label_373]
.label_611:
	add	rsp, 8
	jmp	.label_371
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
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
	jmp	.label_371
.label_612:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
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
.label_613:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
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
.label_614:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
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
.label_615:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
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
	jmp	.label_371
.label_616:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	jmp	.label_371
.label_617:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
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
	jmp	.label_371
.label_618:
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
	jmp	.label_371
.label_620:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_371
.label_619:
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
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_371:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051c8
	.globl sub_4051c8
	.type sub_4051c8, @function
sub_4051c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
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
	#Procedure 0x4051e9
	.globl sub_4051e9
	.type sub_4051e9, @function
sub_4051e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_390
	test	rsi, rsi
	mov	ecx, 1
	je	.label_391
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_391
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_390:
	mov	ecx, 1
.label_391:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40523b
	.globl sub_40523b
	.type sub_40523b, @function
sub_40523b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240
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
	je	.label_392
	mov	qword ptr [rax], rbx
.label_392:
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
	#Procedure 0x40532c
	.globl sub_40532c
	.type sub_40532c, @function
sub_40532c:

	nop	dword ptr [rax]
.label_394:
	xor	eax, eax
.label_395:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405333
	.globl sub_405333
	.type sub_405333, @function
sub_405333:

	nop	dword ptr [rax]
.label_393:
	mov	rcx, qword ptr [rcx + 8]
.label_396:
	test	rcx, rcx
	je	.label_394
	cmp	rcx, rsi
	jae	.label_393
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_393
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x405350

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_396
	.section	.text
	.align	16
	#Procedure 0x405356
	.globl sub_405356
	.type sub_405356, @function
sub_405356:

	nop	word ptr cs:[rax + rax]
.label_397:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40536b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_401
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_398
	cmp	dword ptr [rbp], 0x20
	jne	.label_398
.label_401:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_397
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_402
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_402:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_400
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_403:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405425
	.globl sub_405425
	.type sub_405425, @function
sub_405425:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40542f
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
	je	.label_404
	test	r14, r14
	je	.label_403
.label_404:
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
	#Procedure 0x405460
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
	#Procedure 0x40546f
	.globl sub_40546f
	.type sub_40546f, @function
sub_40546f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405470
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_405
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_405:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_406
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_406:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054bf
	.globl sub_4054bf
	.type sub_4054bf, @function
sub_4054bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4054c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_407
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_409
.label_407:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_409:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_419
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_408
.label_419:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_408:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_417
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_418
.label_417:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_418:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_410
	cmp	r10d, 0x29
	jae	.label_415
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_416
.label_415:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_416:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_410
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
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_410
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
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_410
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_410:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056a2
	.globl sub_4056a2
	.type sub_4056a2, @function
sub_4056a2:

	nop	word ptr cs:[rax + rax]
.label_420:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4056b5
	.globl sub_4056b5
	.type sub_4056b5, @function
sub_4056b5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056b9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_420
	test	rsi, rsi
	je	.label_420
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
	.align	16
	#Procedure 0x405720

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_421
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_421:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x40573c
	.globl sub_40573c
	.type sub_40573c, @function
sub_40573c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405740
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_422
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_422:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40575e
	.globl sub_40575e
	.type sub_40575e, @function
sub_40575e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405760
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
	#Procedure 0x405773
	.globl sub_405773
	.type sub_405773, @function
sub_405773:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405780

	.globl wc
	.type wc, @function
wc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4068
	mov	r14, rcx
	mov	rbp, rdx
	mov	r13, rsi
	mov	dword ptr [rsp + 4], edi
	test	r13, r13
	mov	rax, r13
	jne	.label_458
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_467
	mov	edx, 5
	call	dcgettext
.label_458:
	mov	qword ptr [rsp + 0x40], rax
	call	__ctype_get_mb_cur_max
	mov	cl, byte ptr [rip + print_bytes]
	cmp	rax, 2
	jb	.label_460
	mov	r12b, byte ptr [rip + print_chars]
	jmp	.label_474
.label_460:
	or	cl, byte ptr [rip + print_chars]
	and	cl, 1
	xor	r12d, r12d
.label_474:
	mov	bl, byte ptr [rip + print_linelength]
	or	bl, byte ptr [rip + print_words]
	test	cl, cl
	sete	al
	test	r12b, r12b
	setne	r15b
	or	r15b, al
	mov	al, byte ptr [rip + print_lines]
	test	al, al
	jne	.label_423
	test	bl, 1
	jne	.label_423
	test	r15b, r15b
	jne	.label_423
	xor	eax, eax
	jmp	.label_428
.label_423:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 4]
	call	fdadvise
	mov	al, byte ptr [rip + print_lines]
.label_428:
	or	al, bl
	or	al, r15b
	test	al, 1
	je	.label_438
	test	r12b, r12b
	setne	al
	or	bl, al
	test	bl, 1
	mov	qword ptr [rsp + 0x38], r13
	mov	dword ptr [rsp + 0x24], r12d
	je	.label_445
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_431
	mov	qword ptr [rsp + 0x50], 0
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_482:
	xor	ebx, ebx
	jmp	.label_433
	.section	.text
	.align	16
	#Procedure 0x4058b4
	.globl sub_4058b4
	.type sub_4058b4, @function
sub_4058b4:

	nop	word ptr cs:[rax + rax]
.label_466:
	lea	rsi, [r13 + 1]
	xor	eax, eax
	cmp	r15, 0x4000
	sete	al
	cmovne	rsi, r13
	sub	r15, rax
	lea	rdi, [rsp + 0x60]
	mov	rdx, r15
	call	memmove
	mov	rbx, r15
	jmp	.label_433
	.section	.text
	.align	16
	#Procedure 0x4058e9
	.globl sub_4058e9
	.type sub_4058e9, @function
sub_4058e9:

	nop	dword ptr [rax]
.label_486:
	mov	qword ptr [rsp + 0x50], rbp
	mov	r12b, 1
	test	r15, r15
	mov	ebx, 0
	jne	.label_466
	nop	word ptr cs:[rax + rax]
.label_433:
	lea	rsi, [rsp + rbx + 0x60]
	mov	edx, 0x4000
	sub	rdx, rbx
	mov	edi, dword ptr [rsp + 4]
	call	safe_read
	cmp	rax, -1
	je	.label_435
	mov	bpl, 1
	test	rax, rax
	je	.label_440
	add	qword ptr [rsp + 0x48], rax
	add	rbx, rax
	mov	r15, rbx
	lea	r13, [rsp + 0x60]
	jmp	.label_442
.label_457:
	movzx	ebp, byte ptr [r13]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	je	.label_432
	inc	qword ptr [rsp + 0x28]
	test	ah, 0x20
	jne	.label_429
.label_437:
	mov	r14b, 1
	jmp	.label_432
.label_448:
	cmp	eax, 0x202f
	je	.label_429
	cmp	eax, 0x2060
	je	.label_429
	jmp	.label_437
	.section	.text
	.align	16
	#Procedure 0x405996
	.globl sub_405996
	.type sub_405996, @function
sub_405996:

	nop	word ptr cs:[rax + rax]
.label_442:
	test	r12b, 1
	jne	.label_481
	movzx	eax, byte ptr [r13]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_481
	movsx	edi, al
	mov	dword ptr [rsp + 0x14], edi
	xor	eax, eax
	mov	ebx, 1
	jmp	.label_472
	.section	.text
	.align	16
	#Procedure 0x4059ce
	.globl sub_4059ce
	.type sub_4059ce, @function
sub_4059ce:

	nop	
.label_481:
	mov	rbp, qword ptr [rsp + 0x50]
	lea	rdi, [rsp + 0x14]
	mov	rsi, r13
	mov	rdx, r15
	lea	rcx, [rsp + 0x50]
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_483
	cmp	rbx, -2
	je	.label_486
	lea	rdi, [rsp + 0x50]
	call	mbsinit
	test	eax, eax
	sete	r12b
	test	rbx, rbx
	je	.label_469
	mov	al, 1
	mov	edi, dword ptr [rsp + 0x14]
.label_472:
	lea	ecx, [rdi - 9]
	cmp	ecx, 0x17
	ja	.label_430
	jmp	qword ptr [(rcx * 8) + label_425]
.label_603:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	and	eax, 7
	neg	rax
	lea	rcx, [rcx + rax + 8]
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_429
	.section	.text
	.align	16
	#Procedure 0x405a44
	.globl sub_405a44
	.type sub_405a44, @function
sub_405a44:

	nop	word ptr cs:[rax + rax]
.label_483:
	inc	r13
	dec	r15
	mov	r12b, 1
	jmp	.label_444
.label_469:
	mov	dword ptr [rsp + 0x14], 0
	xor	edi, edi
	mov	ebx, 1
	jmp	.label_453
.label_604:
	inc	qword ptr [rsp + 0x30]
.label_605:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_429
.label_430:
	test	al, al
	je	.label_457
.label_453:
	call	iswprint
	test	eax, eax
	je	.label_432
	cmp	byte ptr [rip + print_linelength],  1
	jne	.label_477
	mov	edi, dword ptr [rsp + 0x14]
	call	wcwidth
	test	eax, eax
	mov	ecx, 0
	cmovs	eax, ecx
	cdqe	
	add	qword ptr [rsp + 0x28], rax
.label_477:
	mov	edi, dword ptr [rsp + 0x14]
	call	iswspace
	test	eax, eax
	jne	.label_429
	cmp	byte ptr [rip + posixly_correct],  0
	jne	.label_437
	mov	eax, dword ptr [rsp + 0x14]
	cmp	eax, 0x202e
	jg	.label_448
	cmp	eax, 0xa0
	je	.label_429
	cmp	eax, 0x2007
	je	.label_429
	jmp	.label_437
.label_606:
	inc	qword ptr [rsp + 0x28]
	nop	dword ptr [rax + rax]
.label_429:
	and	r14b, 1
	movzx	eax, r14b
	add	qword ptr [rsp + 0x58], rax
	xor	r14d, r14d
.label_432:
	mov	rax, qword ptr [rsp + 0x18]
	add	r13, rbx
	sub	r15, rbx
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_444:
	test	r15, r15
	jne	.label_442
	jmp	.label_482
.label_438:
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jle	.label_446
	lea	rdx, [rbp + 8]
	mov	edi, 1
	mov	esi, dword ptr [rsp + 4]
	call	__fxstat
	mov	dword ptr [rbp], eax
.label_446:
	xor	r15d, r15d
	test	eax, eax
	jne	.label_452
	movzx	eax, word ptr [rbp + 0x20]
	or	eax, 0x2000
	xor	r15d, r15d
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_452
	mov	rbx, qword ptr [rbp + 0x38]
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_452
	test	r14, r14
	jns	.label_463
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp + 4]
	call	lseek
	mov	r14, rax
.label_463:
	xor	edx, edx
	mov	rax, rbx
	div	qword ptr [rip + page_size]
	test	rdx, rdx
	je	.label_470
	xor	r8d, r8d
	sub	rbx, r14
	cmovb	rbx, r8
	mov	bpl, 1
	mov	r15, rbx
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_462
.label_445:
	lea	r14, [rsp + 0x60]
	xor	r15d, r15d
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_480
.label_447:
	add	r15, r12
	mov	rcx, rbp
	sub	rcx, r13
	mov	rax, r12
	movabs	rdx, 0x8888888888888889
	mul	rdx
	shr	rdx, 3
	cmp	rcx, rdx
	setbe	bl
	mov	r13, rbp
.label_480:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r14
	call	safe_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_484
	cmp	r12, -1
	je	.label_443
	test	bl, bl
	je	.label_459
	mov	esi, 0xa
	mov	rdi, r14
	mov	rdx, r12
	call	memchr
	test	rax, rax
	mov	rbp, r13
	je	.label_447
	lea	rbx, [rsp + r12 + 0x60]
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_461:
	inc	rax
	inc	rbp
	mov	rdx, rbx
	sub	rdx, rax
	mov	esi, 0xa
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_461
	jmp	.label_447
	.section	.text
	.align	16
	#Procedure 0x405c93
	.globl sub_405c93
	.type sub_405c93, @function
sub_405c93:

	nop	word ptr cs:[rax + rax]
.label_459:
	lea	rcx, [r12 - 1]
	mov	eax, r12d
	and	eax, 7
	cmp	rcx, 7
	mov	rsi, r14
	mov	rbp, r13
	jb	.label_465
	mov	rcx, rax
	sub	rcx, r12
	mov	rdx, r14
	mov	rbp, r13
	nop	word ptr [rax + rax]
.label_475:
	xor	esi, esi
	cmp	byte ptr [rdx], 0xa
	sete	sil
	add	rsi, rbp
	xor	edi, edi
	cmp	byte ptr [rdx + 1], 0xa
	sete	dil
	add	rdi, rsi
	xor	esi, esi
	cmp	byte ptr [rdx + 2], 0xa
	sete	sil
	add	rsi, rdi
	xor	edi, edi
	cmp	byte ptr [rdx + 3], 0xa
	sete	dil
	add	rdi, rsi
	xor	esi, esi
	cmp	byte ptr [rdx + 4], 0xa
	sete	sil
	add	rsi, rdi
	xor	edi, edi
	cmp	byte ptr [rdx + 5], 0xa
	sete	dil
	add	rdi, rsi
	xor	ebx, ebx
	cmp	byte ptr [rdx + 6], 0xa
	sete	bl
	add	rbx, rdi
	xor	ebp, ebp
	cmp	byte ptr [rdx + 7], 0xa
	lea	rsi, [rdx + 8]
	sete	bpl
	add	rbp, rbx
	add	rcx, 8
	mov	rdx, rsi
	jne	.label_475
.label_465:
	test	rax, rax
	je	.label_447
	neg	rax
	nop	
.label_450:
	xor	ecx, ecx
	cmp	byte ptr [rsi], 0xa
	lea	rsi, [rsi + 1]
	sete	cl
	add	rbp, rcx
	inc	rax
	jne	.label_450
	jmp	.label_447
.label_431:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	r14, [rsp + 0x60]
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_454
	.section	.text
	.align	16
	#Procedure 0x405d89
	.globl sub_405d89
	.type sub_405d89, @function
sub_405d89:

	nop	dword ptr [rax]
.label_468:
	mov	qword ptr [rsp + 8], rcx
	mov	r15, qword ptr [rsp + 0x48]
	add	r15, qword ptr [rsp + 0x18]
	lea	r14, [rsp + 0x60]
.label_454:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r14
	call	safe_read
	cmp	rax, -1
	je	.label_471
	mov	bpl, 1
	test	rax, rax
	je	.label_473
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_464:
	movsx	eax, byte ptr [r14]
	movzx	ebp, al
	add	eax, -9
	cmp	eax, 0x17
	ja	.label_479
	jmp	qword ptr [(rax * 8) + label_485]
.label_622:
	mov	eax, r13d
	and	eax, 7
	neg	rax
	lea	r13, [r13 + rax + 8]
	jmp	.label_427
.label_623:
	inc	qword ptr [rsp + 0x30]
.label_624:
	cmp	r13, rcx
	cmova	rcx, r13
	xor	r13d, r13d
	jmp	.label_427
.label_479:
	mov	qword ptr [rsp + 8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_434
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_426
.label_625:
	inc	r13
	jmp	.label_427
.label_434:
	inc	r13
	test	ah, 0x20
	jne	.label_456
	mov	edi, ebp
	call	btowc
	cmp	byte ptr [rip + posixly_correct],  0
	je	.label_449
	mov	bl, 1
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_426
.label_449:
	cmp	eax, 0x202e
	jg	.label_478
	cmp	eax, 0xa0
	je	.label_456
	cmp	eax, 0x2007
	jmp	.label_455
.label_478:
	cmp	eax, 0x202f
	je	.label_456
	cmp	eax, 0x2060
.label_455:
	mov	rcx, qword ptr [rsp + 8]
	je	.label_427
	mov	bl, 1
	jmp	.label_426
.label_456:
	mov	rcx, qword ptr [rsp + 8]
	nop	
.label_427:
	and	bl, 1
	movzx	eax, bl
	add	r12, rax
	xor	ebx, ebx
.label_426:
	inc	r14
	dec	r15
	jne	.label_464
	jmp	.label_468
.label_484:
	xor	r12d, r12d
	xor	r14d, r14d
	mov	eax, dword ptr [rsp + 0x24]
	xor	r8d, r8d
	jmp	.label_424
.label_443:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r8d, r8d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebp, ebp
	mov	eax, dword ptr [rsp + 0x24]
.label_424:
	mov	rbx, r13
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_439
.label_435:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_440:
	mov	r8, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rax, r8
	cmova	r8, rax
	and	r14b, 1
	movzx	r14d, r14b
	add	r14, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x24]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_439
.label_471:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_473:
	mov	r8, qword ptr [rsp + 8]
	cmp	r13, r8
	cmova	r8, r13
	and	bl, 1
	movzx	r14d, bl
	add	r14, r12
	xor	r12d, r12d
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x24]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_439
.label_470:
	mov	rax, qword ptr [rbp + 0x40]
	lea	rcx, [rax + 1]
	movabs	rdx, 0x2000000000000001
	cmp	rax, rdx
	mov	edx, 0x201
	cmovae	rcx, rdx
	test	rax, rax
	cmovle	rcx, rdx
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	xor	r15d, r15d
	test	r14, r14
	js	.label_452
	sub	rbx, rdx
	mov	rbp, rbx
	sub	rbp, r14
	jle	.label_452
	mov	edx, 1
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, rbx
	call	lseek
	xor	r15d, r15d
	test	rax, rax
	cmovns	r15, rbp
.label_452:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 4]
	call	fdadvise
	lea	rbx, [rsp + 0x60]
	jmp	.label_441
	.section	.text
	.align	16
	#Procedure 0x406039
	.globl sub_406039
	.type sub_406039, @function
sub_406039:

	nop	dword ptr [rax]
.label_436:
	add	r15, rax
.label_441:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, rbx
	call	safe_read
	mov	bpl, 1
	test	rax, rax
	je	.label_451
	cmp	rax, -1
	jne	.label_436
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r8d, r8d
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	jmp	.label_462
.label_451:
	mov	eax, r12d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebx, ebx
	xor	r8d, r8d
.label_462:
	mov	r9, r13
.label_439:
	movzx	eax, al
	movzx	ecx, byte ptr [rip + print_chars]
	cmp	eax, ecx
	cmovb	r12, r15
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r15
	mov	r13, r8
	call	write_counts
	add	qword ptr [rip + total_lines],  rbx
	add	qword ptr [rip + total_words],  r14
	add	qword ptr [rip + total_chars],  r12
	add	qword ptr [rip + total_bytes],  r15
	cmp	r13, qword ptr [rip + max_line_length]
	jbe	.label_476
	mov	qword ptr [rip + max_line_length],  r13
.label_476:
	mov	eax, ebp
	add	rsp, 0x4068
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406114
	.globl sub_406114
	.type sub_406114, @function
sub_406114:

	nop	word ptr cs:[rax + rax]
.label_488:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40612c

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_488
	test	al, al
	jne	.label_488
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_487
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_491
.label_487:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_491:
	mov	r13, rax
	test	r13, r13
	je	.label_488
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [rbp + r13 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_490
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_490
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_489
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_490
.label_489:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_490:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_492:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406265
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_492
	test	rsi, rsi
	je	.label_492
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_493:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4062d5
	.globl sub_4062d5
	.type sub_4062d5, @function
sub_4062d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062db
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_494
	test	rax, rax
	je	.label_493
.label_494:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062f0

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	r14, r15
	jne	.label_495
	or	byte ptr [rbx + 0x68], 2
.label_495:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + r14]
	not	rax
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	sub	rdi, rdx
	cmp	rsi, rdi
	jbe	.label_496
	mov	qword ptr [rbx + 0x30], rcx
	mov	rax, rcx
.label_496:
	dec	r14
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_497
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_497:
	sub	r14, r15
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_498
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_498:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063bf
	.globl sub_4063bf
	.type sub_4063bf, @function
sub_4063bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4063c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x406415
	.globl sub_406415
	.type sub_406415, @function
sub_406415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406420
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
	#Procedure 0x406495
	.globl sub_406495
	.type sub_406495, @function
sub_406495:

	nop	word ptr cs:[rax + rax]
.label_503:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_505:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_502
.label_499:
	test	r14, r14
	je	.label_504
	call	abort
.label_501:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_504:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064d8
	.globl sub_4064d8
	.type sub_4064d8, @function
sub_4064d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064e0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_499
	nop	word ptr cs:[rax + rax]
.label_502:
	cmp	rsi, r14
	jae	.label_500
	cmp	qword ptr [rsi], r14
	jae	.label_501
.label_500:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_503
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_505
	.section	.text
	.align	16
	#Procedure 0x40651e
	.globl sub_40651e
	.type sub_40651e, @function
sub_40651e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406520
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
	#Procedure 0x4065e1
	.globl sub_4065e1
	.type sub_4065e1, @function
sub_4065e1:

	nop	word ptr cs:[rax + rax]
.label_508:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_506
	test	rax, rax
	je	.label_507
.label_506:
	pop	rbx
	ret	
.label_507:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406609
	.globl sub_406609
	.type sub_406609, @function
sub_406609:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406611
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_507
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_508
	test	rbx, rbx
	jne	.label_508
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406640
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_509
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_510
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_249
	mov	ecx, OFFSET FLAT:label_250
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_511
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4066b4
	.globl sub_4066b4
	.type sub_4066b4, @function
sub_4066b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066c0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_514:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_513
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_514
	cmp	rbx, 0x7ff00001
	jb	.label_513
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_514
.label_513:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406713
	.globl sub_406713
	.type sub_406713, @function
sub_406713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406720
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x40678e
	.globl sub_40678e
	.type sub_40678e, @function
sub_40678e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406790

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x406795
	.globl sub_406795
	.type sub_406795, @function
sub_406795:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406805
	.globl sub_406805
	.type sub_406805, @function
sub_406805:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406812
	.globl sub_406812
	.type sub_406812, @function
sub_406812:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406836
	.globl sub_406836
	.type sub_406836, @function
sub_406836:

	nop	word ptr cs:[rax + rax]
