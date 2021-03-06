	.section	.text
	.align	32
	#Procedure 0x4014c9
	.globl sub_4014c9
	.type sub_4014c9, @function
sub_4014c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4014ca
	.globl sub_4014ca
	.type sub_4014ca, @function
sub_4014ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401502
	.globl sub_401502
	.type sub_401502, @function
sub_401502:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40154a
	.globl sub_40154a
	.type sub_40154a, @function
sub_40154a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40156c
	.globl sub_40156c
	.type sub_40156c, @function
sub_40156c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40157d
	.globl sub_40157d
	.type sub_40157d, @function
sub_40157d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401596
	.globl sub_401596
	.type sub_401596, @function
sub_401596:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_9
	test	rbx, rbx
	jne	.label_9
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_9:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_11
	test	rax, rax
	je	.label_10
.label_11:
	pop	rbx
	ret	
.label_10:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4015d0
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
	#Procedure 0x401606
	.globl sub_401606
	.type sub_401606, @function
sub_401606:

	nop	word ptr cs:[rax + rax]
.label_12:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401615
	.globl sub_401615
	.type sub_401615, @function
sub_401615:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40161f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_12
	call	rpl_calloc
	test	rax, rax
	je	.label_12
	pop	rcx
	ret	
.label_13:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401645
	.globl sub_401645
	.type sub_401645, @function
sub_401645:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40164b
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
	je	.label_13
	test	rdx, rdx
	je	.label_13
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
	#Procedure 0x4016b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_17
	test	rax, rax
	je	.label_18
.label_17:
	pop	rbx
	ret	
.label_18:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4016ca
	.globl sub_4016ca
	.type sub_4016ca, @function
sub_4016ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016d8
	.globl sub_4016d8
	.type sub_4016d8, @function
sub_4016d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016e0

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 4], r9d
	mov	ebp, r8d
	mov	r15d, ecx
	mov	ebx, edx
	mov	r14b, 1
	xor	r13d, r13d
	mov	qword ptr [rsp + 8], rdi
	test	rdi, rdi
	je	.label_33
	mov	edi, esi
	call	getpwuid
	mov	r13, rax
	test	r13, r13
	setne	r14b
.label_33:
	movzx	r12d, bpl
	mov	edi, ebx
	mov	esi, r12d
	call	print_group
	mov	bpl, al
	test	bpl, bpl
	je	.label_27
	mov	bpl, r14b
.label_27:
	cmp	r15d, ebx
	jne	.label_28
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_31
.label_28:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	r14, qword ptr [rsp + 8]
	jae	.label_32
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp + 4]
	mov	byte ptr [rax], cl
.label_25:
	mov	edi, r15d
	mov	esi, r12d
	call	print_group
	test	al, al
	je	.label_38
	mov	eax, ebp
.label_38:
	mov	bpl, al
.label_31:
	test	r13, r13
	mov	esi, r15d
	je	.label_35
	mov	esi, dword ptr [r13 + 0x14]
.label_35:
	lea	rdx, [rsp + 0x10]
	mov	rdi, r14
	call	xgetgroups
	test	eax, eax
	js	.label_22
	je	.label_23
	mov	ecx, dword ptr [rsp + 4]
	movzx	ecx, cl
	mov	dword ptr [rsp + 8], ecx
	movsxd	r13, eax
	xor	r14d, r14d
	jmp	.label_19
.label_22:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	r14, r14
	je	.label_30
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_36
.label_30:
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_36:
	xor	ebp, ebp
	jmp	.label_21
.label_29:
	mov	esi, dword ptr [rsp + 8]
	call	__overflow
	jmp	.label_24
	.section	.text
	.align	32
	#Procedure 0x40181d
	.globl sub_40181d
	.type sub_40181d, @function
sub_40181d:

	nop	dword ptr [rax]
.label_19:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r14*4]
	cmp	eax, ebx
	je	.label_26
	cmp	eax, r15d
	je	.label_26
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_29
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp + 4]
	mov	byte ptr [rax], cl
