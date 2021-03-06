	.section	.text
	.align	16
	#Procedure 0x401ef9
	.globl sub_401ef9
	.type sub_401ef9, @function
sub_401ef9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401efa
	.globl sub_401efa
	.type sub_401efa, @function
sub_401efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f32
	.globl sub_401f32
	.type sub_401f32, @function
sub_401f32:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f7a
	.globl sub_401f7a
	.type sub_401f7a, @function
sub_401f7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f9c
	.globl sub_401f9c
	.type sub_401f9c, @function
sub_401f9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fad
	.globl sub_401fad
	.type sub_401fad, @function
sub_401fad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fc6
	.globl sub_401fc6
	.type sub_401fc6, @function
sub_401fc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_9
	mov	rcx, qword ptr [rdi]
	jmp	.label_11
	.section	.text
	.align	16
	#Procedure 0x401fde
	.globl sub_401fde
	.type sub_401fde, @function
sub_401fde:

	nop	
.label_12:
	add	rcx, 0x10
.label_11:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_10
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_12
.label_9:
	ret	
.label_10:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ff9
	.globl sub_401ff9
	.type sub_401ff9, @function
sub_401ff9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40200a
	.globl sub_40200a
	.type sub_40200a, @function
sub_40200a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402059
	.globl sub_402059
	.type sub_402059, @function
sub_402059:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402069
	.globl sub_402069
	.type sub_402069, @function
sub_402069:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_13]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_14]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_15]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020d8
	.globl sub_4020d8
	.type sub_4020d8, @function
sub_4020d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_21
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_28
	cmp	ecx, 0x5f
	je	.label_28
	cmp	ecx, 0x26
	jne	.label_21
.label_28:
	test	r13d, r13d
	je	.label_16
	cmp	r13d, 1
	jne	.label_19
	mov	rbx, rax
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_25
	mov	rax, rbx
	mov	ecx, dword ptr [rax]
	mov	r13b, 1
	cmp	ecx, 2
	je	.label_26
	mov	ebx, 0xffffffff
	cmp	ecx, 0x4b
	jne	.label_21
.label_25:
	mov	edi, 0x11
	jmp	.label_18
.label_16:
	xor	r13d, r13d
.label_26:
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_20
	test	rax, rax
	je	.label_20
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_29
	cmp	byte ptr [r12 + rax - 1], 0x2f
	jne	.label_20
.label_29:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_21
	test	r13b, r13b
	je	.label_27
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_20
	mov	edi, 2
	jmp	.label_23
.label_19:
	mov	edi, 0x5f
.label_18:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_21
.label_27:
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_17
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_21
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_20
	jmp	.label_21
.label_17:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_22
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_24
.label_20:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_21:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_22:
	mov	edi, 0x14
	jmp	.label_23
.label_24:
	mov	edi, 0x15
.label_23:
	call	errno_fail
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x4022a7
	.globl sub_4022a7
	.type sub_4022a7, @function
sub_4022a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_30
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_31:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_30
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_31
.label_30:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402313
	.globl sub_402313
	.type sub_402313, @function
sub_402313:

	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rdi, rdx
	mov	esi, ecx
	mov	rdx, r9
	call	symlinkat
.label_33:
	mov	edi, eax
	pop	rax
	jmp	errnoize
	.section	.text
	.align	16
	#Procedure 0x402335
	.globl sub_402335
	.type sub_402335, @function
sub_402335:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40233d

	.globl atomic_link
	.type atomic_link, @function
atomic_link:
	push	rax
	mov	r9, rdx
	mov	ecx, esi
	mov	rdx, rdi
	cmp	byte ptr [byte ptr [rip + symbolic_link]],  1
	jne	.label_32
	mov	al,  byte ptr [byte ptr [rip + relative]]
	test	al, al
	je	.label_34
	mov	eax, 0xffffffff
	pop	rcx
	ret	
.label_32:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	rsi, rdx
	mov	edx, ecx
	mov	rcx, r9
	call	linkat
	jmp	.label_33
	.section	.text
	.align	16
	#Procedure 0x402380

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40239a
	.globl sub_40239a
	.type sub_40239a, @function
sub_40239a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_35
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_35:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023b5
	.globl sub_4023b5
	.type sub_4023b5, @function
sub_4023b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023c0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_13]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_14]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_15]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40242d
	.globl sub_40242d
	.type sub_40242d, @function
sub_40242d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40243d
	.globl sub_40243d
	.type sub_40243d, @function
sub_40243d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x402447
	.globl sub_402447
	.type sub_402447, @function
sub_402447:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402450

	.globl convert_abs_rel
	.type convert_abs_rel, @function
convert_abs_rel:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	mov	rdi, rsi
	call	dir_name
	mov	r15, rax
	mov	esi, 2
	mov	rdi, r15
	call	canonicalize_filename_mode
	mov	r13, rax
	mov	esi, 2
	mov	rdi, r14
	call	canonicalize_filename_mode
	mov	r12, rax
	xor	ebx, ebx
	test	r13, r13
	je	.label_36
	test	r12, r12
	je	.label_36
	mov	edi, 0x1000
	call	xmalloc
	mov	rbx, rax
	mov	ecx, 0x1000
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	relpath
	test	al, al
	jne	.label_36
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_36:
	mov	rdi, r15
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r12
	call	free
	test	rbx, rbx
	je	.label_37
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_37:
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	xstrdup
	.section	.text
	.align	16
	#Procedure 0x4024fc
	.globl sub_4024fc
	.type sub_4024fc, @function
sub_4024fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	je	.label_38
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_39
.label_38:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_39:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x402544
	.globl sub_402544
	.type sub_402544, @function
sub_402544:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

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
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_41
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_40
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_40
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_40
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_41
.label_40:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_41:
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
	#Procedure 0x40262c
	.globl sub_40262c
	.type sub_40262c, @function
sub_40262c:

	nop	dword ptr [rax]
.label_43:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_42:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40264f
	.globl sub_40264f
	.type sub_40264f, @function
sub_40264f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402650

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
	js	.label_42
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_43
	mov	dword ptr [r14], ebp
	jmp	.label_42
	.section	.text
	.align	16
	#Procedure 0x402680

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402685
	.globl sub_402685
	.type sub_402685, @function
sub_402685:

	nop	word ptr cs:[rax + rax]
.label_44:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_46:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_47
	inc	r9
	cmp	r9, 0xa
	jb	.label_45
.label_47:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026bf
	.globl sub_4026bf
	.type sub_4026bf, @function
sub_4026bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4026c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_45:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_44
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x4026e9
	.globl sub_4026e9
	.type sub_4026e9, @function
sub_4026e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_48
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_49:
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
	jne	.label_49
.label_48:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402723
	.globl sub_402723
	.type sub_402723, @function
sub_402723:

	nop	word ptr cs:[rax + rax]
.label_53:
	mov	esi, OFFSET FLAT:label_50
.label_52:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x402783

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_53
	mov	esi, OFFSET FLAT:label_51
	jmp	.label_52
	.section	.text
	.align	16
	#Procedure 0x4027a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4027aa
	.globl sub_4027aa
	.type sub_4027aa, @function
sub_4027aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4027bd
	.globl sub_4027bd
	.type sub_4027bd, @function
sub_4027bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_54:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027d5
	.globl sub_4027d5
	.type sub_4027d5, @function
sub_4027d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027e3

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_54
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x402830

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r15d, esi
	mov	r14, rdi
	test	ebp, ebp
	jns	.label_58
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_56
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_58:
	cmp	ebp, 0x11
	jne	.label_56
	xor	bl, 1
	jne	.label_56
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_57
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_59
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_55
.label_57:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_56
.label_59:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_55
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_55:
	cmp	r12, rbx
	je	.label_56
	mov	rdi, r12
	call	free
.label_56:
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402923
	.globl sub_402923
	.type sub_402923, @function
sub_402923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402930
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402939
	.globl sub_402939
	.type sub_402939, @function
sub_402939:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402940

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
.label_61:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_60
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_61
.label_60:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40297b
	.globl sub_40297b
	.type sub_40297b, @function
sub_40297b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_62
	nop	
.label_75:
	mov	edi, OFFSET FLAT:label_67
	call	strcmp
	test	eax, eax
	je	.label_73
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_75
.label_73:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_67
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_65
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_64
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_64
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_67
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_67
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_70
	mov	ecx, OFFSET FLAT:label_71
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x402a9a
	.globl sub_402a9a
	.type sub_402a9a, @function
sub_402a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aa0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_76
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_76
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_76:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402ac6
	.globl sub_402ac6
	.type sub_402ac6, @function
sub_402ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	.section	.text
	.align	16
	#Procedure 0x402ada
	.globl sub_402ada
	.type sub_402ada, @function
sub_402ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_77
	jmp	readsource
.label_77:
	add	rdi, 0x18
	jmp	readisaac
	.section	.text
	.align	16
	#Procedure 0x402af1
	.globl sub_402af1
	.type sub_402af1, @function
sub_402af1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x402b2f
	.globl sub_402b2f
	.type sub_402b2f, @function
sub_402b2f:

	nop	
.label_78:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_79:
	sub	r13, rbx
	jne	.label_78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b75
	.globl sub_402b75
	.type sub_402b75, @function
sub_402b75:

	nop	word ptr cs:[rax + rax]
.label_84:
	mov	esi, OFFSET FLAT:label_80
.label_82:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_83:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402bb2
	.globl sub_402bb2
	.type sub_402bb2, @function
sub_402bb2:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402bb4

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_83
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_84
	mov	esi, OFFSET FLAT:label_81
	jmp	.label_82
	.section	.text
	.align	16
	#Procedure 0x402be0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	.section	.text
	.align	16
	#Procedure 0x402bf9
	.globl sub_402bf9
	.type sub_402bf9, @function
sub_402bf9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_87
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_86
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_87
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_85
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_86
.label_88:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ce0
	.globl sub_402ce0
	.type sub_402ce0, @function
sub_402ce0:

	nop	dword ptr [rax + rax]
.label_85:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_88
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_88
	mov	rdi, qword ptr [rsp]
	call	free
.label_87:
	xor	r14d, r14d
.label_86:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d30

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_89
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_90
.label_89:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_90:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d91
	.globl sub_402d91
	.type sub_402d91, @function
sub_402d91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402da5
	.globl sub_402da5
	.type sub_402da5, @function
sub_402da5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

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
	jl	.label_96
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_96
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_92
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_92:
	mov	rbx, r14
.label_96:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_94:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_95
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e51
	.globl sub_402e51
	.type sub_402e51, @function
sub_402e51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e60

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e76
	.globl sub_402e76
	.type sub_402e76, @function
sub_402e76:

	nop	word ptr cs:[rax + rax]
.label_97:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x402e8e
	.globl sub_402e8e
	.type sub_402e8e, @function
sub_402e8e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e97

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_97
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_99
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_97
.label_99:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_97
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_98
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_98:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_101:
	mov	r15, qword ptr [rbx]
.label_100:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f12

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_100
	test	rbx, rbx
	je	.label_100
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_102:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_101
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_101
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_102
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x402f60

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_103
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_103:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_104
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_105
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_106
.label_105:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_106:
	mov	ecx, dword ptr [rax]
