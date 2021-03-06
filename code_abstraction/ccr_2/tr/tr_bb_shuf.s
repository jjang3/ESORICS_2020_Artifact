	.section	.text
	.align	32
	#Procedure 0x4015c9
	.globl sub_4015c9
	.type sub_4015c9, @function
sub_4015c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401602
	.globl sub_401602
	.type sub_401602, @function
sub_401602:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40164a
	.globl sub_40164a
	.type sub_40164a, @function
sub_40164a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40166c
	.globl sub_40166c
	.type sub_40166c, @function
sub_40166c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40167d
	.globl sub_40167d
	.type sub_40167d, @function
sub_40167d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401696
	.globl sub_401696
	.type sub_401696, @function
sub_401696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_9
	test	rsi, rsi
	mov	ecx, 1
	je	.label_10
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_10
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_9:
	mov	ecx, 1
.label_10:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4016eb
	.globl sub_4016eb
	.type sub_4016eb, @function
sub_4016eb:

	nop	dword ptr [rax + rax]
.label_11:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4016f5
	.globl sub_4016f5
	.type sub_4016f5, @function
sub_4016f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016fb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_11
.label_12:
	pop	rbx
	ret	
.label_13:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401715
	.globl sub_401715
	.type sub_401715, @function
sub_401715:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401724
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
	je	.label_13
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
	.align	32
	#Procedure 0x401780

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_14
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_14:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40179d
	.globl sub_40179d
	.type sub_40179d, @function
sub_40179d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_16
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_17:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4017d5
	.globl sub_4017d5
	.type sub_4017d5, @function
sub_4017d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_17
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_18
	test	rax, rax
	je	.label_17
.label_18:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401810
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
	#Procedure 0x401843
	.globl sub_401843
	.type sub_401843, @function
sub_401843:

	nop	word ptr cs:[rax + rax]
.label_19:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401856
	.globl sub_401856
	.type sub_401856, @function
sub_401856:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40185b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_19
	test	rdx, rdx
	je	.label_19
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401880
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
	#Procedure 0x401898
	.globl sub_401898
	.type sub_401898, @function
sub_401898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4018aa
	.globl sub_4018aa
	.type sub_4018aa, @function
sub_4018aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018b0

	.globl plain_read
	.type plain_read, @function
plain_read:
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	call	safe_read
	cmp	rax, -1
	je	.label_21
	pop	rbx
	ret	
.label_21:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401900

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
	#Procedure 0x401917
	.globl sub_401917
	.type sub_401917, @function
sub_401917:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401920
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
	#Procedure 0x401956
	.globl sub_401956
	.type sub_401956, @function
sub_401956:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401960

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
	je	.label_22
	cmp	r15, -2
	jb	.label_22
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_22
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_22:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019b6
	.globl sub_4019b6
	.type sub_4019b6, @function
sub_4019b6:

	nop	word ptr cs:[rax + rax]
.label_23:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4019c5
	.globl sub_4019c5
	.type sub_4019c5, @function
sub_4019c5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019cb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_23
	test	rdx, rdx
	je	.label_23
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
	#Procedure 0x401a30
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
	je	.label_27
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
.label_27:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401a9c
	.globl sub_401a9c
	.type sub_401a9c, @function
sub_401a9c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
.label_28:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b0c
	.globl sub_401b0c
	.type sub_401b0c, @function
sub_401b0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b10

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
	je	.label_29
	test	r15, r15
	je	.label_30
.label_29:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_30:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b4c
	.globl sub_401b4c
	.type sub_401b4c, @function
sub_401b4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b50
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
	#Procedure 0x401b63
	.globl sub_401b63
	.type sub_401b63, @function
sub_401b63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_31
	test	rax, rax
	je	.label_32
.label_31:
	pop	rbx
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b8a
	.globl sub_401b8a
	.type sub_401b8a, @function
sub_401b8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401c04
	.globl sub_401c04
	.type sub_401c04, @function
sub_401c04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	jmp	.label_42
.label_44:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	nop	dword ptr [rax]
.label_42:
	test	rsi, rsi
	je	.label_47
	mov	dword ptr [rsi], 2
.label_47:
	mov	rax, qword ptr [r14 + 0x10]
	cmp	rax, -2
	jne	.label_49
	mov	rax, qword ptr [r14]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_52
	.section	.text
	.align	32
	#Procedure 0x401c61
	.globl sub_401c61
	.type sub_401c61, @function
sub_401c61:

	nop	word ptr cs:[rax + rax]
.label_49:
	mov	r15, qword ptr [r14 + 8]
.label_52:
	mov	ebx, 0xffffffff
	test	r15, r15
	je	.label_46
	mov	ecx, dword ptr [r15]
	cmp	rcx, 4
	ja	.label_39
	jmp	qword ptr [(rcx * 8) + label_41]
.label_688:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	je	.label_44
	cmp	rax, -1
	jne	.label_53
	mov	qword ptr [r14 + 0x10], 0
	xor	eax, eax
.label_53:
	inc	rax
	mov	qword ptr [r14 + 0x10], rax
	movzx	ebx, byte ptr [r15 + 0x10]
	cmp	rax, rcx
	je	.label_45
	jmp	.label_46
.label_685:
	movzx	ebx, byte ptr [r15 + 0x10]
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	jmp	.label_46
.label_686:
	cmp	rax, -1
	je	.label_56
	inc	rax
	mov	cl, byte ptr [r15 + 0x11]
	mov	rbx, rax
	jmp	.label_60
.label_687:
	test	rsi, rsi
	je	.label_40
	mov	eax, dword ptr [r15 + 0x10]
	cmp	eax, 0xa
	je	.label_62
	cmp	eax, 6
	jne	.label_40
	mov	dword ptr [rsi], 0
	jmp	.label_40
.label_56:
	movzx	ecx, word ptr [r15 + 0x10]
	movzx	ebx, cl
	shr	ecx, 8
.label_60:
	mov	qword ptr [r14 + 0x10], rbx
	movzx	eax, cl
	cmp	rbx, rax
	je	.label_45
	jmp	.label_46
.label_62:
	mov	dword ptr [rsi], 1
.label_40:
	mov	rbx, qword ptr [r14 + 0x10]
	cmp	rbx, -1
	jne	.label_48
	mov	ebp, dword ptr [r15 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_55:
	movzx	esi, bl
	mov	edi, ebp
	call	is_char_class_member
	test	al, al
	jne	.label_54
	inc	rbx
	cmp	ebx, 0x100
	jl	.label_55
	mov	edi, OFFSET FLAT:label_57
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x434
	mov	ecx, OFFSET FLAT:label_59
	call	__assert_fail
.label_54:
	mov	qword ptr [r14 + 0x10], rbx
.label_48:
	mov	r12d, dword ptr [r15 + 0x10]
	movzx	esi, bl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	je	.label_43
	lea	eax, [rbx + 1]
	cmp	eax, 0xff
	jg	.label_45
	movsxd	rbp, eax
	nop	word ptr cs:[rax + rax]
.label_51:
	movzx	esi, bpl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	jne	.label_50
	inc	rbp
	cmp	ebp, 0x100
	jl	.label_51
.label_45:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_46:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_50:
	mov	qword ptr [r14 + 0x10], rbp
	jmp	.label_46
.label_39:
	call	abort
.label_43:
	mov	edi, OFFSET FLAT:label_61
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x437
	mov	ecx, OFFSET FLAT:label_59
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x401e0a
	.globl sub_401e0a
	.type sub_401e0a, @function
sub_401e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [r14 + 1]
	mov	rax, rdi
	shr	rax, 0x3d
	jne	.label_74
	shl	rdi, 2
	call	xmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_78
	mov	r13, r15
	nop	word ptr [rax + rax]
.label_66:
	movzx	r12d, byte ptr [rbx]
	movzx	ebp, r12b
	mov	eax, ebp
	add	al, 0xf9
	movzx	eax, al
	cmp	al, 6
	ja	.label_68
	jmp	qword ptr [(rax * 8) + label_75]
.label_843:
	mov	esi, OFFSET FLAT:label_76
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_68:
	cmp	r12b, 0x5c
	mov	esi, OFFSET FLAT:label_63
	je	.label_64
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_71
	mov	esi, 1
	mov	edx, 5
	mov	ecx, OFFSET FLAT:label_73
	xor	eax, eax
	lea	r12, [rsp + 3]
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	mov	rsi, r12
	jmp	.label_64
.label_844:
	mov	esi, OFFSET FLAT:label_65
	jmp	.label_64
.label_845:
	mov	esi, OFFSET FLAT:label_77
	jmp	.label_64
.label_846:
	mov	esi, OFFSET FLAT:label_67
	jmp	.label_64
.label_847:
	mov	esi, OFFSET FLAT:label_70
	jmp	.label_64
.label_848:
	mov	esi, OFFSET FLAT:label_72
	jmp	.label_64
.label_849:
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_64
.label_71:
	mov	byte ptr [rsp + 3], r12b
	mov	byte ptr [rsp + 4], 0
	lea	rsi, [rsp + 3]
	nop	dword ptr [rax]
.label_64:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	inc	rbx
	dec	r14
	jne	.label_66
.label_78:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_74:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f2e
	.globl sub_401f2e
	.type sub_401f2e, @function
sub_401f2e:

	nop	
.label_85:
	test	rcx, rcx
	jne	.label_82
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_82:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_81
.label_84:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_79
	test	rbx, rbx
	jne	.label_79
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_81:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f81
	.globl sub_401f81
	.type sub_401f81, @function
sub_401f81:

	nop	word ptr [rax + rax]
.label_83:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f8f
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_85
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_83
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_84
.label_79:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_80
	test	rax, rax
	je	.label_83
.label_80:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fd0
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
	#Procedure 0x401fdf
	.globl sub_401fdf
	.type sub_401fdf, @function
sub_401fdf:

	nop	
.label_90:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_86
	mov	qword ptr [rsi], rbx
.label_88:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_87
	test	rax, rax
	je	.label_86
.label_87:
	pop	rbx
	ret	
.label_86:
	call	xalloc_die
.label_89:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402012
	.globl sub_402012
	.type sub_402012, @function
sub_402012:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40201e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_90
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_89
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_88
	call	free
	xor	eax, eax
	jmp	.label_87
.label_91:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40208a

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	push	rbx
	mov	rax, rsi
	mov	rbx, rdi
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, rax
	call	safe_read
	test	rax, rax
	je	.label_92
	cmp	rax, -1
	je	.label_91
	lea	rcx, [rax - 1]
	mov	esi, eax
	and	esi, 3
	xor	edx, edx
	cmp	rcx, 3
	jb	.label_93
	mov	r8, rax
	sub	r8, rsi
	xor	edx, edx
.label_95:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ecx, byte ptr [rdi + xlate]
	mov	byte ptr [rbx + rdx], cl
	movzx	ecx, byte ptr [rbx + rdx + 1]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 1], cl
	movzx	ecx, byte ptr [rbx + rdx + 2]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 2], cl
	movzx	ecx, byte ptr [rbx + rdx + 3]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 3], cl
	add	rdx, 4
	cmp	r8, rdx
	jne	.label_95
