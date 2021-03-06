	.section	.text
	.align	16
	#Procedure 0x4017f9
	.globl sub_4017f9
	.type sub_4017f9, @function
sub_4017f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4017fa
	.globl sub_4017fa
	.type sub_4017fa, @function
sub_4017fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401832
	.globl sub_401832
	.type sub_401832, @function
sub_401832:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40187a
	.globl sub_40187a
	.type sub_40187a, @function
sub_40187a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40189c
	.globl sub_40189c
	.type sub_40189c, @function
sub_40189c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018ad
	.globl sub_4018ad
	.type sub_4018ad, @function
sub_4018ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018c6
	.globl sub_4018c6
	.type sub_4018c6, @function
sub_4018c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

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
	.align	16
	#Procedure 0x401900
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40190e
	.globl sub_40190e
	.type sub_40190e, @function
sub_40190e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401910

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
	js	.label_15
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_18
	cmp	r12d, 0x7fffffff
	je	.label_13
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
	jne	.label_16
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_16:
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
.label_18:
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
	jbe	.label_14
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_17
.label_14:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_12
	mov	rdi, r14
	call	free
.label_12:
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
.label_17:
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
.label_15:
	call	abort
.label_13:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401acd
	.globl sub_401acd
	.type sub_401acd, @function
sub_401acd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x401b3e
	.globl sub_401b3e
	.type sub_401b3e, @function
sub_401b3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401b40
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
	je	.label_22
	mov	qword ptr [rax], rbx
.label_22:
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
	#Procedure 0x401c2c
	.globl sub_401c2c
	.type sub_401c2c, @function
sub_401c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x401c84
	.globl sub_401c84
	.type sub_401c84, @function
sub_401c84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c90
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
	je	.label_24
	test	r14, r14
	je	.label_23
.label_24:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_23:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401cc6
	.globl sub_401cc6
	.type sub_401cc6, @function
sub_401cc6:

	nop	word ptr cs:[rax + rax]
.label_25:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401cd5
	.globl sub_401cd5
	.type sub_401cd5, @function
sub_401cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ce0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_25
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_26
	test	rax, rax
	je	.label_25
.label_26:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d10
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
	#Procedure 0x401dd1
	.globl sub_401dd1
	.type sub_401dd1, @function
sub_401dd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401de0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401de7
	.globl sub_401de7
	.type sub_401de7, @function
sub_401de7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401df0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_27
	xor	eax, eax
.label_30:
	cmp	qword ptr [r9], 0
	je	.label_28
	test	r9, r9
	je	.label_28
	mov	r8, r9
	nop	
.label_29:
	cmp	rax, rdx
	jae	.label_27
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_29
	mov	r8, qword ptr [rdi + 8]
.label_28:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_30
.label_27:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e36
	.globl sub_401e36
	.type sub_401e36, @function
sub_401e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_31
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_32
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_32:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e82
	.globl sub_401e82
	.type sub_401e82, @function
sub_401e82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_33
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_33:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_34
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_35
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_36
.label_35:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_36:
	mov	ecx, dword ptr [rax]
.label_34:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f4e
	.globl sub_401f4e
	.type sub_401f4e, @function
sub_401f4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f50

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
.label_37:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fb8
	.globl sub_401fb8
	.type sub_401fb8, @function
sub_401fb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_38
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_40
.label_38:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_40:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_41
	cmp	r10d, 0x29
	jae	.label_50
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_39
.label_50:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_39:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_41
	cmp	r10d, 0x29
	jae	.label_48
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_49
.label_48:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_49:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_41
	cmp	r10d, 0x29
	jae	.label_46
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_47
.label_46:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_47:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_41
	cmp	r10d, 0x29
	jae	.label_44
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_45
.label_44:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_45:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_41
	cmp	r10d, 0x29
	jae	.label_42
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_43
.label_42:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_43:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_41
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_41
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_41
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_41
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_41:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021a2
	.globl sub_4021a2
	.type sub_4021a2, @function
sub_4021a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021b0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021b5
	.globl sub_4021b5
	.type sub_4021b5, @function
sub_4021b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021e8
	.globl sub_4021e8
	.type sub_4021e8, @function
sub_4021e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_54
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_52
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_52
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_53
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_53:
	mov	rbx, r14
.label_52:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_54:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_55
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402291
	.globl sub_402291
	.type sub_402291, @function
sub_402291:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_57
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_60
	.section	.text
	.align	16
	#Procedure 0x4022b2
	.globl sub_4022b2
	.type sub_4022b2, @function
sub_4022b2:

	nop	word ptr cs:[rax + rax]
.label_58:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4022c6
	.globl sub_4022c6
	.type sub_4022c6, @function
sub_4022c6:

	nop	dword ptr [rax + rax]
.label_59:
	add	rcx, 0x10
.label_60:
	cmp	rcx, rdx
	jae	.label_58
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_59
.label_57:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4022ea
	.globl sub_4022ea
	.type sub_4022ea, @function
sub_4022ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_61
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_61:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402307
	.globl sub_402307
	.type sub_402307, @function
sub_402307:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402310

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_62
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_62:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402343
	.globl sub_402343
	.type sub_402343, @function
sub_402343:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402350

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_63
	test	rsi, rsi
	mov	ecx, 1
	je	.label_64
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_64
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_63:
	mov	ecx, 1
.label_64:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40239b
	.globl sub_40239b
	.type sub_40239b, @function
sub_40239b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_69
	pop	rcx
	ret	
.label_65:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4023b8
	.globl sub_4023b8
	.type sub_4023b8, @function
sub_4023b8:

	nop	dword ptr [rax + rax]
.label_69:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_65
	mov	edi, OFFSET FLAT:label_66
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_68
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4023e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_70:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_70
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402401
	.globl sub_402401
	.type sub_402401, @function
sub_402401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402410

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_77
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_74
	cmp	dword ptr [rbp], 0x20
	jne	.label_74
.label_77:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_73
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_75:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_75
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_72
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_73:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4024d0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_86
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_91
	cvtsi2ss	xmm0, rsi
	jmp	.label_96
.label_91:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_96:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_80]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_81]
	jae	.label_82
.label_86:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x40255b
	.globl sub_40255b
	.type sub_40255b, @function
sub_40255b:

	nop	dword ptr [rax + rax]
.label_93:
	add	rbx, 2
.label_79:
	cmp	rbx, -1
	je	.label_82
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_90
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_88:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_90
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_88
.label_90:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_93
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_82
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_83
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_82
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_98
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_83
.label_98:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_92
	.section	.text
	.align	16
	#Procedure 0x40267e
	.globl sub_40267e
	.type sub_40267e, @function
sub_40267e:

	nop	
.label_84:
	add	r12, 0x10
.label_92:
	cmp	r12, r15
	jae	.label_78
	cmp	qword ptr [r12], 0
	je	.label_84
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_87
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_97
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_94
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_89
	.section	.text
	.align	16
	#Procedure 0x4026ea
	.globl sub_4026ea
	.type sub_4026ea, @function
sub_4026ea:

	nop	word ptr [rax + rax]
.label_94:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_89:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_85
.label_87:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_84
.label_78:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_95
	mov	rdi, qword ptr [rsp]
	call	free
.label_82:
	xor	ebp, ebp
.label_83:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_97:
	call	abort
.label_95:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40275a
	.globl sub_40275a
	.type sub_40275a, @function
sub_40275a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_104
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_108
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_111]
	jbe	.label_102
	movss	xmm1, dword ptr [rip + label_101]
	ucomiss	xmm1, xmm0
	jbe	.label_102
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_106]
	jbe	.label_102
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_102
	addss	xmm1, dword ptr [rip + label_111]
	ucomiss	xmm0, xmm1
	jbe	.label_102
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_103]
	ucomiss	xmm2, xmm0
	jb	.label_102
	ucomiss	xmm0, xmm1
	jbe	.label_102
.label_108:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_105
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_110
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_99
.label_110:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_99:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_80]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_81]
	jae	.label_102
.label_105:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x4028ae
	.globl sub_4028ae
	.type sub_4028ae, @function
sub_4028ae:

	nop	
.label_112:
	add	rbx, 2
.label_107:
	cmp	rbx, -1
	je	.label_102
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_100
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_109:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_100
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_109
.label_100:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_112
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_102
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_102
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_102
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_104
.label_102:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_104:
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
	#Procedure 0x402978
	.globl sub_402978
	.type sub_402978, @function
sub_402978:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980

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
	jne	.label_113
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_113
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_114
.label_113:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_114:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_115
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_115:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029ee
	.globl sub_4029ee
	.type sub_4029ee, @function
sub_4029ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_118
	test	al, 1
	je	.label_118
	mov	dl, 1
.label_118:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_120
	and	eax, 2
	jne	.label_120
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_121
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_116
.label_120:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_121
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_116
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_124
	mov	eax, dword ptr [r14]
.label_116:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_119:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_121:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_125
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_119
	cmp	ecx, 0x4000
	jne	.label_122
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_117
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_117
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_117:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_119
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_123
	cmp	dl, 0x2e
	jne	.label_119
	test	ecx, 0xff0000
	jne	.label_119
.label_123:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_119
.label_125:
	mov	ax, 8
	jmp	.label_119
.label_122:
	mov	ax, 3
	jmp	.label_119
.label_124:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_119
	.section	.text
	.align	16
	#Procedure 0x402b85
	.globl sub_402b85
	.type sub_402b85, @function
sub_402b85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_126
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_129:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_129
.label_126:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_130
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_127], OFFSET FLAT:slot0
.label_130:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_128
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_128:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c21
	.globl sub_402c21
	.type sub_402c21, @function
sub_402c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c38
	.globl sub_402c38
	.type sub_402c38, @function
sub_402c38:

	nop	dword ptr [rax + rax]
.label_135:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_131
	mov	qword ptr [rsi], rbx
.label_133:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_132
	test	rax, rax
	je	.label_131
.label_132:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c68

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_135
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_134
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_133
	call	free
	xor	eax, eax
	jmp	.label_132
.label_134:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c9f
	.globl sub_402c9f
	.type sub_402c9f, @function
sub_402c9f:

	nop	word ptr cs:[rax + rax]
.label_131:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402cb0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cbc
	.globl sub_402cbc
	.type sub_402cbc, @function