.label_24:
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + r14*4]
	mov	esi, r12d
	call	print_group
	test	al, al
	je	.label_34
	mov	eax, ebp
.label_34:
	mov	bpl, al
.label_26:
	inc	r14
	cmp	r14, r13
	jl	.label_19
.label_23:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	and	bpl, 1
.label_21:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	mov	eax, dword ptr [rsp + 4]
	movzx	esi, al
	call	__overflow
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x4018a3
	.globl sub_4018a3
	.type sub_4018a3, @function
sub_4018a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018b0
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
	.align	32
	#Procedure 0x40191e
	.globl sub_40191e
	.type sub_40191e, @function
sub_40191e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401920
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40192e
	.globl sub_40192e
	.type sub_40192e, @function
sub_40192e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401930

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
	js	.label_42
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_45
	cmp	r12d, 0x7fffffff
	je	.label_40
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
	jne	.label_43
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_43:
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
.label_45:
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
	jbe	.label_41
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_44
.label_41:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_39
	mov	rdi, r14
	call	free
.label_39:
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
.label_44:
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
.label_42:
	call	abort
.label_40:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401aed
	.globl sub_401aed
	.type sub_401aed, @function
sub_401aed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401af0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401afa
	.globl sub_401afa
	.type sub_401afa, @function
sub_401afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_46
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_46:
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
	#Procedure 0x401b83
	.globl sub_401b83
	.type sub_401b83, @function
sub_401b83:

	nop	word ptr cs:[rax + rax]
.label_48:
	mov	ecx, 1
.label_47:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401ba0
	.globl sub_401ba0
	.type sub_401ba0, @function
sub_401ba0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_48
	test	rsi, rsi
	mov	ecx, 1
	je	.label_47
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_47
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401be0

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
	je	.label_61
	mov	edx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_58
.label_61:
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
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
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_64
	jmp	qword ptr [(r12 * 8) + label_65]
.label_430:
	add	rsp, 8
	jmp	.label_51
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
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
	jmp	.label_51
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
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
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
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
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
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
	jmp	.label_51
.label_435:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_51
.label_436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
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
	jmp	.label_51
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
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
	jmp	.label_51
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
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
	jmp	.label_51
.label_438:
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
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_51:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f38
	.globl sub_401f38
	.type sub_401f38, @function
sub_401f38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f40
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
	je	.label_68
	test	rsi, rsi
	je	.label_68
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
.label_68:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401fac
	.globl sub_401fac
	.type sub_401fac, @function
sub_401fac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fb0
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
	je	.label_69
	mov	qword ptr [rax], rbx
.label_69:
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
	#Procedure 0x40209c
	.globl sub_40209c
	.type sub_40209c, @function
sub_40209c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0
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
	#Procedure 0x4020b3
	.globl sub_4020b3
	.type sub_4020b3, @function
sub_4020b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020c0
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
	#Procedure 0x4020d8
	.globl sub_4020d8
	.type sub_4020d8, @function
sub_4020d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020e8
	.globl sub_4020e8
	.type sub_4020e8, @function
sub_4020e8:

	nop	dword ptr [rax + rax]
.label_76:
	test	rcx, rcx
	jne	.label_73
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_73:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_74
.label_75:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_70
	test	rbx, rbx
	jne	.label_70
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_72:
	call	xalloc_die
.label_74:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402146
	.globl sub_402146
	.type sub_402146, @function
sub_402146:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40214f
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_76
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_72
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_75
.label_70:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_71
	test	rax, rax
	je	.label_72
.label_71:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402190
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
	#Procedure 0x402205
	.globl sub_402205
	.type sub_402205, @function
sub_402205:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402210
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
	#Procedure 0x4022d1
	.globl sub_4022d1
	.type sub_4022d1, @function
sub_4022d1:

	nop	word ptr cs:[rax + rax]
