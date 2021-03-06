	.section	.text
	.align	16
	#Procedure 0x401859
	.globl sub_401859
	.type sub_401859, @function
sub_401859:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40185a
	.globl sub_40185a
	.type sub_40185a, @function
sub_40185a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401892
	.globl sub_401892
	.type sub_401892, @function
sub_401892:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018fc
	.globl sub_4018fc
	.type sub_4018fc, @function
sub_4018fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40190d
	.globl sub_40190d
	.type sub_40190d, @function
sub_40190d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401926
	.globl sub_401926
	.type sub_401926, @function
sub_401926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930
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
	je	.label_10
	test	r15, r15
	je	.label_9
.label_10:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401972
	.globl sub_401972
	.type sub_401972, @function
sub_401972:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401980
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_11:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_11
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4019a1
	.globl sub_4019a1
	.type sub_4019a1, @function
sub_4019a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019b0
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
	#Procedure 0x4019e3
	.globl sub_4019e3
	.type sub_4019e3, @function
sub_4019e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_15
	test	rsi, rsi
	je	.label_15
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
.label_15:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401a5c
	.globl sub_401a5c
	.type sub_401a5c, @function
sub_401a5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_16
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_16
	test	byte ptr [rbx + 1], 1
	je	.label_16
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_16:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401a93
	.globl sub_401a93
	.type sub_401a93, @function
sub_401a93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aa0
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
	je	.label_17
	mov	qword ptr [rax], rbx
.label_17:
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
	#Procedure 0x401b8c
	.globl sub_401b8c
	.type sub_401b8c, @function
sub_401b8c:

	nop	dword ptr [rax]
.label_18:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401b96
	.globl sub_401b96
	.type sub_401b96, @function
sub_401b96:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b9b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_18
	test	rdx, rdx
	je	.label_18
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bc0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_20
	cmp	byte ptr [rax], 0x43
	jne	.label_22
	cmp	byte ptr [rax + 1], 0
	je	.label_19
.label_22:
	mov	esi, OFFSET FLAT:label_21
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_20
.label_19:
	xor	ebx, ebx
.label_20:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bf1
	.globl sub_401bf1
	.type sub_401bf1, @function
sub_401bf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c00

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_23
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_25
	mov	qword ptr [rsp], 0
.label_23:
	test	ebx, ebx
	js	.label_27
	mov	word ptr [rsp], bx
.label_27:
	test	ebp, ebp
	js	.label_24
	mov	word ptr [rsp + 2], bp
.label_24:
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5414
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_28
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_25:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, r15d
	call	error
	nop	
.label_28:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebx
	call	error
	.section	.text
	.align	16
	#Procedure 0x401cc0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_42
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_42:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_31
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_43
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_32
	test	esi, esi
	jne	.label_31
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_46
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_47
.label_31:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_29
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_32
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_35
.label_43:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_38
.label_32:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_39
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_40
.label_39:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_40:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_41:
	call	fcntl
.label_38:
	mov	ebp, eax
.label_34:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_35:
	cmp	eax, 6
	jne	.label_29
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_49
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_30
.label_29:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_33
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_37
.label_46:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_47:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_41
.label_49:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_30:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_44
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_48
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_48
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_34
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_36
.label_48:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_34
.label_33:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_37:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_38
.label_44:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_36:
	test	al, al
	je	.label_34
	test	ebp, ebp
	js	.label_34
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_45
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_34
.label_45:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_34
	.section	.text
	.align	16
	#Procedure 0x401f51
	.globl sub_401f51
	.type sub_401f51, @function
sub_401f51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x401fb4
	.globl sub_401fb4
	.type sub_401fb4, @function
sub_401fb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_50
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_51
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_50
.label_51:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_50
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_52
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_52:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_50:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x402034
	.globl sub_402034
	.type sub_402034, @function
sub_402034:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402040

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
	je	.label_53
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_69
.label_53:
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
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
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_58
	jmp	qword ptr [(r12 * 8) + label_59]
.label_937:
	add	rsp, 8
	jmp	.label_56
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
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
	jmp	.label_56
.label_938:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
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
.label_939:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
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
.label_940:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_941:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
	jmp	.label_56
.label_942:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
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
	jmp	.label_56
.label_943:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
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
	jmp	.label_56
.label_944:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	jmp	.label_56
.label_946:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
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
	jmp	.label_56
.label_945:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
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
.label_56:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402398
	.globl sub_402398
	.type sub_402398, @function
sub_402398:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0
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
	je	.label_72
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
.label_72:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402408
	.globl sub_402408
	.type sub_402408, @function
sub_402408:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402410

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_73
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_74
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402435
	.globl sub_402435
	.type sub_402435, @function
sub_402435:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_75
	test	ebx, ebx
	js	.label_75
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_76
.label_75:
	mov	eax, ebx
.label_76:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402496
	.globl sub_402496
	.type sub_402496, @function
sub_402496:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0
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
	#Procedure 0x4024b8
	.globl sub_4024b8
	.type sub_4024b8, @function
sub_4024b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_77
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_79
.label_77:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_79:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_80
	cmp	r10d, 0x29
	jae	.label_89
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_78
.label_89:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_78:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_80
	cmp	r10d, 0x29
	jae	.label_87
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_88
.label_87:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_88:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_80
	cmp	r10d, 0x29
	jae	.label_85
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_86
.label_85:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_86:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_80
	cmp	r10d, 0x29
	jae	.label_83
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_84
.label_83:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_84:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_80
	cmp	r10d, 0x29
	jae	.label_81
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_82
.label_81:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_82:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_80
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_80
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_80
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_80
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_80:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026a2
	.globl sub_4026a2
	.type sub_4026a2, @function
sub_4026a2:

	nop	word ptr cs:[rax + rax]
.label_94:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_90
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4026d0
	.globl sub_4026d0
	.type sub_4026d0, @function
sub_4026d0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026df

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_94
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_92
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_92
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_91
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_91:
	mov	rbx, r14
.label_92:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402760
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_96
	test	rdx, rdx
	je	.label_96
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_96:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027ca
	.globl sub_4027ca
	.type sub_4027ca, @function
sub_4027ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027d0
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
	#Procedure 0x402845
	.globl sub_402845
	.type sub_402845, @function
sub_402845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbx
	sub	rsp, 0xe0
	mov	rbx, rdi
	test	al, al
	je	.label_100
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0xa0], xmm4
	movaps	xmmword ptr [rsp + 0xb0], xmm5
	movaps	xmmword ptr [rsp + 0xc0], xmm6
	movaps	xmmword ptr [rsp + 0xd0], xmm7
.label_100:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x38], rsi
	lea	rax, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x14], 0x30
	mov	dword ptr [rsp + 0x10], 8
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	esi, 1
	mov	rdx, rbx
	call	__vasprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	js	.label_97
	mov	eax, dword ptr [rip + current_col]
	test	eax, eax
	jle	.label_99
	mov	esi, dword ptr [rip + max_col]
	sub	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x30]
	cmp	esi, ebx
	jge	.label_98
	cmp	rcx, rdx
	jae	.label_103
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rax
	mov	byte ptr [rcx], 0xa
	mov	dword ptr [rip + current_col],  0
	jmp	.label_99
.label_103:
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [rip + current_col],  0
	jmp	.label_99
.label_98:
	cmp	rcx, rdx
	jae	.label_101
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_102:
	inc	eax
	mov	dword ptr [rip + current_col],  eax
.label_99:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	dword ptr [rip + current_col],  ebx
	add	rsp, 0xe0
	pop	rbx
	ret	
.label_101:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + current_col]
	jmp	.label_102
.label_97:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4029aa
	.globl sub_4029aa
	.type sub_4029aa, @function
sub_4029aa:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029b0

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_105
	mov	rdi, rbx
	call	cfgetispeed
	mov	ebp, eax
	mov	rdi, rbx
	call	cfgetospeed
	cmp	ebp, eax
	jne	.label_113
.label_105:
	mov	eax, OFFSET FLAT:label_115
	mov	ebp, OFFSET FLAT:label_116
	test	r12b, r12b
	cmovne	rbp, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_111
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_114:
	cmp	dword ptr [rdx], eax
	je	.label_110
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_112
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_114
	jmp	.label_120
.label_113:
	mov	eax, OFFSET FLAT:label_121
	mov	r14d, OFFSET FLAT:label_122
	test	r12b, r12b
	cmovne	r14, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_111
	xor	r15d, r15d
.label_106:
	cmp	dword ptr [rdx], eax
	je	.label_117
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_124
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_106
	jmp	.label_118
.label_110:
	dec	rcx
.label_112:
	lea	rax, [rcx + rcx*2]
	mov	rsi, qword ptr [(rax * 8) + label_109]
.label_120:
	xor	eax, eax
	mov	rdi, rbp
	call	wrapf
	jmp	.label_104
.label_117:
	dec	rcx
.label_124:
	lea	rax, [rcx + rcx*2]
	mov	r15, qword ptr [(rax * 8) + label_109]
.label_118:
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	esi, OFFSET FLAT:label_111
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_108:
	cmp	dword ptr [rsi], eax
	je	.label_125
	cmp	dword ptr [rsi + 0x18], eax
	je	.label_107
	add	rcx, 2
	add	rsi, 0x30
	cmp	rcx, 0x23
	jne	.label_108
	jmp	.label_123