sub_402cbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402cc0
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
	#Procedure 0x402cd9
	.globl sub_402cd9
	.type sub_402cd9, @function
sub_402cd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x402d4f
	.globl sub_402d4f
	.type sub_402d4f, @function
sub_402d4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402d50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_136
	test	rsi, rsi
	je	.label_136
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
.label_136:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402dbc
	.globl sub_402dbc
	.type sub_402dbc, @function
sub_402dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0

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
	jne	.label_138
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_137
	test	cl, cl
	jne	.label_137
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_137
.label_138:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_137
	call	__errno_location
	mov	dword ptr [rax], 0
.label_137:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e20

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
	je	.label_139
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
.label_139:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402eb5
	.globl sub_402eb5
	.type sub_402eb5, @function
sub_402eb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_140
	test	rdx, rdx
	je	.label_140
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_140:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402eeb
	.globl sub_402eeb
	.type sub_402eeb, @function
sub_402eeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_149
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_141
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_148
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_141
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_141
.label_149:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_141
.label_148:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_151
	nop	dword ptr [rax]
.label_142:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_156
	call	closedir
.label_156:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_142
.label_151:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_145
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_145:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_154
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_154
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_154
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_144
	mov	edi, OFFSET FLAT:label_147
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_146
.label_154:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_141:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_144:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_147
	xor	eax, eax
	call	openat_safer
.label_146:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_155
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_152
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_158
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_141
.label_155:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_141
.label_152:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_157
	cmp	esi, -0x64
	jne	.label_150
.label_157:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_153
	mov	edi, eax
	call	close
.label_153:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_143
.label_158:
	mov	edi, r15d
	call	close
.label_143:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_141
.label_150:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403097
	.globl sub_403097
	.type sub_403097, @function
sub_403097:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_167
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
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
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
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
	mov	esi, OFFSET FLAT:label_172
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
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_169
	mov	ecx, OFFSET FLAT:label_166
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_159
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_159
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_166
	mov	ecx, OFFSET FLAT:label_160
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_160
	mov	ecx, OFFSET FLAT:label_161
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_167:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
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
	#Procedure 0x4032e1
	.globl sub_4032e1
	.type sub_4032e1, @function
sub_4032e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_185
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_187
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_189:
	cmp	qword ptr [rax], 0
	je	.label_180
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_182:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_182
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_180:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_183
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_188:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_188
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_183:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_189
.label_187:
	test	r8, r8
	je	.label_185
	cmp	qword ptr [rax], 0
	je	.label_185
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_181:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_181
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_185:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_184
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_191]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_192]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_193]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_194
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_190
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x40345f
	.globl sub_40345f
	.type sub_40345f, @function
sub_40345f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403460

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
	je	.label_195
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
.label_195:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4034cc
	.globl sub_4034cc
	.type sub_4034cc, @function
sub_4034cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	r12d, edi
	mov	qword ptr [rsp + 0x28], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_266
	call	setlocale
	mov	edi, OFFSET FLAT:label_234
	mov	esi, OFFSET FLAT:label_235
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_234
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + diagnose_surprises],  0
	mov	byte ptr [rip + force_silent],  0
	mov	byte ptr [rip + recurse],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	ebx, ebx
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 8], r14
	mov	dword ptr [rsp + 0x10], r12d
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x40355d
	.globl sub_40355d
	.type sub_40355d, @function
sub_40355d:

	nop	dword ptr [rax]
.label_204:
	mov	byte ptr [rax + rbp], 0x2c
	mov	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	add	r12, rax
	inc	r14
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rip + diagnose_surprises],  1
	mov	bl, r15b
	mov	rbp, r13
	mov	r14, qword ptr [rsp + 8]
	mov	r12d, dword ptr [rsp + 0x10]
.label_205:
	mov	r15d, ebx
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_258
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x105
	ja	.label_262
	jmp	qword ptr [(rax * 8) + label_264]
.label_1023:
	movsxd	rax, dword ptr [rip + optind]
	mov	rbx, qword ptr [r14 + rax*8 - 8]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	cmp	rbp, 1
	mov	r12, rbp
	sbb	r12, -1
	lea	r13, [r14 + r12]
	cmp	qword ptr [rsp + 0x28], r13
	jbe	.label_269
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x403602
	.globl sub_403602
	.type sub_403602, @function
sub_403602:

	nop	word ptr cs:[rax + rax]
.label_269:
	lea	rax, [r13 + 1]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x28]
	call	x2realloc
	jmp	.label_204
.label_1024:
	mov	byte ptr [rip + recurse],  1
	mov	bl, r15b
	jmp	.label_205
.label_1025:
	mov	dword ptr [rip + verbosity],  1
	mov	bl, r15b
	jmp	.label_205
.label_1026:
	mov	byte ptr [rip + force_silent],  1
	mov	bl, r15b
	jmp	.label_205
.label_1027:
	mov	dword ptr [rip + verbosity],  0
	mov	bl, r15b
	jmp	.label_205
.label_1028:
	mov	bl, 1
	jmp	.label_205
.label_1029:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	mov	bl, r15b
	jmp	.label_205
.label_1022:
	mov	rbx, qword ptr [rsp + 0x20]
	test	rbx, rbx
	je	.label_220
	cmp	qword ptr [rsp + 0x18], 0
	mov	ecx, 0
	je	.label_222
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
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
.label_220:
	mov	rcx, qword ptr [rsp + 0x18]
	test	rcx, rcx
	jne	.label_222
	movsxd	rax, dword ptr [rip + optind]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rcx, qword ptr [r14 + rax*8]
.label_222:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	jge	.label_232
	test	rbx, rbx
	je	.label_270
	mov	rdi, rbx
	call	mode_create_from_ref
	mov	qword ptr [rip + change],  rax
	test	rax, rax
	jne	.label_236
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_270:
	mov	rbp, rcx
	mov	rdi, rbp
	call	mode_compile
	mov	qword ptr [rip + change],  rax
	test	rax, rax
	je	.label_250
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + umask_value],  eax
.label_236:
	test	r15b, r15b
	je	.label_254
	mov	al, byte ptr [rip + recurse]
	xor	al, 1
	test	al, 1
	jne	.label_254
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rip + root_dev_ino],  rax
	test	rax, rax
	jne	.label_257
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_31
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_254:
	mov	qword ptr [rip + root_dev_ino],  0
.label_257:
	movsxd	rax, dword ptr [rip + optind]
	lea	rdi, [r14 + rax*8]
	mov	esi, 0x411
	xor	edx, edx
	call	xfts_open
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_198
	mov	r14b, 1
	jmp	.label_202
.label_230:
	mov	qword ptr [r12 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	rpl_fts_set
	mov	bpl, 1
	jmp	.label_207
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_229
	.section	.text
	.align	16
	#Procedure 0x40387c
	.globl sub_40387c
	.type sub_40387c, @function
sub_40387c:

	nop	dword ptr [rax]
.label_202:
	mov	rbx, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x38]
	movzx	eax, word ptr [r12 + 0x70]
	add	eax, -2
	movzx	eax, ax
	cmp	eax, 0xb
	ja	.label_217
	mov	bpl, 1
	jmp	qword ptr [(rax * 8) + label_224]
.label_1057:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	cycle_warning_required
	test	al, al
	je	.label_217
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x4038f1
	.globl sub_4038f1
	.type sub_4038f1, @function
sub_4038f1:

	nop	word ptr cs:[rax + rax]
.label_217:
	mov	rax, qword ptr [rip + root_dev_ino]
	test	rax, rax
	je	.label_196
	mov	rcx, qword ptr [r12 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_196
	mov	rcx, qword ptr [r12 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_196
	cmp	byte ptr [r13], 0x2f
	jne	.label_252
	cmp	byte ptr [r13 + 1], 0
	je	.label_242
.label_252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	mov	edx, 5
	call	dcgettext
	mov	rdx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_31
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_229:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r12
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_207
.label_196:
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp + 0x20], r14b
	mov	edi, dword ptr [r12 + 0x90]
	mov	ebx, edi
	and	ebx, 0xf000
	xor	esi, esi
	cmp	ebx, 0x4000
	sete	sil
	mov	edx, dword ptr [rip + umask_value]
	mov	rcx, qword ptr [rip + change]
	xor	r15d, r15d
	xor	r8d, r8d
	mov	r14d, edi
	call	mode_adjust
	mov	ebp, eax
	cmp	ebx, 0xa000
	mov	qword ptr [rsp + 8], r13
	jne	.label_225
	mov	r13b, 1
	mov	ebx, ebp
	jmp	.label_237
.label_1058:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_206
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	jmp	.label_213
.label_1061:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_206
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_208
.label_1059:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_206
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_72
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_208
.label_1060:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_238
	cmp	qword ptr [r12 + 0x20], 0
	je	.label_230
.label_238:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_206
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
.label_213:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_208:
	call	error
	xor	r13d, r13d
	jmp	.label_206
.label_225:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, ebp
	call	fchmodat
	mov	r15b, 1
	test	eax, eax
	mov	ebx, ebp
	je	.label_260
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	ebp, r14d
	jne	.label_261
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x40]
	call	error
.label_261:
	xor	r13d, r13d
	jmp	.label_271
.label_260:
	mov	r13b, 1
.label_237:
	mov	ebp, r14d
.label_271:
	movzx	r14d, byte ptr [rsp + 0x20]
.label_206:
	cmp	dword ptr [rip + verbosity],  2
	je	.label_210
	test	r15b, r15b
	je	.label_201
	test	bh, 0xe
	mov	eax, ebx
	je	.label_203
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rcx, [rsp + 0x48]
	call	__fxstatat
	test	eax, eax
	je	.label_267
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	jne	.label_201
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x10], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	byte ptr [rsp + 0x20], r14b
	mov	r14d, ebp
	mov	ebp, ebx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, rbx
	mov	ebx, ebp
	mov	ebp, r14d
	movzx	r14d, byte ptr [rsp + 0x20]
	call	error
	nop	word ptr cs:[rax + rax]
.label_201:
	xor	eax, eax
	jmp	.label_228
.label_267:
	mov	eax, dword ptr [rsp + 0x60]
.label_203:
	xor	eax, ebp
	test	ax, 0xfff
	setne	al