.label_78:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022e5

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_77
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_78
.label_77:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402300

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_80
	cmp	byte ptr [rax], 0x43
	jne	.label_82
	cmp	byte ptr [rax + 1], 0
	je	.label_79
.label_82:
	mov	esi, OFFSET FLAT:label_81
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_80
.label_79:
	xor	ebx, ebx
.label_80:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402331
	.globl sub_402331
	.type sub_402331, @function
sub_402331:

	nop	word ptr cs:[rax + rax]
.label_83:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402345
	.globl sub_402345
	.type sub_402345, @function
sub_402345:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402354
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
	je	.label_83
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
	#Procedure 0x4023b0
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
	.align	32
	#Procedure 0x40241f
	.globl sub_40241f
	.type sub_40241f, @function
sub_40241f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402420

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_85
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_86:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402455
	.globl sub_402455
	.type sub_402455, @function
sub_402455:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402457
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
	je	.label_86
	test	rdx, rdx
	je	.label_86
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
	#Procedure 0x4024c0

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
	#Procedure 0x4024d7
	.globl sub_4024d7
	.type sub_4024d7, @function
sub_4024d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024e0
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
	je	.label_87
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
.label_87:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402548
	.globl sub_402548
	.type sub_402548, @function
sub_402548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402550

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
.label_209:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_207
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_91]
.label_377:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_98
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_102
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_378:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_113
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_113
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_132:
	cmp	r14, r11
	jae	.label_170
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_170:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_132
.label_113:
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
	jmp	.label_116
.label_370:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_116
.label_373:
	mov	al, 1
.label_371:
	mov	r12b, 1
.label_374:
	test	r12b, 1
	mov	cl, 1
	je	.label_148
	mov	ecx, eax
.label_148:
	mov	al, cl
.label_372:
	test	r12b, 1
	jne	.label_150
	test	r11, r11
	je	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_152:
	mov	r14d, 1
	jmp	.label_154
.label_150:
	xor	r14d, r14d
.label_154:
	mov	ecx, OFFSET FLAT:label_102
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_116
.label_375:
	test	r12b, 1
	jne	.label_163
	test	r11, r11
	je	.label_165
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_165:
	mov	r14d, 1
	jmp	.label_167
.label_376:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_169
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_116
.label_163:
	xor	r14d, r14d
.label_167:
	mov	eax, OFFSET FLAT:label_169
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_116:
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
	jmp	.label_190
	.section	.text
	.align	32
	#Procedure 0x40283d
	.globl sub_40283d
	.type sub_40283d, @function
sub_40283d:

	nop	dword ptr [rax]
.label_123:
	inc	rsi
.label_190:
	cmp	rbp, -1
	je	.label_107
	cmp	rsi, rbp
	jne	.label_109
	jmp	.label_110
	.section	.text
	.align	32
	#Procedure 0x402853
	.globl sub_402853
	.type sub_402853, @function
sub_402853:

	nop	word ptr cs:[rax + rax]
.label_107:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_114
.label_109:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_122
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_125
	cmp	rbp, -1
	jne	.label_125
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
.label_125:
	cmp	rbx, rbp
	jbe	.label_139
.label_122:
	xor	r8d, r8d
.label_151:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_133
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_142]
.label_396:
	test	rsi, rsi
	jne	.label_118
	jmp	.label_147
	.section	.text
	.align	32
	#Procedure 0x4028f5
	.globl sub_4028f5
	.type sub_4028f5, @function
sub_4028f5:

	nop	word ptr cs:[rax + rax]
.label_139:
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
	jne	.label_158
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_151
	jmp	.label_89
.label_158:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_151
.label_400:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_178
	test	rsi, rsi
	jne	.label_181
	cmp	rbp, 1
	je	.label_147
	xor	r13d, r13d
	jmp	.label_94