.label_125:
	dec	rcx
.label_107:
	lea	rax, [rcx + rcx*2]
	mov	rdx, qword ptr [(rax * 8) + label_109]
.label_123:
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	call	wrapf
.label_104:
	test	r12b, r12b
	jne	.label_119
	mov	dword ptr [rip + current_col],  0
.label_119:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402afd
	.globl sub_402afd
	.type sub_402afd, @function
sub_402afd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b00
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402b0e
	.globl sub_402b0e
	.type sub_402b0e, @function
sub_402b0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b10

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
	js	.label_129
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_132
	cmp	r12d, 0x7fffffff
	je	.label_127
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
	jne	.label_130
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_130:
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
.label_132:
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
	jbe	.label_128
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_131
.label_128:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_126
	mov	rdi, r14
	call	free
.label_126:
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
.label_131:
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
.label_129:
	call	abort
.label_127:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ccd
	.globl sub_402ccd
	.type sub_402ccd, @function
sub_402ccd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402cd0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x402d3e
	.globl sub_402d3e
	.type sub_402d3e, @function
sub_402d3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402d40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d48
	.globl sub_402d48
	.type sub_402d48, @function
sub_402d48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x402dbf
	.globl sub_402dbf
	.type sub_402dbf, @function
sub_402dbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402dc0
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
	#Procedure 0x402e81
	.globl sub_402e81
	.type sub_402e81, @function
sub_402e81:

	nop	word ptr cs:[rax + rax]
.label_139:
	test	rcx, rcx
	jne	.label_136
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_136:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_137
.label_138:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_133
	test	rbx, rbx
	jne	.label_133
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_133:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_134
	test	rax, rax
	je	.label_135
.label_134:
	pop	rbx
	ret	
.label_137:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ef5
	.globl sub_402ef5
	.type sub_402ef5, @function
sub_402ef5:

	nop	word ptr [rax + rax]
.label_135:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402f03
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_139
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_135
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x402f30

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_140
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_140:
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
	#Procedure 0x402fb3
	.globl sub_402fb3
	.type sub_402fb3, @function
sub_402fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebp, edi
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_141
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	jne	.label_142
	test	bpl, bpl
	jne	.label_145
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_141:
	mov	eax, OFFSET FLAT:label_143
	mov	edi, OFFSET FLAT:label_144
	test	bpl, bpl
	cmovne	rdi, rax
	movzx	esi, word ptr [rsp + 8]
	movzx	edx, word ptr [rsp + 0xa]
	xor	eax, eax
	call	wrapf
	test	bpl, bpl
	jne	.label_145
	mov	dword ptr [rip + current_col],  0
.label_145:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_142:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4030c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_148
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_149
	test	rbx, rbx
	jne	.label_149
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_149:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_150
	test	rax, rax
	je	.label_148
.label_150:
	pop	rbx
	ret	
.label_148:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403108
	.globl sub_403108
	.type sub_403108, @function
sub_403108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403110

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
	je	.label_151
	test	r15, r15
	je	.label_152
.label_151:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_152:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40314c
	.globl sub_40314c
	.type sub_40314c, @function
sub_40314c:

	nop	dword ptr [rax]
.label_157:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_154
	.section	.text
	.align	16
	#Procedure 0x40315d

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_155
	cmp	eax, 1
	je	.label_157
	cmp	eax, 3
	jne	.label_158
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_154
.label_158:
	call	__errno_location
	jmp	.label_154
.label_159:
	mov	dword ptr [rax], 0x22
.label_154:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_153
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_156:
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
	#Procedure 0x4031f7
	.globl sub_4031f7
	.type sub_4031f7, @function
sub_4031f7:

	nop	dword ptr [rax + rax]
.label_155:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_160
	cmp	rbx, r15
	jbe	.label_156
.label_160:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_159
	mov	dword ptr [rax], 0x4b
	jmp	.label_154
	.section	.text
	.align	16
	#Procedure 0x403220
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_161
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_163:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_163
.label_161:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_164
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_165], OFFSET FLAT:slot0
.label_164:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_162
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_162:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032b1
	.globl sub_4032b1
	.type sub_4032b1, @function
sub_4032b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032c0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4032d1
	.globl sub_4032d1
	.type sub_4032d1, @function
sub_4032d1:

	nop	word ptr cs:[rax + rax]
.label_224:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
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
	#Procedure 0x403318

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_224
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
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
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	cmp	dword ptr [rip + tcsetattr_options],  1
	jne	.label_215
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	jmp	.label_262
.label_215:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
.label_262:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
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
	mov	esi, OFFSET FLAT:label_250
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
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
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
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
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
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_213
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_190
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_187
	mov	ecx, OFFSET FLAT:label_188
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
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
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_265
	mov	ecx, OFFSET FLAT:label_266
	mov	r8d, OFFSET FLAT:label_267
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_174
	mov	ecx, OFFSET FLAT:label_175
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_184
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_175
	mov	ecx, OFFSET FLAT:label_197
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_197
	mov	ecx, OFFSET FLAT:label_205
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403ee4
	.globl sub_403ee4
	.type sub_403ee4, @function
sub_403ee4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0
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
	je	.label_276
	test	r14, r14
	je	.label_275
.label_276:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_275:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f26
	.globl sub_403f26
	.type sub_403f26, @function
sub_403f26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f30

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x60], r9
	mov	r13, r8
	mov	ebx, ecx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x1c], edi
	cmp	ebx, 2
	jl	.label_381
	lea	rax, [r13 + 8]
	mov	qword ptr [rsp + 0x38], rax
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 0xc]
	mov	qword ptr [rsp + 0x40], rax
	lea	eax, [rbx - 1]
	mov	dword ptr [rsp + 0x2c], eax
	mov	r15d, 1
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_295
.label_390:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	je	.label_412
	and	eax, 0xfffffccf
	or	eax, 0x120
	mov	dword ptr [rcx], eax
	jmp	.label_287
.label_400:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_422
.label_412:
	and	eax, 0xfffffecf
	or	eax, 0x30
	mov	dword ptr [rcx], eax
	jmp	.label_287
.label_404:
	cmp	byte ptr [r13 + 1], 0x6b
	jne	.label_409
	cmp	byte ptr [r13 + 2], 0
	je	.label_430
.label_409:
	mov	esi, OFFSET FLAT:label_431
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_434
	mov	esi, OFFSET FLAT:label_436
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_281
	mov	esi, OFFSET FLAT:label_284
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_289
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_296
	cmp	bl, 0x72
	jne	.label_302
	cmp	byte ptr [r13 + 1], 0x61
	jne	.label_302
	cmp	byte ptr [r13 + 2], 0x77
	jne	.label_302
	cmp	byte ptr [r13 + 3], 0
	je	.label_311
.label_302:
	mov	esi, OFFSET FLAT:label_316
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_311
	mov	esi, OFFSET FLAT:label_321
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_324
	mov	esi, OFFSET FLAT:label_327
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_330
	mov	esi, OFFSET FLAT:label_332
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_315
	mov	esi, OFFSET FLAT:label_341
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_315
	mov	al, 1
	cmp	bl, 0x64
	je	.label_339
	cmp	bl, 0x63
	jne	.label_353
	cmp	byte ptr [r13 + 1], 0x72
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_357
	cmp	byte ptr [r13 + 2], 0x74
	jne	.label_294
	cmp	byte ptr [r13 + 3], 0
	je	.label_417
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_277
.label_434:
	mov	r13, qword ptr [rsp + 0x10]
	mov	byte ptr [r13 + 0x1c], 0
	mov	byte ptr [r13 + 0x21], 0
	mov	word ptr [r13 + 0x19], 0x1311
	mov	byte ptr [r13 + 0x1b], 0x1a
	mov	byte ptr [r13 + 0x1d], 0x12
	mov	byte ptr [r13 + 0x1f], 0x17
	mov	byte ptr [r13 + 0x20], 0x16
	mov	byte ptr [r13 + 0x1e], 0xf
	movabs	rax, 0x10004157f1c03
	mov	qword ptr [r13 + 0x11], rax
	mov	rcx, -0xb20
	mov	rbx, qword ptr [rsp + 8]
	nop	
.label_349:
	movsx	eax, byte ptr [rcx + label_371]
	test	al, 0x10
	jne	.label_312
	test	al, 1
	jne	.label_303
	test	al, 2
	je	.label_312
	mov	edx, dword ptr [rcx + label_374]
	cmp	rdx, 4
	ja	.label_435
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_362]
.label_1055:
	test	r13, r13
	mov	rax, r13
	jne	.label_406
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x404194
	.globl sub_404194
	.type sub_404194, @function
sub_404194:

	nop	word ptr cs:[rax + rax]
.label_303:
	mov	edx, dword ptr [rcx + label_374]
	cmp	rdx, 4
	ja	.label_416
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_291]
.label_898:
	test	r13, r13
	mov	rax, r13
	jne	.label_347
	jmp	.label_426
.label_899:
	mov	rax, qword ptr [rsp + 0x50]
	jmp	.label_347
.label_900:
	mov	rax, qword ptr [rsp + 0x40]