.label_93:
	test	rsi, rsi
	je	.label_92
	add	rbx, rdx
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_94:
	movzx	edx, byte ptr [rbx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rbx], dl
	inc	rbx
	inc	rsi
	jne	.label_94
.label_92:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402140

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_98
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_97
	cmp	dword ptr [rbp], 0x20
	jne	.label_97
.label_98:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_100
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_100:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_99:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_99
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_16
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402200

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_110
	call	setlocale
	mov	edi, OFFSET FLAT:label_239
	mov	esi, OFFSET FLAT:label_240
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_239
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_117
	.section	.text
	.align	32
	#Procedure 0x402252
	.globl sub_402252
	.type sub_402252, @function
sub_402252:

	nop	word ptr cs:[rax + rax]
.label_694:
	mov	byte ptr [rip + complement],  1
.label_117:
	mov	edx, OFFSET FLAT:label_157
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x40
	jle	.label_161
	add	eax, -0x41
	cmp	eax, 0x33
	ja	.label_179
	jmp	qword ptr [(rax * 8) + label_182]
.label_693:
	mov	edi, 3
	mov	esi, OFFSET FLAT:label_185
	call	setlocale
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	call	setlocale
	jmp	.label_117
.label_695:
	mov	byte ptr [rip + delete],  1
	jmp	.label_117
.label_696:
	mov	byte ptr [rip + squeeze_repeats],  1
	jmp	.label_117
.label_697:
	mov	byte ptr [rip + truncate_set1],  1
	jmp	.label_117
.label_161:
	cmp	eax, -1
	jne	.label_207
	mov	r12d, ebp
	sub	r12d, dword ptr [rip + optind]
	movzx	ebx, byte ptr [rip + delete]
	cmp	r12d, 2
	je	.label_223
	xor	eax, eax
	jmp	.label_230
.label_223:
	mov	al, bl
	xor	al, 1
.label_230:
	mov	byte ptr [rip + translating],  al
	mov	al, byte ptr [rip + squeeze_repeats]
	mov	ecx, ebx
	xor	cl, al
	movzx	ecx, cl
	mov	edx, 2
	mov	esi, 2
	sub	esi, ecx
	xor	ebx, 1
	inc	ebx
	test	al, al
	cmovne	ebx, edx
	cmp	r12d, esi
	jl	.label_234
	cmp	ebx, r12d
	jl	.label_251
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x10]
	call	parse_str
	mov	ebp, 1
	test	al, al
	je	.label_263
	xor	r14d, r14d
	cmp	r12d, 2
	jne	.label_265
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x178], rax
	mov	qword ptr [rsp + 0x170], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 8]
	lea	r14, [rsp + 0x170]
	mov	rsi, r14
	call	parse_str
	test	al, al
	je	.label_263
.label_265:
	lea	rdi, [rsp + 0x10]
	call	get_spec_stats
	cmp	byte ptr [rip + complement],  1
	jne	.label_184
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x160], xmm0
	movdqa	xmmword ptr [rsp + 0x150], xmm0
	movdqa	xmmword ptr [rsp + 0x140], xmm0
	movdqa	xmmword ptr [rsp + 0x130], xmm0
	movdqa	xmmword ptr [rsp + 0x120], xmm0
	movdqa	xmmword ptr [rsp + 0x110], xmm0
	movdqa	xmmword ptr [rsp + 0x100], xmm0
	movdqa	xmmword ptr [rsp + 0xf0], xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	mov	ecx, 0x100
	cmp	eax, -1
	je	.label_160
	mov	ebp, 0x100
	lea	rbx, [rsp + 0x10]
	nop	
.label_103:
	cdqe	
	movzx	ecx, byte ptr [rsp + rax + 0x70]
	xor	ecx, 1
	sub	ebp, ecx
	mov	byte ptr [rsp + rax + 0x70], 1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_103
	movsxd	rcx, ebp
.label_160:
	mov	qword ptr [rsp + 0x28], rcx
.label_184:
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_120
	test	r14, r14
	je	.label_107
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	call	get_spec_stats
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, rbx
	sub	rcx, rdx
	jb	.label_227
	cmp	rax, 1
	jne	.label_227
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [rax + 0x18], rcx
	mov	qword ptr [r14 + 0x18], rbx
	mov	eax, 1
	mov	rdx, rbx
	jmp	.label_231
.label_227:
	cmp	rax, 2
	jae	.label_237
.label_231:
	cmp	byte ptr [rip + translating],  0
	je	.label_241
	mov	eax, dword ptr [r14 + 0x30]
	test	al, al
	jne	.label_244
	test	eax, 0xff0000
	jne	.label_250
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [r14 + 8]
	movzx	eax, word ptr [r14 + 0x30]
	cmp	eax, 0x100
	jae	.label_253
	mov	rcx, rdx
	mov	rax, rdi
	jmp	.label_257
.label_241:
	test	rax, rax
	je	.label_107
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	jmp	.label_189
.label_253:
	mov	qword ptr [rsp + 0x68], rdi
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x4c], r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	pxor	xmm8, xmm8
	xor	ecx, ecx
	movdqa	xmm9, xmmword ptr [rip + label_272]
	pand	xmm9, xmmword ptr [rip + label_273]
	pxor	xmm1, xmm1
	pxor	xmm0, xmm0
	pxor	xmm5, xmm5
	pxor	xmm4, xmm4
	nop	word ptr cs:[rax + rax]
.label_283:
	movd	xmm6, dword ptr [rax + rcx*2]
	punpcklwd	xmm6, xmm8
	punpckldq	xmm6, xmm8
	movd	xmm7, dword ptr [rax + rcx*2 + 4]
	punpcklwd	xmm7, xmm8
	punpckldq	xmm7, xmm8
	movdqa	xmm2, xmm6
	psrlq	xmm2, 8
	movdqa	xmm3, xmm7
	psrlq	xmm3, 8
	pand	xmm2, xmm9
	pand	xmm3, xmm9
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	psrlq	xmm6, 9
	psrlq	xmm7, 9
	pand	xmm6, xmm9
	pand	xmm7, xmm9
	paddq	xmm5, xmm6
	paddq	xmm4, xmm7
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_283
	paddq	xmm4, xmm5
	pshufd	xmm2, xmm4, 0x4e
	paddq	xmm2, xmm4
	movq	r15, xmm2
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r12, xmm1
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	mov	r13b, 1
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_271:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	lea	rsi, [rsp + 0xc]
	call	get_next
	mov	ecx, dword ptr [rsp + 0xc]
	test	r13b, r13b
	je	.label_181
	cmp	ecx, 2
	je	.label_181
	test	bl, bl
	je	.label_186
	cmp	dword ptr [rsp + 0x70], 2
	je	.label_186
.label_181:
	cmp	ecx, 2
	jne	.label_191
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_192
	.section	.text
	.align	32
	#Procedure 0x4026bf
	.globl sub_4026bf
	.type sub_4026bf, @function
sub_4026bf:

	nop	
.label_191:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], -1
	mov	rdx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 8], rdx
	mov	qword ptr [r14 + 0x10], -1
	cmp	dword ptr [rsp + 0x70], 1
	mov	rdx, r15
	cmove	rdx, r12
	mov	rsi, qword ptr [rsp + 0x28]
	neg	rdx
	lea	rdx, [rsi + rdx + 1]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	ecx, 1
	mov	rcx, r15
	cmove	rcx, r12
	mov	edx, 1
	sub	rdx, rcx
	add	qword ptr [r14 + 0x18], rdx
	mov	rdx, -1
	mov	rcx, -1