.label_389:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_188
	cmp	byte ptr [rsp + 6], 0
	jne	.label_175
	cmp	r12d, 2
	jne	.label_193
	mov	eax, r9d
	and	al, 1
	jne	.label_193
	cmp	r14, r11
	jae	.label_197
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_197:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_200
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_200:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_176
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_176:
	add	r14, 3
	mov	r9b, 1
.label_193:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_90
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_90:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_92
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_92
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_92
	cmp	r14, r11
	jae	.label_180
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_180:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_134
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_134:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_94
.label_390:
	mov	bl, 0x62
	jmp	.label_127
.label_391:
	mov	cl, 0x74
	jmp	.label_138
.label_392:
	mov	bl, 0x76
	jmp	.label_127
.label_393:
	mov	bl, 0x66
	jmp	.label_127
.label_394:
	mov	cl, 0x72
	jmp	.label_138
.label_397:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_131
	cmp	byte ptr [rsp + 6], 0
	jne	.label_93
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
	jae	.label_135
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_135:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_146
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_146:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_149
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_149:
	add	r14, 3
	xor	r9d, r9d
.label_131:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_94
.label_398:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_155
	cmp	r12d, 2
	jne	.label_118
	cmp	byte ptr [rsp + 6], 0
	je	.label_118
	jmp	.label_93
.label_399:
	cmp	r12d, 2
	jne	.label_164
	cmp	byte ptr [rsp + 6], 0
	jne	.label_93
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_96
.label_133:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_173
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
.label_129:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_192
	test	r8b, r8b
	je	.label_192
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_94
.label_178:
	test	rsi, rsi
	jne	.label_88
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_88
.label_147:
	mov	dl, 1
.label_395:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_93
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_94:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_101
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_166
	jmp	.label_106
	.section	.text
	.align	32
	#Procedure 0x402c44
	.globl sub_402c44
	.type sub_402c44, @function
sub_402c44:

	nop	word ptr cs:[rax + rax]
.label_101:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_106
.label_166:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_111
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_96
	jmp	.label_128
	.section	.text
	.align	32
	#Procedure 0x402c8d
	.globl sub_402c8d
	.type sub_402c8d, @function
sub_402c8d:

	nop	dword ptr [rax]
.label_106:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_128
	jmp	.label_96
.label_111:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_128
.label_188:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_123
	xor	r15d, r15d
	jmp	.label_118
.label_164:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_138
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_96
.label_138:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_93
.label_127:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_94
	nop	word ptr cs:[rax + rax]
.label_128:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_175
	cmp	r12d, 2
	jne	.label_136
	mov	eax, r9d
	and	al, 1
	jne	.label_136
	cmp	r14, r11
	jae	.label_130
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_130:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_159
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_159:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_140
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_140:
	add	r14, 3
	mov	r9b, 1
.label_136:
	cmp	r14, r11
	jae	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_206:
	inc	r14
	jmp	.label_108
.label_173:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_174
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_174:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_137:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_199
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_202
	cmp	rbp, -2
	je	.label_183
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_117
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_189:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_153
	bt	rsi, rdx
	jb	.label_104
.label_153:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_189
.label_117:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_156
	xor	r13d, r13d
.label_156:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_137
	jmp	.label_129
.label_92:
	xor	r13d, r13d
	jmp	.label_94
.label_88:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_94
.label_155:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_118
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_118
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_118
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_141
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_162
	cmp	byte ptr [rsp + 6], 0
	jne	.label_196
	cmp	r14, r11
	jae	.label_145
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_145:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_115
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_115:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_157
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_157:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_185
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_185:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_94
.label_118:
	xor	eax, eax
.label_181:
	xor	r13d, r13d
	jmp	.label_94
.label_192:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x402f72
	.globl sub_402f72
	.type sub_402f72, @function
sub_402f72:

	nop	word ptr cs:[rax + rax]
.label_105:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_172:
	test	r8b, r8b
	je	.label_182
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_184
	cmp	r14, r11
	jae	.label_186
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_186:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_184
	.section	.text
	.align	32
	#Procedure 0x402fbc
	.globl sub_402fbc
	.type sub_402fbc, @function