.label_228:
	test	al, al
	jne	.label_231
	mov	ecx, dword ptr [rip + verbosity]
	test	ecx, ecx
	jne	.label_210
.label_231:
	mov	dword ptr [rsp + 0x10], ebp
	mov	ebp, ebx
	xor	ecx, ecx
	test	al, al
	sete	cl
	lea	ebx, [rcx + rcx + 1]
	test	r15b, r15b
	mov	eax, 0
	cmove	ebx, eax
	test	r13b, r13b
	mov	eax, 2
	cmove	ebx, eax
	test	ebx, ebx
	je	.label_219
	mov	edi, ebp
	lea	rsi, [rsp + 0x48]
	call	strmode
	mov	byte ptr [rsp + 0x52], 0
	mov	edi, dword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x34]
	call	strmode
	mov	byte ptr [rsp + 0x3e], 0
	and	bl, 3
	cmp	bl, 3
	je	.label_199
	cmp	bl, 2
	je	.label_243
	cmp	bl, 1
	jne	.label_265
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	jmp	.label_248
.label_219:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_239
.label_199:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rdx, rax
	mov	eax, ebp
	mov	ecx, eax
	and	ecx, 0xfff
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0x49]
	call	__printf_chk
	jmp	.label_239
.label_243:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
.label_248:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rdx, rax
	mov	eax, dword ptr [rsp + 0x10]
	mov	ecx, eax
	and	ecx, 0xfff
	mov	eax, ebp
	mov	r9d, eax
	and	r9d, 0xfff
	lea	rax, [rsp + 0x49]
	mov	qword ptr [rsp], rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0x35]
	call	__printf_chk
.label_239:
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x10]
.label_210:
	test	r15b, r15b
	je	.label_209
	cmp	byte ptr [rip + diagnose_surprises],  1
	jne	.label_209
	mov	eax, ebp
	and	eax, 0xf000
	xor	esi, esi
	cmp	eax, 0x4000
	sete	sil
	mov	rcx, qword ptr [rip + change]
	xor	edx, edx
	xor	r8d, r8d
	mov	edi, ebp
	call	mode_adjust
	mov	ebp, eax
	not	eax
	test	ebx, eax
	je	.label_209
	mov	edi, ebx
	lea	rsi, [rsp + 0x48]
	call	strmode
	mov	edi, ebp
	lea	rsi, [rsp + 0x34]
	call	strmode
	mov	byte ptr [rsp + 0x3e], 0
	mov	byte ptr [rsp + 0x52], 0
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	r8, [rsp + 0x49]
	lea	r9, [rsp + 0x35]
	call	error
	nop	word ptr cs:[rax + rax]
.label_209:
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_233
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	rpl_fts_set
.label_233:
	test	r13b, r13b
	setne	bpl
.label_207:
	and	bpl, r14b
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_read
	mov	r12, rax
	test	r12, r12
	mov	r14d, ebp
	jne	.label_202
.label_198:
	call	__errno_location
	mov	r14, rax
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	je	.label_241
	mov	al, byte ptr [rip + force_silent]
	xor	ebp, ebp
	test	al, al
	jne	.label_241
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_241:
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_close
	test	eax, eax
	je	.label_253
	mov	ebx, dword ptr [r14]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_253:
	movzx	eax, bpl
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1020:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_160
	mov	edx, OFFSET FLAT:label_169
	mov	r8d, OFFSET FLAT:label_215
	mov	r9d, OFFSET FLAT:label_216
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1021:
	xor	edi, edi
	call	usage
.label_262:
	mov	edi, 1
	call	usage
.label_265:
	call	abort
.label_232:
	mov	rdx, rcx
	test	rcx, rcx
	je	.label_197
	cmp	rdx, qword ptr [r14 + rax*8 - 8]
	jne	.label_197
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r12d
	mov	rdi, qword ptr [r14 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_197:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
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
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4040b9
	.globl sub_4040b9
	.type sub_4040b9, @function
sub_4040b9:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
.label_272:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4040c5
	.globl sub_4040c5
	.type sub_4040c5, @function
sub_4040c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040cf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_272
	call	rpl_calloc
	test	rax, rax
	je	.label_272
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040f0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_275
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_274
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_274:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40412a
	.globl sub_40412a
	.type sub_40412a, @function
sub_40412a:

	nop	word ptr cs:[rax + rax]
.label_275:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_273
	cmp	qword ptr [rax + 0x58], 0
	js	.label_273
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_274
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_273
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_273
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_273:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x404180

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_276
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_276:
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
	#Procedure 0x404203
	.globl sub_404203
	.type sub_404203, @function
sub_404203:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404210

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_286
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_286
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_283
	cmp	rsi, r14
	je	.label_298
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_285
	mov	rax, qword ptr [r12]
.label_297:
	test	rax, rax
	jne	.label_303
	jmp	.label_283
.label_298:
	mov	rax, r14
.label_303:
	xor	ebp, ebp
	test	r15, r15
	je	.label_279
	mov	qword ptr [r15], rax
	jmp	.label_279
.label_285:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_283
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_293:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_288
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_291
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_293
.label_283:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_295
	cvtsi2ss	xmm1, rax
	jmp	.label_300
.label_295:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_300:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_305
	cvtsi2ss	xmm0, rcx
	jmp	.label_282
.label_305:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_282:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_280
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_290
	ucomiss	xmm2, dword ptr [rip + label_111]
	jbe	.label_292
	movss	xmm3, dword ptr [rip + label_101]
	ucomiss	xmm3, xmm2
	jbe	.label_292
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_106]
	jbe	.label_292
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_292
	addss	xmm3, dword ptr [rip + label_111]
	ucomiss	xmm2, xmm3
	jbe	.label_292
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_103]
	ucomiss	xmm5, xmm4
	jb	.label_292
	ucomiss	xmm4, xmm3
	ja	.label_281
.label_292:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_294]
	jmp	.label_281
.label_290:
	mov	eax, OFFSET FLAT:default_tuning
.label_281:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_280
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_307
	mulss	xmm0, xmm2
.label_307:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_81]
	jae	.label_279
	movss	xmm1, dword ptr [rip + label_80]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_279
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_286
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_280
	cmp	rsi, r14
	mov	rax, r14
	je	.label_289
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_296
	mov	rax, qword ptr [r12]
.label_289:
	test	rax, rax
	jne	.label_299
.label_280:
	cmp	qword ptr [r12], 0
	je	.label_301
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_302
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_306
.label_301:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_277]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_278
.label_302:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_279
.label_306:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_278:
	mov	ebp, 1
.label_279:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_288:
	mov	rax, r14
	jmp	.label_297
.label_291:
	mov	rax, qword ptr [rbp]
	jmp	.label_297
.label_296:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_280
	lea	rbp, [rbx + rbp + 8]
.label_287:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_304
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_284
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_287
	jmp	.label_280
.label_304:
	mov	rax, r14
	jmp	.label_289
.label_284:
	mov	rax, qword ptr [rbp]
	jmp	.label_289
.label_286:
	call	abort
.label_299:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404541
	.globl sub_404541
	.type sub_404541, @function
sub_404541:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404550
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_308
	test	rdx, rdx
	je	.label_308
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_308:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045be
	.globl sub_4045be
	.type sub_4045be, @function
sub_4045be:

	nop	
.label_311:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_310
.label_309:
	pop	rbx
	ret	
.label_310:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4045d9
	.globl sub_4045d9
	.type sub_4045d9, @function
sub_4045d9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_310
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_311
	test	rbx, rbx
	jne	.label_311
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404610

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x404620
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_312
	xor	ebx, ebx
.label_316:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_313
	test	r13, r13
	je	.label_313
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_312
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_314:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_315
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_314
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x40468c
	.globl sub_40468c
	.type sub_40468c, @function
sub_40468c:

	nop	dword ptr [rax]
.label_315:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_313:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_316
.label_312:
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
	#Procedure 0x4046b3
	.globl sub_4046b3
	.type sub_4046b3, @function
sub_4046b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0
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
	#Procedure 0x4046d8
	.globl sub_4046d8
	.type sub_4046d8, @function
sub_4046d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_266
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_317
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404705
	.globl sub_404705
	.type sub_404705, @function
sub_404705:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	.section	.text
	.align	16
	#Procedure 0x404718
	.globl sub_404718
	.type sub_404718, @function
sub_404718:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404720
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_319
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_169
	mov	ecx, OFFSET FLAT:label_166
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404794
	.globl sub_404794
	.type sub_404794, @function
sub_404794:

	nop	word ptr cs:[rax + rax]
.label_322:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047a3
	.globl sub_4047a3
	.type sub_4047a3, @function
sub_4047a3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4047a5

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_323
	cmp	ecx, 0x11
	jne	.label_322
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_323:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_325
	cmp	byte ptr [rax], 0x43
	jne	.label_327
	cmp	byte ptr [rax + 1], 0
	je	.label_324
.label_327:
	mov	esi, OFFSET FLAT:label_326
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_325
.label_324:
	xor	ebx, ebx
.label_325:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047f1
	.globl sub_4047f1
	.type sub_4047f1, @function
sub_4047f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_328
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_329
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_329
	mov	qword ptr [r13], rdi
	jmp	.label_332
.label_328:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_332:
	test	rbx, rbx
	je	.label_334
	nop	dword ptr [rax]
.label_337:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_337
	mov	rdi, qword ptr [r13]
.label_334:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_333
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_336
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_338
	mov	rdx, rsi
	jmp	.label_330
.label_329:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_335
.label_338:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_339:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_339
.label_330:
	test	rcx, rcx
	je	.label_336
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_331:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_331
.label_336:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_333:
	mov	qword ptr [rcx + 0x10], 0
.label_335:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40497e
	.globl sub_40497e
	.type sub_40497e, @function
sub_40497e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404980
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404991
	.globl sub_404991
	.type sub_404991, @function
sub_404991:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0
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
	#Procedure 0x4049d6
	.globl sub_4049d6
	.type sub_4049d6, @function
sub_4049d6:

	nop	word ptr cs:[rax + rax]
.label_341:
	mov	eax, ebx
.label_340:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049ed
	.globl sub_4049ed
	.type sub_4049ed, @function
sub_4049ed:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049fc

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_341
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_340
.label_342:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a36
	.globl sub_404a36
	.type sub_404a36, @function
