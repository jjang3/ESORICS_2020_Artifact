	.section	.text
	.align	16
	#Procedure 0x401559
	.globl sub_401559
	.type sub_401559, @function
sub_401559:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401592
	.globl sub_401592
	.type sub_401592, @function
sub_401592:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015da
	.globl sub_4015da
	.type sub_4015da, @function
sub_4015da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fc
	.globl sub_4015fc
	.type sub_4015fc, @function
sub_4015fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40160d
	.globl sub_40160d
	.type sub_40160d, @function
sub_40160d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401626
	.globl sub_401626
	.type sub_401626, @function
sub_401626:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40163c
	.globl sub_40163c
	.type sub_40163c, @function
sub_40163c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401648

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_10
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_9
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_10
.label_9:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_10
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_11
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_11:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016b0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4016b5
	.globl sub_4016b5
	.type sub_4016b5, @function
sub_4016b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016c0
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
	#Procedure 0x4016cf
	.globl sub_4016cf
	.type sub_4016cf, @function
sub_4016cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016d0

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
	je	.label_12
	cmp	r15, -2
	jb	.label_12
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_12
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_12:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401726
	.globl sub_401726
	.type sub_401726, @function
sub_401726:

	nop	word ptr cs:[rax + rax]
.label_13:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401735
	.globl sub_401735
	.type sub_401735, @function
sub_401735:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401739
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_13
	test	rsi, rsi
	je	.label_13
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
	#Procedure 0x4017a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_17
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_20
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_18
.label_20:
	call	xalloc_die
.label_19:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_23
	test	rax, rax
	je	.label_20
.label_23:
	pop	rbx
	ret	
.label_21:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4017eb
	.globl sub_4017eb
	.type sub_4017eb, @function
sub_4017eb:

	nop	word ptr [rax + rax]
.label_17:
	test	rcx, rcx
	jne	.label_22
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_22:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_21
.label_18:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_19
	test	rbx, rbx
	jne	.label_19
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_24:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401845
	.globl sub_401845
	.type sub_401845, @function
sub_401845:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40184d
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
	je	.label_24
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
	.section	.text
	.align	16
	#Procedure 0x4018b0
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
	#Procedure 0x4018c9
	.globl sub_4018c9
	.type sub_4018c9, @function
sub_4018c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_35
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_35
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_42
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_32:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
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
	#Procedure 0x401acb
	.globl sub_401acb
	.type sub_401acb, @function
sub_401acb:

	nop	dword ptr [rax + rax]
.label_48:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_44
	mov	eax, OFFSET FLAT:label_45
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x401adf
	.globl sub_401adf
	.type sub_401adf, @function
sub_401adf:

	nop	word ptr cs:[rax + rax]
.label_53:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_47
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_47
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_47
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_47
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_47
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_47
	cmp	byte ptr [rax + 7], 0
	je	.label_48
.label_47:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_49
	mov	eax, OFFSET FLAT:label_50
.label_46:
	cmove	rax, rcx
.label_54:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b32

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
	jne	.label_54
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_53
	cmp	ecx, 0x55
	jne	.label_47
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_47
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_47
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_47
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_47
	cmp	byte ptr [rax + 5], 0
	jne	.label_47
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_51
	mov	eax, OFFSET FLAT:label_52
	jmp	.label_46
.label_55:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ba5
	.globl sub_401ba5
	.type sub_401ba5, @function
sub_401ba5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ba7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_55
	test	rdx, rdx
	je	.label_55
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
	#Procedure 0x401c10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
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
	#Procedure 0x401c65
	.globl sub_401c65
	.type sub_401c65, @function
sub_401c65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c70
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
	#Procedure 0x401c88
	.globl sub_401c88
	.type sub_401c88, @function
sub_401c88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c90

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
	#Procedure 0x401ca9
	.globl sub_401ca9
	.type sub_401ca9, @function
sub_401ca9:

	nop	dword ptr [rax]
.label_56:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401cb5
	.globl sub_401cb5
	.type sub_401cb5, @function
sub_401cb5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401cb9
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
	je	.label_56
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
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_67
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_69
.label_67:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_69:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_58
	cmp	r10d, 0x29
	jae	.label_66
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_68
.label_66:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_68:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_58
	cmp	r10d, 0x29
	jae	.label_64
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_65
.label_64:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_65:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_58
	cmp	r10d, 0x29
	jae	.label_62
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_63
.label_62:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_63:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_58
	cmp	r10d, 0x29
	jae	.label_60
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_61
.label_60:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_61:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_58
	cmp	r10d, 0x29
	jae	.label_57
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_59
.label_57:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_59:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_58
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_58
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_58
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_58
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_58:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f02
	.globl sub_401f02
	.type sub_401f02, @function