.label_347:
	mov	edx, dword ptr [rcx + label_299]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rax]
	or	edx, dword ptr [rcx + label_300]
	mov	dword ptr [rax], edx
	jmp	.label_312
.label_1056:
	mov	rax, qword ptr [rsp + 0x50]
	jmp	.label_406
.label_1057:
	mov	rax, qword ptr [rsp + 0x40]
.label_406:
	mov	edx, dword ptr [rcx + label_299]
	mov	edi, 0xffffffff
	xor	edx, edi
	and	edx, dword ptr [rax]
	mov	esi, dword ptr [rcx + label_300]
	xor	esi, edi
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	word ptr cs:[rax + rax]
.label_312:
	add	rcx, 0x20
	mov	al, 1
	jne	.label_349
	jmp	.label_277
.label_422:
	and	eax, 0xfffffccf
	or	eax, 0x320
	mov	dword ptr [rcx], eax
	jmp	.label_287
.label_281:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_305
	or	eax, 2
	jmp	.label_313
.label_289:
	mov	rax, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_317
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	mov	al, 1
	jmp	.label_344
.label_305:
	and	eax, 0xfffffffd
.label_313:
	mov	dword ptr [rcx], eax
	mov	al, 1
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_277
.label_296:
	mov	rax, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_410
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	or	byte ptr [r13 + 4], 1
	mov	al, 1
	jmp	.label_344
.label_317:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	mov	al, 1
	jmp	.label_344
.label_430:
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [r13 + 0x13], 0x157f
	mov	al, 1
	jmp	.label_344
.label_311:
	cmp	bl, 0x72
	setne	cl
	cmp	r12b, 0x2d
	sete	al
	setne	dl
	or	dl, cl
	cmp	bl, 0x63
	setne	cl
	cmp	dl, 1
	jne	.label_367
	or	al, cl
	je	.label_367
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13], 0
	and	byte ptr [r13 + 4], 0xfe
	and	byte ptr [r13 + 0xc], 0xf8
	mov	word ptr [r13 + 0x16], 0x100
	mov	al, 1
	jmp	.label_344
.label_410:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	and	byte ptr [r13 + 4], 0xfe
	mov	al, 1
	jmp	.label_344
.label_420:
	and	eax, 0xfffffeff
	mov	dword ptr [r13], eax
	and	byte ptr [r13 + 4], 0xfb
	mov	al, 1
	jmp	.label_344
.label_324:
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_399
	or	eax, 0x800
	jmp	.label_403
.label_367:
	mov	r13, qword ptr [rsp + 0x10]
	or	dword ptr [r13], 0x526
	or	byte ptr [r13 + 4], 1
	or	byte ptr [r13 + 0xc], 3
	mov	al, 1
	jmp	.label_344
.label_315:
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax]
	cmp	r12b, 0x2d
	jne	.label_418
	and	eax, 0xfffffffb
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	and	byte ptr [r13 + 1], 0xfd
	and	byte ptr [r13 + 4], 0xfd
	mov	al, 1
	jmp	.label_344
.label_330:
	mov	rcx, qword ptr [rsp + 0x50]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_361
	or	eax, 0x1800
	mov	dword ptr [rcx], eax
	jmp	.label_287
.label_399:
	and	eax, 0xfffff7ff
.label_403:
	mov	dword ptr [r13], eax
	mov	al, 1
	jmp	.label_344
.label_418:
	or	eax, 4
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	or	byte ptr [r13 + 1], 2
	or	byte ptr [r13 + 4], 2
	mov	al, 1
	jmp	.label_344
.label_361:
	and	eax, 0xffffe7ff
	mov	dword ptr [rcx], eax
	jmp	.label_287
.label_339:
	cmp	byte ptr [r13 + 1], 0x65
	jne	.label_353
	cmp	byte ptr [r13 + 2], 0x63
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_294
	cmp	byte ptr [r13 + 3], 0
	je	.label_392
.label_357:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_277
.label_294:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_277
.label_354:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_314
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_314
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_306
	mov	rbx, -0x330
.label_337:
	mov	rsi, qword ptr [rbx + label_329]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_423
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_337
	jmp	.label_343
.label_342:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_314
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_314
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_290
	mov	rbx, -0x330
.label_368:
	mov	rsi, qword ptr [rbx + label_329]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_365
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_368
	jmp	.label_298
.label_292:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_314
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_314
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_290
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_328
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	edi, 0xffffffff
	mov	esi, eax
	jmp	.label_366
.label_350:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_314
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_314
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_290
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_328
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	esi, 0xffffffff
	mov	edi, eax
.label_366:
	mov	rdx, qword ptr [rsp + 0x58]
	call	set_window_size
	jmp	.label_290
.label_417:
	mov	rcx, qword ptr [rsp + 0x40]
	or	dword ptr [rcx], 0xa10
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_277
.label_392:
	mov	r13, qword ptr [rsp + 0x10]
	mov	byte ptr [r13 + 0x11], 3
	mov	byte ptr [r13 + 0x13], 0x7f
	mov	byte ptr [r13 + 0x14], 0x15
	or	dword ptr [r13 + 0xc], 0xa10
	and	byte ptr [r13 + 1], 0xf7
	jmp	.label_277
.label_423:
	mov	esi, dword ptr [rbx + label_279]
.label_343:
	mov	rdi, r13
	call	cfsetispeed
	jmp	.label_297
.label_365:
	mov	esi, dword ptr [rbx + label_279]
.label_298:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
.label_356:
	call	cfsetospeed
.label_297:
	mov	rax, qword ptr [rsp + 0x60]
	mov	byte ptr [rax], 1
	jmp	.label_308
.label_280:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_290
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_402
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_326
.label_402:
	mov	edi, OFFSET FLAT:label_325
	call	getenv
	test	rax, rax
	je	.label_307
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_73
	mov	rdi, rax
	lea	rcx, [rsp + 0x48]
	call	xstrtol
	test	eax, eax
	jne	.label_307
	mov	rax, qword ptr [rsp + 0x48]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_326
.label_307:
	mov	qword ptr [rsp + 0x48], 0x50
	mov	eax, 0x50
.label_326:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x58]
	call	display_window_size
	jmp	.label_290
.label_373:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_314
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + rbp*8 + 8]
	test	r13, r13
	je	.label_314
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_328
	mov	rdi, r13
	mov	r9, rax
	call	xnumtoumax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + 0x10], al
	movzx	ecx, al
	cmp	rcx, rax
	je	.label_385
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_385:
	inc	r15d
	jmp	.label_308
.label_369:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_290
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_421
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_411
.label_421:
	mov	edi, OFFSET FLAT:label_325
	call	getenv
	test	rax, rax
	je	.label_429
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_73
	mov	rdi, rax
	lea	rcx, [rsp + 0x48]
	call	xstrtol
	test	eax, eax
	jne	.label_429
	mov	rax, qword ptr [rsp + 0x48]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_411
.label_429:
	mov	qword ptr [rsp + 0x48], 0x50
	mov	eax, 0x50
.label_411:
	mov	dword ptr [rip + max_col],  eax
	xor	esi, esi
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	call	display_speed
	jmp	.label_290
.label_388:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_290
	mov	rbx, -0x330
.label_424:
	mov	rsi, qword ptr [rbx + label_329]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_415
	add	rbx, 0x18
	mov	ebp, 0xffffffff
	jne	.label_424
	jmp	.label_288
.label_415:
	mov	ebp, dword ptr [rbx + label_279]
.label_288:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	call	cfsetispeed
	mov	rdi, r13
	mov	esi, ebp
	jmp	.label_356
	.section	.text
	.align	16
	#Procedure 0x404875
	.globl sub_404875
	.type sub_404875, @function
sub_404875:

	nop	word ptr cs:[rax + rax]
.label_295:
	movsxd	rbp, r15d
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	je	.label_306
	mov	r12b, byte ptr [rax]
	lea	r14, [rax + 1]
	cmp	r12b, 0x2d
	cmovne	r14, rax
	mov	esi, OFFSET FLAT:label_331
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_345
	mov	rbx, -0xb20
	nop	dword ptr [rax]
.label_358:
	mov	r13, qword ptr [rbx + label_348]
	mov	rdi, r14
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	je	.label_355
	add	rbx, 0x20
	jne	.label_358
	xor	eax, eax
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_359
	.section	.text
	.align	16
	#Procedure 0x4048ed
	.globl sub_4048ed
	.type sub_4048ed, @function
sub_4048ed:

	nop	dword ptr [rax]
.label_345:
	xor	eax, eax
	cmp	r12b, 0x2d
	setne	al
	mov	dword ptr [rip + tcsetattr_options],  eax
	jmp	.label_306
.label_355:
	cmp	r12b, 0x2d
	jne	.label_370
	test	byte ptr [rbx + label_371],  4
	jne	.label_370
	xor	eax, eax
	jmp	.label_353