sub_402fbc:

	nop	dword ptr [rax]
.label_182:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_89
	cmp	r12d, 2
	jne	.label_198
	mov	eax, r9d
	and	al, 1
	jne	.label_198
	cmp	r14, r11
	jae	.label_201
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_201:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_204:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_208:
	add	r14, 3
	mov	r9b, 1
.label_198:
	cmp	r14, r11
	jae	.label_120
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_120:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_99
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_99:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_103
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_103:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_184:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_96
	test	r9b, 1
	je	.label_124
	mov	ebx, eax
	and	bl, 1
	jne	.label_124
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_126
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_126:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_119
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_119:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_124:
	cmp	r14, r11
	jae	.label_105
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x4030c3
	.globl sub_4030c3
	.type sub_4030c3, @function
sub_4030c3:

	nop	word ptr cs:[rax + rax]
.label_96:
	test	r9b, 1
	je	.label_143
	and	al, 1
	jne	.label_143
	cmp	r14, r11
	jae	.label_144
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_144:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_177
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	add	r14, 2
	xor	r9d, r9d
.label_143:
	mov	ebx, r15d
.label_108:
	cmp	r14, r11
	jae	.label_97
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_97:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_123
.label_202:
	xor	r13d, r13d
.label_199:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_129
.label_183:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_171
	mov	rsi, qword ptr [rsp + 0x58]
.label_168:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_194
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_168
	xor	r13d, r13d
	jmp	.label_129
.label_171:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_129
.label_194:
	xor	r13d, r13d
	jmp	.label_129
.label_141:
	xor	r13d, r13d
	jmp	.label_94
.label_162:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x403198
	.globl sub_403198
	.type sub_403198, @function
sub_403198:

	nop	dword ptr [rax + rax]
.label_110:
	mov	rcx, rsi
.label_114:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_187
	or	al, dl
	je	.label_191
.label_187:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_195
	or	al, dl
	jne	.label_195
	test	r10b, 1
	jne	.label_205
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_195
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_209
.label_195:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_95
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_100
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_100
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_112:
	cmp	r14, r11
	jae	.label_203
	mov	byte ptr [rcx + r14], al
.label_203:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_112
	jmp	.label_100
.label_175:
	mov	qword ptr [rsp + 0x20], rbp
.label_89:
	mov	rdx, rdi
	jmp	.label_121
.label_93:
	mov	qword ptr [rsp + 0x20], rbp
.label_104:
	mov	rdx, rdi
	mov	eax, 2
.label_179:
	mov	qword ptr [rsp + 0x38], rax
.label_121:
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
.label_160:
	mov	r14, rax
.label_161:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_191:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_121
.label_205:
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
	jmp	.label_160
.label_95:
	mov	rcx, qword ptr [rsp + 8]
.label_100:
	cmp	r14, r11
	jae	.label_161
	mov	byte ptr [rcx + r14], 0
	jmp	.label_161
.label_196:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_179
.label_207:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403357
	.globl sub_403357
	.type sub_403357, @function
sub_403357:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403360

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
	#Procedure 0x403379
	.globl sub_403379
	.type sub_403379, @function
sub_403379:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403380

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
	jne	.label_210
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_210
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_211
.label_210:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_211:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_212
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_212:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033ee
	.globl sub_4033ee
	.type sub_4033ee, @function
sub_4033ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4033f0

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
	je	.label_213
	cmp	r15, -2
	jb	.label_213
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_213
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_213:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403446
	.globl sub_403446
	.type sub_403446, @function
sub_403446:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450
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
	.align	32
	#Procedure 0x4034a4
	.globl sub_4034a4
	.type sub_4034a4, @function
sub_4034a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4034c1
	.globl sub_4034c1
	.type sub_4034c1, @function