.label_192:
	cmp	rdx, -1
	sete	bl
	cmp	rcx, -1
	sete	r13b
	cmp	ebp, -1
	je	.label_252
	cmp	eax, -1
	jne	.label_271
.label_252:
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rsp + 0x68], rax
	jb	.label_258
	mov	rcx, qword ptr [r14 + 0x18]
	cmp	qword ptr [rsp + 0x60], rcx
	jb	.label_258
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [r14 + 8], rsi
	mov	r12d, dword ptr [rsp + 0x4c]
.label_257:
	mov	rbx, rax
	sub	rbx, rcx
	jbe	.label_270
	mov	dl, byte ptr [rip + truncate_set1]
	test	dl, dl
	jne	.label_270
	test	rcx, rcx
	je	.label_276
	cmp	byte ptr [rip + translating],  0
	je	.label_277
	mov	eax, dword ptr [rsi]
	cmp	rax, 4
	ja	.label_279
	jmp	qword ptr [(rax * 8) + label_281]
.label_811:
	add	rsi, 0x10
	jmp	.label_162
.label_812:
	add	rsi, 0x11
.label_162:
	mov	bpl, byte ptr [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], bpl
	mov	qword ptr [rax + 0x18], rbx
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_287
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0x18], rax
	mov	rcx, rax
.label_270:
	cmp	byte ptr [rip + complement],  1
	jne	.label_107
	cmp	byte ptr [rsp + 0x41], 0
	je	.label_107
	cmp	rcx, rax
	jne	.label_193
	mov	qword ptr [r14 + 0x10], -2
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_193
	nop	dword ptr [rax]
.label_288:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_107
	cmp	eax, ebx
	je	.label_288
.label_193:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	jmp	.label_189
.label_107:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	mov	al, byte ptr [rip + squeeze_repeats]
	cmp	r12d, 1
	jne	.label_158
	test	al, 1
	je	.label_158
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_187
	lea	rbx, [rsp + 0x10]
	nop	
.label_202:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_202
.label_187:
	test	bpl, 1
	je	.label_205
	movdqa	xmm0, xmmword ptr [rip + label_163]
	movdqa	xmm1, xmmword ptr [rip + in_squeeze_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_208]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_squeeze_set],  xmm1
	movdqa	xmmword ptr [rip + label_208],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_209]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_210]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_209],  xmm1
	movdqa	xmmword ptr [rip + label_210],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_211]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_212]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_211],  xmm1
	movdqa	xmmword ptr [rip + label_212],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_213]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_214]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_213],  xmm1
	movdqa	xmmword ptr [rip + label_214],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_215]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_216]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_215],  xmm1
	movdqa	xmmword ptr [rip + label_216],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_217]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_218]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_217],  xmm1
	movdqa	xmmword ptr [rip + label_218],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_219]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_220]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_219],  xmm1
	movdqa	xmmword ptr [rip + label_220],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_221]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_222]
	movdqa	xmmword ptr [rip + label_221],  xmm1
	movdqa	xmmword ptr [rip + label_222],  xmm0
.label_205:
	mov	edi, OFFSET FLAT:plain_read
	jmp	.label_109
.label_158:
	mov	cl, byte ptr [rip + delete]
	cmp	r12d, 1
	jne	.label_111
	test	cl, 1
	je	.label_111
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_122
	lea	rbx, [rsp + 0x10]
	nop	
.label_159:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_159
.label_122:
	test	bpl, 1
	je	.label_104
	movdqa	xmm0, xmmword ptr [rip + label_163]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_164]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_164],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_165]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_166]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_165],  xmm1
	movdqa	xmmword ptr [rip + label_166],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_167]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_168]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_167],  xmm1
	movdqa	xmmword ptr [rip + label_168],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_169]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_170]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_169],  xmm1
	movdqa	xmmword ptr [rip + label_170],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_171]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_172]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_171],  xmm1
	movdqa	xmmword ptr [rip + label_172],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_173]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_174]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_173],  xmm1
	movdqa	xmmword ptr [rip + label_174],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_175]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_176]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_175],  xmm1
	movdqa	xmmword ptr [rip + label_176],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_177]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_178]
	movdqa	xmmword ptr [rip + label_177],  xmm1
	movdqa	xmmword ptr [rip + label_178],  xmm0
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	read_and_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_102
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	je	.label_104
.label_200:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
.label_195:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_111:
	cmp	r12d, 2
	sete	dl
	and	dl, cl
	and	al, dl
	cmp	al, 1
	jne	.label_118
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_156
	lea	rbx, [rsp + 0x10]
	nop	
.label_242:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_242
.label_156:
	test	bpl, 1
	je	.label_180
	movdqa	xmm0, xmmword ptr [rip + label_163]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_164]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_164],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_165]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_166]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_165],  xmm1
	movdqa	xmmword ptr [rip + label_166],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_167]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_168]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_167],  xmm1
	movdqa	xmmword ptr [rip + label_168],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_169]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_170]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_169],  xmm1
	movdqa	xmmword ptr [rip + label_170],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_171]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_172]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_171],  xmm1
	movdqa	xmmword ptr [rip + label_172],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_173]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_174]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_173],  xmm1
	movdqa	xmmword ptr [rip + label_174],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_175]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_176]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_175],  xmm1
	movdqa	xmmword ptr [rip + label_176],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_177]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_178]
	movdqa	xmmword ptr [rip + label_177],  xmm1
	movdqa	xmmword ptr [rip + label_178],  xmm0
.label_180:
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_286
.label_289:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_286:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_289
	mov	edi, OFFSET FLAT:read_and_delete
	jmp	.label_109
.label_118:
	cmp	byte ptr [rip + translating],  0
	je	.label_102
	cmp	byte ptr [rip + complement],  1
	jne	.label_108
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_115
	lea	rbx, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_121:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_121
.label_115:
	mov	qword ptr [r14 + 0x10], -2
	movaps	xmm0, xmmword ptr [rip + label_123]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_124]
	movaps	xmmword ptr [rip + label_125],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_126]
	movaps	xmmword ptr [rip + label_127],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_128]
	movaps	xmmword ptr [rip + label_129],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_130]
	movaps	xmmword ptr [rip + label_131],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_132]
	movaps	xmmword ptr [rip + label_133],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_134]
	movaps	xmmword ptr [rip + label_135],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_136]
	movaps	xmmword ptr [rip + label_137],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rip + label_139],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_140]
	movaps	xmmword ptr [rip + label_141],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_142]
	movaps	xmmword ptr [rip + label_143],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rip + label_145],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_146]
	movaps	xmmword ptr [rip + label_147],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_148]
	movaps	xmmword ptr [rip + label_149],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_150]
	movaps	xmmword ptr [rip + label_151],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_152]
	movdqa	xmmword ptr [rip + label_153],  xmm0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_266:
	cmp	byte ptr [rbx + in_delete_set],  0
	jne	.label_260
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_264
	mov	byte ptr [rbx + xlate],  al
.label_260:
	inc	rbx
	cmp	rbx, 0x100
	jl	.label_266
	jmp	.label_269
.label_108:
	movaps	xmm0, xmmword ptr [rip + label_123]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_124]
	movaps	xmmword ptr [rip + label_125],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_126]
	movaps	xmmword ptr [rip + label_127],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_128]
	movaps	xmmword ptr [rip + label_129],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_130]
	movaps	xmmword ptr [rip + label_131],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_132]
	movaps	xmmword ptr [rip + label_133],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_134]
	movaps	xmmword ptr [rip + label_135],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_136]
	movaps	xmmword ptr [rip + label_137],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_138]
	movaps	xmmword ptr [rip + label_139],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_140]
	movaps	xmmword ptr [rip + label_141],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_142]
	movaps	xmmword ptr [rip + label_143],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_144]
	movaps	xmmword ptr [rip + label_145],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_146]
	movaps	xmmword ptr [rip + label_147],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_148]
	movaps	xmmword ptr [rip + label_149],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_150]
	movaps	xmmword ptr [rip + label_151],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_152]
	movdqa	xmmword ptr [rip + label_153],  xmm0
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	lea	r13, [rsp + 0xc]
	jmp	.label_228
	.section	.text
	.align	32
	#Procedure 0x40307d
	.globl sub_40307d
	.type sub_40307d, @function
sub_40307d:

	nop	dword ptr [rax]
.label_259:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], -1
	mov	rax, qword ptr [r14 + 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_228:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r13
	call	get_next
	mov	ecx, dword ptr [rsp + 0x70]
	mov	r12d, dword ptr [rsp + 0xc]
	test	ecx, ecx
	jne	.label_204
	cmp	r12d, 1
	jne	.label_204
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_238:
	test	byte ptr [rbp + r15*2 + 1], 2
	je	.label_278
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r15*4]
	mov	byte ptr [r15 + xlate],  al
.label_278:
	inc	r15
	cmp	r15, 0x100
	jne	.label_238
	jmp	.label_183
	.section	.text
	.align	32
	#Procedure 0x40311a
	.globl sub_40311a
	.type sub_40311a, @function