sub_401f02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f10
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401f1a
	.globl sub_401f1a
	.type sub_401f1a, @function
sub_401f1a:

	nop	word ptr [rax + rax]
.label_70:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f25
	.globl sub_401f25
	.type sub_401f25, @function
sub_401f25:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f2b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_70
	test	rdx, rdx
	je	.label_70
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
	#Procedure 0x401f90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_72
	cmp	byte ptr [rax], 0x43
	jne	.label_74
	cmp	byte ptr [rax + 1], 0
	je	.label_71
.label_74:
	mov	esi, OFFSET FLAT:label_73
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_72
.label_71:
	xor	ebx, ebx
.label_72:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fc1
	.globl sub_401fc1
	.type sub_401fc1, @function
sub_401fc1:

	nop	word ptr cs:[rax + rax]
.label_75:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_75
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_80:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40204d

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_81
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_79
	cmp	dword ptr [rbp], 0x20
	jne	.label_79
.label_81:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_80
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402090
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_82
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_84:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_84
.label_82:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_86
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_85], OFFSET FLAT:slot0
.label_86:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_83
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_83:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402121
	.globl sub_402121
	.type sub_402121, @function
sub_402121:

	nop	word ptr cs:[rax + rax]
.label_89:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_87
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402150
	.globl sub_402150
	.type sub_402150, @function
sub_402150:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40215f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_89
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_91
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_91
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_88
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_88:
	mov	rbx, r14
.label_91:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021e0

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
	je	.label_93
	test	r15, r15
	je	.label_94
.label_93:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_94:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40221c
	.globl sub_40221c
	.type sub_40221c, @function
sub_40221c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402220
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402231
	.globl sub_402231
	.type sub_402231, @function
sub_402231:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402240
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
	je	.label_95
	mov	qword ptr [rax], rbx
.label_95:
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
	#Procedure 0x40232c
	.globl sub_40232c
	.type sub_40232c, @function
sub_40232c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402330
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
	#Procedure 0x40233f
	.globl sub_40233f
	.type sub_40233f, @function
sub_40233f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402340
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_97
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4023b4
	.globl sub_4023b4
	.type sub_4023b4, @function
sub_4023b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023c0

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
	#Procedure 0x4023e3
	.globl sub_4023e3
	.type sub_4023e3, @function
sub_4023e3:

	nop	word ptr cs:[rax + rax]
.label_100:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4023f5
	.globl sub_4023f5
	.type sub_4023f5, @function
sub_4023f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023fb

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_101
	test	rax, rax
	je	.label_100
.label_101:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402410

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
	jae	.label_107
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_121:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_121
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_106
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
	je	.label_110
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_104
	cmp	eax, 0x22
	jne	.label_106
	mov	ebp, 1
.label_104:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_120
	jmp	.label_102
.label_110:
	test	r14, r14
	je	.label_106
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_106
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_106
.label_120:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_102
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_111
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_105
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_105
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_105
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_122
	cmp	eax, 0x44
	je	.label_122
	cmp	eax, 0x69
	jne	.label_105
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_105
.label_122:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_105:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_111
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_119]
.label_385:
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
	jmp	.label_118
.label_111:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_108
.label_386:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_112
.label_387:
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
	jmp	.label_103
.label_389:
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
	jmp	.label_117
.label_383:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_123
.label_384:
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
	jmp	.label_103
.label_388:
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
.label_117:
	or	dl, r10b
.label_118:
	or	dl, bl
.label_103:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_109
.label_390:
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
	jmp	.label_113
.label_391:
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
.label_113:
	movzx	eax, dl
.label_112:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_109
.label_392:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_123:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_109
.label_393:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_109:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_102:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_108:
	mov	r13d, r15d
.label_106:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_107:
	mov	edi, OFFSET FLAT:label_114
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_116
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402a41
	.globl sub_402a41
	.type sub_402a41, @function
sub_402a41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_124
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_125
	cmovne	rax, rcx
	pop	rcx
	ret	
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
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a88
	.globl sub_402a88
	.type sub_402a88, @function