sub_4034c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d0

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
	.align	32
	#Procedure 0x403525
	.globl sub_403525
	.type sub_403525, @function
sub_403525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403530

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_214
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_215
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403555
	.globl sub_403555
	.type sub_403555, @function
sub_403555:

	nop	word ptr cs:[rax + rax]
.label_225:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
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
	#Procedure 0x403598
	.globl sub_403598
	.type sub_403598, @function
sub_403598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40359d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_225
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
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
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_218
	mov	ecx, OFFSET FLAT:label_219
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_217
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_217
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_219
	mov	ecx, OFFSET FLAT:label_226
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_226
	mov	ecx, OFFSET FLAT:label_227
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403700

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_214
	call	setlocale
	mov	edi, OFFSET FLAT:label_239
	mov	esi, OFFSET FLAT:label_240
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_239
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, -1
	jne	.label_254
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r14d
	jne	.label_256
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	call	getuid
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_233
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	jne	.label_235
.label_233:
	mov	dword ptr [rbp], 0
	call	getegid
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_241
	mov	r15d, dword ptr [rbp]
	test	r15d, r15d
	jne	.label_242
.label_241:
	mov	dword ptr [rbp], 0
	call	getgid
	cmp	eax, -1
	jne	.label_248
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_250
.label_248:
	xor	edi, edi
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, r14d
	mov	edx, eax
	mov	ecx, ebx
	call	print_group_list
	mov	bpl, al
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_257
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_234
.label_256:
	mov	bpl, 1
	jge	.label_234
	mov	r12b, 1
	jmp	.label_232
.label_238:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x40383f
	.globl sub_40383f
	.type sub_40383f, @function
sub_40383f:

	nop	
.label_232:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	getpwnam
	test	rax, rax
	je	.label_247
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbx
	shr	rbp, 0x20
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [r15 + rax*8]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_249
	xor	eax, eax
	call	__printf_chk
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, ebx
	mov	edx, ebp
	mov	ecx, ebp
	call	print_group_list
	mov	bpl, al
	test	bpl, bpl
	je	.label_236
	mov	bpl, r12b
.label_236:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_238
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x4038ca
	.globl sub_4038ca
	.type sub_4038ca, @function
sub_4038ca:

	nop	word ptr [rax + rax]
.label_247:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_243:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r14d
	mov	r12d, ebp
	jl	.label_232
.label_234:
	not	bpl
	and	bpl, 1
	movzx	eax, bpl
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_257:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_234
.label_254:
	cmp	eax, 0xffffff7d
	je	.label_245
	cmp	eax, 0xffffff7e
	jne	.label_246
	xor	edi, edi
	call	usage
.label_245:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_226
	mov	edx, OFFSET FLAT:label_218
	mov	r8d, OFFSET FLAT:label_251
	mov	r9d, OFFSET FLAT:label_252
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_246:
	mov	edi, 1
	call	usage
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x403a10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_258
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_258
	test	byte ptr [rbx + 1], 1
	je	.label_258
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_258:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403a43
	.globl sub_403a43
	.type sub_403a43, @function
sub_403a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a50
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
	#Procedure 0x403a69
	.globl sub_403a69
	.type sub_403a69, @function
sub_403a69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a70
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_259
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_260
	test	rax, rax
	je	.label_259
.label_260:
	pop	rbx
	ret	
.label_259:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403aa5
	.globl sub_403aa5
	.type sub_403aa5, @function
sub_403aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ab0
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
	#Procedure 0x403abf
	.globl sub_403abf
	.type sub_403abf, @function
sub_403abf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403ac0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_261
	test	rdx, rdx
	je	.label_261
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_261:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403aeb
	.globl sub_403aeb
	.type sub_403aeb, @function
sub_403aeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403af0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_262:
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
	ja	.label_262
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b3b
	.globl sub_403b3b
	.type sub_403b3b, @function
sub_403b3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40
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
	je	.label_263
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
.label_263:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403bac
	.globl sub_403bac
	.type sub_403bac, @function