sub_404a36:

	nop	
.label_343:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a41

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_342
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_343
	mov	byte ptr [rdi + 0x1c], 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a60

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_344
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_344:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a82
	.globl sub_404a82
	.type sub_404a82, @function
sub_404a82:

	nop	word ptr cs:[rax + rax]
.label_347:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_345:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_346
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_345
.label_346:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ac4
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_349
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_350:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_348
	test	rdx, rdx
	jne	.label_350
	jmp	.label_347
.label_348:
	test	rdx, rdx
	je	.label_347
	mov	rax, qword ptr [rdx]
	jmp	.label_346
.label_349:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b13
	.globl sub_404b13
	.type sub_404b13, @function
sub_404b13:

	nop	word ptr cs:[rax + rax]
.label_352:
	mov	edi, eax
	call	close
.label_351:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_353
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_352
	jmp	.label_351
.label_353:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b4a
	.globl sub_404b4a
	.type sub_404b4a, @function
sub_404b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b50

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_354
	test	ah, 2
	jne	.label_357
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_356
.label_357:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_355
	mov	edi, eax
	call	close
.label_355:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_354:
	xor	eax, eax
.label_356:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x404b9a
	.globl sub_404b9a
	.type sub_404b9a, @function
sub_404b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_72
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404bd0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bd5
	.globl sub_404bd5
	.type sub_404bd5, @function
sub_404bd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404be0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_359
	test	rsi, rsi
	je	.label_359
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_359:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_362
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_364
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_365
.label_364:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_361
	mov	rax, qword ptr [rax + 8]
	jmp	.label_362
.label_361:
	mov	r12b, 1
	mov	r14, rbp
.label_365:
	xor	eax, eax
	test	r15d, r15d
	js	.label_362
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_362
	test	r12b, r12b
	je	.label_363
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_363
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_360
	cmp	rax, rbp
	je	.label_363
	call	abort
.label_360:
	mov	rdi, rbp
	call	free
.label_363:
	mov	rax, qword ptr [rsp]
.label_362:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d4a
	.globl sub_404d4a
	.type sub_404d4a, @function
sub_404d4a:

	nop	word ptr [rax + rax]
.label_372:
	test	rcx, rcx
	jne	.label_369
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_369:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_370
.label_371:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_366
	test	rbx, rbx
	jne	.label_366
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_368:
	call	xalloc_die
.label_370:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404da6
	.globl sub_404da6
	.type sub_404da6, @function
sub_404da6:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404daf
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_372
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_368
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_371
.label_366:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	je	.label_368
.label_367:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404df0

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
	jne	.label_398
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_396:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_374
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_396
	xor	eax, eax
	test	bl, bl
	jne	.label_374
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
	jmp	.label_374
.label_398:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_375
	.section	.text
	.align	16
	#Procedure 0x404e8f
	.globl sub_404e8f
	.type sub_404e8f, @function
sub_404e8f:

	nop	
.label_383:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_375:
	cmp	bl, 0x2c
	jle	.label_379
	cmp	bl, 0x2d
	je	.label_381
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_383
	jmp	.label_387
	.section	.text
	.align	16
	#Procedure 0x404eaf
	.globl sub_404eaf
	.type sub_404eaf, @function
sub_404eaf:

	nop	
.label_379:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_383
	test	bl, bl
	je	.label_389
.label_387:
	xor	edx, edx
	jmp	.label_383
	.section	.text
	.align	16
	#Procedure 0x404ec2
	.globl sub_404ec2
	.type sub_404ec2, @function
sub_404ec2:

	nop	word ptr cs:[rax + rax]
.label_381:
	mov	edx, 1
	jmp	.label_383
.label_389:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_395
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_397
	.section	.text
	.align	16
	#Procedure 0x404efc

	.globl sub_404efc
	.type sub_404efc, @function
sub_404efc:
	inc	r14
	nop	
.label_397:
	xor	esi, esi
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x404f04
	.globl sub_404f04
	.type sub_404f04, @function
sub_404f04:

	nop	word ptr cs:[rax + rax]
.label_982:
	or	esi, 0x207
	inc	r14
.label_373:
	movzx	edx, byte ptr [r14]
	movsx	ecx, dl
	lea	edi, [rcx - 0x61]
	cmp	edi, 0x14
	ja	.label_378
	jmp	qword ptr [(rdi * 8) + label_386]
.label_980:
	or	esi, 0xfff
	inc	r14
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x404f3a
	.globl sub_404f3a
	.type sub_404f3a, @function
sub_404f3a:

	nop	word ptr [rax + rax]
.label_981:
	or	esi, 0x438
	inc	r14
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x404f4b
	.globl sub_404f4b
	.type sub_404f4b, @function
sub_404f4b:

	nop	dword ptr [rax + rax]
.label_983:
	or	esi, 0x9c0
	inc	r14
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x404f5b
	.globl sub_404f5b
	.type sub_404f5b, @function
sub_404f5b:

	nop	dword ptr [rax + rax]
.label_378:
	mov	edi, ecx
	cmp	ecx, 0x3d
	ja	.label_384
	bt	r8, rdi
	jae	.label_384
.label_958:
	lea	rbx, [r14 + 1]
	movsx	ecx, byte ptr [r14 + 1]
	mov	edi, ecx
	add	edi, -0x30
	cmp	edi, 0x45
	ja	.label_390
	jmp	qword ptr [(rdi * 8) + label_376]
.label_1065:
	xor	edi, edi
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_388:
	movsx	ecx, cl
	lea	edi, [rcx + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_384
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	ebx, ecx
	and	bl, 0xf8
	cmp	bl, 0x30
	je	.label_388
	test	esi, esi
	jne	.label_384
	mov	r11b, 1
	mov	esi, 0xfff
	test	cl, cl
	je	.label_393
	cmp	cl, 0x2c
	mov	r10d, 0xfff
	je	.label_380
	jmp	.label_384
.label_393:
	mov	r10d, 0xfff
	jmp	.label_380
.label_390:
	mov	r11b, 1
	xor	r10d, r10d
	mov	r14, rbx
	xor	edi, edi
	jmp	.label_399
	.section	.text
	.align	16
	#Procedure 0x405004
	.globl sub_405004
	.type sub_405004, @function
sub_405004:

	nop	word ptr cs:[rax + rax]
.label_392:
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	r11d, ebx
.label_399:
	movsx	ecx, cl
	add	ecx, -0x58
	cmp	ecx, 0x20
	ja	.label_380
	mov	bl, 2
	jmp	qword ptr [(rcx * 8) + label_385]
.label_945:
	or	edi, 0x124
	jmp	.label_377
.label_946:
	or	edi, 0xc00
	jmp	.label_377
.label_947:
	or	edi, 0x200
	jmp	.label_377
.label_948:
	or	edi, 0x92
	jmp	.label_377
.label_949:
	or	edi, 0x49
	nop	word ptr cs:[rax + rax]
.label_377:
	mov	ebx, r11d
	jmp	.label_392
.label_1066:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x38
	jmp	.label_380
.label_1067:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 7
	jmp	.label_380
.label_1068:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x1c0
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	rcx, r9
	shl	rcx, 4
	mov	byte ptr [rax + rcx], dl
	mov	byte ptr [rax + rcx + 1], r11b
	mov	dword ptr [rax + rcx + 4], esi
	mov	dword ptr [rax + rcx + 8], edi
	test	r10d, r10d
	jne	.label_382
	cmp	esi, 1
	sbb	r10d, r10d
	or	r10d, esi
	and	r10d, edi
.label_382:
	inc	r9
	mov	dword ptr [rax + rcx + 0xc], r10d
	mov	dl, byte ptr [r14]
	mov	ecx, edx
	add	cl, 0xd5
	movzx	ecx, cl
	cmp	cl, 0x12
	ja	.label_391
	jmp	qword ptr [(rcx * 8) + label_394]
.label_391:
	test	dl, dl
	jne	.label_384
	shl	r9, 4
	mov	byte ptr [rax + r9 + 1], 0
	jmp	.label_374
.label_384:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_374:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_395:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40510c
	.globl sub_40510c
	.type sub_40510c, @function
sub_40510c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_405
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_401
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_404:
	cmp	qword ptr [rcx], 0
	je	.label_402
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_400:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_400
	cmp	rdi, rax
	cmova	rax, rdi
.label_402:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_403
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_406:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_406
	cmp	rdi, rax
	cmova	rax, rdi
.label_403:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_404
.label_401:
	test	r8, r8
	je	.label_405
	cmp	qword ptr [rcx], 0
	je	.label_405
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_407:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_407
	cmp	rdx, rax
	cmova	rax, rdx
.label_405:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051c4
	.globl sub_4051c4
	.type sub_4051c4, @function
sub_4051c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
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
	#Procedure 0x405225
	.globl sub_405225
	.type sub_405225, @function
sub_405225:

	nop	word ptr cs:[rax + rax]
.label_424:
	mov	cl, 0x62
	jmp	.label_410
.label_417:
	mov	cl, 0x3f
	jmp	.label_410
	.section	.text
	.align	16
	#Procedure 0x405238

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_423
	cmp	ecx, 0x3fff
	jg	.label_414
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_416
	cmp	ecx, 0x2000
	jne	.label_417
	mov	cl, 0x63
	jmp	.label_410
.label_416:
	mov	cl, 0x70
	jmp	.label_410
.label_414:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_424
	cmp	ecx, 0x4000
	jne	.label_417
	mov	cl, 0x64
	jmp	.label_410
.label_423:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_410
	cmp	edx, 0xa000
	je	.label_415
	cmp	edx, 0xc000
	jne	.label_417
	mov	cl, 0x73
	jmp	.label_410
.label_415:
	mov	cl, 0x6c
.label_410:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_420
	mov	cl, 0x2d
.label_420:
	mov	byte ptr [rsi + 1], cl
	mov	ecx, eax
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_411
	mov	cl, 0x2d
.label_411:
	test	bl, 8
	jne	.label_419
	mov	dl, cl
.label_419:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_425
	mov	cl, 0x2d
.label_425:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_421
	mov	cl, 0x2d
.label_421:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_409
	mov	cl, 0x2d
.label_409:
	test	bl, 4
	jne	.label_412
	mov	dil, cl
.label_412:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_418
	mov	r9b, 0x2d
.label_418:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_413
	mov	dl, 0x2d
.label_413:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_422
	mov	r8b, 0x2d
.label_422:
	test	bl, 2
	pop	rbx
	je	.label_408
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_408:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40535b
	.globl sub_40535b
	.type sub_40535b, @function
sub_40535b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405360
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
	je	.label_426
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
.label_426:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4053c8
	.globl sub_4053c8
	.type sub_4053c8, @function
sub_4053c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053d0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053e0
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
	#Procedure 0x4053f3
	.globl sub_4053f3
	.type sub_4053f3, @function
sub_4053f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405400

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_427
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_427
	test	bl, 0x12
	je	.label_427
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_434
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	or	eax, 4
	test	bl, 2
	cmove	eax, ebx
	mov	dword ptr [r15 + 0x48], eax
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_442
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_460:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_460
	inc	rbp
	mov	ebx, r13d
.label_442:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_428
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_430
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_433
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_430:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_450
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_450:
	xor	r14d, r14d
	test	r13, r13
	je	.label_456
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_461
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_451:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_454
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_454
	nop	dword ptr [rax]
.label_429:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_454
	dec	rbx
	cmp	rbx, 1
	ja	.label_429
	nop	word ptr cs:[rax + rax]
.label_454:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_435
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	dword ptr [r15 + 0x40], 0
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	mov	rbx, r14
	test	rbx, rbx
	setne	al
	test	byte ptr [rsp + 0xf], al
	je	.label_443
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_459
.label_443:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_459:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_463
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_464
.label_463:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_464
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_464:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_451
	jmp	.label_445
.label_427:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_465:
	xor	eax, eax
.label_434:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_428:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_444
.label_461:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_446:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_449
	mov	r14, rbx
	add	r14, 0x108
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_437
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_432
.label_437:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_432:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_436
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_439
.label_436:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_439
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_439:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_446
.label_445:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_447
	cmp	r12, 2
	jb	.label_447
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_447:
	mov	r12, qword ptr [rsp + 0x18]
.label_456:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_453
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], r15
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	mov	qword ptr [rax + 0x10], r14
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_457
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_438
	jmp	.label_441