.label_370:
	mov	ecx, dword ptr [rbx + label_374]
	cmp	rcx, 4
	ja	.label_375
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rcx * 8) + label_379]
.label_1027:
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_383
.label_1030:
	mov	esi, OFFSET FLAT:label_386
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_390
	mov	esi, OFFSET FLAT:label_427
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_390
	mov	esi, OFFSET FLAT:label_398
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_400
	mov	bl, byte ptr [r13]
	cmp	bl, 0x65
	je	.label_404
	cmp	bl, 0x6e
	jne	.label_409
	cmp	byte ptr [r13 + 1], 0x6c
	jne	.label_409
	cmp	byte ptr [r13 + 2], 0
	jne	.label_409
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_420
	and	eax, 0xfffffe3f
	or	eax, 0x100
	mov	dword ptr [r13], eax
	mov	eax, dword ptr [r13 + 4]
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r13 + 4], eax
	mov	al, 1
	jmp	.label_344
.label_1029:
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_383
.label_1028:
	mov	rax, qword ptr [rsp + 0x50]
.label_383:
	mov	edx, dword ptr [rax]
	mov	rcx, qword ptr [rbx + label_299]
	not	rcx
	and	rcx, rdx
	mov	rdx, qword ptr [rbx + label_300]
	cmp	r12b, 0x2d
	jne	.label_301
	mov	esi, 0xffffffff
	xor	edx, esi
	and	ecx, edx
	jmp	.label_282
.label_301:
	or	ecx, edx
.label_282:
	mov	dword ptr [rax], ecx
.label_287:
	mov	al, 1
.label_353:
	mov	r13, qword ptr [rsp + 0x10]
.label_344:
	mov	rbx, qword ptr [rsp + 8]
.label_277:
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 1
.label_359:
	cmp	r12b, 0x2d
	setne	cl
	test	al, al
	jne	.label_377
	test	cl, cl
	je	.label_395
.label_377:
	test	al, al
	jne	.label_306
	mov	esi, OFFSET FLAT:label_285
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_285
	mov	r12d, 0
	je	.label_286
	mov	esi, OFFSET FLAT:label_322
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_322
	mov	r12d, 1
	je	.label_286
	mov	esi, OFFSET FLAT:label_333
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_333
	mov	r12d, 2
	je	.label_286
	mov	esi, OFFSET FLAT:label_340
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_340
	mov	r12d, 3
	je	.label_286
	mov	esi, OFFSET FLAT:label_352
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_352
	mov	r12d, 4
	je	.label_286
	mov	esi, OFFSET FLAT:label_363
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_363
	mov	r12d, 5
	je	.label_286
	mov	esi, OFFSET FLAT:label_372
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_372
	mov	r12d, 6
	je	.label_286
	mov	esi, OFFSET FLAT:label_380
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_380
	mov	r12d, 7
	je	.label_286
	mov	esi, OFFSET FLAT:label_389
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_389
	mov	r12d, 8
	je	.label_286
	mov	esi, OFFSET FLAT:label_396
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_396
	mov	r12d, 9
	je	.label_286
	mov	esi, OFFSET FLAT:label_407
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_407
	mov	r12d, 0xa
	je	.label_286
	mov	esi, OFFSET FLAT:label_419
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_419
	mov	r12d, 0xb
	je	.label_286
	mov	esi, OFFSET FLAT:label_428
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_428
	mov	r12d, 0xc
	je	.label_286
	mov	esi, OFFSET FLAT:label_433
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_433
	mov	r12d, 0xd
	je	.label_286
	mov	esi, OFFSET FLAT:label_283
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_283
	mov	r12d, 0xe
	je	.label_286
	mov	esi, OFFSET FLAT:label_293
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_293
	mov	r12d, 0xf
	je	.label_286
	mov	esi, OFFSET FLAT:label_382
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_382
	mov	r12d, 0x10
	je	.label_286
	mov	esi, OFFSET FLAT:label_323
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_323
	mov	r12d, 0x11
	je	.label_286
	mov	esi, OFFSET FLAT:label_346
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_354
	mov	esi, OFFSET FLAT:label_425
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_342
	mov	esi, OFFSET FLAT:label_414
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_350
	mov	esi, OFFSET FLAT:label_351
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_292
	mov	esi, OFFSET FLAT:label_384
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_292
	mov	esi, OFFSET FLAT:label_364
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_280
	mov	esi, OFFSET FLAT:label_401
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_373
	mov	esi, OFFSET FLAT:label_376
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_369
	mov	rbx, -0x330
.label_432:
	mov	rsi, qword ptr [rbx + label_329]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_388
	add	rbx, 0x18
	jne	.label_432
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x70], rax
	cmp	dword ptr [r13], 0
	jne	.label_304
	mov	rcx, qword ptr [rsp + 0x70]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_304
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, r14
	je	.label_304
	cmp	byte ptr [rbx], 0x3a
	jne	.label_304
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x68], rax
	cmp	dword ptr [r13], 0
	jne	.label_304
	mov	rcx, qword ptr [rsp + 0x68]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_304
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	je	.label_304
	cmp	byte ptr [rbp], 0x3a
	jne	.label_304
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	r12, rax
	cmp	dword ptr [r13], 0
	jne	.label_304
	mov	rcx, r12
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_304
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	je	.label_304
	cmp	byte ptr [rbx], 0x3a
	jne	.label_304
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_304
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_304
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbx
	je	.label_304
	cmp	byte ptr [rcx], 0x3a
	jne	.label_304
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	dword ptr [rdx], esi
	mov	rsi, qword ptr [rsp + 0x68]
	mov	dword ptr [rdx + 4], esi
	mov	dword ptr [rdx + 8], r12d
	mov	dword ptr [rdx + 0xc], eax
	xor	ebx, ebx
.label_360:
	mov	rbp, rcx
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_304
	cmp	rbx, 0x1f
	mov	dl, 0x3a
	jne	.label_338
	xor	edx, edx
.label_338:
	movzx	ecx, al
	cmp	rcx, rax
	jne	.label_304
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbp
	je	.label_304
	cmp	byte ptr [rcx], dl
	jne	.label_304
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rbx + 0x11], al
	inc	rbx
	cmp	rbx, 0x20
	jb	.label_360
	jmp	.label_308
.label_286:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_314
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_314
	cmp	byte ptr [rdi], 0x6d
	jne	.label_387
	cmp	byte ptr [rdi + 1], 0x69
	jne	.label_387
	cmp	byte ptr [rdi + 2], 0x6e
	jne	.label_387
	cmp	byte ptr [rdi + 3], 0
	je	.label_393
.label_387:
	mov	esi, OFFSET FLAT:label_323
	call	strcmp
	test	eax, eax
	je	.label_393
	movzx	ebx, byte ptr [rbp]
	test	rbx, rbx
	je	.label_397
	movzx	r14d, byte ptr [rbp + 1]
	test	r14, r14
	je	.label_397
	cmp	bl, 0x5e
	jne	.label_405
	cmp	r14b, 0x2d
	jne	.label_405
	cmp	byte ptr [rbp + 2], 0
	mov	eax, 0
	je	.label_394
.label_405:
	mov	esi, OFFSET FLAT:label_413
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_394
	cmp	bl, 0x5e
	jne	.label_393
	cmp	r14b, 0x3f
	mov	eax, 0x7f
	je	.label_394
	and	r14d, 0x9f
	mov	rax, r14
	jmp	.label_394
.label_393:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0xff
	mov	r8d, OFFSET FLAT:label_328
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	jmp	.label_394
.label_397:
	mov	rax, rbx
.label_394:
	inc	r15d
	lea	rcx, [r12 + r12*2]
	mov	rcx, qword ptr [(rcx * 8) + label_278]
	mov	byte ptr [r13 + rcx + 0x11], al
.label_308:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 1
.label_290:
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_306:
	inc	r15d
	cmp	r15d, ebx
	jl	.label_295
.label_381:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	dec	r14
	jmp	.label_318
.label_314:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
.label_378:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_318:
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_375:
	call	abort
.label_426:
	mov	edi, OFFSET FLAT:label_334
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:label_336
	call	__assert_fail
.label_416:
	call	abort
.label_408:
	mov	edi, OFFSET FLAT:label_334
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 0x8d1
	mov	ecx, OFFSET FLAT:label_336
	call	__assert_fail
.label_435:
	call	abort
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	jmp	.label_378
	.section	.text
	.align	16
	#Procedure 0x4050e5
	.globl sub_4050e5
	.type sub_4050e5, @function
sub_4050e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0
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
	#Procedure 0x405108
	.globl sub_405108
	.type sub_405108, @function
sub_405108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_438
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_174
	mov	ecx, OFFSET FLAT:label_175
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405184
	.globl sub_405184
	.type sub_405184, @function
sub_405184:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190
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
	je	.label_441
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
.label_441:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4051f1
	.globl sub_4051f1
	.type sub_4051f1, @function
sub_4051f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x405255
	.globl sub_405255
	.type sub_405255, @function
sub_405255:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260
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
	#Procedure 0x405296
	.globl sub_405296
	.type sub_405296, @function
sub_405296:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052a0

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
	je	.label_442
	cmp	r15, -2
	jb	.label_442
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_442
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_442:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052f6
	.globl sub_4052f6
	.type sub_4052f6, @function
sub_4052f6:

	nop	word ptr cs:[rax + rax]
.label_443:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405305
	.globl sub_405305
	.type sub_405305, @function
sub_405305:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40530b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_444
	test	rax, rax
	je	.label_443
.label_444:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405320
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_445
	test	rsi, rsi
	je	.label_445
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_445:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405390

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
	jne	.label_447
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_446
	test	cl, cl
	jne	.label_446
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_446
.label_447:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_446
	call	__errno_location
	mov	dword ptr [rax], 0