sub_403bac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403bb0

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
	jne	.label_265
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_264
	test	cl, cl
	jne	.label_264
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_264
.label_265:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_264
	call	__errno_location
	mov	dword ptr [rax], 0
.label_264:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c10
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
	#Procedure 0x403c1f
	.globl sub_403c1f
	.type sub_403c1f, @function
sub_403c1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c20
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
	je	.label_266
	test	rsi, rsi
	je	.label_266
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_266:
	call	abort
.label_271:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_269
	mov	qword ptr [rsi], rbx
.label_270:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_268
	test	rax, rax
	je	.label_269
.label_268:
	pop	rbx
	ret	
.label_269:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403cbd
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_271
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_267
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_270
	call	free
	xor	eax, eax
	jmp	.label_268
.label_267:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403cf4
	.globl sub_403cf4
	.type sub_403cf4, @function
sub_403cf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d00
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_272
	test	rax, rax
	je	.label_273
.label_272:
	pop	rbx
	ret	
.label_273:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403d1a
	.globl sub_403d1a
	.type sub_403d1a, @function
sub_403d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d20

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
	jne	.label_279
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_275
	cmp	ecx, 0x55
	jne	.label_274
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_274
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_274
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_274
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_274
	cmp	byte ptr [rax + 5], 0
	jne	.label_274
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_281
	mov	eax, OFFSET FLAT:label_282
	jmp	.label_278
.label_275:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_274
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_274
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_274
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_274
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_274
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_274
	cmp	byte ptr [rax + 7], 0
	je	.label_280
.label_274:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_169
	mov	eax, OFFSET FLAT:label_102
.label_278:
	cmove	rax, rcx
.label_279:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_280:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_276
	mov	eax, OFFSET FLAT:label_277
	jmp	.label_278
	.section	.text
	.align	32
	#Procedure 0x403de5
	.globl sub_403de5
	.type sub_403de5, @function
sub_403de5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_293
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_295
.label_293:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_295:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_283
	cmp	r10d, 0x29
	jae	.label_292
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_294
.label_292:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_294:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_283
	cmp	r10d, 0x29
	jae	.label_290
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_291
.label_290:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_291:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_283
	cmp	r10d, 0x29
	jae	.label_288
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_289
.label_288:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_289:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_283
	cmp	r10d, 0x29
	jae	.label_286
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_287
.label_286:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_287:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_283
	cmp	r10d, 0x29
	jae	.label_284
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_285
.label_284:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_285:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_283
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_283
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_283
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_283
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_283:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fd2
	.globl sub_403fd2
	.type sub_403fd2, @function
sub_403fd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fe0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_296:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_296
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404001
	.globl sub_404001
	.type sub_404001, @function
sub_404001:

	nop	word ptr cs:[rax + rax]
.label_298:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40401c
	.globl sub_40401c
	.type sub_40401c, @function
sub_40401c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404028

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_298
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_297
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_298
.label_297:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_298
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_299
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_299:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_300:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404095
	.globl sub_404095
	.type sub_404095, @function
sub_404095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0
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
	je	.label_300
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
.label_304:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_301:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_305:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40417e
	.globl sub_40417e
	.type sub_40417e, @function
sub_40417e:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	ebp, ebp
	mov	bl, 1
	jmp	.label_301
	.section	.text
	.align	32
	#Procedure 0x404193

	.globl print_group
	.type print_group, @function
print_group:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	sil, sil
	je	.label_303
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_304
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_305
	.section	.text
	.align	32
	#Procedure 0x4041b0

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
	je	.label_306
	test	r15, r15
	je	.label_307
.label_306:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_307:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4041ec
	.globl sub_4041ec
	.type sub_4041ec, @function
sub_4041ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
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
	#Procedure 0x404208
	.globl sub_404208
	.type sub_404208, @function
sub_404208:

	nop	dword ptr [rax + rax]