sub_40311a:

	nop	word ptr [rax + rax]
.label_204:
	cmp	ecx, 1
	jne	.label_247
	test	r12d, r12d
	jne	.label_247
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_291:
	test	byte ptr [rbp + rbx*2 + 1], 1
	je	.label_256
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbx*4]
	mov	byte ptr [rbx + xlate],  al
.label_256:
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_291
	jmp	.label_183
	.section	.text
	.align	32
	#Procedure 0x403167
	.globl sub_403167
	.type sub_403167, @function
sub_403167:

	nop	word ptr [rax + rax]
.label_247:
	cmp	ebp, -1
	je	.label_201
	cmp	eax, -1
	je	.label_201
	movsxd	rcx, ebp
	mov	byte ptr [rcx + xlate],  al
.label_183:
	cmp	r12d, 2
	je	.label_228
	jmp	.label_259
.label_201:
	cmp	ebp, -1
	je	.label_269
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	jne	.label_269
	mov	edi, OFFSET FLAT:label_284
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x762
	mov	ecx, OFFSET FLAT:label_268
	call	__assert_fail
.label_264:
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	je	.label_282
.label_269:
	mov	al, byte ptr [rip + squeeze_repeats]
	test	al, al
	je	.label_116
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x4031dc
	.globl sub_4031dc
	.type sub_4031dc, @function
sub_4031dc:

	nop	dword ptr [rax]
.label_248:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_285:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_248
	mov	edi, OFFSET FLAT:read_and_xlate
.label_109:
	call	squeeze_filter
.label_102:
	xor	ebp, ebp
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_105
.label_263:
	mov	eax, ebp
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_116:
	xor	edi, edi
	mov	esi, OFFSET FLAT:io_buf
	mov	edx, 0x2000
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_102
	cmp	rbp, -1
	je	.label_243
	lea	rcx, [rbp - 1]
	mov	eax, ebp
	and	eax, 3
	cmp	rcx, 3
	mov	ecx, 0
	jb	.label_119
	mov	rdx, rbp
	sub	rdx, rax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_199:
	movzx	esi, byte ptr [rcx + io_buf]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + io_buf],  bl
	movzx	esi, byte ptr [rcx + label_196]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_196],  bl
	movzx	esi, byte ptr [rcx + label_197]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_197],  bl
	movzx	esi, byte ptr [rcx + label_198]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_198],  bl
	add	rcx, 4
	cmp	rdx, rcx
	jne	.label_199
.label_119:
	test	rax, rax
	je	.label_206
	lea	rcx, qword ptr [rcx + io_buf]
	neg	rax
	nop	dword ptr [rax + rax]
.label_226:
	movzx	edx, byte ptr [rcx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rcx], dl
	inc	rcx
	inc	rax
	jne	.label_226
.label_206:
	test	rbp, rbp
	je	.label_102
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
	cmp	rax, rbp
	je	.label_116
	jmp	.label_200
.label_207:
	cmp	eax, 0xffffff7d
	je	.label_249
	cmp	eax, 0xffffff7e
	jne	.label_179
	xor	edi, edi
	call	usage
.label_249:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_254
	mov	edx, OFFSET FLAT:label_37
	mov	r8d, OFFSET FLAT:label_255
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_179:
	mov	edi, 1
	call	usage
.label_186:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	jmp	.label_189
.label_234:
	xor	edi, edi
	test	r12d, r12d
	jne	.label_233
	mov	esi, OFFSET FLAT:label_274
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
.label_251:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	movsxd	rcx, ebx
	add	rcx, rax
	mov	rdi, qword ptr [r15 + rcx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	cmp	r12d, 2
	jne	.label_275
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_106
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_275:
	mov	edi, 1
	call	usage
.label_233:
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rbx, qword ptr [rip + stderr]
	mov	al, byte ptr [rip + squeeze_repeats]
	mov	ecx, OFFSET FLAT:label_154
	mov	esi, OFFSET FLAT:label_155
	test	al, al
	cmovne	rsi, rcx
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_106
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	jmp	.label_189
.label_105:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	jmp	.label_195
.label_244:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	jmp	.label_189
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	jmp	.label_189
.label_258:
	mov	edi, OFFSET FLAT:label_224
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x4c5
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	jmp	.label_189
.label_276:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	jmp	.label_189
.label_277:
	mov	edi, OFFSET FLAT:label_112
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x55e
	mov	ecx, OFFSET FLAT:label_113
	call	__assert_fail
.label_287:
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_246
	call	__assert_fail
.label_243:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	jmp	.label_195
.label_279:
	call	abort
.label_813:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
.label_189:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_282:
	mov	edi, OFFSET FLAT:label_267
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x72d
	mov	ecx, OFFSET FLAT:label_268
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40358e
	.globl sub_40358e
	.type sub_40358e, @function
sub_40358e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403590

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_292
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_292
	test	byte ptr [rbx + 1], 1
	je	.label_292
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_292:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4035c3
	.globl sub_4035c3
	.type sub_4035c3, @function
sub_4035c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035d0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x4035d5
	.globl sub_4035d5
	.type sub_4035d5, @function
sub_4035d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035e0

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
.label_294:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_293
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_294
	cmp	rbx, 0x7ff00001
	jb	.label_293
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_294
.label_293:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403633
	.globl sub_403633
	.type sub_403633, @function
sub_403633:

	nop	word ptr cs:[rax + rax]
.label_295:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403645
	.globl sub_403645
	.type sub_403645, @function
sub_403645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403650
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
	je	.label_295
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
	#Procedure 0x4036e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_110
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_296
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403705
	.globl sub_403705
	.type sub_403705, @function
sub_403705:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x403765
	.globl sub_403765
	.type sub_403765, @function
sub_403765:

	nop	word ptr cs:[rax + rax]
.label_297:
	mov	byte ptr [rbx + rcx], dil
	inc	rcx
	mov	rsi, rdx
	nop	word ptr cs:[rax + rax]
.label_300:
	lea	rdx, [rsi + 1]
	cmp	rdx, rax
	jae	.label_303
	movzx	edi, byte ptr [rbx + rsi + 1]
	cmp	byte ptr [rdi + in_delete_set],  0
	mov	rsi, rdx
	jne	.label_300
	jmp	.label_297
	.section	.text
	.align	32
	#Procedure 0x4037a2
	.globl sub_4037a2
	.type sub_4037a2, @function
sub_4037a2:

	nop	dword ptr [rax]
.label_303:
	test	rcx, rcx
	je	.label_298
.label_299:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037b6

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
.label_298:
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	call	safe_read
	test	rax, rax
	mov	ecx, 0
	je	.label_299
	cmp	rax, -1
	je	.label_304
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_301:
	movzx	edx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdx + in_delete_set],  0
	jne	.label_305
	inc	rcx
	cmp	rcx, rax
	jb	.label_301
.label_305:
	mov	rsi, rcx
	jmp	.label_300
.label_304:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
.label_770:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x4000
	jmp	.label_302
.label_763:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 8
	jmp	.label_302
.label_772:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x2000
	jmp	.label_302
.label_766:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 2
	jmp	.label_302
.label_768:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x8000
	jmp	.label_302
.label_773:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x100
.label_302:
	test	eax, eax
	setne	al
	pop	rbx
	ret	
.label_771:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 4
	jmp	.label_302
.label_764:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x400
	jmp	.label_302
.label_769:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x200
	jmp	.label_302
	.section	.text
	.align	32
	#Procedure 0x403907

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	push	rbx
	mov	eax, edi
	cmp	edi, 0xb
	ja	.label_306
	jmp	qword ptr [(rax * 8) + label_307]
.label_306:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40391f
	.globl sub_40391f
	.type sub_40391f, @function
sub_40391f:

	nop
	nop	dword ptr [rax]
.label_774:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x1000
	jmp	.label_302
.label_767:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x800
	jmp	.label_302
.label_765:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	jmp	.label_302
	.section	.text
	.align	32
	#Procedure 0x403970
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_308:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_308
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403991
	.globl sub_403991
	.type sub_403991, @function
sub_403991:

	nop	word ptr cs:[rax + rax]
.label_311:
	mov	qword ptr [r14 + 0x18], r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_314:
	call	abort
.label_702:
	mov	byte ptr [r14 + 0x31], 1
	mov	ebp, dword ptr [r13 + 0x10]
	xor	r15d, r15d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_316:
	movzx	esi, r15b
	mov	edi, ebp
	call	is_char_class_member
	movzx	eax, al
	add	rbx, rax
	inc	r15d
	cmp	r15d, 0x100
	jne	.label_316
	cmp	ebp, 6
	je	.label_310
	cmp	ebp, 0xa
	je	.label_310
	mov	byte ptr [r14 + 0x32], 1
	jmp	.label_310
.label_315:
	mov	edi, OFFSET FLAT:label_312
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x4ee
	mov	ecx, OFFSET FLAT:label_313
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403a26
	.globl sub_403a26
	.type sub_403a26, @function
sub_403a26:

	nop	dword ptr [rax + rax]