sub_402a88:

	nop	dword ptr [rax + rax]
.label_128:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a95
	.globl sub_402a95
	.type sub_402a95, @function
sub_402a95:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a9d
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_128
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_127
	test	rbx, rbx
	jne	.label_127
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_127:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_126
	test	rax, rax
	je	.label_128
.label_126:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ae0
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
	#Procedure 0x402b16
	.globl sub_402b16
	.type sub_402b16, @function
sub_402b16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402b2e
	.globl sub_402b2e
	.type sub_402b2e, @function
sub_402b2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b30

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
	js	.label_132
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_135
	cmp	r12d, 0x7fffffff
	je	.label_130
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
	jne	.label_133
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_133:
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
.label_135:
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
	jbe	.label_131
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_134
.label_131:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_129
	mov	rdi, r14
	call	free
.label_129:
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
.label_134:
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
.label_132:
	call	abort
.label_130:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ced
	.globl sub_402ced
	.type sub_402ced, @function
sub_402ced:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_136:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_136
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402d11
	.globl sub_402d11
	.type sub_402d11, @function
sub_402d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_137
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_137:
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
	#Procedure 0x402da3
	.globl sub_402da3
	.type sub_402da3, @function
sub_402da3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
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
	#Procedure 0x402e1e
	.globl sub_402e1e
	.type sub_402e1e, @function
sub_402e1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e20
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
	je	.label_138
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
.label_138:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e81
	.globl sub_402e81
	.type sub_402e81, @function
sub_402e81:

	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_139
	test	rax, rax
	je	.label_140
.label_139:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ea4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_141
	test	rbx, rbx
	jne	.label_141
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_140:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ec0
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
	#Procedure 0x402ef3
	.globl sub_402ef3
	.type sub_402ef3, @function
sub_402ef3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_142
	test	rsi, rsi
	je	.label_142
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_142:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_143
	test	rsi, rsi
	mov	ecx, 1
	je	.label_144
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_144
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_143:
	mov	ecx, 1
.label_144:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402fbb
	.globl sub_402fbb
	.type sub_402fbb, @function
sub_402fbb:

	nop	dword ptr [rax + rax]
.label_145:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402fc5
	.globl sub_402fc5
	.type sub_402fc5, @function
sub_402fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fcf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_145
	call	rpl_calloc
	test	rax, rax
	je	.label_145
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ff0
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
	#Procedure 0x403003
	.globl sub_403003
	.type sub_403003, @function
sub_403003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
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
	#Procedure 0x40307f
	.globl sub_40307f
	.type sub_40307f, @function
sub_40307f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_124
	call	setlocale
	mov	edi, OFFSET FLAT:label_159
	mov	esi, OFFSET FLAT:label_160
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_159
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + count_bytes],  0
	mov	byte ptr [rip + break_spaces],  0
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	mov	r15d, 0x50
	cmp	eax, -1
	je	.label_148
	mov	r15d, 0x50
	lea	r12, [rsp + 6]
	nop	word ptr cs:[rax + rax]
.label_146:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0x47
	ja	.label_155
	jmp	qword ptr [(rcx * 8) + label_161]
.label_397:
	mov	rbx, qword ptr [rip + optarg]
	test	rbx, rbx
	je	.label_163
	dec	rbx
	mov	qword ptr [rip + optarg],  rbx
	jmp	.label_156
	.section	.text
	.align	16
	#Procedure 0x40314b
	.globl sub_40314b
	.type sub_40314b, @function
sub_40314b:

	nop	dword ptr [rax + rax]
.label_163:
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rsp + 7], 0
	mov	qword ptr [rip + optarg],  r12
	mov	rbx, r12
	jmp	.label_156
.label_398:
	mov	byte ptr [rip + count_bytes],  1
	jmp	.label_157
.label_399:
	mov	byte ptr [rip + break_spaces],  1
	jmp	.label_157
.label_400:
	mov	rbx, qword ptr [rip + optarg]
	nop	
.label_156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -0xa
	mov	ecx, OFFSET FLAT:label_124
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
.label_157:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, -1
	jne	.label_146
.label_148:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r13d
	jne	.label_150
	mov	edi, OFFSET FLAT:label_151
	mov	rsi, r15
	call	fold_file
	mov	ebx, eax
	jmp	.label_162