.label_104:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40301e
	.globl sub_40301e
	.type sub_40301e, @function
sub_40301e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403020
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403034
	.globl sub_403034
	.type sub_403034, @function
sub_403034:

	nop	word ptr cs:[rax + rax]
.label_107:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403043
	.globl sub_403043
	.type sub_403043, @function
sub_403043:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40304e

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_107
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_109:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_108
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_109
.label_108:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030a6
	.globl sub_4030a6
	.type sub_4030a6, @function
sub_4030a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_71
	call	setlocale
	mov	edi, OFFSET FLAT:label_149
	mov	esi, OFFSET FLAT:label_150
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_149
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  0
	mov	byte ptr [byte ptr [rip + verbose]],  0
	mov	byte ptr [byte ptr [rip + interactive]],  0
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	mov	byte ptr [byte ptr [rip + symbolic_link]],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x38]
	mov	r15d, 0xf000
	xor	r14d, r14d
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_110
.label_913:
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  1
	mov	al, r13b
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	r13d, eax
	mov	edx, OFFSET FLAT:label_127
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x77
	ja	.label_133
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_134]]
.label_914:
	mov	byte ptr [byte ptr [rip + logical]],  1
	mov	al, r13b
	jmp	.label_110
.label_920:
	mov	byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]],  1
	mov	al, r13b
	jmp	.label_110
.label_923:
	test	r14, r14
	jne	.label_139
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r12
	call	stat
	test	eax, eax
	jne	.label_144
	mov	eax, dword ptr [rsp + 0x50]
	and	eax, r15d
	cmp	eax, 0x4000
	jne	.label_146
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	mov	al, r13b
	jmp	.label_110
.label_915:
	mov	byte ptr [byte ptr [rip + logical]],  0
	mov	al, r13b
	jmp	.label_110
.label_916:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x28], rax
	mov	al, r13b
	jmp	.label_110
.label_917:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	al, r13b
	jmp	.label_110
.label_918:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  1
	mov	byte ptr [byte ptr [rip + interactive]],  0
	mov	al, r13b
	jmp	.label_110
.label_919:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	mov	byte ptr [byte ptr [rip + interactive]],  1
	mov	al, r13b
	jmp	.label_110
.label_921:
	mov	byte ptr [byte ptr [rip + relative]],  1
	mov	al, r13b
	jmp	.label_110
.label_922:
	mov	byte ptr [byte ptr [rip + symbolic_link]],  1
	mov	al, r13b
	jmp	.label_110
.label_924:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	mov	al, r13b
	jmp	.label_110
.label_912:
	movsxd	r15,  dword ptr [dword ptr [rip + optind]]
	movsxd	r12, ebp
	sub	r12, r15
	test	r12d, r12d
	jle	.label_135
	cmp	byte ptr [byte ptr [rip + relative]],  1
	mov	rbp, r14
	jne	.label_140
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	je	.label_141
.label_140:
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	test	al, al
	jne	.label_145
	call	priv_set_remove_linkdir
.label_145:
	lea	r15, [rbx + r15*8]
	test	r13b, r13b
	je	.label_147
	test	rbp, rbp
	jne	.label_148
	xor	ebp, ebp
	cmp	r12d, 2
	jne	.label_151
	mov	r13d, 0xffffffff
	mov	r12d, 2
	jmp	.label_114
.label_147:
	test	rbp, rbp
	jne	.label_111
	cmp	r12d, 2
	jge	.label_111
	mov	r13d, 0xffffffff
	mov	ebx, 0xffffff9c
	mov	ebp, OFFSET FLAT:label_113
	jmp	.label_114
.label_111:
	test	rbp, rbp
	setne	al
	cmp	r12d, 2
	setne	bl
	mov	r13d, 0xffffffff
	or	bl, al
	jne	.label_115
	mov	rdi, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	esi, 0xffffff9c
	call	atomic_link
	mov	r13d, eax
	test	r13d, r13d
	js	.label_115
	cmp	r13d, 0x14
	je	.label_115
	cmp	r13d, 0x11
	jne	.label_130
.label_115:
	mov	byte ptr [rsp + 0x17], bl
	mov	rbp, r14
	test	rbp, rbp
	jne	.label_131
	mov	rbp, qword ptr [r15 + r12*8 - 8]
.label_131:
	mov	al,  byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]]
	test	al, al
	mov	eax, 0x230000
	mov	edx, 0x210000
	cmovne	edx, eax
	mov	edi, 0xffffff9c
	xor	eax, eax
	mov	rsi, rbp
	call	openat_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_136
	cmp	r14, 1
	sbb	r12d, 0
	jmp	.label_114
.label_136:
	mov	qword ptr [rsp + 0x30], rbp
	test	byte ptr [rsp + 0x17], 1
	mov	rbp, r14
	je	.label_114
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_130:
	mov	rbp, r14
.label_114:
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	test	cl, cl
	je	.label_153
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x18]
	call	xget_version
.label_153:
	mov	dword ptr [dword ptr [rip + backup_type]],  eax
	mov	rdi, qword ptr [rsp + 0x28]
	call	set_simple_backup_suffix
	test	rbp, rbp
	je	.label_120
	mov	r14d, ebx
	cmp	r12d, 1
	jle	.label_122
	cmp	byte ptr [byte ptr [rip + remove_existing_files]],  1
	jne	.label_124
	cmp	dword ptr [dword ptr [rip + backup_type]],  3
	je	.label_124
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	xor	al, 1
	test	al, 1
	je	.label_124
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + dest_set]],  rax
	test	rax, rax
	jne	.label_124
	call	xalloc_die
.label_120:
	mov	rdi, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	esi, 0xffffff9c
	mov	rcx, rdx
	mov	r8d, r13d
	call	do_link
	mov	ebx, eax
	jmp	.label_137
.label_122:
	mov	bl, 1
	jne	.label_137
.label_124:
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_155:
	mov	rdi, qword ptr [r15]
	call	last_component
	mov	rdi, rbp
	mov	rsi, rax
	lea	rdx, [rsp + 0x38]
	call	file_name_concat
	mov	r13, rbp
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x38]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [r15]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r8d, 0xffffffff
	mov	esi, r14d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	mov	rdi, rbp
	mov	rbp, r13
	call	free
	add	r15, 8
	dec	r12d
	jne	.label_155
.label_137:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_133:
	cmp	eax, 0xffffff7d
	je	.label_116
	cmp	eax, 0xffffff7e
	jne	.label_117
	xor	edi, edi
	call	usage
.label_117:
	mov	edi, 1
	call	usage
.label_116:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_67
	mov	edx, OFFSET FLAT:label_65
	mov	r8d, OFFSET FLAT:label_125
	mov	r9d, OFFSET FLAT:label_126
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
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
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	jmp	.label_119
.label_144:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	jmp	.label_119
.label_151:
	xor	edi, edi
	cmp	r12d, 1
	jg	.label_121
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15]
	jmp	.label_128
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
.label_119:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_121:
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x10]
.label_128:
	mov	edi, 4
	call	quotearg_style
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
	#Procedure 0x4036b3
	.globl sub_4036b3
	.type sub_4036b3, @function
sub_4036b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c5
	.globl sub_4036c5
	.type sub_4036c5, @function
sub_4036c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_156
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_158:
	cmp	qword ptr [rcx], 0
	je	.label_157
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_159:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_159
	cmp	rsi, rax
	cmova	rax, rsi
.label_157:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_158
.label_156:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40371d
	.globl sub_40371d
	.type sub_40371d, @function
sub_40371d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x403737
	.globl sub_403737
	.type sub_403737, @function
sub_403737:

	nop	word ptr [rax + rax]
.label_163:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_160
	.section	.text
	.align	16
	#Procedure 0x40374c

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_164
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_163
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_163
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_162
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_160
.label_164:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_160:
	test	ebx, ebx
	js	.label_162
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_162
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_161
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_162
.label_161:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_162:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403803
	.globl sub_403803
	.type sub_403803, @function
sub_403803:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403810

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40381a
	.globl sub_40381a
	.type sub_40381a, @function
sub_40381a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x403830

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x403839
	.globl sub_403839
	.type sub_403839, @function
sub_403839:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403840

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40384a
	.globl sub_40384a
	.type sub_40384a, @function
sub_40384a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_165
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_165:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40386e
	.globl sub_40386e
	.type sub_40386e, @function
sub_40386e:

	nop	
.label_167:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40387c

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_167
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_166
	cmp	rax, rbx
	je	.label_167
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_166:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4038e6
	.globl sub_4038e6
	.type sub_4038e6, @function
sub_4038e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038f0

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
	#Procedure 0x403907
	.globl sub_403907
	.type sub_403907, @function
sub_403907:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_170
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_168
	jmp	.label_169
.label_170:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_169
.label_168:
	mov	eax, 1
	test	bpl, bpl
	je	.label_169
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_169:
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
	#Procedure 0x403998
	.globl sub_403998
	.type sub_403998, @function
sub_403998:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_171
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_173
	jmp	.label_172
.label_171:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_172
.label_173:
	mov	eax, 1
	test	bpl, bpl
	je	.label_172
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_172:
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
	#Procedure 0x403a19
	.globl sub_403a19
	.type sub_403a19, @function
sub_403a19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a20

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_176
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_175
	jmp	.label_174
.label_176:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_174
.label_175:
	mov	eax, 1
	test	bpl, bpl
	je	.label_174
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_174:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a83
	.globl sub_403a83
	.type sub_403a83, @function
sub_403a83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_179
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_177
	jmp	.label_178
.label_179:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_178
.label_177:
	mov	eax, 1
	test	bpl, bpl
	je	.label_178
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_178:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403aef
	.globl sub_403aef
	.type sub_403aef, @function
sub_403aef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_180
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_182
	jmp	.label_181
.label_180:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_181
.label_182:
	mov	eax, 1
	test	bpl, bpl
	je	.label_181
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_181:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b39
	.globl sub_403b39
	.type sub_403b39, @function
sub_403b39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_185
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_184
	jmp	.label_183
.label_185:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_183
.label_184:
	mov	eax, 1
	test	bpl, bpl
	je	.label_183
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_183:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b85
	.globl sub_403b85
	.type sub_403b85, @function
sub_403b85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_187
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_188
	jmp	.label_186
.label_187:
	mov	eax, 1
	test	cl, cl
	je	.label_186
.label_188:
	xor	eax, eax
.label_186:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bbf
	.globl sub_403bbf
	.type sub_403bbf, @function
sub_403bbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403bc0
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
	#Procedure 0x403bcf
	.globl sub_403bcf
	.type sub_403bcf, @function
sub_403bcf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403bd0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bda
	.globl sub_403bda
	.type sub_403bda, @function
sub_403bda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	.section	.text
	.align	16
	#Procedure 0x403bfa
	.globl sub_403bfa
	.type sub_403bfa, @function
sub_403bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00
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
	#Procedure 0x403c13
	.globl sub_403c13
	.type sub_403c13, @function
sub_403c13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c20

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_191
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_193:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_197
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_190
.label_197:
	cmp	r13, r12
	jb	.label_192
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_194
	add	r12, r12
	jmp	.label_196
	.section	.text
	.align	16
	#Procedure 0x403cb3
	.globl sub_403cb3
	.type sub_403cb3, @function