.label_446:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053f0
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
	je	.label_448
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
.label_448:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405458
	.globl sub_405458
	.type sub_405458, @function
sub_405458:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460

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
	jae	.label_460
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_457:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_457
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_449
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
	je	.label_463
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_470
	cmp	eax, 0x22
	jne	.label_449
	mov	ebp, 1
.label_470:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_453
	jmp	.label_454
.label_463:
	test	r14, r14
	je	.label_449
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_449
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_449
.label_453:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_454
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_455
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_452
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_452
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_452
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_459
	cmp	eax, 0x44
	je	.label_459
	cmp	eax, 0x69
	jne	.label_452
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_452
.label_459:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_452:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_455
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_451]
.label_919:
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
	jmp	.label_461
.label_455:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_462
.label_920:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_465
.label_921:
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
	jmp	.label_456
.label_923:
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
	jmp	.label_464
.label_917:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_458
.label_918:
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
	jmp	.label_456
.label_922:
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
.label_464:
	or	dl, r10b
.label_461:
	or	dl, bl
.label_456:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_450
.label_924:
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
	jmp	.label_466
.label_925:
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
.label_466:
	movzx	eax, dl
.label_465:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_450
.label_926:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_458:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_450
.label_927:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_450:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_454:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_462:
	mov	r13d, r15d
.label_449:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_460:
	mov	edi, OFFSET FLAT:label_467
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_469
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405a91
	.globl sub_405a91
	.type sub_405a91, @function
sub_405a91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405aa0
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ac3
	.globl sub_405ac3
	.type sub_405ac3, @function
sub_405ac3:

	nop	word ptr cs:[rax + rax]
.label_471:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405ad5
	.globl sub_405ad5
	.type sub_405ad5, @function
sub_405ad5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405adb

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_472
	test	rax, rax
	je	.label_471
.label_472:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405af0
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
	#Procedure 0x405aff
	.globl sub_405aff
	.type sub_405aff, @function
sub_405aff:

	nop	
.label_473:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405b05
	.globl sub_405b05
	.type sub_405b05, @function
sub_405b05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b0f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_473
	call	rpl_calloc
	test	rax, rax
	je	.label_473
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_73
	call	setlocale
	mov	edi, OFFSET FLAT:label_490
	mov	esi, OFFSET FLAT:label_491
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_490
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + opterr],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	ebp, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_509
.label_519:
	mov	ebp, r12d
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r12, rbx
	mov	ebx, eax
	jmp	.label_509
	.section	.text
	.align	16
	#Procedure 0x405bbe
	.globl sub_405bbe
	.type sub_405bbe, @function
sub_405bbe:

	nop	
.label_550:
	test	rax, rax
	je	.label_519
	neg	rax
	nop	dword ptr [rax + rax]
.label_592:
	inc	r12
	inc	rax
	jne	.label_592
	jmp	.label_519
	.section	.text
	.align	16
	#Procedure 0x405bda
	.globl sub_405bda
	.type sub_405bda, @function
sub_405bda:

	nop	word ptr [rax + rax]
.label_509:
	mov	edi, dword ptr [rsp + 0x1c]
	sub	edi, r15d
	movsxd	rax, r15d
	lea	rsi, [r12 + rax*8]
	mov	edx, OFFSET FLAT:label_596
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_474
	cmp	eax, -1
	je	.label_478
	cmp	eax, 0xffffff7d
	je	.label_480
	cmp	eax, 0xffffff7e
	jne	.label_484
	jmp	.label_536
	.section	.text
	.align	16
	#Procedure 0x405c25
	.globl sub_405c25
	.type sub_405c25, @function
sub_405c25:

	nop	word ptr cs:[rax + rax]
.label_474:
	cmp	eax, 0x46
	je	.label_492
	cmp	eax, 0x61
	je	.label_497
	cmp	eax, 0x67
	jne	.label_484
	mov	ebx, 2
	mov	r13b, 1
	jmp	.label_499
	.section	.text
	.align	16
	#Procedure 0x405c49
	.globl sub_405c49
	.type sub_405c49, @function
sub_405c49:

	nop	dword ptr [rax]
.label_484:
	add	r15d, ebp
	movsxd	rax, r15d
	mov	rbp, qword ptr [r12 + rax*8]
	mov	esi, OFFSET FLAT:label_505
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_513
	mov	esi, OFFSET FLAT:label_331
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_513
	mov	dword ptr [rsp + 0x18], 0
.label_513:
	mov	dword ptr [rip + optind],  0
	mov	ebp, 1
	jmp	.label_499
.label_492:
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_526
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_499
.label_497:
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	ebx, 1
.label_499:
	movsxd	r14, dword ptr [rip + optind]
	cmp	ebp, r14d
	jge	.label_509
	mov	rcx, r12
	mov	dword ptr [rsp + 0x2c], ebx
	movsxd	r12, ebp
	movsxd	rax, r15d
	add	rax, r12
	mov	rbx, rcx
	lea	rdi, [rcx + rax*8]
	lea	rdx, [r12 + 1]
	cmp	rdx, r14
	cmovl	rdx, r14
	sub	rdx, r12
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	eax, r14d
	sub	eax, ebp
	lea	rcx, [r14 - 1]
	sub	rcx, r12
	and	eax, 7
	cmp	rcx, 7
	jb	.label_550
	sub	r14, rax
	nop	dword ptr [rax + rax]
.label_562:
	add	r12, 8
	cmp	r14, r12
	jne	.label_562
	jmp	.label_550
.label_478:
	mov	r14d, ebx
	mov	eax, r13d
	mov	rbx, qword ptr [rsp + 0x30]
	and	al, bl
	test	al, 1
	jne	.label_565
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_570
	mov	eax, ebx
	or	al, r13b
	and	al, 1
	jne	.label_571
.label_570:
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_573
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_538
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_573:
	mov	eax, dword ptr [rsp + 0x18]
	or	r13b, al
	or	r13b, bl
	and	r13b, 1
	jne	.label_575
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
.label_575:
	test	rbp, rbp
	mov	ebx, r14d
	je	.label_569
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rsi, r15
	call	fd_reopen
	test	eax, eax
	js	.label_482
	xor	edi, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_475
	and	ecx, 0xfffff7ff
	xor	edi, edi
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_475
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	jne	.label_482
	test	r13b, r13b
	jne	.label_532
	mov	byte ptr [rsp + 0x16], 0
	mov	byte ptr [rsp + 0x17], 0
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_528
	mov	esi, dword ptr [rip + tcsetattr_options]
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	call	tcsetattr
	test	eax, eax
	jne	.label_482
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	jne	.label_482
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_528
	and	dword ptr [rip + label_529],  0xeff0ffff
	cmp	byte ptr [rsp + 0x16], 0
	jne	.label_530
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_528
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_540
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_532:
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_563
	movzx	eax, word ptr [rsp + 0x42]
	test	eax, eax
	jne	.label_564