.label_150:
	mov	bl, 1
	cmp	eax, r13d
	jge	.label_162
	lea	rbp, [r14 + rax*8]
	sub	r13d, eax
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	call	fold_file
	and	bl, al
	add	rbp, 8
	dec	r13d
	jne	.label_153
.label_162:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_158
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_164
.label_158:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_155:
	cmp	eax, 0xffffff7d
	je	.label_152
	cmp	eax, 0xffffff7e
	jne	.label_154
	xor	edi, edi
	call	usage
.label_154:
	mov	edi, 1
	call	usage
.label_152:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_29
	mov	edx, OFFSET FLAT:label_33
	mov	r8d, OFFSET FLAT:label_147
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_164:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_151
	xor	eax, eax
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4032c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_165
	test	rax, rax
	je	.label_166
.label_165:
	pop	rbx
	ret	
.label_166:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4032da
	.globl sub_4032da
	.type sub_4032da, @function
sub_4032da:

	nop	word ptr [rax + rax]
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
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
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
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
	jmp	.label_168
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
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
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
.label_463:
	add	rsp, 8
	jmp	.label_168
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
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
.label_168:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403427
	.globl sub_403427
	.type sub_403427, @function
sub_403427:

	nop	dword ptr [rax + rax]
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
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
	jmp	.label_168
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
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
	jmp	.label_168
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
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
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x4034ff

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
	je	.label_183
	mov	edx, OFFSET FLAT:label_177
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_185
.label_183:
	mov	edx, OFFSET FLAT:label_181
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
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
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_172
	jmp	qword ptr [(r12 * 8) + label_174]
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
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
	jmp	.label_168
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
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
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x403640
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
	je	.label_187
	test	r15, r15
	je	.label_186
.label_187:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_186:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403682
	.globl sub_403682
	.type sub_403682, @function
sub_403682:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
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
	je	.label_189
	test	r14, r14
	je	.label_188
.label_189:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_188:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4036c6
	.globl sub_4036c6
	.type sub_4036c6, @function
sub_4036c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl fold_file
	.type fold_file, @function
fold_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rdi
	cmp	byte ptr [rbp], 0x2d
	jne	.label_208
	cmp	byte ptr [rbp + 1], 0
	je	.label_219
.label_208:
	mov	esi, OFFSET FLAT:label_222
	mov	rdi, rbp
	call	fopen
	mov	r14, rax
.label_213:
	test	r14, r14
	je	.label_201
	mov	qword ptr [rsp + 0x18], rbp
	mov	esi, 2
	mov	rdi, r14
	call	fadvise
	xor	ebx, ebx
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x40372d
	.globl sub_40372d
	.type sub_40372d, @function
sub_40372d:

	nop	dword ptr [rax]
.label_198:
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	byte ptr [rdi + rbx], al
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
	xor	ebx, ebx
	xor	r12d, r12d
.label_195:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_210
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	eax, byte ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
.label_207:
	lea	rbp, [rbx + 1]
	cmp	rbp, qword ptr [rip + fold_file.allocated_out]
	jb	.label_221
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	esi, OFFSET FLAT:fold_file.allocated_out
	call	x2realloc
	mov	qword ptr [rip + fold_file.line_out],  rax
.label_221:
	mov	eax, dword ptr [rsp + 0xc]
	cmp	eax, 0xa
	je	.label_198
	mov	r14, rbx
	mov	rax, r12
	jmp	.label_199
	.section	.text
	.align	16
	#Procedure 0x4037a6
	.globl sub_4037a6
	.type sub_4037a6, @function
sub_4037a6:

	nop	word ptr cs:[rax + rax]
.label_216:
	mov	byte ptr [rbp + r14], 0xa
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rbx
	call	fwrite_unlocked
	xor	r14d, r14d
	xor	eax, eax
.label_199:
	mov	cl, byte ptr [rip + count_bytes]
	test	cl, cl
	jne	.label_209
	mov	ecx, dword ptr [rsp + 0xc]
	cmp	cl, 8
	je	.label_203
	cmp	cl, 9
	je	.label_217
	cmp	cl, 0xd
	mov	r12d, 0
	je	.label_191
.label_209:
	inc	rax
	mov	r12, rax
.label_200:
	cmp	r12, qword ptr [rsp + 0x20]
	jbe	.label_191
	mov	rbp, qword ptr [rip + fold_file.line_out]
	cmp	byte ptr [rip + break_spaces],  1
	jne	.label_196
	lea	rbx, [rbp + r14]
	xor	r15d, r15d
	nop	