sub_403cb3:

	nop	word ptr cs:[rax + rax]
.label_194:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_189
.label_196:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_193
	jmp	.label_191
.label_192:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_191
.label_190:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_195:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_191:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x403d14
	.globl sub_403d14
	.type sub_403d14, @function
sub_403d14:

	nop	word ptr cs:[rax + rax]
.label_189:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_195
.label_199:
	mov	ecx, 1
.label_198:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403d40
	.globl sub_403d40
	.type sub_403d40, @function
sub_403d40:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d45

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_199
	test	rsi, rsi
	mov	ecx, 1
	je	.label_198
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_198
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d80
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d94
	.globl sub_403d94
	.type sub_403d94, @function
sub_403d94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403dd0
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
	#Procedure 0x403e03
	.globl sub_403e03
	.type sub_403e03, @function
sub_403e03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_202
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_202:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e36
	.globl sub_403e36
	.type sub_403e36, @function
sub_403e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_203
	test	rbx, rbx
	jne	.label_203
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_203:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_205
	test	rax, rax
	je	.label_204
.label_205:
	pop	rbx
	ret	
.label_204:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e77
	.globl sub_403e77
	.type sub_403e77, @function
sub_403e77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	ebx, esi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x38], 0
	mov	r14d, ebx
	and	r14d, 3
	lea	eax, [rbx + 3]
	test	eax, r14d
	jne	.label_235
	test	rbp, rbp
	je	.label_235
	mov	al, byte ptr [rbp]
	cmp	al, 0x2f
	je	.label_244
	test	al, al
	jne	.label_247
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_221
.label_235:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_221:
	xor	ebp, ebp
.label_212:
	mov	rax, rbp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_244:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	rax, [rdi + 0x1000]
	lea	r13, [rdi + 1]
	jmp	.label_259
.label_247:
	mov	r15, rbp
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_212
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r13, rax
	sub	r13, rdi
	cmp	r13, 0xfff
	jg	.label_217
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	r13, rdi
	add	rax, 0x1000
	jmp	.label_222
.label_217:
	mov	r13, rax
.label_222:
	mov	rbp, r15
.label_259:
	xor	r15d, r15d
	cmp	byte ptr [rbp], 0
	je	.label_227
	mov	ecx, ebx
	and	ecx, 4
	mov	dword ptr [rsp + 0x48], ecx
	mov	ecx, ebx
	and	ecx, 7
	mov	dword ptr [rsp + 0x4c], ecx
	xor	ecx, ecx
	cmp	r14d, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x44], ecx
	xor	r15d, r15d
	and	bl, 3
	mov	rdx, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x14], ecx
	mov	dword ptr [rsp + 0x2c], r14d
.label_230:
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp], r15
	mov	rbp, rdx
.label_255:
	lea	rdx, [rdi + 1]
	mov	r12, r13
	nop	word ptr cs:[rax + rax]
.label_223:
	dec	rbp
	mov	r15, rbp
	nop	word ptr cs:[rax + rax]
.label_252:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_252
	mov	rbp, r15
	jmp	.label_251
.label_256:
	inc	rbp
.label_251:
	movzx	ecx, byte ptr [rbp]
	test	cl, cl
	je	.label_254
	cmp	cl, 0x2f
	jne	.label_256
.label_254:
	mov	r14, rbp
	sub	r14, r15
	cmp	r14, 1
	je	.label_258
	cmp	r14, 2
	jne	.label_260
	cmp	byte ptr [r15], 0x2e
	jne	.label_207
	cmp	byte ptr [r15 + 1], 0x2e
	jne	.label_207
	cmp	r12, rdx
	jbe	.label_211
	dec	r12
	mov	rcx, r12
	nop	word ptr [rax + rax]
.label_218:
	mov	r12, rcx
	cmp	r12, rdi
	jbe	.label_211
	lea	rcx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_218
	jmp	.label_211
	.section	.text
	.align	16
	#Procedure 0x404037
	.globl sub_404037
	.type sub_404037, @function
sub_404037:

	nop	word ptr [rax + rax]
.label_258:
	cmp	byte ptr [r15], 0x2e
	jne	.label_207
.label_211:
	cmp	byte ptr [rbp], 0
	jne	.label_223
	jmp	.label_226
.label_260:
	test	r14, r14
	je	.label_226
.label_207:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_228
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_228:
	lea	rcx, [r12 + r14]
	cmp	rcx, rax
	jae	.label_231
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_232
.label_231:
	sub	r12, rdi
	sub	rax, rdi
	lea	r13, [r14 + 1]
	cmp	r14, 0xfff
	mov	ecx, 0x1000
	cmovle	r13, rcx
	add	r13, rax
	mov	rsi, r13
	call	xrealloc
	add	r13, rax
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x30], r13
.label_232:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	lea	r13, [r12 + r14]
	mov	byte ptr [r12 + r14], 0
	cmp	dword ptr [rsp + 0x4c], 6
	je	.label_248
	cmp	dword ptr [rsp + 0x48], 0
	jne	.label_249
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	lstat
	jmp	.label_257
.label_249:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	stat
.label_257:
	test	eax, eax
	je	.label_261
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rax, rbx
	cmp	al, 1
	mov	dword ptr [rsp + 0x14], r14d
	je	.label_209
	test	al, al
	je	.label_240
.label_248:
	mov	dword ptr [rsp + 0x70], 0
.label_261:
	movzx	eax, word ptr [rsp + 0x70]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_219
	lea	rdi, [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x58]
	call	seen_triple
	test	al, al
	je	.label_225
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	eax, dword ptr [rsp + 0x14]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x14], eax
	mov	ecx, dword ptr [rsp + 0x44]
	jmp	.label_208
.label_225:
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_238
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	jne	.label_239
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_239
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_243
.label_209:
	mov	esi, 0x2f
	mov	rdi, rbp
	call	__strspn_c1
	xor	ecx, ecx
	cmp	byte ptr [rax + rbp], 0
	setne	cl
	cmp	r14d, 2
	lea	ecx, [rcx + rcx*8 + 4]
	mov	eax, 0xd
	cmovne	ecx, eax
.label_208:
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	and	cl, 0xf
	cmp	cl, 4
	mov	rax, qword ptr [rsp + 0x30]
	jne	.label_253
.label_243:
	cmp	byte ptr [rbp], 0
	jne	.label_255
	jmp	.label_216
.label_219:
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_210
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	jmp	.label_213
.label_210:
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	je	.label_220
	mov	cl, byte ptr [rbp]
	mov	edx, 0x14
	test	cl, cl
	jne	.label_224
.label_220:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, rbp
.label_213:
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_229
.label_238:
	mov	rdi, r14
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rbp
	call	strlen
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r14
	je	.label_214
	cmp	rcx, rax
	jbe	.label_242
	mov	rdi, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_245
.label_214:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_245:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_250
.label_242:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp]
.label_250:
	mov	rdi, qword ptr [rsp + 0x20]
	add	rdi, r14
	inc	rdx
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rsp], r14
	mov	rdi, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_233
	mov	byte ptr [rcx], 0x2f
	mov	r13, rax
	jmp	.label_215
.label_233:
	cmp	r13, rax
	jbe	.label_215
	sub	r12, r15
	lea	rax, [r12 + rbp - 1]
.label_236:
	mov	r13, rax
	cmp	r13, rcx
	jbe	.label_215
	lea	rax, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	jne	.label_236
.label_215:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp]
	mov	r15, rdx
	mov	rbp, rdx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
.label_229:
	cmp	byte ptr [rdx], 0
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_230
	jmp	.label_227
.label_226:
	mov	r13, r12
.label_216:
	mov	r15, qword ptr [rsp]
.label_227:
	lea	rcx, [rdi + 1]
	cmp	r13, rcx
	jbe	.label_237
	lea	rcx, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	cmove	r13, rcx
.label_237:
	mov	byte ptr [r13], 0
	lea	rcx, [r13 + 1]
	cmp	rax, rcx
	je	.label_241
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, r13
	call	xrealloc
	mov	rbp, rax
	jmp	.label_246
.label_241:
	mov	rbp, rdi
.label_246:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_212
	call	hash_free
	jmp	.label_212
.label_239:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	jmp	.label_206
.label_253:
	cmp	cl, 0xd
	mov	r14d, dword ptr [rsp + 0x14]
	jne	.label_212
	jmp	.label_206
.label_240:
	mov	edx, dword ptr [rsp + 0x14]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
.label_224:
	mov	r14d, edx
.label_206:
	mov	rbx, rdi
	mov	rdi, r15
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_234
	call	hash_free
.label_234:
	call	__errno_location
	mov	dword ptr [rax], r14d
	jmp	.label_221
	.section	.text
	.align	16
	#Procedure 0x404441
	.globl sub_404441
	.type sub_404441, @function
sub_404441:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40447d
	.globl sub_40447d
	.type sub_40447d, @function
sub_40447d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	.section	.text
	.align	16
	#Procedure 0x404493
	.globl sub_404493
	.type sub_404493, @function
sub_404493:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044a0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebx, r9d
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_266
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	r12, rcx
	mov	dword ptr [rsp + 4], r8d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_262
	call	__errno_location
	mov	rcx, r12
	mov	ebp, dword ptr [rax]
	mov	r8d, dword ptr [rsp + 4]
.label_266:
	cmp	ebp, 0x11
	jne	.label_262
	mov	r12d, r8d
	xor	bl, 1
	jne	.label_262
	lea	rsi, [rsp + 0x20]
	mov	rbp, rcx
	mov	rdi, rcx
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_265
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0x18], r13d
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, rbx
	call	try_tempname_len
	test	eax, eax
	je	.label_263
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_264
.label_265:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_262
.label_263:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_267
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_267:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_264:
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_262
	mov	rdi, rbx
	call	free
.label_262:
	mov	eax, ebp
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045bc
	.globl sub_4045bc
	.type sub_4045bc, @function
sub_4045bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_268
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_268:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_270
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_269
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_271
	test	esi, esi
	jne	.label_270
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_274
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_277
.label_270:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_275
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_271
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_273
.label_269:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_271:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_278
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_280
.label_278:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_280:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_273:
	cmp	eax, 6
	jne	.label_275
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_276
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_279
.label_275:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_281
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_272
.label_274:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_277:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_276:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_279:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_281:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_272:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404774
	.globl sub_404774
	.type sub_404774, @function
sub_404774:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404780

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_282
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_283
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_283:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_282:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047d7
	.globl sub_4047d7
	.type sub_4047d7, @function
sub_4047d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047e0

	.globl errnoize
	.type errnoize, @function
errnoize:
	xor	eax, eax
	test	edi, edi
	jns	.label_284
	push	rax
	call	__errno_location
	mov	eax, dword ptr [rax]
	add	rsp, 8
.label_284:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047f3
	.globl sub_4047f3
	.type sub_4047f3, @function
sub_4047f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404837
	.globl sub_404837
	.type sub_404837, @function
sub_404837:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404840

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404866
	.globl sub_404866
	.type sub_404866, @function
sub_404866:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_287
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_291:
	test	rbp, rbp
	je	.label_285
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_290
.label_285:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_288
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x404903
	.globl sub_404903
	.type sub_404903, @function