.label_433:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_440
.label_453:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_441
.label_457:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_441
	mov	rdi, rax
	call	cycle_check_init
.label_438:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_431
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_448
	mov	edi, OFFSET FLAT:label_147
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_452
.label_449:
	mov	r14, r15
.label_435:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_441:
	test	r14, r14
	je	.label_455
	nop	dword ptr [rax]
.label_462:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_458
	call	closedir
.label_458:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_462
.label_455:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_440:
	mov	rdi, rbp
.label_444:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_465
.label_448:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_147
	xor	eax, eax
	call	openat_safer
.label_452:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_431
	or	byte ptr [r15 + 0x48], 4
.label_431:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_434
	.section	.text
	.align	16
	#Procedure 0x405a39
	.globl sub_405a39
	.type sub_405a39, @function
sub_405a39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a40
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_466
	.section	.text
	.align	16
	#Procedure 0x405a51
	.globl sub_405a51
	.type sub_405a51, @function
sub_405a51:

	nop	word ptr cs:[rax + rax]
.label_469:
	add	r14, 0x10
.label_466:
	cmp	r14, rax
	jae	.label_468
	cmp	qword ptr [r14], 0
	je	.label_469
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_470
	nop	word ptr cs:[rax + rax]
.label_472:
	test	cl, 1
	je	.label_471
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_471:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_472
.label_470:
	test	cl, cl
	je	.label_467
	mov	rdi, qword ptr [r14]
	call	rax
.label_467:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_469
.label_468:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ae7
	.globl sub_405ae7
	.type sub_405ae7, @function
sub_405ae7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405af0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405af4
	.globl sub_405af4
	.type sub_405af4, @function
sub_405af4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b00

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x405b0e
	.globl sub_405b0e
	.type sub_405b0e, @function
sub_405b0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405b10

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
	#Procedure 0x405b29
	.globl sub_405b29
	.type sub_405b29, @function
sub_405b29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	xor	ebx, ebx
	test	r15, r15
	je	.label_479
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_479
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_519
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_520
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_523
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_501
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_501
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_525
	mov	edi, OFFSET FLAT:label_147
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_530
.label_519:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
	jmp	.label_479
.label_520:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_533
.label_523:
	lea	r12, [r15 + 0x70]
.label_533:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_474
	cmp	edx, 4
	je	.label_475
	test	al, 0x40
	je	.label_477
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_475
.label_477:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_482
	test	ah, 0x10
	jne	.label_485
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_487
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_489
	.section	.text
	.align	16
	#Procedure 0x405c73
	.globl sub_405c73
	.type sub_405c73, @function
sub_405c73:

	nop	word ptr cs:[rax + rax]
.label_474:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_494
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_498
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_474
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_478
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_504
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_504
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_522
	mov	edi, OFFSET FLAT:label_147
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_508
.label_510:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_489:
	test	rax, rax
	jne	.label_510
	jmp	.label_487
.label_475:
	test	ecx, 0x20000
	je	.label_512
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_512:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_514
	nop	word ptr cs:[rax + rax]
.label_521:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_518
	call	closedir
.label_518:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_521
	mov	qword ptr [r14 + 8], 0
.label_514:
	mov	word ptr [r15 + 0x70], 6
.label_497:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_479
.label_494:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_524
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_527
	mov	rdi, r15
	call	free
	jmp	.label_478
.label_498:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_531
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_479
.label_531:
	test	ax, 0x102
	je	.label_534
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_473
	call	hash_free
	jmp	.label_473
.label_485:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_484
	call	closedir
.label_484:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_486
	mov	qword ptr [r14 + 8], 0
.label_482:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_490
.label_487:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_478
.label_490:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_479
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_497
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_497
	mov	word ptr [r12], 7
	jmp	.label_497
.label_525:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_147
	xor	eax, eax
	call	openat_safer
.label_530:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_502
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_501
.label_527:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_479
	mov	rbx, qword ptr [r15 + 8]
.label_524:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_506
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_493
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_507
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_509
	test	al, 1
	jne	.label_488
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_513
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_516
.label_506:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_479
.label_502:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_501
.label_534:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_473:
	mov	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [rbx + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_526
	cmp	rbp, r15
	jne	.label_528
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_526
.label_528:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_526:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_532
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_481
.label_532:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_481
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_481
.label_507:
	mov	rdi, r14
	call	restore_initial_cwd
.label_516:
	test	eax, eax
	je	.label_488
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_488
.label_509:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_492
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_496
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_492
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_492
.label_522:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_147
	xor	eax, eax
	call	openat_safer
.label_508:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_503
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_504
.label_503:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_504:
	mov	word ptr [rbx + 0x74], 3
.label_478:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [rbx + 0x108]
	mov	rdx, qword ptr [rbx + 0x60]
	inc	rdx
	call	memmove
.label_481:
	mov	r15, rbx
.label_501:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_511
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_500
	cmp	rax, 2
	jne	.label_493
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_517
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_517
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_500
	cmp	rax, 0x58465342
	je	.label_500
.label_517:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_511
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_500
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_500
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_500:
	mov	ax, word ptr [r15 + 0x70]
.label_511:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_529
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_505
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_505:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_515
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_480
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_476
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_480
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_483
.label_529:
	mov	rbx, r15
	jmp	.label_479
.label_515:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_476
	mov	qword ptr [r15], r15
.label_483:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_479
.label_476:
	mov	rbx, r15
	jmp	.label_479
.label_480:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_479
.label_496:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_491
	cmp	esi, -0x64
	jne	.label_493
.label_491:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_495
	mov	edi, eax
	call	close
.label_495:
	mov	dword ptr [r14 + 0x2c], r15d
.label_492:
	mov	edi, dword ptr [rbp]
	call	close
.label_488:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_499
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_499
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_499:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_479:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_493:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4062e4
	.globl sub_4062e4
	.type sub_4062e4, @function
sub_4062e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_535]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x406304
	.globl sub_406304
	.type sub_406304, @function
sub_406304:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406310
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
	#Procedure 0x40631f
	.globl sub_40631f
	.type sub_40631f, @function
sub_40631f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406320

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_543
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_549
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_549
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_549:
	test	eax, eax
	sete	r14b
	jmp	.label_554
.label_543:
	xor	r14d, r14d
.label_554:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_555
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_538
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_538
	and	eax, 0x200
	je	.label_538
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_538
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_538:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_547
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_548
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_553
.label_555:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_536
	and	eax, 0x200
	je	.label_536
	mov	edi, r13d
	call	close
	jmp	.label_536
.label_548:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_553:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_536
.label_547:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_544
	test	rbx, rbx
	je	.label_546
	cmp	byte ptr [rbx], 0x2e
	jne	.label_546
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_546
	cmp	byte ptr [rbx + 2], 0
	jne	.label_546
.label_544:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_550
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_552
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_552
	mov	eax, dword ptr [r15 + 0x48]
.label_546:
	test	ah, 2
	jne	.label_551
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_537
.label_551:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_539
	cmp	esi, -0x64
	jne	.label_540
.label_539:
	test	r14b, r14b
	je	.label_541
	test	al, 4
	jne	.label_542
	test	esi, esi
	js	.label_542
	mov	edi, esi
	jmp	.label_545
.label_552:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_550:
	mov	ebp, 0xffffffff
.label_537:
	test	r13d, r13d
	jns	.label_536
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_536
.label_541:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_542
	mov	edi, eax
.label_545:
	call	close
.label_542:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_536:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_540:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406509
	.globl sub_406509
	.type sub_406509, @function
sub_406509:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406510

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_556
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_556:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40653c
	.globl sub_40653c
	.type sub_40653c, @function
sub_40653c:

	nop	dword ptr [rax]
.label_561:
	mov	r15, qword ptr [rbx]
.label_557:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406552

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_560
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_557
	add	rbx, rax
	je	.label_557
	cmp	rsi, r12
	je	.label_559
	xor	r15d, r15d
	nop	
.label_558:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_561
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_557
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_558
.label_559:
	mov	r15, r12
	jmp	.label_557
.label_560:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4065b8
	.globl sub_4065b8
	.type sub_4065b8, @function
sub_4065b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_563
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_562
	mov	dword ptr [r14], ebp
	jmp	.label_563