.label_204:
	mov	rax, r14
	add	rax, r15
	je	.label_196
	movzx	r13d, byte ptr [rbx + r15 - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	r15
	test	byte ptr [rax + r13*2], 1
	je	.label_204
	mov	rcx, qword ptr [rip + stdout]
	lea	rdx, [r14 + r15 + 1]
	mov	esi, 1
	mov	rdi, rbp
	call	fwrite_unlocked
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_212
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_190:
	mov	rbp, qword ptr [rip + fold_file.line_out]
	add	r14, rbp
	lea	rsi, [r15 + r14 + 1]
	mov	r12, r15
	not	r12
	mov	rdi, rbp
	mov	rdx, r12
	call	memmove
	cmp	r15, -1
	mov	r14d, 0
	mov	eax, 0
	je	.label_199
	mov	cl, byte ptr [rip + count_bytes]
	mov	edx, 1
	xor	eax, eax
	jmp	.label_192
	.section	.text
	.align	16
	#Procedure 0x4038d1
	.globl sub_4038d1
	.type sub_4038d1, @function
sub_4038d1:

	nop	word ptr cs:[rax + rax]
.label_196:
	lea	rbx, [r14 + 1]
	test	r14, r14
	jne	.label_216
	jmp	.label_220
.label_218:
	mov	eax, esi
	and	eax, 7
	neg	rax
	lea	rax, [rsi + rax + 8]
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x403901
	.globl sub_403901
	.type sub_403901, @function
sub_403901:

	nop	word ptr cs:[rax + rax]
.label_192:
	mov	rsi, rax
	test	cl, 1
	jne	.label_205
	movzx	ebx, byte ptr [rbp + rdx - 1]
	cmp	bl, 0xd
	mov	eax, 0
	je	.label_202
	cmp	bl, 9
	je	.label_218
	cmp	bl, 8
	jne	.label_205
	lea	rax, [rsi - 1]
	test	rsi, rsi
	cmove	rax, rsi
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x40393e
	.globl sub_40393e
	.type sub_40393e, @function
sub_40393e:

	nop	
.label_205:
	inc	rsi
	mov	rax, rsi
.label_202:
	inc	rdx
	mov	rsi, r15
	add	rsi, rdx
	jne	.label_192
	mov	r14, r12
	jmp	.label_199
.label_203:
	lea	r12, [rax - 1]
	test	rax, rax
	cmove	r12, rax
	jmp	.label_200
.label_217:
	mov	ecx, eax
	and	ecx, 7
	neg	rcx
	lea	r12, [rax + rcx + 8]
	jmp	.label_200
.label_212:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x40398a
	.globl sub_40398a
	.type sub_40398a, @function
sub_40398a:

	nop	word ptr [rax + rax]
.label_191:
	mov	rax, qword ptr [rip + fold_file.line_out]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	byte ptr [rax + r14], cl
	inc	r14
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_195
.label_220:
	mov	eax, dword ptr [rsp + 0xc]
	mov	byte ptr [rbp + r14], al
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_195
.label_210:
	mov	rdi, r14
	call	__uflow
	mov	dword ptr [rsp + 0xc], eax
	cmp	eax, -1
	jne	.label_207
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	test	rbx, rbx
	je	.label_214
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
.label_214:
	test	byte ptr [r14], 0x20
	jne	.label_197
	mov	r14, qword ptr [rsp + 0x18]
	cmp	byte ptr [r14], 0x2d
	jne	.label_194
	mov	bl, 1
	cmp	byte ptr [r14 + 1], 0
	je	.label_193
.label_194:
	mov	rdi, qword ptr [rsp + 0x10]
	call	rpl_fclose
	mov	bl, 1
	cmp	eax, -1
	jne	.label_193
	mov	ebp, dword ptr [rbp]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_211
.label_201:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, r14d
.label_211:
	call	error
	jmp	.label_193
.label_197:
	xor	edi, edi
	mov	esi, 3
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, r12d
	call	error
	cmp	byte ptr [rbx], 0x2d
	jne	.label_206
	cmp	byte ptr [rbx + 1], 0
	je	.label_215
.label_206:
	mov	rdi, r14
	call	rpl_fclose
.label_215:
	xor	ebx, ebx
.label_193:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_219:
	mov	r14, qword ptr [rip + stdin]
	mov	byte ptr [rip + have_read_stdin],  1
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x403aee
	.globl sub_403aee
	.type sub_403aee, @function
sub_403aee:

	nop	
.label_223:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403af5
	.globl sub_403af5
	.type sub_403af5, @function
sub_403af5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_223
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_224
	test	rax, rax
	je	.label_223
.label_224:
	pop	rbx
	ret	
.label_225:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b36
	.globl sub_403b36
	.type sub_403b36, @function
sub_403b36:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b3b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_225
	test	rdx, rdx
	je	.label_225
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b60
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
	#Procedure 0x403c21
	.globl sub_403c21
	.type sub_403c21, @function
sub_403c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c30

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
	je	.label_226
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
.label_226:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403cc5
	.globl sub_403cc5
	.type sub_403cc5, @function
sub_403cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_14]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_16]
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
	#Procedure 0x403d24
	.globl sub_403d24
	.type sub_403d24, @function