.label_563:
	mov	edi, OFFSET FLAT:label_325
	call	getenv
	test	rax, rax
	je	.label_567
	lea	rcx, [rsp + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_73
	mov	rdi, rax
	call	xstrtol
	test	eax, eax
	jne	.label_567
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_564
.label_567:
	mov	qword ptr [rsp + 0x38], 0x50
	mov	eax, 0x50
.label_564:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	cmp	ebx, 2
	je	.label_576
	cmp	ebx, 1
	je	.label_584
	test	ebx, ebx
	jne	.label_528
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	movzx	esi, byte ptr [rip + label_585]
	mov	edi, OFFSET FLAT:label_586
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_590
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_595:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
	mov	ebp, OFFSET FLAT:label_278
	jmp	.label_597
	.section	.text
	.align	16
	#Procedure 0x405ffb
	.globl sub_405ffb
	.type sub_405ffb, @function
sub_405ffb:

	nop	dword ptr [rax + rax]
.label_504:
	add	rbp, 0x18
.label_597:
	mov	r15, qword ptr [rbp - 0x10]
	cmp	byte ptr [r15], 0x6d
	jne	.label_477
	cmp	byte ptr [r15 + 1], 0x69
	jne	.label_477
	cmp	byte ptr [r15 + 2], 0x6e
	jne	.label_477
	cmp	byte ptr [r15 + 3], 0
	je	.label_485
	nop	word ptr [rax + rax]
.label_477:
	mov	rax, qword ptr [rbp]
	movzx	ebx, byte ptr [rax + label_493]
	cmp	bl, byte ptr [rbp - 8]
	je	.label_504
	mov	esi, OFFSET FLAT:label_283
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_504
	test	bl, bl
	mov	edx, OFFSET FLAT:label_494
	je	.label_506
	cmp	bl, 0x20
	jb	.label_507
	cmp	bl, 0x7e
	ja	.label_508
	mov	byte ptr [rip + visible.buf],  bl
	mov	eax, OFFSET FLAT:label_510
	jmp	.label_511
.label_507:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	bl, 0x40
	mov	byte ptr [rip + label_510],  bl
	jmp	.label_516
.label_508:
	cmp	bl, 0x7f
	jne	.label_559
	mov	word ptr [rip + visible.buf],  0x3f5e
.label_516:
	mov	eax, OFFSET FLAT:label_518
.label_511:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_506:
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_524
	xor	eax, eax
	mov	rsi, r15
	call	wrapf
	jmp	.label_504
.label_559:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	bl, 0xa0
	jb	.label_533
	cmp	bl, 0xff
	je	.label_537
	xor	bl, 0x80
	mov	byte ptr [rip + label_518],  bl
	mov	eax, OFFSET FLAT:label_521
	jmp	.label_511
.label_533:
	mov	byte ptr [rip + label_518],  0x5e
	add	bl, 0xc0
	mov	byte ptr [rip + label_521],  bl
	mov	eax, OFFSET FLAT:label_522
	jmp	.label_511
.label_537:
	mov	word ptr [rip + label_518],  0x3f5e
	mov	eax, OFFSET FLAT:label_522
	jmp	.label_511
.label_576:
	mov	edx, dword ptr [rip + main.mode]
	mov	ecx, dword ptr [rip + label_551]
	mov	r8d, dword ptr [rip + label_552]
	mov	r9d, dword ptr [rip + label_542]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_553
	xor	eax, eax
	call	__printf_chk
	mov	rbx, -0x20
	nop	word ptr cs:[rax + rax]
.label_572:
	movzx	edx, byte ptr [rbx + label_578]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_579
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_572
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_598
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_528
.label_584:
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	mov	edi, 1
	mov	rsi, r15
	call	display_window_size
	movzx	esi, byte ptr [rip + label_585]
	mov	edi, OFFSET FLAT:label_586
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_589
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_600:
	mov	dword ptr [rip + current_col],  0
	mov	ebp, OFFSET FLAT:label_278
	jmp	.label_593
	.section	.text
	.align	16
	#Procedure 0x4061e2
	.globl sub_4061e2
	.type sub_4061e2, @function
sub_4061e2:

	nop	word ptr cs:[rax + rax]
.label_489:
	add	rbp, 0x18
.label_593:
	mov	rbx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rbx], 0x6d
	jne	.label_476
	cmp	byte ptr [rbx + 1], 0x69
	jne	.label_476
	cmp	byte ptr [rbx + 2], 0x6e
	jne	.label_476
	cmp	byte ptr [rbx + 3], 0
	je	.label_498
	nop	word ptr cs:[rax + rax]
.label_476:
	mov	esi, OFFSET FLAT:label_283
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_489
	mov	rax, qword ptr [rbp]
	movzx	eax, byte ptr [rax + label_493]
	test	al, al
	mov	edx, OFFSET FLAT:label_494
	je	.label_495
	cmp	al, 0x20
	jb	.label_587
	cmp	al, 0x7e
	ja	.label_503
	mov	byte ptr [rip + visible.buf],  al
	mov	eax, OFFSET FLAT:label_510
	jmp	.label_523
.label_587:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	al, 0x40
	mov	byte ptr [rip + label_510],  al
	jmp	.label_588
.label_503:
	cmp	al, 0x7f
	jne	.label_520
	mov	word ptr [rip + visible.buf],  0x3f5e
	nop	dword ptr [rax + rax]
.label_588:
	mov	eax, OFFSET FLAT:label_518
.label_523:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_495:
	mov	edi, OFFSET FLAT:label_524
	xor	eax, eax
	mov	rsi, rbx
	call	wrapf
	jmp	.label_489
.label_520:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	al, 0xa0
	jb	.label_599
	cmp	al, 0xff
	je	.label_577
	xor	al, 0x80
	mov	byte ptr [rip + label_518],  al
	mov	eax, OFFSET FLAT:label_521
	jmp	.label_523
.label_599:
	mov	byte ptr [rip + label_518],  0x5e
	add	al, 0xc0
	mov	byte ptr [rip + label_521],  al
	mov	eax, OFFSET FLAT:label_522
	jmp	.label_523
.label_577:
	mov	word ptr [rip + label_518],  0x3f5e
	mov	eax, OFFSET FLAT:label_522
	jmp	.label_523
.label_485:
	test	byte ptr [rip + label_542],  2
	jne	.label_543
	movzx	esi, byte ptr [rip + label_545]
	movzx	edx, byte ptr [rip + label_546]
	mov	edi, OFFSET FLAT:label_547
	xor	eax, eax
	call	wrapf
	jmp	.label_483
.label_498:
	movzx	esi, byte ptr [rip + label_545]
	movzx	edx, byte ptr [rip + label_546]
	mov	edi, OFFSET FLAT:label_556
	xor	eax, eax
	call	wrapf
	cmp	dword ptr [rip + current_col],  0
	je	.label_501
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_566
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_501:
	mov	dword ptr [rip + current_col],  0
	mov	rbx, -0xb20
	xor	r15d, r15d
	jmp	.label_517
.label_543:
	test	r14b, 1
	jne	.label_483
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_574
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_483:
	mov	dword ptr [rip + current_col],  0
	xor	eax, eax
	mov	r14b, 1
	mov	rbx, -0xb20
	jmp	.label_496
.label_594:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_487
	.section	.text
	.align	16
	#Procedure 0x4063b2
	.globl sub_4063b2
	.type sub_4063b2, @function
sub_4063b2:

	nop	word ptr cs:[rax + rax]
.label_517:
	movzx	r14d, byte ptr [rbx + label_371]
	test	r14b, 8
	jne	.label_500
	mov	ebp, dword ptr [rbx + label_374]
	cmp	ebp, r15d
	je	.label_544
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_594
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_487:
	mov	dword ptr [rip + current_col],  0
	mov	r15d, ebp
.label_544:
	cmp	r15d, 5
	jae	.label_479
	mov	rax, qword ptr [rbx + label_299]
	test	rax, rax
	jne	.label_481
	mov	rax, qword ptr [rbx + label_300]
.label_481:
	cmp	r15d, 4
	je	.label_488
	movsxd	rcx, r15d
	mov	rcx, qword ptr [(rcx * 8) + label_514]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_300]
	jne	.label_515
	mov	rsi, qword ptr [rbx + label_348]
	mov	edi, OFFSET FLAT:label_26
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x406454
	.globl sub_406454
	.type sub_406454, @function
sub_406454:

	nop	word ptr cs:[rax + rax]
.label_515:
	test	r14b, 4
	je	.label_500
	mov	rsi, qword ptr [rbx + label_348]
	mov	edi, OFFSET FLAT:label_512
.label_502:
	xor	eax, eax
	call	wrapf
.label_500:
	add	rbx, 0x20
	jne	.label_517
	jmp	.label_580
.label_539:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_525
	.section	.text
	.align	16
	#Procedure 0x406494
	.globl sub_406494
	.type sub_406494, @function
sub_406494:

	nop	word ptr cs:[rax + rax]
.label_496:
	movsx	r15d, byte ptr [rbx + label_371]
	test	r15b, 8
	jne	.label_527
	mov	ebp, dword ptr [rbx + label_374]
	cmp	ebp, eax
	jne	.label_531
	mov	ebp, eax
	jmp	.label_534
	.section	.text
	.align	16
	#Procedure 0x4064bc
	.globl sub_4064bc
	.type sub_4064bc, @function
sub_4064bc:

	nop	dword ptr [rax]
.label_527:
	mov	ebp, eax
	jmp	.label_568
	.section	.text
	.align	16
	#Procedure 0x4064c7
	.globl sub_4064c7
	.type sub_4064c7, @function
sub_4064c7:

	nop	word ptr [rax + rax]
.label_531:
	test	r14b, 1
	jne	.label_534
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_539
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_525:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
.label_534:
	cmp	ebp, 5
	jae	.label_558
	mov	rax, qword ptr [rbx + label_299]
	test	rax, rax
	jne	.label_555
	mov	rax, qword ptr [rbx + label_300]
.label_555:
	cmp	ebp, 4
	je	.label_561
	movsxd	rcx, ebp
	mov	rcx, qword ptr [(rcx * 8) + label_514]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_300]
	jne	.label_541
	test	r15b, 2
	je	.label_568
	mov	rsi, qword ptr [rbx + label_348]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_26
	jmp	.label_583
	.section	.text
	.align	16
	#Procedure 0x406554
	.globl sub_406554
	.type sub_406554, @function
sub_406554:

	nop	word ptr cs:[rax + rax]
.label_541:
	and	r15d, 5
	cmp	r15d, 5
	jne	.label_568
	mov	rsi, qword ptr [rbx + label_348]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_512
.label_583:
	xor	eax, eax
	call	wrapf
.label_568:
	add	rbx, 0x20
	mov	eax, ebp
	jne	.label_496
	test	r14b, 1
	jne	.label_581
.label_580:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_582
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_581:
	mov	dword ptr [rip + current_col],  0
.label_528:
	xor	eax, eax
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_582:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_581
.label_590:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_595
.label_598:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_528
.label_589:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_600
.label_566:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_501
.label_574:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_483
.label_480:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_197
	mov	edx, OFFSET FLAT:label_174
	mov	r8d, OFFSET FLAT:label_486
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_536:
	xor	edi, edi
	call	usage
.label_482:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_479:
	call	abort
.label_488:
	mov	edi, OFFSET FLAT:label_334
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:label_560
	call	__assert_fail