.label_562:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_563:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40660f
	.globl sub_40660f
	.type sub_40660f, @function
sub_40660f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406610

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_566
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_567
	nop	word ptr cs:[rax + rax]
.label_577:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_573
	mov	rbx, qword ptr [rdi + 8]
.label_573:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_577
	jmp	.label_578
.label_567:
	mov	rbx, rdi
.label_578:
	mov	rdi, rbx
	call	free
.label_566:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_581
	nop	word ptr cs:[rax + rax]
.label_564:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_580
	call	closedir
.label_580:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_564
.label_581:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_570
	xor	ebp, ebp
	test	al, 4
	jne	.label_571
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_576
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_576:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_579
	jmp	.label_571
.label_570:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_571
	call	close
.label_579:
	test	eax, eax
	je	.label_571
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_571:
	lea	rbx, [r14 + 0x60]
	jmp	.label_575
	.section	.text
	.align	16
	#Procedure 0x4066f8
	.globl sub_4066f8
	.type sub_4066f8, @function
sub_4066f8:

	nop	dword ptr [rax + rax]
.label_569:
	mov	edi, eax
	call	close
.label_575:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_565
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_569
	jmp	.label_575
.label_565:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_568
	call	hash_free
.label_568:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_572
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_574
	call	hash_free
	jmp	.label_574
.label_572:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_574:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_582
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_582:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406772
	.globl sub_406772
	.type sub_406772, @function
sub_406772:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406780

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
	jne	.label_583
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_583:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067d7
	.globl sub_4067d7
	.type sub_4067d7, @function
sub_4067d7:

	nop	word ptr [rax + rax]
.label_584:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4067e5
	.globl sub_4067e5
	.type sub_4067e5, @function
sub_4067e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f3
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
	je	.label_585
	test	r15, r15
	je	.label_584
.label_585:
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
	#Procedure 0x406830

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
	#Procedure 0x406847
	.globl sub_406847
	.type sub_406847, @function
sub_406847:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406850
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406855
	.globl sub_406855
	.type sub_406855, @function
sub_406855:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_606
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_589
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_593
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_597
	mov	r14, qword ptr [r13]
.label_593:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_602
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_595
.label_597:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_589
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_591:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_586
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_590
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_591
	jmp	.label_589
.label_602:
	mov	qword ptr [r13], 0
	jmp	.label_595
.label_586:
	mov	rcx, rax
	jmp	.label_599
.label_590:
	mov	r14, qword ptr [rcx]
.label_599:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_595:
	xor	r12d, r12d
	test	r14, r14
	je	.label_589
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_594
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_596
	cvtsi2ss	xmm1, rax
	jmp	.label_588
.label_596:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_588:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_592
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_598
.label_592:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_598:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_594
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_603
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_111]
	jbe	.label_587
	movss	xmm4, dword ptr [rip + label_101]
	ucomiss	xmm4, xmm3
	jbe	.label_587
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_587
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_106]
	jbe	.label_587
	movss	xmm4, dword ptr [rip + label_111]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_587
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_103]
	ucomiss	xmm5, xmm3
	jb	.label_587
	ucomiss	xmm3, xmm4
	ja	.label_600
.label_587:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_600
.label_603:
	mov	eax, OFFSET FLAT:default_tuning
.label_600:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_594
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_604
	mulss	xmm0, dword ptr [rax + 8]
.label_604:
	movss	xmm1, dword ptr [rip + label_80]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_594
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_605
	nop	word ptr cs:[rax + rax]
.label_601:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_601
.label_605:
	mov	qword ptr [r15 + 0x48], 0
.label_594:
	mov	r12, r14
.label_589:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_606:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406af3
	.globl sub_406af3
	.type sub_406af3, @function
sub_406af3:

	nop	word ptr cs:[rax + rax]
.label_607:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406b05
	.globl sub_406b05
	.type sub_406b05, @function
sub_406b05:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b0b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_608
	test	rax, rax
	je	.label_607
.label_608:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b28
	.globl sub_406b28
	.type sub_406b28, @function
sub_406b28:

	nop	dword ptr [rax + rax]
.label_617:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_614:
	test	rbx, rbx
	jne	.label_617
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_609
.label_613:
	add	r15, 0x10
.label_618:
	cmp	r15, rax
	jae	.label_612
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_613
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_616
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_613
.label_609:
	add	r15, 0x10
.label_619:
	cmp	r15, rax
	jae	.label_610
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_609
	test	r15, r15
	je	.label_609
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_614
	.section	.text
	.align	16
	#Procedure 0x406b9d

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_610
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_610
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_619
	.section	.text
	.align	16
	#Procedure 0x406bbc
	.globl sub_406bbc
	.type sub_406bbc, @function
sub_406bbc:

	nop	
.label_610:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_618
	.section	.text
	.align	16
	#Procedure 0x406bc6
	.globl sub_406bc6
	.type sub_406bc6, @function
sub_406bc6:

	nop	
.label_612:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_611
.label_615:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_615
.label_611:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x406bf6
	.globl sub_406bf6
	.type sub_406bf6, @function
sub_406bf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c00
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
	#Procedure 0x406c18
	.globl sub_406c18
	.type sub_406c18, @function
sub_406c18:

	nop	dword ptr [rax + rax]
.label_620:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406c25
	.globl sub_406c25
	.type sub_406c25, @function
sub_406c25:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c2b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_621
	test	rax, rax
	je	.label_620
.label_621:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c40

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_622
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_622:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_623
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_625
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_624
.label_625:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_624:
	mov	edx, dword ptr [rax]
.label_623:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d04
	.globl sub_406d04
	.type sub_406d04, @function
sub_406d04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d10
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x406d1a
	.globl sub_406d1a
	.type sub_406d1a, @function
sub_406d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d20
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
	#Procedure 0x406d95
	.globl sub_406d95
	.type sub_406d95, @function
sub_406d95:

	nop	word ptr cs:[rax + rax]
.label_630:
	push	rax
	mov	edi, OFFSET FLAT:label_626
	mov	esi, OFFSET FLAT:label_627
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_628
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x406dba
	.globl sub_406dba
	.type sub_406dba, @function
sub_406dba:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406dc5

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_630
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_631
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_631
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_629
.label_631:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_632
	mov	al, 1
	test	rdx, rdx
	je	.label_629
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_632:
	xor	eax, eax
.label_629:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e10

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
	jmp	.label_658
	.section	.text
	.align	16
	#Procedure 0x406ebf
	.globl sub_406ebf
	.type sub_406ebf, @function
sub_406ebf:

	nop	
.label_695:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_666
	or	al, dl
	jne	.label_666
	test	dil, 1
	jne	.label_692
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_666
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_658
	jmp	.label_666
.label_1049:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_700
	test	rbp, rbp
	je	.label_705
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_705:
	mov	r14d, 1
	jmp	.label_708
.label_1050:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_701
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_653
.label_700:
	xor	r14d, r14d
.label_708:
	mov	eax, OFFSET FLAT:label_701
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_702
	.section	.text
	.align	16
	#Procedure 0x406f8f
	.globl sub_406f8f
	.type sub_406f8f, @function
sub_406f8f:

	nop	
.label_658:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_729
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_736]
.label_1051:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_745
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_678
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1052:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_659
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_659
	xor	r14d, r14d
	nop	
.label_644:
	cmp	r14, rbp
	jae	.label_641
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_641:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_644
.label_659:
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
	jmp	.label_653
.label_1044:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_653
.label_1047:
	mov	al, 1
.label_1045:
	mov	r12b, 1
.label_1048:
	test	r12b, 1
	mov	cl, 1
	je	.label_667
	mov	ecx, eax
.label_667:
	mov	al, cl
.label_1046:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_668
	test	rbp, rbp
	je	.label_673
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_673:
	mov	r14d, 1
	jmp	.label_758
.label_668:
	xor	r14d, r14d
.label_758:
	mov	ecx, OFFSET FLAT:label_678
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_702:
	mov	sil, r12b
.label_653:
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
	jmp	.label_683
	.section	.text
	.align	16
	#Procedure 0x407151
	.globl sub_407151
	.type sub_407151, @function
sub_407151:

	nop	word ptr cs:[rax + rax]
.label_691:
	inc	r12
.label_683:
	cmp	r11, -1
	je	.label_719
	cmp	r12, r11
	jne	.label_722
	jmp	.label_723
	.section	.text
	.align	16
	#Procedure 0x407173
	.globl sub_407173
	.type sub_407173, @function
sub_407173:

	nop	word ptr cs:[rax + rax]
.label_719:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_714
.label_722:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_730
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_734
	cmp	r11, -1
	jne	.label_734
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_734:
	cmp	rbx, r11
	jbe	.label_750
.label_730:
	xor	esi, esi
.label_646:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_752
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_755]
.label_993:
	test	r12, r12
	jne	.label_640
	jmp	.label_633
	.section	.text
	.align	16
	#Procedure 0x407206
	.globl sub_407206
	.type sub_407206, @function
sub_407206:

	nop	word ptr cs:[rax + rax]
.label_750:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_643
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_646
	jmp	.label_651
.label_643:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_646
.label_997:
	xor	eax, eax
	cmp	r11, -1
	je	.label_661
	test	r12, r12
	jne	.label_665
	cmp	r11, 1
	je	.label_633
	xor	r13d, r13d
	jmp	.label_634
.label_986:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_670
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_651
	cmp	r8d, 2
	jne	.label_675
	mov	eax, r9d
	and	al, 1
	jne	.label_675
	cmp	r14, rbp
	jae	.label_679
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_679:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_680
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_680:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_685
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_685:
	add	r14, 3
	mov	r9b, 1
.label_675:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_690
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_690:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_698
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_698
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_698
	cmp	r14, rbp
	jae	.label_718
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_718:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_744
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_744:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_634
.label_987:
	mov	bl, 0x62
	jmp	.label_720
.label_988:
	mov	cl, 0x74
	jmp	.label_710
.label_989:
	mov	bl, 0x76
	jmp	.label_720
.label_990:
	mov	bl, 0x66
	jmp	.label_720
.label_991:
	mov	cl, 0x72
	jmp	.label_710
.label_994:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_727
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_652
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
	jae	.label_739
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_739:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_753
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_753:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_757
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_757:
	add	r14, 3
	xor	r9d, r9d