sub_403d24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

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
	#Procedure 0x403d47
	.globl sub_403d47
	.type sub_403d47, @function
sub_403d47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_227
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_227
	test	byte ptr [rbx + 1], 1
	je	.label_227
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_227:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403d83
	.globl sub_403d83
	.type sub_403d83, @function
sub_403d83:

	nop	word ptr cs:[rax + rax]
.label_228:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d95
	.globl sub_403d95
	.type sub_403d95, @function
sub_403d95:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d9d
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
	je	.label_228
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
.label_231:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_229
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_229:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e34
	.globl sub_403e34
	.type sub_403e34, @function
sub_403e34:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e36

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
	jne	.label_230
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_230
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_231
.label_230:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403e70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_237:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ea5
	.globl sub_403ea5
	.type sub_403ea5, @function
sub_403ea5:

	nop	word ptr cs:[rax + rax]
.label_234:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403eb6

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_236
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_237
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_235
	call	free
	xor	eax, eax
	jmp	.label_233
.label_236:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_234
	mov	qword ptr [rsi], rbx
.label_235:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_233
	test	rax, rax
	je	.label_234
.label_233:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f10
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
	#Procedure 0x403f85
	.globl sub_403f85
	.type sub_403f85, @function
sub_403f85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
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
	#Procedure 0x403fa8
	.globl sub_403fa8
	.type sub_403fa8, @function
sub_403fa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fb0

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
	je	.label_241
	cmp	eax, 1
	je	.label_242
	cmp	eax, 3
	jne	.label_244
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_238
.label_242:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_238
.label_241:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_243
	cmp	rbx, r15
	jbe	.label_240
.label_243:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_239
	mov	dword ptr [rax], 0x4b
	jmp	.label_238
.label_244:
	call	__errno_location
	jmp	.label_238
.label_239:
	mov	dword ptr [rax], 0x22
.label_238:
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
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_240:
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
	#Procedure 0x40407b
	.globl sub_40407b
	.type sub_40407b, @function
sub_40407b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

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
.label_325:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_323
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_328]
.label_412:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_334
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_50
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_413:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_349
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_349
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_360:
	cmp	r14, r11
	jae	.label_283
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_283:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_360
.label_349:
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
	jmp	.label_252
.label_405:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_252
.label_408:
	mov	al, 1
.label_406:
	mov	r12b, 1
.label_409:
	test	r12b, 1
	mov	cl, 1
	je	.label_258
	mov	ecx, eax
.label_258:
	mov	al, cl
.label_407:
	test	r12b, 1
	jne	.label_260
	test	r11, r11
	je	.label_261
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_261:
	mov	r14d, 1
	jmp	.label_264
.label_260:
	xor	r14d, r14d
.label_264:
	mov	ecx, OFFSET FLAT:label_50
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_252
.label_410:
	test	r12b, 1
	jne	.label_276
	test	r11, r11
	je	.label_279
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_279:
	mov	r14d, 1
	jmp	.label_286
.label_411:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_49
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_252
.label_276:
	xor	r14d, r14d
.label_286:
	mov	eax, OFFSET FLAT:label_49
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_252:
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
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x40436d
	.globl sub_40436d
	.type sub_40436d, @function
sub_40436d:

	nop	dword ptr [rax]
.label_263:
	inc	rsi
.label_305:
	cmp	rbp, -1
	je	.label_342
	cmp	rsi, rbp
	jne	.label_343
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x404383
	.globl sub_404383
	.type sub_404383, @function
sub_404383:

	nop	word ptr cs:[rax + rax]