.label_558:
	call	abort
.label_561:
	mov	edi, OFFSET FLAT:label_334
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 0x7a2
	mov	ecx, OFFSET FLAT:label_591
	call	__assert_fail
.label_475:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
	jmp	.label_549
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_554
	jmp	.label_549
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_557
.label_549:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_601:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406745
	.globl sub_406745
	.type sub_406745, @function
sub_406745:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406750
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_601
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_602
	test	rax, rax
	je	.label_601
.label_602:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406780
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
	#Procedure 0x406799
	.globl sub_406799
	.type sub_406799, @function
sub_406799:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0

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
	#Procedure 0x4067b7
	.globl sub_4067b7
	.type sub_4067b7, @function
sub_4067b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067c0

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_634
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_607
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_609
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_613
	mov	ebp, 1
.label_609:
	test	r14, r14
	je	.label_615
	mov	ebx, ebp
	jmp	.label_619
.label_607:
	mov	ebp, 4
	test	r14, r14
	je	.label_613
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_613
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	r12d, 1
	test	rax, rax
	je	.label_613
.label_619:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_631
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_618
	mov	edi, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_604
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_604
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	edi, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_604
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	edi, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_624
	cmp	eax, 0x44
	je	.label_624
	cmp	eax, 0x69
	jne	.label_604
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rdi, [rax + rax + 1]
	mov	r8d, 0x400
	jmp	.label_604
.label_615:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	jmp	.label_613
.label_624:
	mov	edi, 2
	mov	r8d, 0x3e8
.label_604:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_618
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r14, r12
	jmp	qword ptr [(r13 * 8) + label_620]
.label_1007:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_627
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_627:
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_639
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rbp, r9
.label_639:
	or	r11d, ecx
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_645
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_645:
	or	ecx, r11d
	jmp	.label_603
.label_618:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	ebx, 2
	jmp	.label_622
.label_1008:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	cmp	r12, rax
	mov	ecx, 1
	jl	.label_603
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, r12
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
	jmp	.label_603
.label_1009:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	rbp, rax
	cmp	r12, rbp
	mov	ecx, 1
	mov	rsi, r14
	mov	r10d, 1
	jl	.label_626
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	r10d, r10d
	cmp	rax, r12
	setl	r10b
	cmovl	rsi, r9
.label_626:
	cmp	rsi, rbp
	jl	.label_632
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_632:
	or	ecx, r10d
	jmp	.label_603
.label_1011:
	mov	r13, rdi
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_640
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_640:
	cmp	rsi, r10
	mov	rdi, r14
	jl	.label_649
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rdi, r9
.label_649:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_605
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_605:
	or	ebp, r11d
	cmp	rsi, r10
	jl	.label_617
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_617:
	or	ecx, ebp
	mov	rdi, r13
	jmp	.label_603
.label_1005:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_611
	mov	r14, r12
	shl	r14, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_629
.label_1006:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_637
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_637:
	mov	qword ptr [rsp + 0x18], rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_646
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_646:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_655
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_655:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_614
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_614:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	mov	rdi, r14
	mov	r12d, 1
	jl	.label_623
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rbp
	imul	rdi, r8
	xor	r12d, r12d
	cmp	rax, rbp
	setl	r12b
	cmovl	rdi, r9
.label_623:
	or	r12d, r11d
	cmp	rdi, r10
	jl	.label_635
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_635:
	or	ecx, r12d
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_603
.label_1010:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_643
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_643:
	mov	r12, rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_648
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_648:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_610
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_610:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_621
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_621:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_630
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_630:
	or	ecx, r11d
	mov	rdi, r12
	jmp	.label_603
.label_1012:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_641
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_641:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_650
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_650:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_606
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_606:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_628
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_628:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_651
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_651:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_638
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_638:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	r11d, 1
	jl	.label_644
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbp
	imul	rsi, r8
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_644:
	or	r11d, r12d
	cmp	rsi, r10
	jl	.label_654
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_654:
	or	ecx, r11d
	jmp	.label_603
.label_1013:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_612
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_612:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_625
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_625:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_633
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_633:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_642
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_642:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_647
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_647:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_608
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_608:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_616
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_616:
	or	ecx, r12d
	jmp	.label_603
.label_1014:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_611
	mov	r14, r12
	shl	r14, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_629
.label_1015:
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_636
.label_611:
	inc	r9
	mov	ecx, 1
	mov	r14, r9
	jmp	.label_603
.label_636:
	lea	r14, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_629:
	xor	ecx, ecx
	cmp	r12, rax
	setg	cl
	cmovg	r14, r9
.label_603:
	or	ecx, ebx
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + rdi]
	mov	qword ptr [r15], rax
	lea	ebx, [rcx + 2]
	cmp	byte ptr [rdx + rdi], 0
	cmove	ebx, ecx
	mov	r12, r14
.label_631:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_622:
	mov	ebp, ebx
.label_613:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_634:
	mov	edi, OFFSET FLAT:label_467
	mov	esi, OFFSET FLAT:label_652
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_653
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x407109
	.globl sub_407109
	.type sub_407109, @function
sub_407109:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407110
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_656
	test	rdx, rdx
	je	.label_656
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_656:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40717e
	.globl sub_40717e
	.type sub_40717e, @function
sub_40717e:

	nop	
.label_659:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_657
	test	rax, rax
	je	.label_658
.label_657:
	pop	rbx
	ret	
.label_658:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407199

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_659
	test	rbx, rbx
	jne	.label_659
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071b0

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
.label_692:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_689
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_696]
.label_838:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_700
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_707
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_839:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_720
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_720
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_734:
	cmp	r14, r11
	jae	.label_763
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_763:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_734
.label_720:
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
	jmp	.label_738
.label_831:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_738
.label_834:
	mov	al, 1
.label_832:
	mov	r12b, 1
.label_835:
	test	r12b, 1
	mov	cl, 1
	je	.label_749
	mov	ecx, eax
.label_749:
	mov	al, cl
.label_833:
	test	r12b, 1
	jne	.label_751
	test	r11, r11
	je	.label_702
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_702:
	mov	r14d, 1
	jmp	.label_753
.label_751:
	xor	r14d, r14d
.label_753:
	mov	ecx, OFFSET FLAT:label_707
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_738
.label_836:
	test	r12b, 1
	jne	.label_764
	test	r11, r11
	je	.label_767
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_767:
	mov	r14d, 1
	jmp	.label_770
.label_837:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_771
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_738
.label_764:
	xor	r14d, r14d
.label_770:
	mov	eax, OFFSET FLAT:label_771
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_738:
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
	jmp	.label_667
	.section	.text
	.align	16
	#Procedure 0x40749d
	.globl sub_40749d
	.type sub_40749d, @function
sub_40749d:

	nop	dword ptr [rax]
.label_735:
	inc	rsi
.label_667:
	cmp	rbp, -1
	je	.label_713
	cmp	rsi, rbp
	jne	.label_715
	jmp	.label_717
	.section	.text
	.align	16
	#Procedure 0x4074b3
	.globl sub_4074b3
	.type sub_4074b3, @function
sub_4074b3:

	nop	word ptr cs:[rax + rax]
.label_713:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_722
.label_715:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_675
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_721
	cmp	rbp, -1
	jne	.label_721
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
.label_721:
	cmp	rbx, rbp
	jbe	.label_739
.label_675:
	xor	r8d, r8d
.label_711:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_741
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_743]
.label_851:
	test	rsi, rsi
	jne	.label_728
	jmp	.label_748
	.section	.text
	.align	16
	#Procedure 0x407555
	.globl sub_407555
	.type sub_407555, @function
sub_407555:

	nop	word ptr cs:[rax + rax]
.label_739:
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
	jne	.label_757
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_711
	jmp	.label_723
.label_757:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_711
.label_855:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_777
	test	rsi, rsi
	jne	.label_779
	cmp	rbp, 1
	je	.label_748
	xor	r13d, r13d
	jmp	.label_688
.label_844:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_661
	cmp	byte ptr [rsp + 6], 0
	jne	.label_666
	cmp	r12d, 2
	jne	.label_670
	mov	eax, r9d
	and	al, 1
	jne	.label_670
	cmp	r14, r11
	jae	.label_674
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_674:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_680
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_680:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_768
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_768:
	add	r14, 3
	mov	r9b, 1
.label_670:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_685
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_685:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_697
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_697
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_697
	cmp	r14, r11
	jae	.label_708
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_708:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_691
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_691:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_688
.label_845:
	mov	bl, 0x62
	jmp	.label_726
.label_846:
	mov	cl, 0x74
	jmp	.label_732
.label_847:
	mov	bl, 0x76
	jmp	.label_726
.label_848:
	mov	bl, 0x66
	jmp	.label_726
.label_849:
	mov	cl, 0x72
	jmp	.label_732
.label_852:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_731
	cmp	byte ptr [rsp + 6], 0
	jne	.label_671
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
	jae	.label_737
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_737:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_746
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_746:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_750
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_750:
	add	r14, 3
	xor	r9d, r9d
.label_731:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_688
.label_853:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_755
	cmp	r12d, 2
	jne	.label_728
	cmp	byte ptr [rsp + 6], 0
	je	.label_728
	jmp	.label_671