.label_727:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_634
.label_995:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_637
	cmp	r8d, 2
	jne	.label_640
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_640
	jmp	.label_652
.label_996:
	cmp	r8d, 2
	jne	.label_648
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_652
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_655
.label_752:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_657
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_707
.label_661:
	test	r12, r12
	jne	.label_676
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_676
.label_633:
	mov	dl, 1
.label_992:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_652
	xor	eax, eax
	mov	r13b, dl
.label_634:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_684
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_686
	jmp	.label_688
	.section	.text
	.align	16
	#Procedure 0x4074e4
	.globl sub_4074e4
	.type sub_4074e4, @function
sub_4074e4:

	nop	word ptr cs:[rax + rax]
.label_684:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_688
.label_686:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_693
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_697
	.section	.text
	.align	16
	#Procedure 0x40751d
	.globl sub_40751d
	.type sub_40751d, @function
sub_40751d:

	nop	dword ptr [rax]
.label_688:
	test	sil, sil
.label_697:
	mov	ebx, r15d
	je	.label_635
	jmp	.label_704
.label_693:
	mov	ebx, r15d
	jmp	.label_704
.label_670:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_691
	xor	r15d, r15d
	jmp	.label_640
.label_648:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_710
	xor	eax, eax
	mov	r15b, 0x5c
.label_655:
	xor	r13d, r13d
	jmp	.label_635
.label_710:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_652
.label_720:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_634
	nop	
.label_704:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_651
	cmp	r8d, 2
	jne	.label_728
	mov	eax, r9d
	and	al, 1
	jne	.label_728
	cmp	r14, rbp
	jae	.label_733
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_733:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_740
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_740:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_743
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_743:
	add	r14, 3
	mov	r9b, 1
.label_728:
	cmp	r14, rbp
	jae	.label_751
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_751:
	inc	r14
	jmp	.label_709
.label_657:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_756
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_756:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_645
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_638:
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
	je	.label_649
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_662
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_677
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_672
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_721:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_711
	bt	rsi, rdx
	jb	.label_652
.label_711:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_721
.label_672:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_689
	xor	r13d, r13d
.label_689:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_638
	jmp	.label_664
.label_698:
	xor	r13d, r13d
	jmp	.label_634
.label_676:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_634
.label_637:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_640
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_640
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_640
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_716
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_636
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_725
	cmp	r14, rbp
	jae	.label_726
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_726:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_731
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_731:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_715
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_715:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_713
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_713:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_636:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_634
.label_640:
	xor	eax, eax
.label_665:
	xor	r13d, r13d
	jmp	.label_634
.label_645:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_660:
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
	je	.label_699
	cmp	rbp, -1
	je	.label_647
	cmp	rbp, -2
	je	.label_649
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_654
	xor	r13d, r13d
.label_654:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_660
	jmp	.label_664
.label_649:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_671
	lea	rax, [r10 + r12]
.label_742:
	cmp	byte ptr [rax + rsi], 0
	je	.label_671
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_742
.label_671:
	mov	qword ptr [rsp + 0x40], rsi
.label_662:
	xor	r13d, r13d
	jmp	.label_677
.label_647:
	xor	r13d, r13d
.label_699:
	mov	r10, qword ptr [rsp + 0x28]
.label_677:
	mov	r12, qword ptr [rsp + 0x40]
.label_664:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_707:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_682
	test	al, al
	je	.label_682
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_634
.label_682:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_696
	.section	.text
	.align	16
	#Procedure 0x407917
	.globl sub_407917
	.type sub_407917, @function
sub_407917:

	nop	word ptr [rax + rax]
.label_663:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_696:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_703
	test	sil, 1
	je	.label_712
	cmp	r14, rbp
	jae	.label_706
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_706:
	inc	r14
	xor	esi, esi
	jmp	.label_712
	.section	.text
	.align	16
	#Procedure 0x407955
	.globl sub_407955
	.type sub_407955, @function
sub_407955:

	nop	word ptr cs:[rax + rax]
.label_703:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_651
	cmp	r8d, 2
	jne	.label_674
	mov	eax, r9d
	and	al, 1
	jne	.label_674
	cmp	r14, rbp
	jae	.label_724
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_724:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_737
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_737:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_687
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_687:
	add	r14, 3
	mov	r9b, 1
.label_674:
	cmp	r14, rbp
	jae	.label_741
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_741:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_747
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_747:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_754
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_754:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_712:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_635
	test	r9b, 1
	je	.label_656
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_717
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_642
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_642:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_650
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_650:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_656
	.section	.text
	.align	16
	#Procedure 0x407a66
	.globl sub_407a66
	.type sub_407a66, @function
sub_407a66:

	nop	word ptr cs:[rax + rax]
.label_717:
	mov	rbx, rcx
.label_656:
	cmp	r14, rbp
	jae	.label_663
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_663
	.section	.text
	.align	16
	#Procedure 0x407a8e
	.globl sub_407a8e
	.type sub_407a8e, @function
sub_407a8e:

	nop	
.label_635:
	test	r9b, 1
	je	.label_669
	and	al, 1
	jne	.label_669
	cmp	r14, rbp
	jae	.label_735
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_735:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_759
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_759:
	add	r14, 2
	xor	r9d, r9d
.label_669:
	mov	ebx, r15d
.label_709:
	cmp	r14, rbp
	jae	.label_681
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_681:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_691
.label_716:
	xor	r13d, r13d
	jmp	.label_634
	.section	.text
	.align	16
	#Procedure 0x407af1
	.globl sub_407af1
	.type sub_407af1, @function
sub_407af1:

	nop	word ptr cs:[rax + rax]
.label_723:
	mov	rcx, r12
.label_714:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_695
	or	al, dl
	jne	.label_695
	mov	r11, rcx
	jmp	.label_651
.label_652:
	mov	eax, 2
.label_738:
	mov	qword ptr [rsp + 0x38], rax
.label_651:
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
.label_748:
	mov	r14, rax
.label_639:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_666:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_732
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_694
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_694
	inc	rdx
	nop	dword ptr [rax + rax]
.label_749:
	cmp	r14, rbp
	jae	.label_746
	mov	byte ptr [rcx + r14], al
.label_746:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_749
	jmp	.label_694
.label_692:
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
	jmp	.label_748
.label_732:
	mov	rcx, qword ptr [rsp + 0x10]
.label_694:
	cmp	r14, rbp
	jae	.label_639
	mov	byte ptr [rcx + r14], 0
	jmp	.label_639
.label_725:
	mov	eax, 5
	jmp	.label_738
.label_729:
	call	abort
.label_760:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407c45
	.globl sub_407c45
	.type sub_407c45, @function
sub_407c45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c54
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
	je	.label_760
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
	#Procedure 0x407cb0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, esi
	mov	r15, rdi
	mov	r13, qword ptr [r15]
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x70], rdi
	je	.label_792
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_800
	mov	dword ptr [rsp], ebx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	lea	rbp, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_769
.label_792:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_810
	mov	edi, dword ptr [r15 + 0x2c]
.label_810:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_814
	test	al, 1
	je	.label_815
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_814
.label_815:
	mov	edx, 0x20000
.label_814:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_821
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_825
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_771
.label_800:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_821:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_766
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_784
.label_825:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_771
	mov	rdi, r15
	mov	rbp, rbx
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_831
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_764
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_771
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_764
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_771
.label_831:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_771
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_771:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	cmp	dword ptr [rsp], 2
	mov	r13, rbx
	mov	rbp, r12
	je	.label_780
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_790
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_790
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_789
	cmp	rax, 0x9fa0
	je	.label_790
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_790
	cmp	rax, 0x5346414f
	je	.label_790
	jmp	.label_780
.label_764:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_784
.label_789:
	test	rax, rax
	je	.label_790
	cmp	rax, 0x6969
	jne	.label_780
.label_790:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_806
.label_780:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_807
.label_806:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_811
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_811:
	test	ebp, ebp
	js	.label_816
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_774
.label_816:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_824
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_824:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_827
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_827
	call	close
.label_827:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_807:
	mov	dword ptr [rsp + 0xc], 0
.label_769:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_833
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_833:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x38], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x78], rcx
	mov	rax, qword ptr [r13 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x88], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x80], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	dword ptr [rsp + 8], 0
	xor	eax, eax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x30], r13
.label_822:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_836
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_796:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_783
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_786
	cmp	byte ptr [r13], 0x2e
	jne	.label_786
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_791
	test	al, al
	je	.label_772
	jmp	.label_786
	.section	.text
	.align	16
	#Procedure 0x4080b9
	.globl sub_4080b9
	.type sub_4080b9, @function
sub_4080b9:

	nop	dword ptr [rax]
.label_791:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_786
.label_772:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_796
	jmp	.label_798
	.section	.text
	.align	16
	#Procedure 0x4080d8
	.globl sub_4080d8
	.type sub_4080d8, @function
sub_4080d8:

	nop	dword ptr [rax + rax]
.label_786:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_804
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x68], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rbx, rax
	jae	.label_812
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_826
	.section	.text
	.align	16
	#Procedure 0x408188
	.globl sub_408188
	.type sub_408188, @function
sub_408188:

	nop	dword ptr [rax + rax]
.label_812:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_828
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_830
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_832
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_834
.label_832:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_834:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_826:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_762
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbp], 4
	jne	.label_765
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_838
	.section	.text
	.align	16
	#Procedure 0x40824f
	.globl sub_40824f
	.type sub_40824f, @function
sub_40824f:

	nop	
.label_765:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_838:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_779
	mov	eax, edx
	and	eax, 0x400
	jne	.label_779
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_788
	.section	.text
	.align	16
	#Procedure 0x4082a8
	.globl sub_4082a8
	.type sub_4082a8, @function
sub_4082a8:

	nop	dword ptr [rax + rax]
.label_779:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_767
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_767:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_797
	mov	eax, dword ptr [(rcx * 4) + label_823]
.label_797:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_788:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_773
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_773:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_808
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_808
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_818
	cmp	rax, 0x1021994
	je	.label_818
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_808
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_808
.label_818:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_808:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_822
	jmp	.label_836