.label_310:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_308
	test	rax, rax
	je	.label_309
.label_308:
	pop	rbx
	ret	
.label_309:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404229
	.globl sub_404229
	.type sub_404229, @function
sub_404229:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404231
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_309
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_310
	test	rbx, rbx
	jne	.label_310
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404260
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
	je	.label_311
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
.label_311:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4042c8
	.globl sub_4042c8
	.type sub_4042c8, @function
sub_4042c8:

	nop	dword ptr [rax + rax]
.label_312:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4042d5
	.globl sub_4042d5
	.type sub_4042d5, @function
sub_4042d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042e3
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
	je	.label_313
	test	r15, r15
	je	.label_312
.label_313:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_314:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404325
	.globl sub_404325
	.type sub_404325, @function
sub_404325:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40432f
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
	je	.label_315
	test	r14, r14
	je	.label_314
.label_315:
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
	#Procedure 0x404360

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_316
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_318
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_318
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_321
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_321:
	mov	rbx, r14
.label_318:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_316:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_317
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404401
	.globl sub_404401
	.type sub_404401, @function
sub_404401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40441a
	.globl sub_40441a
	.type sub_40441a, @function
sub_40441a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r13d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_328
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_323
	mov	qword ptr [rsp + 0x10], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0xc]
	jmp	.label_336
	.section	.text
	.align	32
	#Procedure 0x404478
	.globl sub_404478
	.type sub_404478, @function
sub_404478:

	nop	dword ptr [rax + rax]
.label_334:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rax
.label_336:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0xc]
	test	r14d, r14d
	jns	.label_326
	cmp	r12d, eax
	jne	.label_326
	add	r12d, r12d
	mov	dword ptr [rsp + 0xc], r12d
	mov	eax, r12d
.label_326:
	test	eax, eax
	js	.label_332
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_333
	test	r14d, r14d
	js	.label_334
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0xc]
	jmp	.label_323
.label_328:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_338
	cmp	r13d, -1
	jne	.label_322
	test	eax, eax
	mov	ebx, eax
	jne	.label_324
.label_322:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0xc], ebx
	cmp	eax, -2
	jg	.label_324
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_327
.label_324:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_323
	xor	eax, eax
	cmp	r13d, -1
	setne	al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_335
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_337
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_337:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_323
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_323
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	word ptr cs:[rax + rax]
.label_331:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_329
	cmp	edi, esi
	jne	.label_330
.label_329:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_331
	jmp	.label_323
.label_330:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_331
	jmp	.label_323
.label_338:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_323
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_323
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	xor	r14d, r14d
	cmp	r13d, -1
	setne	r14b
	jmp	.label_323
.label_332:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_325
.label_333:
	call	__errno_location
	mov	rbx, rax
.label_325:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_327:
	mov	r14d, 0xffffffff
.label_323:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_335:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_323
	.section	.text
	.align	32
	#Procedure 0x404666
	.globl sub_404666
	.type sub_404666, @function
sub_404666:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404670
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_340
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_218
	mov	ecx, OFFSET FLAT:label_219
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4046e4
	.globl sub_4046e4
	.type sub_4046e4, @function
sub_4046e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046f0
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
	#Procedure 0x404723
	.globl sub_404723
	.type sub_404723, @function
sub_404723:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_348
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_345
	cmp	dword ptr [rbp], 0x20
	jne	.label_345
.label_348:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_344
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_344:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_346
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_85
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_346:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_343
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_349
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_351:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_351
.label_349:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_353
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_352], OFFSET FLAT:slot0
.label_353:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_350
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_350:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404881
	.globl sub_404881
	.type sub_404881, @function
sub_404881:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f5
	.globl sub_4048f5
	.type sub_4048f5, @function
sub_4048f5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404902
	.globl sub_404902
	.type sub_404902, @function
sub_404902:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404926
	.globl sub_404926
	.type sub_404926, @function
sub_404926:

	nop	word ptr cs:[rax + rax]