sub_404903:

	nop	word ptr cs:[rax + rax]
.label_290:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_286
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_292:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_291
.label_287:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	16
	#Procedure 0x40496e
	.globl sub_40496e
	.type sub_40496e, @function
sub_40496e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404970

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_296
	cmp	rsi, r13
	je	.label_294
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_297
.label_294:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_296
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_299
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_295
.label_297:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_296
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_298:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_293
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_293
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_298
	jmp	.label_296
.label_293:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_296
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_295:
	mov	rdi, r14
	call	free_entry
.label_296:
	mov	rax, r15
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
	#Procedure 0x404a31
	.globl sub_404a31
	.type sub_404a31, @function
sub_404a31:

	nop	word ptr [rax + rax]
.label_299:
	mov	qword ptr [rbx], 0
	jmp	.label_296
	.section	.text
	.align	16
	#Procedure 0x404a40

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_300
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_301]]
	jbe	.label_302
	movss	xmm1,  dword ptr [dword ptr [rip + label_305]]
	ucomiss	xmm1, xmm0
	jbe	.label_302
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_304]]
	jbe	.label_302
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_302
	addss	xmm1,  dword ptr [dword ptr [rip + label_301]]
	ucomiss	xmm0, xmm1
	jbe	.label_302
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_303]]
	ucomiss	xmm2, xmm0
	jb	.label_302
	ucomiss	xmm0, xmm1
	ja	.label_300
.label_302:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_300:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ab4
	.globl sub_404ab4
	.type sub_404ab4, @function
sub_404ab4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ac0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404acd
	.globl sub_404acd
	.type sub_404acd, @function
sub_404acd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404adb
	.globl sub_404adb
	.type sub_404adb, @function
sub_404adb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ae0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x404aee
	.globl sub_404aee
	.type sub_404aee, @function
sub_404aee:

	nop	
.label_311:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_310:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_306]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_307]]
	jae	.label_308
.label_309:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_308:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b57
	.globl sub_404b57
	.type sub_404b57, @function
sub_404b57:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b59

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_309
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_311
	cvtsi2ss	xmm0, rdi
	jmp	.label_310
	.section	.text
	.align	16
	#Procedure 0x404b70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_312
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_312:
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
	#Procedure 0x404bf3
	.globl sub_404bf3
	.type sub_404bf3, @function
sub_404bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	mov	eax, 0xffffffff
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c06
	.globl sub_404c06
	.type sub_404c06, @function
sub_404c06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x404c15
	.globl sub_404c15
	.type sub_404c15, @function
sub_404c15:

	nop	word ptr cs:[rax + rax]
.label_314:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_313
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c2b
	.globl sub_404c2b
	.type sub_404c2b, @function
sub_404c2b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c35
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_314
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_314
.label_313:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	.section	.text
	.align	16
	#Procedure 0x404c5b
	.globl sub_404c5b
	.type sub_404c5b, @function
sub_404c5b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c60
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_315
	.section	.text
	.align	16
	#Procedure 0x404c6d
	.globl sub_404c6d
	.type sub_404c6d, @function
sub_404c6d:

	nop	dword ptr [rax]
.label_321:
	add	r14, 0x10
.label_315:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_320
	cmp	qword ptr [r14], 0
	je	.label_321
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_316
	nop	word ptr cs:[rax + rax]
.label_318:
	test	cl, 1
	je	.label_319
	mov	rdi, qword ptr [rbx]
	call	rax
.label_319:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_318
.label_316:
	test	cl, cl
	je	.label_317
	mov	rdi, qword ptr [r14]
	call	rax
.label_317:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_321
.label_320:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cf3
	.globl sub_404cf3
	.type sub_404cf3, @function
sub_404cf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_323
	xor	ecx, ecx
	nop	
.label_322:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_322
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40501c
	.globl sub_40501c
	.type sub_40501c, @function
sub_40501c:

	nop	dword ptr [rax]
.label_328:
	mov	edi, OFFSET FLAT:label_324
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_326
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405039
	.globl sub_405039
	.type sub_405039, @function
sub_405039:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40503f

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_328
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_327]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405060
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40506a
	.globl sub_40506a
	.type sub_40506a, @function
sub_40506a:

	nop	word ptr [rax + rax]
.label_329:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405073
	.globl sub_405073
	.type sub_405073, @function
sub_405073:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405075
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_329
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_339:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4050c8
	.globl sub_4050c8
	.type sub_4050c8, @function
sub_4050c8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d2

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_339
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_backup_suffix_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_333
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405218
	.globl sub_405218
	.type sub_405218, @function
sub_405218:

	nop	dword ptr [rax + rax]
.label_342:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405225
	.globl sub_405225
	.type sub_405225, @function
sub_405225:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40522c

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_345
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_343
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_341
.label_345:
	test	rcx, rcx
	jne	.label_344
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_344:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_342
.label_341:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_343:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052a0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_346
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_348
	jmp	.label_347
.label_346:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_347
.label_348:
	mov	eax, 1
	test	bpl, bpl
	je	.label_347
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_347:
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
	#Procedure 0x40531d
	.globl sub_40531d
	.type sub_40531d, @function
sub_40531d:

	nop	dword ptr [rax]
.label_350:
	mov	eax, ebx
.label_349:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40532d
	.globl sub_40532d
	.type sub_40532d, @function
sub_40532d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40533c

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
	ja	.label_350
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
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_351
	mov	edi, OFFSET FLAT:label_354
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_352
	test	rbx, rbx
	je	.label_353
.label_351:
	mov	eax, OFFSET FLAT:label_352
	cmp	byte ptr [rbx], 0
	je	.label_353
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_352
	cmove	rax, rbx
.label_353:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053b7
	.globl sub_4053b7
	.type sub_4053b7, @function
sub_4053b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053c4
	.globl sub_4053c4
	.type sub_4053c4, @function
sub_4053c4:

	nop	word ptr cs:[rax + rax]
.label_359:
	mov	rcx, qword ptr [rdx]
.label_358:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053de
	.globl sub_4053de
	.type sub_4053de, @function
sub_4053de:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053e8
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_357:
	cmp	qword ptr [rcx], rbx
	jne	.label_355
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_359
.label_355:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_357
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_356:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_358
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_356
	jmp	.label_358
	.section	.text
	.align	16
	#Procedure 0x405440

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_369
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_366
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_362
	mov	eax, OFFSET FLAT:label_363
	jmp	.label_364
.label_366:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_365
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_367
	mov	eax, OFFSET FLAT:label_368
	jmp	.label_364
.label_365:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_360
	mov	eax, OFFSET FLAT:label_361
.label_364:
	cmove	rax, rcx
.label_369:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054fd
	.globl sub_4054fd
	.type sub_4054fd, @function
sub_4054fd:

	nop	dword ptr [rax]
.label_371:
	xor	ebx, ebx
.label_372:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405513
	.globl sub_405513
	.type sub_405513, @function
sub_405513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_371
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_370
	mov	byte ptr [rcx + rax - 1], 0
.label_370:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_372
	.section	.text
	.align	16
	#Procedure 0x405570
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405579
	.globl sub_405579
	.type sub_405579, @function
sub_405579:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405580
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_373
.label_374:
	ret	
.label_373:
	cmp	edi, 0x7f
	je	.label_374
	xor	eax, eax
	jmp	.label_374
	.section	.text
	.align	16
	#Procedure 0x405591
	.globl sub_405591
	.type sub_405591, @function
sub_405591:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055af
	.globl sub_4055af
	.type sub_4055af, @function
sub_4055af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4055be
	.globl sub_4055be
	.type sub_4055be, @function
sub_4055be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4055c0

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
	js	.label_375
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_378
	cmp	r12d, 0x7fffffff
	je	.label_380
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_376
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_376:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_378:
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
	jbe	.label_381
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_377
.label_381:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_379
	mov	rdi, r14
	call	free
.label_379:
	mov	rdi, r15
	call	xcharalloc
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
.label_377:
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
.label_375:
	call	abort
.label_380:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40577d
	.globl sub_40577d
	.type sub_40577d, @function
sub_40577d:

	nop	dword ptr [rax]
.label_382:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x405790
	.globl sub_405790
	.type sub_405790, @function
sub_405790:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40579e

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_382
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	last_component
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	cmove	rbx, r14
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057e3
	.globl sub_4057e3
	.type sub_4057e3, @function
sub_4057e3:

	nop	
	nop	word ptr cs:[rax + rax]
.label_383:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4057f5
	.globl sub_4057f5
	.type sub_4057f5, @function
sub_4057f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405803

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_383
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405810
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_384]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405824
	.globl sub_405824
	.type sub_405824, @function
sub_405824:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405830
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405844
	.globl sub_405844
	.type sub_405844, @function
sub_405844:

	nop	word ptr cs:[rax + rax]
.label_385:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405856
	.globl sub_405856
	.type sub_405856, @function
sub_405856:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40585b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_385
	test	rdx, rdx
	je	.label_385
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405880
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40588a
	.globl sub_40588a
	.type sub_40588a, @function
sub_40588a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x40589d
	.globl sub_40589d
	.type sub_40589d, @function
sub_40589d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058a0
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
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_386
	xor	ebx, ebx
.label_388:
	cmp	qword ptr [r13], 0
	je	.label_387
	test	r13, r13
	je	.label_387
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_386
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_389
.label_387:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_388
.label_386:
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
	#Procedure 0x405917
	.globl sub_405917
	.type sub_405917, @function
sub_405917:

	nop	word ptr [rax + rax]
.label_390:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405925
	.globl sub_405925
	.type sub_405925, @function
sub_405925:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_390
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405950
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405977
	.globl sub_405977
	.type sub_405977, @function
sub_405977:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405980

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
	je	.label_395
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_391
	cmp	byte ptr [r15], 0x2f
	je	.label_391
	mov	r12b, 0x2f
	jmp	.label_392
.label_395:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_392
.label_391:
	xor	r12d, r12d
.label_392:
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
	je	.label_394
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_393
	mov	qword ptr [rax], rbp
.label_393:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_394:
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
	#Procedure 0x405a58
	.globl sub_405a58
	.type sub_405a58, @function
sub_405a58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_459:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_465
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_471]]
.label_986:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_476
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_361
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_987:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_460
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_460
	xor	r14d, r14d
.label_496:
	cmp	r14, r11
	jae	.label_494
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_494:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_496
.label_460:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_410
.label_979:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_410
.label_982:
	mov	al, 1
.label_980:
	mov	r12b, 1
.label_983:
	test	r12b, 1
	mov	cl, 1
	je	.label_508
	mov	ecx, eax
.label_508:
	mov	al, cl
.label_981:
	test	r12b, 1
	jne	.label_398
	test	r11, r11
	je	.label_401
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_401:
	mov	r14d, 1
	jmp	.label_406
.label_398:
	xor	r14d, r14d
.label_406:
	mov	ecx, OFFSET FLAT:label_361
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_410
.label_984:
	test	r12b, 1
	jne	.label_417
	test	r11, r11
	je	.label_419
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_419:
	mov	r14d, 1
	jmp	.label_455
.label_985:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_360
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_410
.label_417:
	xor	r14d, r14d