.label_703:
	mov	al, byte ptr [r13 + 0x10]
	xor	ecx, ecx
	mov	edx, eax
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_309:
	cmp	dl, 1
	adc	rbx, 0
	mov	esi, ecx
	or	esi, 1
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbx
	mov	esi, ecx
	or	esi, 2
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 3
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 4
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 5
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 6
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 7
	xor	ebx, ebx
	cmp	al, sil
	sete	bl
	add	rbx, rbp
	add	ecx, 8
	add	dl, 0xf8
	cmp	ecx, 0x100
	jne	.label_309
	mov	byte ptr [r14 + 0x30], 1
	jmp	.label_310
.label_701:
	movzx	ebx, byte ptr [r13 + 0x11]
	movzx	eax, byte ptr [r13 + 0x10]
	cmp	bl, al
	jb	.label_315
	inc	rbx
	sub	rbx, rax
	jmp	.label_310
.label_704:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_310
	mov	qword ptr [r14 + 0x28], r13
	mov	rax, qword ptr [rsp]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp], rax
	mov	qword ptr [r14 + 0x20], rcx
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_310:
	add	rbx, r12
	cmp	r12, rbx
	ja	.label_320
	cmp	rbx, -1
	mov	r12, rbx
	jne	.label_317
.label_320:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x403b59

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	qword ptr [r14 + 0x20], 0
	mov	byte ptr [r14 + 0x32], 0
	mov	word ptr [r14 + 0x30], 0
	mov	r13, qword ptr [r14]
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
	nop	
.label_317:
	mov	r13, qword ptr [r13 + 8]
	test	r13, r13
	je	.label_311
	mov	ebx, 1
	mov	eax, dword ptr [r13]
	cmp	rax, 4
	ja	.label_314
	jmp	qword ptr [(rax * 8) + label_318]
	.section	.text
	.align	32
	#Procedure 0x403bb0

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
.label_349:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_346
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_352]
.label_724:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_357
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_363
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_725:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_376
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_376
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_392:
	cmp	r14, r11
	jae	.label_424
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_424:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_392
.label_376:
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
	jmp	.label_397
.label_717:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_397
.label_720:
	mov	al, 1
.label_718:
	mov	r12b, 1
.label_721:
	test	r12b, 1
	mov	cl, 1
	je	.label_407
	mov	ecx, eax
.label_407:
	mov	al, cl
.label_719:
	test	r12b, 1
	jne	.label_409
	test	r11, r11
	je	.label_359
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_359:
	mov	r14d, 1
	jmp	.label_412
.label_409:
	xor	r14d, r14d
.label_412:
	mov	ecx, OFFSET FLAT:label_363
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_397
.label_722:
	test	r12b, 1
	jne	.label_425
	test	r11, r11
	je	.label_427
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_427:
	mov	r14d, 1
	jmp	.label_430
.label_723:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_432
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_397
.label_425:
	xor	r14d, r14d
.label_430:
	mov	eax, OFFSET FLAT:label_432
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_397:
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
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x403e9d
	.globl sub_403e9d
	.type sub_403e9d, @function
sub_403e9d:

	nop	dword ptr [rax]
.label_393:
	inc	rsi
.label_327:
	cmp	rbp, -1
	je	.label_367
	cmp	rsi, rbp
	jne	.label_369
	jmp	.label_372
	.section	.text
	.align	32
	#Procedure 0x403eb3
	.globl sub_403eb3
	.type sub_403eb3, @function
sub_403eb3:

	nop	word ptr cs:[rax + rax]
.label_367:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_377
.label_369:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_356
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_385
	cmp	rbp, -1
	jne	.label_385
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
.label_385:
	cmp	rbx, rbp
	jbe	.label_398
.label_356:
	xor	r8d, r8d
.label_333:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_400
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_402]
.label_735:
	test	rsi, rsi
	jne	.label_387
	jmp	.label_406
	.section	.text
	.align	32
	#Procedure 0x403f55
	.globl sub_403f55
	.type sub_403f55, @function
sub_403f55:

	nop	word ptr cs:[rax + rax]
.label_398:
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
	jne	.label_416
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_333
	jmp	.label_378
.label_416:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_333
.label_739:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_438
	test	rsi, rsi
	jne	.label_439
	cmp	rbp, 1
	je	.label_406
	xor	r13d, r13d
	jmp	.label_343
.label_728:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_322
	cmp	byte ptr [rsp + 6], 0
	jne	.label_326
	cmp	r12d, 2
	jne	.label_330
	mov	eax, r9d
	and	al, 1
	jne	.label_330
	cmp	r14, r11
	jae	.label_334
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_334:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_339
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_339:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_428
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_428:
	add	r14, 3
	mov	r9b, 1
.label_330:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_342:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_353
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_353
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_353
	cmp	r14, r11
	jae	.label_388
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_388:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_410
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_410:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_343
.label_729:
	mov	bl, 0x62
	jmp	.label_383
.label_730:
	mov	cl, 0x74
	jmp	.label_395
.label_731:
	mov	bl, 0x76
	jmp	.label_383
.label_732:
	mov	bl, 0x66
	jmp	.label_383
.label_733:
	mov	cl, 0x72
	jmp	.label_395
.label_736:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_390
	cmp	byte ptr [rsp + 6], 0
	jne	.label_354
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
	jae	.label_396
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_396:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_405
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_405:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_408
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_408:
	add	r14, 3
	xor	r9d, r9d
.label_390:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_343
.label_737:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_414
	cmp	r12d, 2
	jne	.label_387
	cmp	byte ptr [rsp + 6], 0
	je	.label_387
	jmp	.label_354
.label_738:
	cmp	r12d, 2
	jne	.label_426
	cmp	byte ptr [rsp + 6], 0
	jne	.label_354
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_348
.label_400:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_435
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
.label_335:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_329
	test	r8b, r8b
	je	.label_329
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_343
.label_438:
	test	rsi, rsi
	jne	.label_351
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_351
.label_406:
	mov	dl, 1
.label_734:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_354
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_343:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_361
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_362
	jmp	.label_366
	.section	.text
	.align	32
	#Procedure 0x4042a4
	.globl sub_4042a4
	.type sub_4042a4, @function
sub_4042a4:

	nop	word ptr cs:[rax + rax]
.label_361:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_366
.label_362:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_374
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_348
	jmp	.label_389
	.section	.text
	.align	32
	#Procedure 0x4042ed
	.globl sub_4042ed
	.type sub_4042ed, @function
sub_4042ed:

	nop	dword ptr [rax]
.label_366:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_389
	jmp	.label_348
.label_374:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_389
.label_322:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_393
	xor	r15d, r15d
	jmp	.label_387
.label_426:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_395
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_348
.label_395:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_354
.label_383:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_343
	nop	word ptr cs:[rax + rax]
.label_389:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_326
	cmp	r12d, 2
	jne	.label_370
	mov	eax, r9d
	and	al, 1
	jne	.label_370
	cmp	r14, r11
	jae	.label_338
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_338:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_417
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_417:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_421
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	add	r14, 3
	mov	r9b, 1
.label_370:
	cmp	r14, r11
	jae	.label_429
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_429:
	inc	r14
	jmp	.label_433
.label_435:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_436
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_436:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_391:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_337
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_341
	cmp	rbp, -2
	je	.label_345
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_324
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_423:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_404
	bt	rsi, rdx
	jb	.label_365
.label_404:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_423
.label_324:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_441
	xor	r13d, r13d
.label_441:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_391
	jmp	.label_335
.label_353:
	xor	r13d, r13d
	jmp	.label_343
.label_351:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_343
.label_414:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_387
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_387
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_387
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_399
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_413
	cmp	byte ptr [rsp + 6], 0
	jne	.label_323
	cmp	r14, r11
	jae	.label_437
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_437:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_368
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_368:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_415
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_415:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_419
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_419:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_343
.label_387:
	xor	eax, eax
.label_439:
	xor	r13d, r13d
	jmp	.label_343
.label_329:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_434
	.section	.text
	.align	32
	#Procedure 0x4045d2
	.globl sub_4045d2
	.type sub_4045d2, @function
sub_4045d2:

	nop	word ptr cs:[rax + rax]
.label_394:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_434:
	test	r8b, r8b
	je	.label_440
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_325
	cmp	r14, r11
	jae	.label_442
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_442:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_325
	.section	.text
	.align	32
	#Procedure 0x40461c
	.globl sub_40461c
	.type sub_40461c, @function
sub_40461c:

	nop	dword ptr [rax]
.label_440:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_378
	cmp	r12d, 2
	jne	.label_336
	mov	eax, r9d
	and	al, 1
	jne	.label_336
	cmp	r14, r11
	jae	.label_340
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_340:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_379
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_379:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_347
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_347:
	add	r14, 3
	mov	r9b, 1
.label_336:
	cmp	r14, r11
	jae	.label_371
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_371:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_358
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_358:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_364
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_364:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_325:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_348
	test	r9b, 1
	je	.label_384
	mov	ebx, eax
	and	bl, 1
	jne	.label_384
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_386
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_386:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_373
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_373:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_384:
	cmp	r14, r11
	jae	.label_394
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x404723
	.globl sub_404723
	.type sub_404723, @function
sub_404723:

	nop	word ptr cs:[rax + rax]