.label_342:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_351
.label_343:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_353
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_265
	cmp	rbp, -1
	jne	.label_265
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
.label_265:
	cmp	rbx, rbp
	jbe	.label_364
.label_353:
	xor	r8d, r8d
.label_272:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_358
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_247]
.label_421:
	test	rsi, rsi
	jne	.label_253
	jmp	.label_257
	.section	.text
	.align	16
	#Procedure 0x404425
	.globl sub_404425
	.type sub_404425, @function
sub_404425:

	nop	word ptr cs:[rax + rax]
.label_364:
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
	jne	.label_268
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_272
	jmp	.label_281
.label_268:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_272
.label_425:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_295
	test	rsi, rsi
	jne	.label_297
	cmp	rbp, 1
	je	.label_257
	xor	r13d, r13d
	jmp	.label_250
.label_414:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_303
	cmp	byte ptr [rsp + 6], 0
	jne	.label_304
	cmp	r12d, 2
	jne	.label_310
	mov	eax, r9d
	and	al, 1
	jne	.label_310
	cmp	r14, r11
	jae	.label_313
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_313:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_317
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_317:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_315
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	add	r14, 3
	mov	r9b, 1
.label_310:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_326
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_326:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_331
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_331
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_331
	cmp	r14, r11
	jae	.label_294
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_294:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_327
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_327:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_250
.label_415:
	mov	bl, 0x62
	jmp	.label_355
.label_416:
	mov	cl, 0x74
	jmp	.label_357
.label_417:
	mov	bl, 0x76
	jmp	.label_355
.label_418:
	mov	bl, 0x66
	jmp	.label_355
.label_419:
	mov	cl, 0x72
	jmp	.label_357
.label_422:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_359
	cmp	byte ptr [rsp + 6], 0
	jne	.label_246
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
	jae	.label_363
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_363:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_255
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_255:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_259
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_259:
	add	r14, 3
	xor	r9d, r9d
.label_359:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_250
.label_423:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_266
	cmp	r12d, 2
	jne	.label_253
	cmp	byte ptr [rsp + 6], 0
	je	.label_253
	jmp	.label_246
.label_424:
	cmp	r12d, 2
	jne	.label_277
	cmp	byte ptr [rsp + 6], 0
	jne	.label_246
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_274
.label_358:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_290
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
.label_291:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_309
	test	r8b, r8b
	je	.label_309
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_250
.label_295:
	test	rsi, rsi
	jne	.label_338
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_338
.label_257:
	mov	dl, 1
.label_420:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_246
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_250:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_339
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_275
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x404774
	.globl sub_404774
	.type sub_404774, @function
sub_404774:

	nop	word ptr cs:[rax + rax]
.label_339:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_316
.label_275:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_347
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_274
	jmp	.label_356
	.section	.text
	.align	16
	#Procedure 0x4047bd
	.globl sub_4047bd
	.type sub_4047bd, @function
sub_4047bd:

	nop	dword ptr [rax]
.label_316:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_356
	jmp	.label_274
.label_347:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_356
.label_303:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_263
	xor	r15d, r15d
	jmp	.label_253
.label_277:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_357
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_274
.label_357:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_246
.label_355:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_250
	nop	word ptr cs:[rax + rax]
.label_356:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_304
	cmp	r12d, 2
	jne	.label_262
	mov	eax, r9d
	and	al, 1
	jne	.label_262
	cmp	r14, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_296:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_270:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_278
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_278:
	add	r14, 3
	mov	r9b, 1
.label_262:
	cmp	r14, r11
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_284:
	inc	r14
	jmp	.label_288
.label_290:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_292
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_292:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_361:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_314
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_319
	cmp	rbp, -2
	je	.label_322
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_311
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_300:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_352
	bt	rsi, rdx
	jb	.label_341
.label_352:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_300
.label_311:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_282
	xor	r13d, r13d
.label_282:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_361
	jmp	.label_291
.label_331:
	xor	r13d, r13d
	jmp	.label_250
.label_338:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_250
.label_266:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_253
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_253
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_253
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_269
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_254
	cmp	byte ptr [rsp + 6], 0
	jne	.label_307
	cmp	r14, r11
	jae	.label_280
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_280:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_346
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_346:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_267
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_267:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_251
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_251:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_250
.label_253:
	xor	eax, eax
.label_297:
	xor	r13d, r13d
	jmp	.label_250