.label_455:
	mov	eax, OFFSET FLAT:label_360
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_410:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_409
	.section	.text
	.align	16
	#Procedure 0x405d3c
	.globl sub_405d3c
	.type sub_405d3c, @function
sub_405d3c:

	nop	dword ptr [rax]
.label_403:
	inc	rsi
.label_409:
	cmp	rbp, -1
	je	.label_480
	cmp	rsi, rbp
	jne	.label_483
	jmp	.label_485
	.section	.text
	.align	16
	#Procedure 0x405d53
	.globl sub_405d53
	.type sub_405d53, @function
sub_405d53:

	nop	word ptr cs:[rax + rax]
.label_480:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_485
.label_483:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_489
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_491
	cmp	rbp, -1
	jne	.label_491
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_491:
	cmp	rbx, rbp
	jbe	.label_498
.label_489:
	xor	r8d, r8d
.label_408:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_500
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_504]]
.label_887:
	test	rsi, rsi
	jne	.label_407
	jmp	.label_431
	.section	.text
	.align	16
	#Procedure 0x405dee
	.globl sub_405dee
	.type sub_405dee, @function
sub_405dee:

	nop	
.label_498:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_404
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_408
	jmp	.label_418
.label_404:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_408
.label_891:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_425
	test	rsi, rsi
	jne	.label_427
	cmp	rbp, 1
	je	.label_431
	xor	r13d, r13d
	jmp	.label_397
.label_880:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_436
	cmp	byte ptr [rsp + 7], 0
	jne	.label_413
	cmp	r12d, 2
	jne	.label_439
	mov	eax, r9d
	and	al, 1
	jne	.label_439
	cmp	r14, r11
	jae	.label_441
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_441:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_445
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_445:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_449
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_449:
	add	r14, 3
	mov	r9b, 1
.label_439:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_458
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_458:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_463
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_463
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_463
	cmp	r14, r11
	jae	.label_477
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_477:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_437
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_437:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_397
.label_881:
	mov	bl, 0x62
	jmp	.label_486
.label_882:
	mov	cl, 0x74
	jmp	.label_488
.label_883:
	mov	bl, 0x76
	jmp	.label_486
.label_884:
	mov	bl, 0x66
	jmp	.label_486
.label_885:
	mov	cl, 0x72
	jmp	.label_488
.label_888:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_493
	cmp	byte ptr [rsp + 7], 0
	jne	.label_413
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_497
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_497:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_505
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_505:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_506
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_506:
	add	r14, 3
	xor	r9d, r9d
.label_493:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_397
.label_889:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_402
	cmp	r12d, 2
	jne	.label_407
	cmp	byte ptr [rsp + 7], 0
	je	.label_407
	jmp	.label_413
.label_890:
	cmp	r12d, 2
	jne	.label_414
	cmp	byte ptr [rsp + 7], 0
	jne	.label_413
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_481
.label_500:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_422
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
.label_423:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_451
	test	r8b, r8b
	je	.label_451
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_397
.label_425:
	test	rsi, rsi
	jne	.label_461
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_461
.label_431:
	mov	dl, 1
.label_886:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_413
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_397:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_472
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_473
	jmp	.label_478
	.section	.text
	.align	16
	#Procedure 0x406134
	.globl sub_406134
	.type sub_406134, @function
sub_406134:

	nop	word ptr cs:[rax + rax]
.label_472:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_478
.label_473:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_482
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_481
	jmp	.label_462
	.section	.text
	.align	16
	#Procedure 0x40617d
	.globl sub_40617d
	.type sub_40617d, @function
sub_40617d:

	nop	dword ptr [rax]
.label_478:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_462
	jmp	.label_481
.label_482:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_462
.label_436:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_403
	xor	r15d, r15d
	jmp	.label_407
.label_414:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_488
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_481
.label_488:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_413
.label_486:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_397
	nop	word ptr cs:[rax + rax]
.label_462:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_413
	cmp	r12d, 2
	jne	.label_399
	mov	eax, r9d
	and	al, 1
	jne	.label_399
	cmp	r14, r11
	jae	.label_400
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_400:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_432
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_432:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_412
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	add	r14, 3
	mov	r9b, 1
.label_399:
	cmp	r14, r11
	jae	.label_415
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_415:
	inc	r14
	jmp	.label_420
.label_422:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_424
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_424:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_450:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_443
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_447
	cmp	rbp, -2
	je	.label_453
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_456
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_492:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_426
	bt	rsi, rdx
	jb	.label_418
.label_426:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_492
.label_456:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_484
	xor	r13d, r13d
.label_484:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_450
	jmp	.label_423
.label_463:
	xor	r13d, r13d
	jmp	.label_397
.label_461:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_397
.label_402:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_407
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_407
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_407
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_501
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_452
	cmp	byte ptr [rsp + 7], 0
	jne	.label_413
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_487
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_487:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_479
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_479:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_405
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_405:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_411
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_411:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_397
.label_407:
	xor	eax, eax
.label_427:
	xor	r13d, r13d
	jmp	.label_397
.label_451:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_421
	.section	.text
	.align	16
	#Procedure 0x406463
	.globl sub_406463
	.type sub_406463, @function
sub_406463:

	nop	word ptr cs:[rax + rax]
.label_495:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_421:
	test	r8b, r8b
	je	.label_428
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_429
	cmp	r14, r11
	jae	.label_433
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_433:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_429
	.section	.text
	.align	16
	#Procedure 0x4064ac
	.globl sub_4064ac
	.type sub_4064ac, @function
sub_4064ac:

	nop	dword ptr [rax]
.label_428:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_418
	cmp	r12d, 2
	jne	.label_442
	mov	eax, r9d
	and	al, 1
	jne	.label_442
	cmp	r14, r11
	jae	.label_446
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_446:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_467
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_467:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_457
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_457:
	add	r14, 3
	mov	r9b, 1
.label_442:
	cmp	r14, r11
	jae	.label_475
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_475:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_468
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_468:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_474
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_474:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_429:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_481
	test	r9b, 1
	je	.label_434
	mov	ebx, eax
	and	bl, 1
	jne	.label_434
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_490
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_490:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_469
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_469:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_434:
	cmp	r14, r11
	jae	.label_495
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_495
	.section	.text
	.align	16
	#Procedure 0x4065b3
	.globl sub_4065b3
	.type sub_4065b3, @function
sub_4065b3:

	nop	word ptr cs:[rax + rax]
.label_481:
	test	r9b, 1
	je	.label_430
	and	al, 1
	jne	.label_430
	cmp	r14, r11
	jae	.label_503
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_503:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_448
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_448:
	add	r14, 2
	xor	r9d, r9d
.label_430:
	mov	ebx, r15d
.label_420:
	cmp	r14, r11
	jae	.label_507
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_507:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_403
.label_447:
	xor	r13d, r13d
.label_443:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_423
.label_453:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_464
	mov	rsi, qword ptr [rsp + 0x50]
.label_502:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_438
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_502
	xor	r13d, r13d
	jmp	.label_423
.label_464:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_423
.label_438:
	xor	r13d, r13d
	jmp	.label_423
.label_501:
	xor	r13d, r13d
	jmp	.label_397
.label_452:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_397
	.section	.text
	.align	16
	#Procedure 0x406688
	.globl sub_406688
	.type sub_406688, @function
sub_406688:

	nop	dword ptr [rax + rax]
.label_485:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_435
	or	dl, al
	je	.label_418
.label_435:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_440
	or	dl, al
	jne	.label_440
	test	r10b, 1
	jne	.label_454
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_440
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_459
.label_440:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_466
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_470
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_470
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_499:
	cmp	r14, r11
	jae	.label_444
	mov	byte ptr [rcx + r14], al
.label_444:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_499
	jmp	.label_470
.label_413:
	mov	qword ptr [rsp + 0x20], rbp
.label_418:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_396:
	mov	r14, rax
.label_416:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_454:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_396
.label_466:
	mov	rcx, qword ptr [rsp + 8]
.label_470:
	cmp	r14, r11
	jae	.label_416
	mov	byte ptr [rcx + r14], 0
	jmp	.label_416
.label_465:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40681c
	.globl sub_40681c
	.type sub_40681c, @function
sub_40681c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406820

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x406835
	.globl sub_406835
	.type sub_406835, @function
sub_406835:

	nop	word ptr cs:[rax + rax]
.label_509:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406845
	.globl sub_406845
	.type sub_406845, @function
sub_406845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406851

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_509
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406860

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406874
	.globl sub_406874
	.type sub_406874, @function
sub_406874:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406880

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_510
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_511:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_511
.label_510:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068ae
	.globl sub_4068ae
	.type sub_4068ae, @function
sub_4068ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4068b0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_514
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_515:
	cmp	r15, 0x800
	jb	.label_512
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_515
	jmp	.label_513
.label_512:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_514:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_513:
	mov	qword ptr [r14], r12
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
	#Procedure 0x40695a
	.globl sub_40695a
	.type sub_40695a, @function
sub_40695a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	.section	.text
	.align	16
	#Procedure 0x406971
	.globl sub_406971
	.type sub_406971, @function
sub_406971:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406980

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x406987
	.globl sub_406987
	.type sub_406987, @function
sub_406987:

	nop	word ptr [rax + rax]
.label_517:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406995
	.globl sub_406995
	.type sub_406995, @function
sub_406995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40699f

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_516
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_517
.label_516:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_519
	cmp	byte ptr [rax], 0x43
	jne	.label_521
	cmp	byte ptr [rax + 1], 0
	je	.label_518
.label_521:
	mov	esi, OFFSET FLAT:label_520
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_519
.label_518:
	xor	ebx, ebx
.label_519:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069f1
	.globl sub_4069f1
	.type sub_4069f1, @function
sub_4069f1:

	nop	word ptr cs:[rax + rax]
.label_522:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a03
	.globl sub_406a03
	.type sub_406a03, @function
sub_406a03:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a0b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_522
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x406a2a
	.globl sub_406a2a
	.type sub_406a2a, @function
sub_406a2a:

	nop	word ptr [rax + rax]
.label_523:
	add	rbx, 2
.label_525:
	cmp	rbx, -1
	je	.label_524
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_523
	mov	r14, rbx
.label_524:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a54
	.globl sub_406a54
	.type sub_406a54, @function
sub_406a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a60

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_525
	.section	.text
	.align	16
	#Procedure 0x406a7e
	.globl sub_406a7e
	.type sub_406a7e, @function
sub_406a7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406a80

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406abb
	.globl sub_406abb
	.type sub_406abb, @function
sub_406abb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ac0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	qword ptr [rsp + 0x28], rsi
	mov	r14, qword ptr [rsi]
	mov	qword ptr [rsp + 0x48], r8
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	test	r12, r12
	mov	qword ptr [rsp], r13
	je	.label_526
	mov	rdi, r12
	call	rewinddir
	jmp	.label_527
.label_526:
	mov	rcx, qword ptr [rsp + 0x90]
	movzx	r13d, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_529
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_527:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_534
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_541
.label_543:
	mov	r13d, 1
.label_540:
	cmp	al, 0x7e
	jne	.label_535
	mov	rax, qword ptr [rsp]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [rbp + r13 + 1], 0
	jne	.label_535
	cmp	qword ptr [rsp + 0x18], r13
	jb	.label_539
	jne	.label_535
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_539
.label_535:
	mov	r15, r14
	mov	r13, qword ptr [rsp]
	jmp	.label_532