.label_348:
	test	r9b, 1
	je	.label_401
	and	al, 1
	jne	.label_401
	cmp	r14, r11
	jae	.label_403
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_403:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_381
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_381:
	add	r14, 2
	xor	r9d, r9d
.label_401:
	mov	ebx, r15d
.label_433:
	cmp	r14, r11
	jae	.label_350
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_350:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_393
.label_341:
	xor	r13d, r13d
.label_337:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_335
.label_345:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_422
	mov	rsi, qword ptr [rsp + 0x58]
.label_431:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_380
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_431
	xor	r13d, r13d
	jmp	.label_335
.label_422:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_335
.label_380:
	xor	r13d, r13d
	jmp	.label_335
.label_399:
	xor	r13d, r13d
	jmp	.label_343
.label_413:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_343
	.section	.text
	.align	32
	#Procedure 0x4047f8
	.globl sub_4047f8
	.type sub_4047f8, @function
sub_4047f8:

	nop	dword ptr [rax + rax]
.label_372:
	mov	rcx, rsi
.label_377:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_321
	or	al, dl
	je	.label_328
.label_321:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_331
	or	al, dl
	jne	.label_331
	test	r10b, 1
	jne	.label_344
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_331
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_349
.label_331:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_355
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_360
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_360
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_375:
	cmp	r14, r11
	jae	.label_332
	mov	byte ptr [rcx + r14], al
.label_332:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_375
	jmp	.label_360
.label_326:
	mov	qword ptr [rsp + 0x20], rbp
.label_378:
	mov	rdx, rdi
	jmp	.label_382
.label_354:
	mov	qword ptr [rsp + 0x20], rbp
.label_365:
	mov	rdx, rdi
	mov	eax, 2
.label_411:
	mov	qword ptr [rsp + 0x38], rax
.label_382:
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
.label_418:
	mov	r14, rax
.label_420:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_328:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_382
.label_344:
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
	jmp	.label_418
.label_355:
	mov	rcx, qword ptr [rsp + 8]
.label_360:
	cmp	r14, r11
	jae	.label_420
	mov	byte ptr [rcx + r14], 0
	jmp	.label_420
.label_323:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_411
.label_346:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049b7
	.globl sub_4049b7
	.type sub_4049b7, @function
sub_4049b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0
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
	je	.label_443
	mov	qword ptr [rax], rbx
.label_443:
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
	#Procedure 0x404aac
	.globl sub_404aac
	.type sub_404aac, @function
sub_404aac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0
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
	je	.label_445
	test	r15, r15
	je	.label_444
.label_445:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_444:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404af2
	.globl sub_404af2
	.type sub_404af2, @function
sub_404af2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_446
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_446:
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
	#Procedure 0x404b83
	.globl sub_404b83
	.type sub_404b83, @function
sub_404b83:

	nop	word ptr cs:[rax + rax]
.label_451:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_447
	mov	eax, OFFSET FLAT:label_448
	jmp	.label_449
	.section	.text
	.align	32
	#Procedure 0x404b9f
	.globl sub_404b9f
	.type sub_404b9f, @function
sub_404b9f:

	nop	word ptr cs:[rax + rax]
.label_454:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_450
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_450
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_450
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_450
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_450
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_450
	cmp	byte ptr [rax + 7], 0
	je	.label_451
.label_450:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_432
	mov	eax, OFFSET FLAT:label_363
.label_449:
	cmove	rax, rcx
.label_455:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bf2

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
	jne	.label_455
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_454
	cmp	ecx, 0x55
	jne	.label_450
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_450
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_450
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_450
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_450
	cmp	byte ptr [rax + 5], 0
	jne	.label_450
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_452
	mov	eax, OFFSET FLAT:label_453
	jmp	.label_449
	.section	.text
	.align	32
	#Procedure 0x404c60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_466
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_468
.label_466:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_468:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_465
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_467
.label_465:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_467:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_463
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_464
.label_463:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_464:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_461
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_462
.label_461:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_462:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_459
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_460
.label_459:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_460:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_456
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_458
.label_456:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_458:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_457
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_457
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_457
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_457
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_457:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e42
	.globl sub_404e42
	.type sub_404e42, @function
sub_404e42:

	nop	word ptr cs:[rax + rax]
.label_469:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404e55
	.globl sub_404e55
	.type sub_404e55, @function
sub_404e55:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404e57
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_469
	test	rdx, rdx
	je	.label_469
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
	.align	32
	#Procedure 0x404ec0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x404f2f
	.globl sub_404f2f
	.type sub_404f2f, @function
sub_404f2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404f30

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15d, 0x7fffffff
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_472
.label_480:
	mov	r15d, 0x7fffffff
	nop	
.label_472:
	cmp	rbx, r12
	mov	rax, rbx
	jb	.label_473
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	r14
	mov	r12, rax
	test	r12, r12
	mov	eax, 0
	je	.label_479
.label_473:
	cmp	r15d, 0x7fffffff
	jne	.label_482
	mov	r15, r12
	sub	r15, rax
	mov	rbx, rax
	jbe	.label_470
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_478:
	movzx	ecx, byte ptr [rbx + io_buf]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	jne	.label_470
	add	rbx, 2
	cmp	rbx, r12
	jb	.label_478
.label_470:
	cmp	rbx, r12
	jne	.label_483
	lea	rbx, [r12 - 1]
	movzx	ecx, byte ptr [r12 + label_481]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	cmove	rbx, r12
.label_483:
	cmp	rbx, r12
	jae	.label_474
	movsx	ebp, byte ptr [rbx + io_buf]
	mov	rcx, rbx
	sub	rcx, rax
	lea	r15, [rcx + 1]
	test	rbx, rbx
	je	.label_475
	cmp	byte ptr [rbx + label_481],  bpl
	cmove	r15, rcx
.label_475:
	inc	rbx
	jmp	.label_484
	.section	.text
	.align	32
	#Procedure 0x405002
	.globl sub_405002
	.type sub_405002, @function
sub_405002:

	nop	word ptr cs:[rax + rax]
.label_482:
	mov	ebp, r15d
	mov	rbx, rax
	jmp	.label_477
	.section	.text
	.align	32
	#Procedure 0x405018
	.globl sub_405018
	.type sub_405018, @function
sub_405018:

	nop	dword ptr [rax + rax]
.label_474:
	mov	ebp, 0x7fffffff
.label_484:
	test	r15, r15
	je	.label_476
	lea	rdi, qword ptr [rax + io_buf]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	cmp	rax, r15
	jne	.label_471
.label_476:
	cmp	ebp, 0x7fffffff
	mov	r15d, 0x7fffffff
	je	.label_472
.label_477:
	cmp	rbx, r12
	mov	r15d, ebp
	jae	.label_472
	nop	dword ptr [rax + rax]
.label_485:
	movsx	eax, byte ptr [rbx + io_buf]
	cmp	eax, ebp
	jne	.label_480
	inc	rbx
	cmp	rbx, r12
	jb	.label_485
	mov	r15d, ebp
	jmp	.label_472
.label_479:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_471:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050d0
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
	#Procedure 0x4050df
	.globl sub_4050df
	.type sub_4050df, @function
sub_4050df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4050e0
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
	#Procedure 0x4050f9
	.globl sub_4050f9
	.type sub_4050f9, @function
sub_4050f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405100

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
	jae	.label_486
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_504:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_504
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_499
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
	je	.label_489
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_497
	cmp	eax, 0x22
	jne	.label_499
	mov	ebp, 1
.label_497:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_498
	jmp	.label_500
.label_489:
	test	r14, r14
	je	.label_499
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_499
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_499
.label_498:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_500
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_490
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_493
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_493
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_493
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_505
	cmp	eax, 0x44
	je	.label_505
	cmp	eax, 0x69
	jne	.label_493
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_493
.label_505:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_493:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_490
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_501]
.label_818:
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
	jmp	.label_502
.label_490:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_487
.label_819:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_491
.label_820:
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
	jmp	.label_503
.label_822:
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
	jmp	.label_507
.label_816:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_506
.label_817:
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
	jmp	.label_503
.label_821:
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
.label_507:
	or	dl, r10b
.label_502:
	or	dl, bl
.label_503:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_488
.label_823:
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
	jmp	.label_492
.label_824:
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
.label_492:
	movzx	eax, dl
.label_491:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_488
.label_825:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_506:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_488
.label_826:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_488:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_500:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_487:
	mov	r13d, r15d
.label_499:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_486:
	mov	edi, OFFSET FLAT:label_494
	mov	esi, OFFSET FLAT:label_495
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_496
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x405731
	.globl sub_405731
	.type sub_405731, @function
sub_405731:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740

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
	#Procedure 0x405759
	.globl sub_405759
	.type sub_405759, @function
sub_405759:

	nop	dword ptr [rax]
.label_510:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405765
	.globl sub_405765
	.type sub_405765, @function
sub_405765:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40576d
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_510
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_509
	test	rbx, rbx
	jne	.label_509
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_509:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_508
	test	rax, rax
	je	.label_510
.label_508:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057b0
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
	#Procedure 0x405871
	.globl sub_405871
	.type sub_405871, @function
sub_405871:

	nop	word ptr cs:[rax + rax]
.label_511:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405885
	.globl sub_405885
	.type sub_405885, @function