.label_783:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_805
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_805:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_836
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_836
.label_798:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_836:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_776
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_763
	.section	.text
	.align	16
	#Procedure 0x408412
	.globl sub_408412
	.type sub_408412, @function
sub_408412:

	nop	word ptr cs:[rax + rax]
.label_770:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_763:
	test	rcx, rcx
	je	.label_768
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_770
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_770
.label_768:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_776
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_785:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_778
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_778:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_782
	mov	rdx, qword ptr [rcx + 8]
.label_782:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_785
.label_776:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_787
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_787:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_795
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_795
	cmp	dword ptr [rsp], 1
	je	.label_799
	test	r14, r14
	jne	.label_795
.label_799:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_801
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_513
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_803
.label_801:
	mov	rdi, r15
	call	restore_initial_cwd
.label_803:
	mov	rcx, rbp
	test	eax, eax
	je	.label_795
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_766
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_817:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_813
	call	closedir
.label_813:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_817
	jmp	.label_766
.label_795:
	test	r14, r14
	je	.label_819
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_820
	cmp	r14, 2
	jb	.label_794
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_794
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_766
.label_819:
	cmp	dword ptr [rsp], 3
	jne	.label_829
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_829
	movzx	eax, ax
	cmp	eax, 7
	je	.label_829
	mov	word ptr [r13 + 0x70], 6
.label_829:
	xor	r14d, r14d
	test	r12, r12
	je	.label_766
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_837:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_835
	call	closedir
.label_835:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_837
	jmp	.label_766
.label_820:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_766
.label_794:
	mov	r14, r12
	jmp	.label_766
.label_774:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_769
.label_762:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_777
	nop	word ptr [rax + rax]
.label_781:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_775
	call	closedir
.label_775:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_781
.label_777:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_784
.label_828:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_793
.label_830:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_793:
	mov	qword ptr [rsp + 0x48], r12
.label_804:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_802
	nop	word ptr cs:[rax + rax]
.label_809:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_761
	call	closedir
.label_761:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_809
.label_802:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_784:
	xor	r14d, r14d
.label_766:
	mov	rax, r14
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408760

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40876d
	.globl sub_40876d
	.type sub_40876d, @function
sub_40876d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408770
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
	#Procedure 0x4087a3
	.globl sub_4087a3
	.type sub_4087a3, @function
sub_4087a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_839
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_839
	test	byte ptr [rbx + 1], 1
	je	.label_839
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_839:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4087e3
	.globl sub_4087e3
	.type sub_4087e3, @function
sub_4087e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087f0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_860
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_860:
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
	ja	.label_842
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_853
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_841
	test	esi, esi
	jne	.label_842
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_843
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_844
.label_842:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_845
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_841
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_852
.label_853:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_840
.label_841:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_857
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_858
.label_857:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_858:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_859:
	call	fcntl
.label_840:
	mov	ebp, eax
.label_846:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_852:
	cmp	eax, 6
	jne	.label_845
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_848
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_850
.label_845:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_851
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_855
.label_843:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_844:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_859
.label_848:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_850:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_849
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_847
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_847
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_846
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_854
.label_847:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_846
.label_851:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_855:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_840
.label_849:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_854:
	test	al, al
	je	.label_846
	test	ebp, ebp
	js	.label_846
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_856
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_846
.label_856:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_846
	.section	.text
	.align	16
	#Procedure 0x408a81
	.globl sub_408a81
	.type sub_408a81, @function
sub_408a81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a90

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
	jne	.label_865
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_869
	cmp	ecx, 0x55
	jne	.label_861
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_861
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_861
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_861
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_861
	cmp	byte ptr [rax + 5], 0
	jne	.label_861
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_867
	mov	eax, OFFSET FLAT:label_868
	jmp	.label_864
.label_869:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_861
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_861
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_861
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_861
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_861
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_861
	cmp	byte ptr [rax + 7], 0
	je	.label_866
.label_861:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_701
	mov	eax, OFFSET FLAT:label_678
.label_864:
	cmove	rax, rcx
.label_865:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_866:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_862
	mov	eax, OFFSET FLAT:label_863
	jmp	.label_864
	.section	.text
	.align	16
	#Procedure 0x408b55
	.globl sub_408b55
	.type sub_408b55, @function
sub_408b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b60
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_870
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_871:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_871
.label_870:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b93
	.globl sub_408b93
	.type sub_408b93, @function
sub_408b93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0
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
	#Procedure 0x408baf
	.globl sub_408baf
	.type sub_408baf, @function
sub_408baf:

	nop	
.label_873:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x408bbc
	.globl sub_408bbc
	.type sub_408bbc, @function
sub_408bbc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bc8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_873
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_872
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_873
.label_872:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_873
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_874
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_874:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c30
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_19]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_21]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_875
	test	rdx, rdx
	je	.label_875
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_875:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408c9a
	.globl sub_408c9a
	.type sub_408c9a, @function
sub_408c9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ca0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408cc3
	.globl sub_408cc3
	.type sub_408cc3, @function
sub_408cc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cd0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_880
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_882
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_885:
	cmp	qword ptr [rax], 0
	je	.label_878
	mov	rdx, rax
	nop	dword ptr [rax]
.label_881:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_881
	inc	r10
.label_878:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_883
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_876:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_876
	inc	r10
.label_883:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_885
	jmp	.label_879
.label_882:
	xor	r10d, r10d
.label_879:
	test	r8, r8
	je	.label_880
	cmp	qword ptr [rax], 0
	je	.label_880
	nop	dword ptr [rax]
.label_884:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_884
	inc	r10
.label_880:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_886
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_877
.label_886:
	xor	eax, eax
.label_877:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d90

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_897
	test	dl, dl
	je	.label_901
	nop	dword ptr [rax]
.label_891:
	cmp	qword ptr [r13], 0
	je	.label_887
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_890
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_907:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_895
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_906
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_898
	.section	.text
	.align	16
	#Procedure 0x408e1a
	.globl sub_408e1a
	.type sub_408e1a, @function
sub_408e1a:

	nop	word ptr [rax + rax]
.label_906:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_898:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_907
	mov	rax, qword ptr [r15 + 8]
.label_890:
	mov	qword ptr [r13 + 8], 0
.label_887:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_891
	jmp	.label_897
	.section	.text
	.align	16
	#Procedure 0x408e64
	.globl sub_408e64
	.type sub_408e64, @function
sub_408e64:

	nop	word ptr cs:[rax + rax]
.label_901:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_904
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_903
	nop	word ptr [rax + rax]
.label_905:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_895
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_902
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_896
	.section	.text
	.align	16
	#Procedure 0x408eca
	.globl sub_408eca
	.type sub_408eca, @function
sub_408eca:

	nop	word ptr [rax + rax]
.label_902:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_896:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_905
	mov	r12, qword ptr [r13]
.label_903:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_889
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_893
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_900
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_892
	.section	.text
	.align	16
	#Procedure 0x408f38
	.globl sub_408f38
	.type sub_408f38, @function
sub_408f38:

	nop	dword ptr [rax + rax]
.label_893:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_888
.label_900:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_894
.label_892:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_888:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_904:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_901
.label_897:
	mov	al, 1
.label_899:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_894:
	xor	eax, eax
	jmp	.label_899
.label_895:
	call	abort
.label_889:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408fa9
	.globl sub_408fa9
	.type sub_408fa9, @function
sub_408fa9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408fb0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fba
	.globl sub_408fba
	.type sub_408fba, @function
sub_408fba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fc0

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
	je	.label_908
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
.label_909:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_913
	cmp	ebp, 3
	jne	.label_911
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
	jmp	.label_911
	.section	.text
	.align	16
	#Procedure 0x409058
	.globl sub_409058
	.type sub_409058, @function
sub_409058:

	nop	dword ptr [rax + rax]
.label_913:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_911:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_914
	cmp	esi, 0x2d
	je	.label_912
	cmp	esi, 0x3d
	jne	.label_910
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
	jmp	.label_910
	.section	.text
	.align	16
	#Procedure 0x4090ba
	.globl sub_4090ba
	.type sub_4090ba, @function
sub_4090ba:

	nop	word ptr [rax + rax]
.label_914:
	or	r13d, ebp
	or	edi, ebp
.label_910:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_909
.label_908:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_915
	mov	dword ptr [rax], r13d
.label_915:
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
	#Procedure 0x4090ef
	.globl sub_4090ef
	.type sub_4090ef, @function
sub_4090ef:

	nop	
.label_912:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_910
	.section	.text
	.align	16
	#Procedure 0x4090f9
	.globl sub_4090f9
	.type sub_4090f9, @function
sub_4090f9:

	nop	dword ptr [rax]
.label_974:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_916
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
	jmp	.label_917
.label_970:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_918
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
.label_972:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_934
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
	jmp	.label_917
.label_971:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_933
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
	.section	.text
	.align	16
	#Procedure 0x4091f7

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
	je	.label_930
	mov	edx, OFFSET FLAT:label_923
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_926
.label_975:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_927
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
	jmp	.label_917
.label_930:
	mov	edx, OFFSET FLAT:label_931
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_926:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_919
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
	mov	esi, OFFSET FLAT:label_932
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_922
	jmp	qword ptr [(r12 * 8) + label_924]
.label_969:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_925
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
.label_922:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_921
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
	jmp	.label_917
.label_968:
	add	rsp, 8
	jmp	.label_917
.label_973:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_928
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
	jmp	.label_917
.label_976:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_929
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
.label_917:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409409
	.globl sub_409409
	.type sub_409409, @function
sub_409409:

	nop	dword ptr [rax + rax]
.label_977:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_920
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
	jmp	.label_917
	.section	.text
	.align	16
	#Procedure 0x409460

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
	je	.label_935
	cmp	r15, -2
	jb	.label_935
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_935
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_935:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094b6
	.globl sub_4094b6
	.type sub_4094b6, @function
sub_4094b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094c0

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
	je	.label_936
	test	r15, r15
	je	.label_937
.label_936:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_937:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4094fc
	.globl sub_4094fc
	.type sub_4094fc, @function
sub_4094fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409565
	.globl sub_409565
	.type sub_409565, @function
sub_409565:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409572
	.globl sub_409572
	.type sub_409572, @function
sub_409572:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409596
	.globl sub_409596
	.type sub_409596, @function
sub_409596:

	nop	word ptr cs:[rax + rax]