.label_539:
	movzx	edx, bl
	lea	rcx, [rdx + r13]
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rax + rcx]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rsi
	jae	.label_544
	mov	rax, rsi
	shr	rax, 0x3e
	sete	cl
	shl	rsi, cl
	mov	rdi, r14
	mov	rbx, rsi
	mov	r15, rdx
	call	realloc
	mov	rdx, r15
	mov	r15, rax
	test	r15, r15
	jne	.label_533
	jmp	.label_536
.label_544:
	mov	r15, r14
.label_533:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	mov	cl, byte ptr [r13 + rbx + 1]
	cmp	cl, 0x39
	jne	.label_545
	mov	r13, qword ptr [rsp]
	nop	dword ptr [rax]
.label_528:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
	cmp	cl, 0x39
	je	.label_528
	jmp	.label_537
.label_545:
	mov	r13, qword ptr [rsp]
.label_537:
	inc	cl
	mov	byte ptr [rax], cl
	jmp	.label_532
	.section	.text
	.align	16
	#Procedure 0x406cae
	.globl sub_406cae
	.type sub_406cae, @function
sub_406cae:

	nop	
.label_541:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_538
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_538
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_538
	lea	rcx, [rbp + r13 + 0x13]
	cmp	al, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_543
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_531:
	cmp	al, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_531
	inc	r13
	jmp	.label_540
	.section	.text
	.align	16
	#Procedure 0x406d41
	.globl sub_406d41
	.type sub_406d41, @function
sub_406d41:

	nop	word ptr cs:[rax + rax]
.label_538:
	mov	r15, r14
.label_532:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_541
	jmp	.label_542
.label_534:
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r14
.label_542:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x10]
.label_530:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_529:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_530
.label_536:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_530
	.section	.text
	.align	16
	#Procedure 0x406dce
	.globl sub_406dce
	.type sub_406dce, @function
sub_406dce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406dd0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_546
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_551:
	cmp	qword ptr [rsi], 0
	je	.label_547
	mov	rax, rsi
	nop	dword ptr [rax]
.label_549:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_549
	inc	rdx
.label_547:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_551
.label_546:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_548
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_550
.label_548:
	xor	eax, eax
.label_550:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e29
	.globl sub_406e29
	.type sub_406e29, @function
sub_406e29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e30
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_552
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_553
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_554]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_555]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_556]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_557
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_558
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x406f1c
	.globl sub_406f1c
	.type sub_406f1c, @function
sub_406f1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f20

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_559
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_560
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_560
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_561
.label_560:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_561
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_561
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_561
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_561
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_561:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070b9
	.globl sub_4070b9
	.type sub_4070b9, @function
sub_4070b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x4070cd
	.globl sub_4070cd
	.type sub_4070cd, @function
sub_4070cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_562
	cmp	byte ptr [rsi], 0
	je	.label_562
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_562:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407108
	.globl sub_407108
	.type sub_407108, @function
sub_407108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407110

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_563
	cmp	byte ptr [rsi], 0
	je	.label_563
	jmp	get_version
.label_563:
	push	rax
	mov	edi, OFFSET FLAT:label_564
	call	getenv
	mov	edi, OFFSET FLAT:label_565
	mov	rsi, rax
	pop	rax
	jmp	get_version
	.section	.text
	.align	16
	#Procedure 0x407132
	.globl sub_407132
	.type sub_407132, @function
sub_407132:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140

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
	#Procedure 0x407176
	.globl sub_407176
	.type sub_407176, @function
sub_407176:

	nop	word ptr cs:[rax + rax]
.label_566:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407185
	.globl sub_407185
	.type sub_407185, @function
sub_407185:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407193

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_566
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4071aa
	.globl sub_4071aa
	.type sub_4071aa, @function
sub_4071aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0

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
	call	xcharalloc
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
	je	.label_567
	mov	qword ptr [rax], rbx
.label_567:
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
	#Procedure 0x40729c
	.globl sub_40729c
	.type sub_40729c, @function
sub_40729c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072a0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072a9
	.globl sub_4072a9
	.type sub_4072a9, @function
sub_4072a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072b0
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	.section	.text
	.align	16
	#Procedure 0x4072b7
	.globl sub_4072b7
	.type sub_4072b7, @function
sub_4072b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072c0

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	cmp	byte ptr [rdi + 1], 0x2f
	sete	cl
	cmp	byte ptr [rsi + 1], 0x2f
	sete	dl
	xor	eax, eax
	xor	dl, cl
	jne	.label_568
	mov	dl, byte ptr [rdi]
	xor	r8d, r8d
	test	dl, dl
	je	.label_574
	xor	r8d, r8d
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_571:
	movzx	ecx, byte ptr [rsi + r8]
	test	cl, cl
	je	.label_572
	cmp	dl, cl
	jne	.label_572
	lea	rcx, [r8 + 1]
	cmp	dl, 0x2f
	cmove	eax, ecx
	movzx	edx, byte ptr [rdi + r8 + 1]
	test	dl, dl
	mov	r8, rcx
	jne	.label_571
	add	rsi, rcx
	add	rdi, rcx
	mov	r8d, ecx
	jmp	.label_575
.label_572:
	add	rsi, r8
	cmp	byte ptr [rdi + r8], 0
	lea	rdi, [rdi + r8]
	jne	.label_576
.label_575:
	cmp	byte ptr [rsi], 0
	je	.label_570
	cmp	byte ptr [rdi], 0
	je	.label_573
.label_576:
	mov	cl, byte ptr [rsi]
.label_569:
	test	cl, cl
	jne	.label_568
	cmp	byte ptr [rdi], 0x2f
	je	.label_570
	jmp	.label_568
.label_573:
	mov	cl, byte ptr [rsi]
	cmp	cl, 0x2f
	jne	.label_569
.label_570:
	mov	eax, r8d
.label_568:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40734f
	.globl sub_40734f
	.type sub_40734f, @function
sub_40734f:

	nop	word ptr cs:[rax + rax]
.label_574:
	xor	eax, eax
	jmp	.label_575
	.section	.text
	.align	16
	#Procedure 0x407360

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_577
	test	rbx, rbx
	je	.label_579
	mov	esi, OFFSET FLAT:label_580
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_578
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_578
.label_577:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_579:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_578:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40740d
	.globl sub_40740d
	.type sub_40740d, @function
sub_40740d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407410

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40743b
	.globl sub_40743b
	.type sub_40743b, @function
sub_40743b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407440
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_581
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_582
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_584
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_65
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_583
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4074b4
	.globl sub_4074b4
	.type sub_4074b4, @function
sub_4074b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074c0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4074ca
	.globl sub_4074ca
	.type sub_4074ca, @function
sub_4074ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074d0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_586:
	cmp	rbx, r13
	jae	.label_585
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_587:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_587
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_589:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_589
.label_585:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_590
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_586
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_588
.label_590:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_588:
	mov	rax, rcx
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
	#Procedure 0x4075ec
	.globl sub_4075ec
	.type sub_4075ec, @function
sub_4075ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4075f0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_592
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_592
	mov	dword ptr [rsp + 0x14], r12d
	mov	qword ptr [rsp + 0x18], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_591
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x18]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_596:
	test	r14, r14
	je	.label_594
	mov	rbx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_597:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_597
.label_594:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_593
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_595
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, qword ptr [rsp + 0x18]
	jbe	.label_596
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_598
.label_592:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_598:
	mov	r12d, 0xffffffff
.label_591:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_593:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0x14]
	mov	dword ptr [rax], ecx
.label_595:
	mov	rbp, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_591
	.section	.text
	.align	16
	#Procedure 0x40774a
	.globl sub_40774a
	.type sub_40774a, @function
sub_40774a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407750
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	#Procedure 0x4077c2
	.globl sub_4077c2
	.type sub_4077c2, @function
sub_4077c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4077e6
	.globl sub_4077e6
	.type sub_4077e6, @function
sub_4077e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077f0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_607
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_606
	test	rbx, rbx
	je	.label_601
	mov	qword ptr [rbx], rax
	jmp	.label_601
.label_606:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_611
	cvtsi2ss	xmm0, rcx
	jmp	.label_600
.label_611:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_600:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_605
	cvtsi2ss	xmm1, rax
	jmp	.label_610
.label_605:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_610:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_604
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_603
	cvtsi2ss	xmm2, rcx
	jmp	.label_608
.label_603:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_608:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_613
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_602
.label_613:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_602:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_604
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_612
	mulss	xmm0, xmm1
.label_612:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_307]]
	jae	.label_601
	movss	xmm1,  dword ptr [dword ptr [rip + label_306]]
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
	je	.label_601
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_607
.label_604:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_609
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_601
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_599
.label_609:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_599:
	mov	ebp, 1
.label_601:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_607:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4079c2
	.globl sub_4079c2
	.type sub_4079c2, @function
sub_4079c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_614
	call	rpl_calloc
	test	rax, rax
	je	.label_614
	pop	rcx
	ret	
.label_614:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4079f6
	.globl sub_4079f6
	.type sub_4079f6, @function
sub_4079f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a00

	.globl buffer_or_output
	.type buffer_or_output, @function
buffer_or_output:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r15]
	test	r13, r13
	je	.label_615
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	mov	al, 1
	cmp	rbx, qword ptr [r14]
	jae	.label_616
	mov	rdx, rbx
	inc	rdx
	mov	rdi, r13
	mov	rsi, r12
	call	memcpy
	add	qword ptr [r15], rbx
	sub	qword ptr [r14], rbx
	jmp	.label_617
.label_615:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
.label_617:
	xor	eax, eax
.label_616:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a60
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a64
	.globl sub_407a64
	.type sub_407a64, @function
sub_407a64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a70
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a79
	.globl sub_407a79
	.type sub_407a79, @function
sub_407a79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407a80

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_618
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_618:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x407aba
	.globl sub_407aba
	.type sub_407aba, @function
sub_407aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ac0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ac5
	.globl sub_407ac5
	.type sub_407ac5, @function
sub_407ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ad0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_620:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_620
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_619:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_619
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x407e62
	.globl sub_407e62
	.type sub_407e62, @function
sub_407e62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e78
	.globl sub_407e78
	.type sub_407e78, @function
sub_407e78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e80

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_621
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_628:
	cmp	qword ptr [r15], 0
	je	.label_625
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_630
	nop	word ptr cs:[rax + rax]
.label_624:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_626
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_627
	.section	.text
	.align	16
	#Procedure 0x407ef6
	.globl sub_407ef6
	.type sub_407ef6, @function
sub_407ef6:

	nop	word ptr cs:[rax + rax]
.label_626:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_627:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_624
.label_630:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_625
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_629
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_622
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_623
.label_629:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_623:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_625:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_628
	mov	al, 1
.label_621:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_622:
	xor	eax, eax
	jmp	.label_621
	.section	.text
	.align	16
	#Procedure 0x407f95
	.globl sub_407f95
	.type sub_407f95, @function