sub_405885:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40588d
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
	je	.label_511
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
	.align	32
	#Procedure 0x4058f0
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
	#Procedure 0x405965
	.globl sub_405965
	.type sub_405965, @function
sub_405965:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_512
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_514:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_514
.label_512:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_516
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_515], OFFSET FLAT:slot0
.label_516:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_513
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_513:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a01
	.globl sub_405a01
	.type sub_405a01, @function
sub_405a01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a10

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
	je	.label_526
	mov	edx, OFFSET FLAT:label_532
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_519
.label_526:
	mov	edx, OFFSET FLAT:label_521
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
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
	mov	esi, OFFSET FLAT:label_522
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_527
	jmp	qword ptr [(r12 * 8) + label_528]
.label_777:
	add	rsp, 8
	jmp	.label_520
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
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
	jmp	.label_520
.label_778:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
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
.label_779:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
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
.label_780:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_533
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
.label_781:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_530
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
	jmp	.label_520
.label_782:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_529
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
	jmp	.label_520
.label_783:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_531
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
	jmp	.label_520
.label_784:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
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
	jmp	.label_520
.label_786:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_518
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
	jmp	.label_520
.label_785:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
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
.label_520:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d68
	.globl sub_405d68
	.type sub_405d68, @function
sub_405d68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_537
	cmp	byte ptr [rax], 0x43
	jne	.label_539
	cmp	byte ptr [rax + 1], 0
	je	.label_536
.label_539:
	mov	esi, OFFSET FLAT:label_538
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_537
.label_536:
	xor	ebx, ebx
.label_537:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405da1
	.globl sub_405da1
	.type sub_405da1, @function
sub_405da1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0

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
	jne	.label_541
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_540
	test	cl, cl
	jne	.label_540
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_540
.label_541:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_540
	call	__errno_location
	mov	dword ptr [rax], 0
.label_540:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_542
	test	rbx, rbx
	jne	.label_542
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_542:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_544
	test	rax, rax
	je	.label_543
.label_544:
	pop	rbx
	ret	
.label_543:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405e40
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
	je	.label_546
	test	r14, r14
	je	.label_545
.label_546:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_545:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405e76
	.globl sub_405e76
	.type sub_405e76, @function
sub_405e76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x405ed4
	.globl sub_405ed4
	.type sub_405ed4, @function
sub_405ed4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ee0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_547
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_549
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_547
.label_549:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_547
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_548
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_548:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_547:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x405f54
	.globl sub_405f54
	.type sub_405f54, @function
sub_405f54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f60

	.globl parse_str
	.type parse_str, @function
parse_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x18], rsi
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	rdi, rbx
	call	xmalloc
	mov	r12, rax
	mov	esi, 1
	mov	rdi, rbx
	call	xcalloc
	mov	qword ptr [rsp + 0x30], rax
	mov	r9, rax
	xor	ebx, ebx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x38], r12
	jmp	.label_621
	.section	.text
	.align	32
	#Procedure 0x405fae
	.globl sub_405fae
	.type sub_405fae, @function
sub_405fae:

	nop	
.label_569:
	inc	ebx
	inc	ebp
.label_621:
	mov	eax, ebp
	movzx	eax, byte ptr [r14 + rax]
	cmp	al, 0x5c
	je	.label_626
	test	al, al
	je	.label_629
	mov	ecx, ebx
	mov	byte ptr [r12 + rcx], al
	jmp	.label_569
	.section	.text
	.align	32
	#Procedure 0x405fcf
	.globl sub_405fcf
	.type sub_405fcf, @function
sub_405fcf:

	nop	
.label_626:
	mov	r15d, ebx
	mov	byte ptr [r9 + r15], 1
	lea	r12d, [rbp + 1]
	movsx	eax, byte ptr [r14 + r12]
	cmp	eax, 0x76
	ja	.label_632
	mov	r13b, 0x5c
	jmp	qword ptr [(rax * 8) + label_639]
.label_754:
	add	al, 0xd0
	lea	edx, [rbp + 2]
	movsx	ecx, byte ptr [r14 + rdx]
	add	ecx, -0x30
	cmp	ecx, 7
	ja	.label_632
	movzx	eax, al
	lea	r13d, [rcx + rax*8]
	add	ebp, 3
	movsx	eax, byte ptr [r14 + rbp]
	add	eax, -0x30
	cmp	eax, 7
	ja	.label_550
	movzx	ecx, r13b
	lea	eax, [rax + rcx*8]
	cmp	eax, 0xff
	jg	.label_556
	mov	ebp, edx
	mov	r13b, al
	jmp	.label_559
.label_632:
	mov	r13b, al
	jmp	.label_559
.label_550:
	mov	ebp, r12d
	jmp	.label_559
.label_753:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r9, qword ptr [rsp + 0x10]
	mov	byte ptr [r9 + r15], 0
	dec	ebp
	jmp	.label_559
.label_756:
	mov	r13b, 8
	jmp	.label_559
.label_757:
	mov	r13b, 0xc
	jmp	.label_559
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_580
	mov	qword ptr [rsp + 0x28], rdx
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [r14 + r12]
	mov	rax, qword ptr [rsp + 0x28]
	movsx	r8d, byte ptr [r14 + rax]
	movsx	r9d, byte ptr [r14 + rbp]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	push	r9
	push	r8
	push	rcx
	call	error
	mov	r9, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	mov	ebp, r12d
	jmp	.label_559
.label_755:
	mov	r13b, 7
	jmp	.label_559
.label_759:
	mov	r13b, 0xd
	jmp	.label_559
.label_760:
	mov	r13b, 9
	jmp	.label_559
.label_761:
	mov	r13b, 0xb
	jmp	.label_559
.label_758:
	mov	r13b, 0xa
	nop	word ptr cs:[rax + rax]
.label_559:
	inc	ebp
	mov	r12, qword ptr [rsp + 0x38]
	mov	byte ptr [r12 + r15], r13b
	jmp	.label_569
.label_629:
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	cmp	ebx, 3
	jb	.label_588
	mov	rax, qword ptr [rsp + 0x20]
	dec	rax
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r12 + 3]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x50], rcx
	add	rax, 3
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	r15d, 2
.label_595:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_584:
	movzx	r13d, byte ptr [r12 + rbx]
	cmp	r13, 0x5b
	jne	.label_552
	cmp	byte ptr [r9 + rbx], 0
	jne	.label_552
	mov	r14b, byte ptr [r12 + rbx + 1]
	cmp	r14b, 0x3d
	je	.label_617
	cmp	r14b, 0x3a
	jne	.label_587
.label_617:
	cmp	byte ptr [r9 + rbx + 1], 0
	jne	.label_587
	cmp	qword ptr [rsp + 0x28], r15
	jbe	.label_587
	lea	r8, [r12 + rbx]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + r15]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rcx, [rcx + r15]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_636:
	cmp	byte ptr [rcx + rbp - 1], r14b
	jne	.label_630
	cmp	byte ptr [rcx + rbp], 0x5d
	jne	.label_630
	cmp	byte ptr [rax + rbp - 1], 0
	jne	.label_630
	cmp	byte ptr [rax + rbp], 0
	je	.label_633
	nop	
.label_630:
	lea	rdx, [r15 + rbp + 1]
	inc	rbp
	cmp	rdx, qword ptr [rsp + 0x28]
	jb	.label_636
.label_587:
	lea	rax, [rbx + 2]
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rax, rcx
	jae	.label_641
	cmp	byte ptr [r12 + rax], 0x2a
	jne	.label_552
	cmp	byte ptr [r9 + rax], 0
	jne	.label_552
	lea	r8, [rbx + 3]
	cmp	r8, rcx
	jae	.label_552
	mov	rax, qword ptr [rsp + 0x40]
	lea	rax, [rax + rbx]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rdx + rbx]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_565:
	cmp	byte ptr [rdx + rbp], 0
	jne	.label_552
	cmp	byte ptr [rax + rbp], 0x5d
	je	.label_562
	lea	rsi, [rbx + rbp + 4]
	inc	rbp
	cmp	rsi, rcx
	jb	.label_565
	nop	dword ptr [rax]
.label_552:
	lea	r14, [rbx + 1]
	cmp	byte ptr [r12 + rbx + 1], 0x2d
	jne	.label_567
	cmp	byte ptr [r9 + r14], 0
	je	.label_572
.label_567:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], r13b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_575
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
.label_634:
	mov	r9, qword ptr [rsp + 0x10]
.label_611:
	lea	r15, [r14 + 2]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jb	.label_584
	jmp	.label_588
.label_572:
	mov	r14b, byte ptr [r12 + rbx + 2]
	movzx	ebp, r14b
	cmp	bpl, r13b
	jb	.label_589
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 1
	mov	byte ptr [rax + 0x10], r13b
	mov	byte ptr [rax + 0x11], r14b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_597
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	add	rbx, 3
	mov	r14, rbx
	jmp	.label_634
.label_633:
	test	rbp, rbp
	je	.label_602
	add	r8, 2
	cmp	r14b, 0x3a
	jne	.label_612
	mov	esi, OFFSET FLAT:label_599
	mov	qword ptr [rsp + 8], r8
	mov	rdi, r8
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_606
	xor	r12d, r12d
	test	eax, eax
	je	.label_557