.label_854:
	cmp	r12d, 2
	jne	.label_765
	cmp	byte ptr [rsp + 6], 0
	jne	.label_671
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_714
.label_741:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_774
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
.label_730:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_669
	test	r8b, r8b
	je	.label_669
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_688
.label_777:
	test	rsi, rsi
	jne	.label_694
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_694
.label_748:
	mov	dl, 1
.label_850:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_671
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_688:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_705
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_706
	jmp	.label_712
	.section	.text
	.align	16
	#Procedure 0x4078a4
	.globl sub_4078a4
	.type sub_4078a4, @function
sub_4078a4:

	nop	word ptr cs:[rax + rax]
.label_705:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_712
.label_706:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_718
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_714
	jmp	.label_729
	.section	.text
	.align	16
	#Procedure 0x4078ed
	.globl sub_4078ed
	.type sub_4078ed, @function
sub_4078ed:

	nop	dword ptr [rax]
.label_712:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_729
	jmp	.label_714
.label_718:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_729
.label_661:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_735
	xor	r15d, r15d
	jmp	.label_728
.label_765:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_732
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_714
.label_732:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_671
.label_726:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_688
	nop	word ptr cs:[rax + rax]
.label_729:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_666
	cmp	r12d, 2
	jne	.label_752
	mov	eax, r9d
	and	al, 1
	jne	.label_752
	cmp	r14, r11
	jae	.label_778
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_778:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_758
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_758:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_761
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_761:
	add	r14, 3
	mov	r9b, 1
.label_752:
	cmp	r14, r11
	jae	.label_769
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_769:
	inc	r14
	jmp	.label_690
.label_774:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_775
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_775:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_733:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_677
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_682
	cmp	rbp, -2
	je	.label_687
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_663
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_747:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_745
	bt	rsi, rdx
	jb	.label_710
.label_745:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_747
.label_663:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_766
	xor	r13d, r13d
.label_766:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_733
	jmp	.label_730
.label_697:
	xor	r13d, r13d
	jmp	.label_688
.label_694:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_688
.label_755:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_728
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_728
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_728
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_740
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_754
	cmp	byte ptr [rsp + 6], 0
	jne	.label_662
	cmp	r14, r11
	jae	.label_684
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_684:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_679
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_679:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_756
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_756:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_773
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_773:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_688
.label_728:
	xor	eax, eax
.label_779:
	xor	r13d, r13d
	jmp	.label_688
.label_669:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_772
	.section	.text
	.align	16
	#Procedure 0x407bd2
	.globl sub_407bd2
	.type sub_407bd2, @function
sub_407bd2:

	nop	word ptr cs:[rax + rax]
.label_736:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_772:
	test	r8b, r8b
	je	.label_780
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_664
	cmp	r14, r11
	jae	.label_781
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_781:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_664
	.section	.text
	.align	16
	#Procedure 0x407c1c
	.globl sub_407c1c
	.type sub_407c1c, @function
sub_407c1c:

	nop	dword ptr [rax]
.label_780:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_723
	cmp	r12d, 2
	jne	.label_676
	mov	eax, r9d
	and	al, 1
	jne	.label_676
	cmp	r14, r11
	jae	.label_681
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_681:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_683
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_683:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_776
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_776:
	add	r14, 3
	mov	r9b, 1
.label_676:
	cmp	r14, r11
	jae	.label_716
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_716:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_701
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_701:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_709
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_709:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_664:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_714
	test	r9b, 1
	je	.label_678
	mov	ebx, eax
	and	bl, 1
	jne	.label_678
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_727
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_727:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_665
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_665:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_678:
	cmp	r14, r11
	jae	.label_736
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_736
	.section	.text
	.align	16
	#Procedure 0x407d23
	.globl sub_407d23
	.type sub_407d23, @function
sub_407d23:

	nop	word ptr cs:[rax + rax]
.label_714:
	test	r9b, 1
	je	.label_742
	and	al, 1
	jne	.label_742
	cmp	r14, r11
	jae	.label_744
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_744:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_699
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_699:
	add	r14, 2
	xor	r9d, r9d
.label_742:
	mov	ebx, r15d
.label_690:
	cmp	r14, r11
	jae	.label_693
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_693:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_735
.label_682:
	xor	r13d, r13d
.label_677:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_730
.label_687:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_762
	mov	rsi, qword ptr [rsp + 0x58]
.label_695:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_704
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_695
	xor	r13d, r13d
	jmp	.label_730
.label_762:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_730
.label_704:
	xor	r13d, r13d
	jmp	.label_730
.label_740:
	xor	r13d, r13d
	jmp	.label_688
.label_754:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_688
	.section	.text
	.align	16
	#Procedure 0x407df8
	.globl sub_407df8
	.type sub_407df8, @function
sub_407df8:

	nop	dword ptr [rax + rax]
.label_717:
	mov	rcx, rsi
.label_722:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_660
	or	al, dl
	je	.label_668
.label_660:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_672
	or	al, dl
	jne	.label_672
	test	r10b, 1
	jne	.label_686
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_672
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_692
.label_672:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_698
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_703
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_703
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_719:
	cmp	r14, r11
	jae	.label_673
	mov	byte ptr [rcx + r14], al
.label_673:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_719
	jmp	.label_703
.label_666:
	mov	qword ptr [rsp + 0x20], rbp
.label_723:
	mov	rdx, rdi
	jmp	.label_725
.label_671:
	mov	qword ptr [rsp + 0x20], rbp
.label_710:
	mov	rdx, rdi
	mov	eax, 2
.label_724:
	mov	qword ptr [rsp + 0x38], rax
.label_725:
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
.label_759:
	mov	r14, rax
.label_760:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_668:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_725
.label_686:
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
	jmp	.label_759
.label_698:
	mov	rcx, qword ptr [rsp + 8]
.label_703:
	cmp	r14, r11
	jae	.label_760
	mov	byte ptr [rcx + r14], 0
	jmp	.label_760
.label_662:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_724
.label_689:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407fb7
	.globl sub_407fb7
	.type sub_407fb7, @function
sub_407fb7:

	nop	word ptr [rax + rax]
.label_783:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_782
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_782:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ff4
	.globl sub_407ff4
	.type sub_407ff4, @function
sub_407ff4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407ff6

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
	jne	.label_784
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_784
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_783
.label_784:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_789:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40803b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_787
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_786
	cmp	dword ptr [rbp], 0x20
	jne	.label_786
.label_787:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_789
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_785:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_153
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_786:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_788
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_785
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4080f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4080fa
	.globl sub_4080fa
	.type sub_4080fa, @function
sub_4080fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408100
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
	je	.label_790
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
.label_790:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40816c
	.globl sub_40816c
	.type sub_40816c, @function
sub_40816c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408170

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_791
	test	rsi, rsi
	mov	ecx, 1
	je	.label_792
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_792
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_791:
	mov	ecx, 1
.label_792:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4081bb
	.globl sub_4081bb
	.type sub_4081bb, @function
sub_4081bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081c0
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
	#Procedure 0x4081d3
	.globl sub_4081d3
	.type sub_4081d3, @function
sub_4081d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081e8
	.globl sub_4081e8
	.type sub_4081e8, @function
sub_4081e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081f0
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
	#Procedure 0x4081ff
	.globl sub_4081ff
	.type sub_4081ff, @function
sub_4081ff:

	nop	
.label_797:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_793
	mov	eax, OFFSET FLAT:label_794
	jmp	.label_795
	.section	.text
	.align	16
	#Procedure 0x40820f
	.globl sub_40820f
	.type sub_40820f, @function
sub_40820f:

	nop	word ptr cs:[rax + rax]
.label_800:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_796
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_796
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_796
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_796
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_796
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_796
	cmp	byte ptr [rax + 7], 0
	je	.label_797
.label_796:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_771
	mov	eax, OFFSET FLAT:label_707
.label_795:
	cmove	rax, rcx
.label_801:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408262

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
	jne	.label_801
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_800
	cmp	ecx, 0x55
	jne	.label_796
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_796
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_796
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_796
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_796
	cmp	byte ptr [rax + 5], 0
	jne	.label_796
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_798
	mov	eax, OFFSET FLAT:label_799
	jmp	.label_795
	.section	.text
	.align	16
	#Procedure 0x4082d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4082da
	.globl sub_4082da
	.type sub_4082da, @function
sub_4082da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_802
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_803
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_806
	call	free
	xor	eax, eax
	jmp	.label_804
.label_805:
	call	xalloc_die
.label_802:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_805
	mov	qword ptr [rsi], rbx
.label_806:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_804
	test	rax, rax
	je	.label_805
.label_804:
	pop	rbx
	ret	
.label_803:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408344
	.globl sub_408344
	.type sub_408344, @function
sub_408344:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408350

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
	#Procedure 0x408369
	.globl sub_408369
	.type sub_408369, @function
sub_408369:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408370

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
	je	.label_807
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
.label_807:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408405
	.globl sub_408405
	.type sub_408405, @function
sub_408405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408475
	.globl sub_408475
	.type sub_408475, @function
sub_408475:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408482
	.globl sub_408482
	.type sub_408482, @function
sub_408482:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084a6
	.globl sub_4084a6
	.type sub_4084a6, @function
sub_4084a6:

	nop	word ptr cs:[rax + rax]