sub_407f95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fa0

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rcx
	mov	rdi, rbx
	mov	rsi, r14
	call	path_common_prefix
	test	eax, eax
	je	.label_633
	cdqe	
	lea	rcx, [r14 + rax]
	cmp	byte ptr [rbx + rax], 0x2f
	lea	rdx, [rbx + rax + 1]
	lea	rbx, [rbx + rax]
	cmove	rbx, rdx
	cmp	byte ptr [r14 + rax], 0x2f
	lea	r14, [r14 + rax + 1]
	cmovne	r14, rcx
	cmp	byte ptr [rbx], 0
	je	.label_635
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:label_643
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	mov	ebp, eax
	jmp	.label_638
	.section	.text
	.align	16
	#Procedure 0x408019
	.globl sub_408019
	.type sub_408019, @function
sub_408019:

	nop	dword ptr [rax]
.label_631:
	inc	rbx
.label_638:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_637
	test	al, al
	jne	.label_631
	jmp	.label_641
.label_637:
	mov	edi, OFFSET FLAT:label_642
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	jmp	.label_631
.label_641:
	cmp	byte ptr [r14], 0
	je	.label_634
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:label_636
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	or	bpl, al
	jmp	.label_634
.label_633:
	xor	eax, eax
	jmp	.label_632
.label_635:
	cmp	byte ptr [r14], 0
	mov	edi, OFFSET FLAT:label_113
	cmovne	rdi, r14
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp]
	call	buffer_or_output
	mov	ebp, eax
.label_634:
	and	bpl, 1
	je	.label_639
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_640
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	call	error
.label_639:
	test	bpl, bpl
	sete	al
.label_632:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080e3
	.globl sub_4080e3
	.type sub_4080e3, @function
sub_4080e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080f0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	.section	.text
	.align	16
	#Procedure 0x40810b
	.globl sub_40810b
	.type sub_40810b, @function
sub_40810b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408110

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	.section	.text
	.align	16
	#Procedure 0x408128
	.globl sub_408128
	.type sub_408128, @function
sub_408128:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408130

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_649
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_646
.label_649:
	xor	ebp, ebp
.label_648:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_646:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_645
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_645:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_647
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_647:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_650
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_644
.label_650:
	xor	ebp, ebp
.label_644:
	mov	rdi, rbx
	call	free
	jmp	.label_648
	.section	.text
	.align	16
	#Procedure 0x40826a
	.globl sub_40826a
	.type sub_40826a, @function
sub_40826a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408270

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
	je	.label_651
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_651:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40829c
	.globl sub_40829c
	.type sub_40829c, @function
sub_40829c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4082a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_658
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_652:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_657
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_654
	cmp	qword ptr [rsp + 8], -1
	je	.label_655
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_656
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_657
.label_656:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_657
.label_655:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_657:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_652
	jmp	.label_653
.label_658:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_653:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_654:
	mov	rax, rbp
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
	#Procedure 0x40839d
	.globl sub_40839d
	.type sub_40839d, @function
sub_40839d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	.section	.text
	.align	16
	#Procedure 0x4083aa
	.globl sub_4083aa
	.type sub_4083aa, @function
sub_4083aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083b0
	.globl hash_delete
	.type hash_delete, @function
hash_delete:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_662
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_665
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_661
	cvtsi2ss	xmm0, rax
	jmp	.label_659
.label_661:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_659:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_667
	cvtsi2ss	xmm1, rcx
	jmp	.label_670
.label_667:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_670:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_665
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_666
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_669
.label_666:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_669:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_660
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_664
.label_660:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_664:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_665
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_671
	mulss	xmm0, dword ptr [rcx + 8]
.label_671:
	movss	xmm1,  dword ptr [dword ptr [rip + label_306]]
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
	jne	.label_665
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_663
	nop	dword ptr [rax + rax]
.label_668:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_668
.label_663:
	mov	qword ptr [r15 + 0x48], 0
.label_665:
	mov	rax, r14
.label_662:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408536
	.globl sub_408536
	.type sub_408536, @function
sub_408536:

	nop	word ptr cs:[rax + rax]
.label_673:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408544
	.globl sub_408544
	.type sub_408544, @function
sub_408544:

	nop	dword ptr [rax + rax]
.label_672:
	inc	rax
	mov	sil, dl
.label_676:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_672
	test	cl, cl
	je	.label_673
	mov	edx, esi
	and	dl, 1
	je	.label_674
	xor	esi, esi
.label_674:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_672
	.section	.text
	.align	16
	#Procedure 0x408570

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_675:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_675
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_676
	.section	.text
	.align	16
	#Procedure 0x408591
	.globl sub_408591
	.type sub_408591, @function
sub_408591:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085a0
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	mov	eax, 0xffffffff
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085a6
	.globl sub_4085a6
	.type sub_4085a6, @function
sub_4085a6:

	nop	word ptr cs:[rax + rax]
.label_677:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4085bc
	.globl sub_4085bc
	.type sub_4085bc, @function
sub_4085bc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085c9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_677
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085d0

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	r14d, r8d
	mov	r13, rcx
	mov	rbp, rdx
	mov	dword ptr [rsp + 0x10], esi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + logical]]
	xor	ebx, ebx
	test	al, al
	sete	r15b
	test	r14d, r14d
	jns	.label_729
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, rbp
	call	atomic_link
	mov	r14d, eax
.label_729:
	mov	qword ptr [rsp + 0x20], rbp
	test	r14d, r14d
	jne	.label_688
	mov	rax,  qword ptr [word ptr [rip + dest_set]]
	mov	ebp, 1
	test	rax, rax
	je	.label_693
.label_688:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	je	.label_732
	mov	ebp, 1
	mov	al, 1
	jmp	.label_697
.label_732:
	mov	bl, r15b
	shl	ebx, 8
	lea	rdx, [rsp + 0x38]
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	ecx, ebx
	call	fstatat
	xor	ebp, ebp
	test	eax, eax
	je	.label_693
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_734
.label_693:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
.label_697:
	test	r14d, r14d
	je	.label_714
	test	al, 1
	jne	.label_716
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	test	al, al
	jne	.label_716
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x4000
	jne	.label_716
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_722
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	jmp	.label_727
.label_716:
	xor	r15d, r15d
	cmp	byte ptr [byte ptr [rip + relative]],  1
	mov	qword ptr [rsp + 0x18], r13
	jne	.label_699
	mov	rdi, r12
	mov	rsi, r13
	call	convert_abs_rel
	mov	r15, rax
	mov	r12, r15
.label_699:
	mov	r13b, 1
	mov	al,  byte ptr [byte ptr [rip + remove_existing_files]]
	test	al, al
	jne	.label_686
	mov	al,  byte ptr [byte ptr [rip + interactive]]
	test	al, al
	jne	.label_686
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	setne	r13b
	je	.label_692
.label_686:
	lea	rdx, [rsp + 0xc8]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x20]
	call	fstatat
	test	eax, eax
	je	.label_700
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	cmp	ebx, 2
	mov	r13d, 0
	je	.label_682
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
.label_690:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
.label_734:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_704
.label_714:
	xor	ebp, ebp
	test	al, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_717
	jmp	.label_724
.label_700:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe0]
	cmp	eax, 0x4000
	jne	.label_725
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_728
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
.label_727:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_704
.label_725:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	call	seen_file
	test	al, al
	je	.label_695
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_696
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
.label_681:
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_704
.label_695:
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	je	.label_712
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	je	.label_710
	jmp	.label_683
.label_712:
	cmp	byte ptr [byte ptr [rip + remove_existing_files]],  1
	jne	.label_683
.label_710:
	test	ebp, ebp
	je	.label_721
	lea	rsi, [rsp + 0x38]
	mov	rdi, r12
	call	stat
	test	eax, eax
	jne	.label_683
.label_721:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0xd0]
	jne	.label_683
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 0xc8]
	jne	.label_683
	cmp	qword ptr [rsp + 0x48], 1
	je	.label_703
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x20]
	call	same_nameat
	test	al, al
	je	.label_683
.label_703:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_680
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_681
.label_683:
	xor	ebp, ebp
	test	r14d, r14d
	js	.label_698
	cmp	r14d, 0x11
	jne	.label_682
.label_698:
	mov	qword ptr [rsp + 0x28], r15
	cmp	byte ptr [byte ptr [rip + interactive]],  1
	jne	.label_701
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_705
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r15,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r15
	mov	r8, rbx
	call	__fprintf_chk
	mov	r15b, 1
	call	yesno
	test	al, al
	je	.label_704
.label_701:
	mov	edx,  dword ptr [dword ptr [rip + backup_type]]
	xor	ebp, ebp
	test	edx, edx
	je	.label_694
	mov	ebp, dword ptr [rsp + 0x10]
	mov	edi, ebp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rsi, rbx
	call	find_backup_file_name
	mov	edi, ebp
	mov	rsi, rbx
	mov	edx, ebp
	mov	rbp, rax
	mov	rcx, rbp
	call	renameat
	test	eax, eax
	je	.label_694
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
	cmp	ebx, 2
	mov	r13d, 0
	mov	r15, qword ptr [rsp + 0x28]
	je	.label_682
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_689
	jmp	.label_690
.label_694:
	mov	r15, qword ptr [rsp + 0x28]
.label_682:
	mov	qword ptr [rsp + 8], rbp
.label_692:
	cmp	byte ptr [byte ptr [rip + symbolic_link]],  1
	jne	.label_687
	movzx	ecx, r13b
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8d, r14d
	call	force_symlinkat
	jmp	.label_702
.label_687:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	shl	r8d, 0xa
	mov	dword ptr [rsp], r14d
	movzx	r9d, r13b
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, rbx
	call	force_linkat
.label_702:
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 8]
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	r14d, r14d
	mov	r13, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x28], r15
	jle	.label_711
	test	al, 1
	je	.label_726
	cmp	r14d, 0x24
	je	.label_718
	cmp	byte ptr [r12], 0
	je	.label_718
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_708
	jmp	.label_679
.label_711:
	test	al, 1
	jne	.label_724
.label_717:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0x38]
	mov	rsi, r13
	call	record_file
.label_724:
	mov	r15b, 1
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_684
	mov	qword ptr [rsp + 0x10], r12
	mov	r12, r13
	mov	r14d, OFFSET FLAT:label_71
	mov	qword ptr [rsp + 8], rbp
	test	rbp, rbp
	mov	r13d, OFFSET FLAT:label_71
	je	.label_731
	mov	r14, r12
	sub	rbx, r14
	mov	rbp, rbx
	xor	r13d, r13d
	test	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rbx, r15
	jle	.label_685
	mov	rdi, r15
	call	strlen
	lea	rdi, [rbp + rax + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcpy
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsi, r15
	call	strcpy
	mov	r13, rbx
.label_685:
	mov	edi, 2
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r14, rax
	mov	rdi, r13
	call	free
	mov	r13d, OFFSET FLAT:label_709
	mov	r15b, 1
.label_731:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	mov	eax, 0x2d
	mov	ebx, 0x3d
	cmovne	ebx, eax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_723
	xor	eax, eax
	mov	r8, rbp
	mov	rdx, r14
	mov	rcx, r13
	mov	r9d, ebx
	call	__printf_chk
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_684
.label_726:
	lea	eax, [r14 - 0x11]
	cmp	eax, 0xe
	ja	.label_730
	jmp	qword ptr [word ptr [+ (rax * 8) + label_719]]
.label_1000:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_733
	jmp	.label_679
.label_718:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_678
	jmp	.label_679
.label_730:
	cmp	r14d, 0x7a
	jne	.label_720
.label_999:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_706
	jmp	.label_679
.label_720:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
.label_679:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	rbp, qword ptr [rsp + 8]
	test	rbp, rbp
	je	.label_707
	mov	edi, dword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	edx, edi
	mov	rcx, qword ptr [rsp + 0x20]
	call	renameat
	test	eax, eax
	je	.label_713
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_715
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 8]
	call	error
	jmp	.label_684