.label_606:
	mov	esi, OFFSET FLAT:label_609
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_613
	mov	r12d, 1
	test	eax, eax
	je	.label_557
.label_613:
	mov	esi, OFFSET FLAT:label_614
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_618
	mov	r12d, 2
	test	eax, eax
	je	.label_557
.label_618:
	mov	esi, OFFSET FLAT:label_638
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_625
	mov	r12d, 3
	test	eax, eax
	je	.label_557
.label_625:
	mov	esi, OFFSET FLAT:label_628
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_631
	mov	r12d, 4
	test	eax, eax
	je	.label_557
.label_631:
	mov	esi, OFFSET FLAT:label_635
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_642
	mov	r12d, 5
	test	eax, eax
	je	.label_557
.label_642:
	mov	esi, OFFSET FLAT:label_551
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_555
	mov	r12d, 6
	test	eax, eax
	je	.label_557
.label_555:
	mov	esi, OFFSET FLAT:label_600
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_564
	mov	r12d, 7
	test	eax, eax
	je	.label_557
.label_564:
	mov	esi, OFFSET FLAT:label_568
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_594
	mov	r12d, 8
	test	eax, eax
	je	.label_557
.label_594:
	mov	esi, OFFSET FLAT:label_577
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_581
	mov	r12d, 9
	test	eax, eax
	je	.label_557
.label_581:
	mov	esi, OFFSET FLAT:label_582
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_585
	mov	r12d, 0xa
	test	eax, eax
	je	.label_557
.label_585:
	mov	esi, OFFSET FLAT:label_590
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 6
	jne	.label_596
	mov	r12d, 0xb
	test	eax, eax
	jne	.label_596
.label_557:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 2
	mov	dword ptr [rax + 0x10], r12d
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_598
	mov	qword ptr [rcx + 8], rax
	mov	r12, qword ptr [rsp + 0x38]
	jmp	.label_571
.label_612:
	cmp	rbp, 1
	jne	.label_603
	mov	edi, 0x20
	mov	rbx, r8
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 3
	mov	cl, byte ptr [rbx]
	mov	byte ptr [rax + 0x10], cl
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_578
	mov	qword ptr [rcx + 8], rax
.label_571:
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	r14, [r15 + rbp + 2]
	jmp	.label_611
.label_603:
	cmp	byte ptr [r12 + r15], 0x2a
	jne	.label_615
	cmp	byte ptr [r9 + r15], 0
	jne	.label_615
	inc	r15
.label_623:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_615
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_620
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_623
.label_620:
	cmp	cl, 0x5d
	jne	.label_615
	cmp	byte ptr [r9 + rax], 0
	je	.label_587
	jmp	.label_615
.label_596:
	mov	r12, qword ptr [rsp + 0x38]
	cmp	byte ptr [r12 + r15], 0x2a
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_554
	cmp	byte ptr [r9 + r15], 0
	jne	.label_554
	inc	r15
.label_553:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_554
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_643
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_553
.label_643:
	cmp	cl, 0x5d
	jne	.label_554
	cmp	byte ptr [r9 + rax], 0
	je	.label_587
	jmp	.label_554
.label_562:
	test	rbp, rbp
	je	.label_561
	lea	r13, [r12 + r8]
	xor	ecx, ecx
	cmp	byte ptr [r12 + r8], 0x30
	setne	cl
	lea	edx, [rcx + rcx + 8]
	xor	r8d, r8d
	mov	rdi, r13
	lea	rsi, [rsp + 0x60]
	lea	rcx, [rsp + 0x48]
	call	xstrtoumax
	test	eax, eax
	jne	.label_570
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r15, -1
	je	.label_570
	mov	rax, qword ptr [rsp + 0x40]
	sub	rax, qword ptr [rsp + 0x60]
	add	rax, rbx
	add	rax, rbp
	je	.label_576
	jmp	.label_570
.label_561:
	mov	qword ptr [rsp + 0x48], 0
	xor	r15d, r15d
.label_576:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], r14b
	mov	qword ptr [rax + 0x18], r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_583
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	lea	rax, [rbx + rbp + 4]
	lea	r15, [rbx + rbp + 6]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	jb	.label_595
	lea	r14, [rbx + rbp + 4]
.label_588:
	mov	r13b, 1
	mov	r15, qword ptr [rsp + 0x20]
	cmp	r14, r15
	jae	.label_560
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
.label_605:
	movzx	ebx, byte ptr [r12 + r14]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], bl
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	je	.label_575
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp + 8], rax
	inc	r14
	cmp	r14, r15
	jb	.label_605
.label_560:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	eax, r13d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_589:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	call	__ctype_b_loc
	mov	r15, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + r13*2 + 1], 0x40
	mov	qword ptr [rsp + 0x28], rbx
	jne	.label_616
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_73
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r13d
	call	__sprintf_chk
	jmp	.label_624
.label_616:
	mov	byte ptr [rbx], r13b
	mov	byte ptr [rbx + 1], 0
.label_624:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_627
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_73
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_637
.label_627:
	mov	byte ptr [rbx], r14b
	mov	byte ptr [rbx + 1], 0
.label_637:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_640
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
.label_586:
	mov	rdi, rbx
	call	free
	jmp	.label_560
.label_615:
	mov	rdi, r8
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
.label_604:
	call	error
	mov	rdi, rbx
	call	free
	jmp	.label_574
.label_570:
	mov	rdi, r13
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_579
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_586
.label_602:
	xor	edi, edi
	cmp	r14b, 0x3a
	jne	.label_558
	mov	esi, OFFSET FLAT:label_591
	jmp	.label_592
.label_558:
	mov	esi, OFFSET FLAT:label_593
.label_592:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_574:
	xor	r13d, r13d
	jmp	.label_560
.label_575:
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x287
	mov	ecx, OFFSET FLAT:label_573
	call	__assert_fail
.label_554:
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_604
.label_641:
	mov	edi, OFFSET FLAT:label_607
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x30e
	mov	ecx, OFFSET FLAT:label_608
	call	__assert_fail
.label_597:
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x2a5
	mov	ecx, OFFSET FLAT:label_610
	call	__assert_fail
.label_583:
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_246
	call	__assert_fail
.label_598:
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x2bb
	mov	ecx, OFFSET FLAT:label_619
	call	__assert_fail
.label_578:
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x2e5
	mov	ecx, OFFSET FLAT:label_622
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4069b5
	.globl sub_4069b5
	.type sub_4069b5, @function
sub_4069b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_644
	test	rsi, rsi
	je	.label_644
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_644:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406a30
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x406a3e
	.globl sub_406a3e
	.type sub_406a3e, @function
sub_406a3e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406a40

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
	js	.label_645
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_648
	cmp	r12d, 0x7fffffff
	je	.label_650
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
	jne	.label_646
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_646:
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
.label_648:
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
	jbe	.label_651
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_647
.label_651:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_649
	mov	rdi, r14
	call	free
.label_649:
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
.label_647:
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
.label_645:
	call	abort
.label_650:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406bfd
	.globl sub_406bfd
	.type sub_406bfd, @function
sub_406bfd:

	nop	dword ptr [rax]
.label_652:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406c05
	.globl sub_406c05
	.type sub_406c05, @function
sub_406c05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c0f

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_652
	call	rpl_calloc
	test	rax, rax
	je	.label_652
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c30

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
	jne	.label_653
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_653
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_654
.label_653:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_654:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_655
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_655:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c9e
	.globl sub_406c9e
	.type sub_406c9e, @function
sub_406c9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406ca0
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
	je	.label_656
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
.label_656:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406d08
	.globl sub_406d08
	.type sub_406d08, @function
sub_406d08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x406d7e
	.globl sub_406d7e
	.type sub_406d7e, @function
sub_406d7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406d80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d88
	.globl sub_406d88
	.type sub_406d88, @function
sub_406d88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d90
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
	#Procedure 0x406da8
	.globl sub_406da8
	.type sub_406da8, @function
sub_406da8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406db0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x406dba
	.globl sub_406dba
	.type sub_406dba, @function
sub_406dba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406dc0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406dc8
	.globl sub_406dc8
	.type sub_406dc8, @function
sub_406dc8:

	nop	dword ptr [rax + rax]
.label_661:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_657
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406df0
	.globl sub_406df0
	.type sub_406df0, @function
sub_406df0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406dff

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_661
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_659
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_662
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_659
	mov	esi, OFFSET FLAT:label_660
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_658
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_658:
	mov	rbx, r14
.label_659:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_679:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_663
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
	#Procedure 0x406eb8
	.globl sub_406eb8
	.type sub_406eb8, @function
sub_406eb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ebd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_679
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_669
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_675
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_667
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_677
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_676
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_668
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_678
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_670
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_673
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_673
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_671
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_673:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_254
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_674
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_254
	mov	ecx, OFFSET FLAT:label_664
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4070a0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4070b1
	.globl sub_4070b1
	.type sub_4070b1, @function
sub_4070b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407125
	.globl sub_407125
	.type sub_407125, @function
sub_407125:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407132
	.globl sub_407132
	.type sub_407132, @function
sub_407132:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407156
	.globl sub_407156
	.type sub_407156, @function
sub_407156:

	nop	word ptr cs:[rax + rax]