.label_309:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x404aa2
	.globl sub_404aa2
	.type sub_404aa2, @function
sub_404aa2:

	nop	word ptr cs:[rax + rax]
.label_362:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_289:
	test	r8b, r8b
	je	.label_298
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_299
	cmp	r14, r11
	jae	.label_301
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_301:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x404aec
	.globl sub_404aec
	.type sub_404aec, @function
sub_404aec:

	nop	dword ptr [rax]
.label_298:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_281
	cmp	r12d, 2
	jne	.label_248
	mov	eax, r9d
	and	al, 1
	jne	.label_248
	cmp	r14, r11
	jae	.label_318
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_318:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_320
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_324
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_324:
	add	r14, 3
	mov	r9b, 1
.label_248:
	cmp	r14, r11
	jae	.label_350
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_350:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_335
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_335:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_340
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_340:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_299:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_274
	test	r9b, 1
	je	.label_330
	mov	ebx, eax
	and	bl, 1
	jne	.label_330
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_354
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_354:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_306
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_306:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_330:
	cmp	r14, r11
	jae	.label_362
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x404bf3
	.globl sub_404bf3
	.type sub_404bf3, @function
sub_404bf3:

	nop	word ptr cs:[rax + rax]
.label_274:
	test	r9b, 1
	je	.label_245
	and	al, 1
	jne	.label_245
	cmp	r14, r11
	jae	.label_249
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_249:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_336
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	add	r14, 2
	xor	r9d, r9d
.label_245:
	mov	ebx, r15d
.label_288:
	cmp	r14, r11
	jae	.label_329
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_329:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_263
.label_319:
	xor	r13d, r13d
.label_314:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_291
.label_322:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_285
	mov	rsi, qword ptr [rsp + 0x58]
.label_287:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_333
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_287
	xor	r13d, r13d
	jmp	.label_291
.label_285:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_291
.label_333:
	xor	r13d, r13d
	jmp	.label_291
.label_269:
	xor	r13d, r13d
	jmp	.label_250
.label_254:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_250
	.section	.text
	.align	16
	#Procedure 0x404cc8
	.globl sub_404cc8
	.type sub_404cc8, @function
sub_404cc8:

	nop	dword ptr [rax + rax]
.label_344:
	mov	rcx, rsi
.label_351:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_302
	or	al, dl
	je	.label_308
.label_302:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_312
	or	al, dl
	jne	.label_312
	test	r10b, 1
	jne	.label_321
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_312
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_325
.label_312:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_332
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_337
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_337
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_348:
	cmp	r14, r11
	jae	.label_345
	mov	byte ptr [rcx + r14], al
.label_345:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_348
	jmp	.label_337
.label_304:
	mov	qword ptr [rsp + 0x20], rbp
.label_281:
	mov	rdx, rdi
	jmp	.label_256
.label_246:
	mov	qword ptr [rsp + 0x20], rbp
.label_341:
	mov	rdx, rdi
	mov	eax, 2
.label_293:
	mov	qword ptr [rsp + 0x38], rax
.label_256:
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
.label_271:
	mov	r14, rax
.label_273:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_308:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_256
.label_321:
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
	jmp	.label_271
.label_332:
	mov	rcx, qword ptr [rsp + 8]
.label_337:
	cmp	r14, r11
	jae	.label_273
	mov	byte ptr [rcx + r14], 0
	jmp	.label_273
.label_307:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_293
.label_323:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e87
	.globl sub_404e87
	.type sub_404e87, @function
sub_404e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e98
	.globl sub_404e98
	.type sub_404e98, @function
sub_404e98:

	nop	dword ptr [rax + rax]
.label_365:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ea2
	.globl sub_404ea2
	.type sub_404ea2, @function
sub_404ea2:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ea5

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_365
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x404ec0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404eca
	.globl sub_404eca
	.type sub_404eca, @function
sub_404eca:

	nop	word ptr [rax + rax]
.label_367:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_366
	call	__errno_location
	mov	dword ptr [rax], 0
.label_366:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404eeb

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
	jne	.label_367
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_366
	test	cl, cl
	jne	.label_366
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404f95
	.globl sub_404f95
	.type sub_404f95, @function
sub_404f95:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa2
	.globl sub_404fa2
	.type sub_404fa2, @function
sub_404fa2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc6
	.globl sub_404fc6
	.type sub_404fc6, @function
sub_404fc6:

	nop	word ptr cs:[rax + rax]