.label_707:
	xor	ebp, ebp
	jmp	.label_684
.label_713:
	xor	r15d, r15d
.label_684:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_704:
	mov	eax, r15d
	add	rsp, 0x158
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d03
	.globl sub_408d03
	.type sub_408d03, @function
sub_408d03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d10

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x24], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x20], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_735
	xor	edi, edi
	call	set_simple_backup_suffix
.label_735:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x28], rax
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x30], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_736
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	qword ptr [rsp + 0x40], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x38], rax
	nop	
.label_742:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	cmp	ebx, 1
	jne	.label_738
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
	jmp	.label_745
	.section	.text
	.align	16
	#Procedure 0x408df7
	.globl sub_408df7
	.type sub_408df7, @function
sub_408df7:

	nop	word ptr [rax + rax]
.label_738:
	lea	rax, [rsp + 0xc]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x18]
	call	numbered_backup
	cmp	eax, 1
	je	.label_741
	cmp	eax, 2
	je	.label_744
	cmp	eax, 3
	jne	.label_745
	jmp	.label_737
.label_744:
	cmp	ebx, 2
	jne	.label_741
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
.label_741:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 0xc]
	mov	rsi, r12
	lea	rcx, [rsp + 0x40]
	call	check_extension
.label_745:
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_739
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_747
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	xor	ebp, ebp
.label_747:
	xor	r8d, r8d
	cmp	ebx, 1
	setne	r8b
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_739
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_742
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_746
	call	closedir
.label_746:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [r15], r14d
	jmp	.label_740
.label_739:
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_743
	call	closedir
.label_743:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_736
.label_737:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_740:
	xor	eax, eax
.label_736:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f23
	.globl sub_408f23
	.type sub_408f23, @function
sub_408f23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f30
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f3d
	.globl sub_408f3d
	.type sub_408f3d, @function
sub_408f3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f40

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f45
	.globl sub_408f45
	.type sub_408f45, @function
sub_408f45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f50

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_748
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_749:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_748
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_749
.label_748:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f9c
	.globl sub_408f9c
	.type sub_408f9c, @function
sub_408f9c:

	nop	dword ptr [rax]
.label_751:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fa3
	.globl sub_408fa3
	.type sub_408fa3, @function
sub_408fa3:

	nop	dword ptr [rax + rax]
.label_750:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fab

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_750
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_751
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fd0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fd7
	.globl sub_408fd7
	.type sub_408fd7, @function
sub_408fd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fe0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_752:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_752
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x409001
	.globl sub_409001
	.type sub_409001, @function
sub_409001:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409010
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40901d
	.globl sub_40901d
	.type sub_40901d, @function
sub_40901d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409020
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_753
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_755:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_755
.label_753:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_756
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_757]], OFFSET FLAT:slot0
.label_756:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_754
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_754:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090b1
	.globl sub_4090b1
	.type sub_4090b1, @function
sub_4090b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090c0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_758
	xor	eax, eax
.label_761:
	cmp	qword ptr [r8], 0
	je	.label_759
	test	r8, r8
	je	.label_759
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_760:
	cmp	rax, rdx
	jae	.label_758
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_760
.label_759:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_761
.label_758:
	ret	
	.section	.text
	.align	16
	#Procedure 0x409103
	.globl sub_409103
	.type sub_409103, @function
sub_409103:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409110

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_762
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_763
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_763:
	add	rax, rcx
.label_762:
	ret	
	.section	.text
	.align	16
	#Procedure 0x409138
	.globl sub_409138
	.type sub_409138, @function
sub_409138:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409140
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40914a
	.globl sub_40914a
	.type sub_40914a, @function
sub_40914a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409150

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_764
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_765
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_765:
	xor	eax, eax
	ret	
.label_764:
	xor	eax, eax
	ret	
.label_769:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_767
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_770
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_768:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4091d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_766
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_769
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_769
.label_766:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_768
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_770:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_771
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409240
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_772
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_772:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409263
	.globl sub_409263
	.type sub_409263, @function
sub_409263:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409270

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_773
	test	rax, rax
	je	.label_774
.label_773:
	pop	rbx
	ret	
.label_774:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40928a
	.globl sub_40928a
	.type sub_40928a, @function
sub_40928a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409290

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
	je	.label_784
	mov	edx, OFFSET FLAT:label_790
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_777
.label_784:
	mov	edx, OFFSET FLAT:label_779
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_777:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_783
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
	mov	esi, OFFSET FLAT:label_780
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_785
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_786]]
.label_866:
	add	rsp, 8
	jmp	.label_778
.label_785:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_793
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
	jmp	.label_778
.label_867:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_781
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
.label_868:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_775
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
.label_869:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_791
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
.label_870:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_788
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
	jmp	.label_778
.label_871:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_787
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
	jmp	.label_778
.label_872:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_789
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
	jmp	.label_778
.label_873:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_792
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
	jmp	.label_778
.label_875:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
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
	jmp	.label_778
.label_874:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_782
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
.label_778:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095e8
	.globl sub_4095e8
	.type sub_4095e8, @function
sub_4095e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095f0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	.section	.text
	.align	16
	#Procedure 0x4095fb
	.globl sub_4095fb
	.type sub_4095fb, @function
sub_4095fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409600

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409618
	.globl sub_409618
	.type sub_409618, @function
sub_409618:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409620

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409659
	.globl sub_409659
	.type sub_409659, @function
sub_409659:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409660

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	16
	#Procedure 0x409671
	.globl sub_409671
	.type sub_409671, @function
sub_409671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409680
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	.section	.text
	.align	16
	#Procedure 0x409694
	.globl sub_409694
	.type sub_409694, @function
sub_409694:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096a8
	.globl sub_4096a8
	.type sub_4096a8, @function
sub_4096a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096b0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_795
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_795
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_795:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_794
	test	eax, eax
	jne	.label_794
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_797:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_771
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_798:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
.label_794:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_796
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_797
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_798
	.section	.text
	.align	16
	#Procedure 0x409780

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
	jne	.label_799
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_799
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_800
.label_799:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_800:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_801
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_801:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097ee
	.globl sub_4097ee
	.type sub_4097ee, @function
sub_4097ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4097f0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097fc
	.globl sub_4097fc
	.type sub_4097fc, @function
sub_4097fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409800

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_802
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_806
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_803
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_804
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_802
.label_804:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_805
.label_803:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_805:
	xor	eax, eax
.label_802:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409881
	.globl sub_409881
	.type sub_409881, @function
sub_409881:

	nop	word ptr cs:[rax + rax]
.label_806:
	mov	rax, rbx
	jmp	.label_802
.label_809:
	xor	eax, eax
	jmp	.label_807
	.section	.text
	.align	16
	#Procedure 0x409894
	.globl sub_409894
	.type sub_409894, @function
sub_409894:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40989e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_809
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_808]]
.label_807:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098b0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_810
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_810:
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
	#Procedure 0x409918
	.globl sub_409918
	.type sub_409918, @function
sub_409918:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409920

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_811
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x409942
	.globl sub_409942
	.type sub_409942, @function
sub_409942:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409950

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_812
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_813
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x409992
	.globl sub_409992
	.type sub_409992, @function
sub_409992:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099a0
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
	#Procedure 0x4099af
	.globl sub_4099af
	.type sub_4099af, @function
sub_4099af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4099b0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099b8
	.globl sub_4099b8
	.type sub_4099b8, @function
sub_4099b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099c0

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	jne	.label_814
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_815
.label_814:
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	seen_file
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.label_816
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	record_file
	xor	eax, eax
.label_816:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_815:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409a29
	.globl sub_409a29
	.type sub_409a29, @function
sub_409a29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409a30

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_823
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_823
	mov	r14, qword ptr [r15]
	jmp	.label_819
	.section	.text
	.align	16
	#Procedure 0x409a4b
	.globl sub_409a4b
	.type sub_409a4b, @function
sub_409a4b:

	nop	dword ptr [rax + rax]
.label_817:
	add	r14, 0x10
.label_818:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_822
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_817
	nop	word ptr cs:[rax + rax]
.label_826:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_826
	jmp	.label_817
.label_823:
	mov	r14, qword ptr [r15]
	jmp	.label_818
	.section	.text
	.align	16
	#Procedure 0x409a88
	.globl sub_409a88
	.type sub_409a88, @function
sub_409a88:

	nop	word ptr [rax + rax]
.label_820:
	add	r14, 0x10
.label_819:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_823
	cmp	qword ptr [r14], 0
	je	.label_820
	test	r14, r14
	je	.label_820
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_825:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_825
	jmp	.label_820
.label_822:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_821
	nop	dword ptr [rax]
.label_824:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_824
.label_821:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x409af6
	.globl sub_409af6
	.type sub_409af6, @function
sub_409af6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b00
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b0a
	.globl sub_409b0a
	.type sub_409b0a, @function
sub_409b0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b10
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b1a
	.globl sub_409b1a
	.type sub_409b1a, @function
sub_409b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b20
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b34
	.globl sub_409b34
	.type sub_409b34, @function
sub_409b34:

	nop	word ptr cs:[rax + rax]
.label_828:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_827
	test	cl, cl
	jne	.label_827
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_827:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b6b
	.globl sub_409b6b
	.type sub_409b6b, @function
sub_409b6b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b75

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_828
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_827
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_827
	.section	.text
	.align	16
	#Procedure 0x409bb0

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	base_len
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_832
	cmp	qword ptr [r12], 0
	jne	.label_829
	test	ebp, ebp
	js	.label_831
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_830
.label_831:
	movzx	eax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	call	pathconf
	cmp	dword ptr [rbp], 1
	sbb	rax, 0
	movzx	ecx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_830:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_829:
	mov	rax, qword ptr [r12]
.label_832:
	cmp	rax, r13
	jae	.label_833
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_833:
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
	#Procedure 0x409ca8
	.globl sub_409ca8
	.type sub_409ca8, @function
sub_409ca8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cb0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_71
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_834
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409cd5
	.globl sub_409cd5
	.type sub_409cd5, @function
sub_409cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ce0

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
	je	.label_835
	cmp	r15, -2
	jb	.label_835
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_835
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_835:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d36
	.globl sub_409d36
	.type sub_409d36, @function
sub_409d36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409da5
	.globl sub_409da5
	.type sub_409da5, @function
sub_409da5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409db2
	.globl sub_409db2
	.type sub_409db2, @function
sub_409db2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dd6
	.globl sub_409dd6
	.type sub_409dd6, @function
sub_409dd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409de9
	.globl sub_409de9
	.type sub_409de9, @function
sub_409de9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409df0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x409e00

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x409e10

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
