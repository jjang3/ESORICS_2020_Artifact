	.section	.text
	.align	16
	#Procedure 0x4014d9
	.globl sub_4014d9
	.type sub_4014d9, @function
sub_4014d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4014da
	.globl sub_4014da
	.type sub_4014da, @function
sub_4014da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401512
	.globl sub_401512
	.type sub_401512, @function
sub_401512:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40157c
	.globl sub_40157c
	.type sub_40157c, @function
sub_40157c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40158d
	.globl sub_40158d
	.type sub_40158d, @function
sub_40158d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015a6
	.globl sub_4015a6
	.type sub_4015a6, @function
sub_4015a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015b0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_9
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_12
	.section	.text
	.align	16
	#Procedure 0x4015c2
	.globl sub_4015c2
	.type sub_4015c2, @function
sub_4015c2:

	nop	word ptr cs:[rax + rax]
.label_10:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4015d6
	.globl sub_4015d6
	.type sub_4015d6, @function
sub_4015d6:

	nop	dword ptr [rax + rax]
.label_11:
	add	rcx, 0x10
.label_12:
	cmp	rcx, rdx
	jae	.label_10
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_11
.label_9:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015f8
	.globl sub_4015f8
	.type sub_4015f8, @function
sub_4015f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401600
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
	#Procedure 0x401619
	.globl sub_401619
	.type sub_401619, @function
sub_401619:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401620

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
	je	.label_13
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_13:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40164c
	.globl sub_40164c
	.type sub_40164c, @function
sub_40164c:

	nop	dword ptr [rax]
.label_16:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40165e
	.globl sub_40165e
	.type sub_40165e, @function
sub_40165e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401667
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_20
	.section	.text
	.align	16
	#Procedure 0x401678
	.globl sub_401678
	.type sub_401678, @function
sub_401678:

	nop	word ptr cs:[rax + rax]
.label_17:
	add	r14, 0x10
.label_20:
	cmp	r14, rax
	jae	.label_16
	cmp	qword ptr [r14], 0
	je	.label_17
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_18
	nop	word ptr cs:[rax + rax]
.label_14:
	test	cl, 1
	je	.label_19
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_19:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_14
.label_18:
	test	cl, cl
	je	.label_15
	mov	rdi, qword ptr [r14]
	call	rax
.label_15:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401700

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_21
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_22
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401725
	.globl sub_401725
	.type sub_401725, @function
sub_401725:

	nop	word ptr cs:[rax + rax]
.label_23:
	call	xalloc_die
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
	je	.label_24
	test	r15, r15
	je	.label_23
.label_24:
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
	#Procedure 0x401770

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14d, esi
	mov	r12, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_58
	test	r12, r12
	je	.label_58
	mov	al, byte ptr [r12]
	cmp	al, 0x2f
	je	.label_66
	test	al, al
	jne	.label_70
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_62
.label_58:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_62:
	xor	ebp, ebp
.label_27:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_66:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_39
.label_70:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_27
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_29
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_39
.label_29:
	mov	rbp, r8
.label_39:
	mov	al, byte ptr [r12]
	xor	r15d, r15d
	test	al, al
	je	.label_44
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x50], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x54], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x2c], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x4c], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x30], r12
	mov	r14, r12
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rcx
.label_88:
	mov	qword ptr [rsp + 0x10], r15
	mov	r13, r14
.label_71:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_55:
	cmp	r12, rcx
	jbe	.label_74
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_34:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_81
	nop	dword ptr [rax]
.label_87:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_87
	lea	r14, [rsi - 1]
.label_81:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_86
	.section	.text
	.align	16
	#Procedure 0x4018e6
	.globl sub_4018e6
	.type sub_4018e6, @function
sub_4018e6:

	nop	word ptr cs:[rax + rax]
.label_94:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_86:
	cmp	al, 0x2f
	je	.label_92
	test	al, al
	jne	.label_94
.label_92:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	jne	.label_25
	cmp	byte ptr [r14], 0x2e
	jne	.label_30
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_34
	jmp	.label_36
.label_25:
	test	r15, r15
	je	.label_36
	cmp	r15, 2
	jne	.label_28
	cmp	dl, 0x2e
	jne	.label_43
	cmp	byte ptr [rsi], 0x2e
	jne	.label_43
	dec	r12
	mov	rdx, r12
	nop	
.label_53:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_49
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_53
.label_49:
	test	al, al
	jne	.label_55
	jmp	.label_36
.label_74:
	cmp	al, 0x2f
	mov	edx, eax
	mov	r14, r13
	lea	rcx, [r13 + 1]
	jne	.label_59
	nop	
.label_61:
	movzx	edx, byte ptr [rcx]
	inc	rcx
	cmp	dl, 0x2f
	je	.label_61
	lea	r14, [rcx - 1]
.label_59:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_64
	.section	.text
	.align	16
	#Procedure 0x401996
	.globl sub_401996
	.type sub_401996, @function
sub_401996:

	nop	word ptr cs:[rax + rax]
.label_76:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_64:
	test	al, al
	je	.label_75
	cmp	al, 0x2f
	jne	.label_76
.label_75:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_77
	cmp	r15, 2
	jne	.label_80
	cmp	dl, 0x2e
	jne	.label_43
	cmp	byte ptr [rcx], 0x2e
	je	.label_84
	jmp	.label_43
.label_77:
	cmp	dl, 0x2e
	jne	.label_30
.label_84:
	test	al, al
	jne	.label_74
	jmp	.label_36
.label_30:
	mov	r15d, 1
.label_28:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_90
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_90:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_95
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_26
.label_95:
	sub	r12, rdi
	sub	r8, rdi
	lea	rbp, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	rbp, rax
	add	rbp, r8
	mov	rsi, rbp
	call	xrealloc
	add	rbp, rax
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x20], rbp
.label_26:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x54], 6
	jne	.label_51
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_56
.label_51:
	cmp	dword ptr [rsp + 0x50], 0
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	jne	.label_60
	mov	rsi, qword ptr [rsp + 8]
	call	__lxstat
	jmp	.label_54
.label_60:
	mov	rsi, qword ptr [rsp + 8]
	call	__xstat
.label_54:
	test	eax, eax
	je	.label_67
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_72
	test	al, al
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
	je	.label_42
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_82
.label_67:
	mov	eax, dword ptr [rsp + 0x80]
.label_56:
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
.label_82:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_91
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 0x28], ebx
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	jne	.label_93
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	lea	rdx, [rsp + 0x68]
	test	rax, rax
	je	.label_41
.label_93:
	mov	rbx, rax
	mov	rdi, rbx
	mov	r14, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rbp, rdx
	call	seen_file
	test	al, al
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_50
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	eax, 0x28
	cmovne	ebx, eax
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_63
.label_50:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	test	rax, rax
	jne	.label_35
	call	__errno_location
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	jne	.label_73
	cmp	dword ptr [rax], 0xc
	je	.label_73
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	jmp	.label_37
.label_72:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_69:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_69
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	ebx, 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_63:
	and	al, 0xf
	cmp	al, 4
	jne	.label_33
.label_37:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_71
	jmp	.label_38
.label_43:
	mov	r15d, 2
	jmp	.label_28
.label_80:
	test	r15, r15
	jne	.label_28
	jmp	.label_36
.label_91:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_46
	cmp	dword ptr [rsp + 0x2c], 2
	je	.label_46
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_52
.label_46:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	r14, r13
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_57
.label_35:
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rax
	call	strlen
	mov	r14, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [r14 + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x30], r14
	je	.label_65
	cmp	rcx, rax
	jbe	.label_79
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_83
.label_65:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_83:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_31
.label_79:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x10]
.label_31:
	mov	rdi, qword ptr [rsp + 0x30]
	add	rdi, r14
	inc	rdx
	mov	rsi, r13
	call	memmove
	mov	rdi, r14
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcpy
	mov	rdi, r13
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [rdi], 0x2f
	jne	.label_47
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_48
.label_47:
	cmp	rbp, rax
	jbe	.label_48
	lea	rax, [r12 + r15 - 1]
.label_89:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_48
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_89
.label_48:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, r14
	mov	qword ptr [rsp + 0x30], r14
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x18]
.label_57:
	mov	al, byte ptr [r14]
	test	al, al
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_88
	jmp	.label_45
.label_36:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_45
.label_44:
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_45:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_68
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_68:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_78
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_85
.label_78:
	mov	rbp, rdi
.label_85:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_27
	call	hash_free
	jmp	.label_27
.label_38:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_45
.label_73:
	mov	ebx, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_32
.label_33:
	cmp	al, 0xd
	jne	.label_27
	jmp	.label_32
.label_42:
	mov	eax, ebx
.label_52:
	mov	ebx, eax
.label_32:
	mov	ebp, ebx
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_40
	call	hash_free
.label_40:
	call	__errno_location
	mov	dword ptr [rax], ebp
	jmp	.label_62
.label_41:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e4d
	.globl sub_401e4d
	.type sub_401e4d, @function
sub_401e4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e50
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
	#Procedure 0x401ec5
	.globl sub_401ec5
	.type sub_401ec5, @function
sub_401ec5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
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
	#Procedure 0x401f3f
	.globl sub_401f3f
	.type sub_401f3f, @function
sub_401f3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f40

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_100:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_99
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_100
.label_99:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f66
	.globl sub_401f66
	.type sub_401f66, @function
sub_401f66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70
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
	#Procedure 0x401fa3
	.globl sub_401fa3
	.type sub_401fa3, @function
sub_401fa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fb0
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
	#Procedure 0x401fc8
	.globl sub_401fc8
	.type sub_401fc8, @function
sub_401fc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fd5
	.globl sub_401fd5
	.type sub_401fd5, @function
sub_401fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fe0
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
	#Procedure 0x401ff8
	.globl sub_401ff8
	.type sub_401ff8, @function
sub_401ff8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402000
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
	je	.label_101
	mov	qword ptr [rax], rbx
.label_101:
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
	#Procedure 0x4020ec
	.globl sub_4020ec
	.type sub_4020ec, @function
sub_4020ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0

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
	je	.label_105
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_103
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_106
.label_103:
	cmp	r13, r12
	jb	.label_107
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_109
	add	r12, r12
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x402183
	.globl sub_402183
	.type sub_402183, @function
sub_402183:

	nop	word ptr cs:[rax + rax]
.label_109:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_104
.label_110:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_108
	jmp	.label_105
.label_107:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_105
.label_104:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_102
.label_106:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_102:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_105:
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
	#Procedure 0x4021f1
	.globl sub_4021f1
	.type sub_4021f1, @function
sub_4021f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402200
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_111
	call	rpl_calloc
	test	rax, rax
	je	.label_111
	pop	rcx
	ret	
.label_111:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402226
	.globl sub_402226
	.type sub_402226, @function
sub_402226:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_112
	test	rsi, rsi
	je	.label_112
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_112:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4022a0
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
	je	.label_113
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
.label_113:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402301
	.globl sub_402301
	.type sub_402301, @function
sub_402301:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402310
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
	#Procedure 0x40231f
	.globl sub_40231f
	.type sub_40231f, @function
sub_40231f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402320
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_114
	xor	eax, eax
.label_116:
	cmp	qword ptr [r9], 0
	je	.label_115
	test	r9, r9
	je	.label_115
	mov	r8, r9
	nop	
.label_117:
	cmp	rax, rdx
	jae	.label_114
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_117
	mov	r8, qword ptr [rdi + 8]
.label_115:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_116
.label_114:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402366
	.globl sub_402366
	.type sub_402366, @function
sub_402366:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402370
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
	jae	.label_121
	xor	ebx, ebx
.label_120:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_122
	test	r13, r13
	je	.label_122
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_121
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_119:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_118
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_119
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x4023dc
	.globl sub_4023dc
	.type sub_4023dc, @function
sub_4023dc:

	nop	dword ptr [rax]
.label_118:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_122:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_120
.label_121:
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
	#Procedure 0x402403
	.globl sub_402403
	.type sub_402403, @function
sub_402403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402410

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_123
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_123:
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
	#Procedure 0x402493
	.globl sub_402493
	.type sub_402493, @function
sub_402493:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4024d0

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
	je	.label_126
	cmp	r15, -2
	jb	.label_126
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_126
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_126:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402526
	.globl sub_402526
	.type sub_402526, @function
sub_402526:

	nop	word ptr cs:[rax + rax]
.label_139:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
	#Procedure 0x402568
	.globl sub_402568
	.type sub_402568, @function
sub_402568:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40256d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_139
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_138
	mov	ecx, OFFSET FLAT:label_137
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_134
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_134
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_134:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_137
	mov	ecx, OFFSET FLAT:label_130
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_130
	mov	ecx, OFFSET FLAT:label_131
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_148:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_145
	mov	eax, OFFSET FLAT:label_146
	jmp	.label_147
	.section	.text
	.align	16
	#Procedure 0x4026ff
	.globl sub_4026ff
	.type sub_4026ff, @function
sub_4026ff:

	nop	word ptr cs:[rax + rax]
.label_153:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_144
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_144
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_144
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_144
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_144
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_144
	cmp	byte ptr [rax + 7], 0
	je	.label_148
.label_144:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_149
	mov	eax, OFFSET FLAT:label_150
.label_147:
	cmove	rax, rcx
.label_154:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402752

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
	jne	.label_154
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_153
	cmp	ecx, 0x55
	jne	.label_144
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_144
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_144
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_144
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_144
	cmp	byte ptr [rax + 5], 0
	jne	.label_144
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_151
	mov	eax, OFFSET FLAT:label_152
	jmp	.label_147
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_155
	test	rsi, rsi
	mov	ecx, 1
	je	.label_156
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_156
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_155:
	mov	ecx, 1
.label_156:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40280b
	.globl sub_40280b
	.type sub_40280b, @function
sub_40280b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402810
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_157
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_158
	test	rbx, rbx
	jne	.label_158
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_158:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_159
	test	rax, rax
	je	.label_157
.label_159:
	pop	rbx
	ret	
.label_157:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402858
	.globl sub_402858
	.type sub_402858, @function
sub_402858:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	cmp	byte ptr [rsi + 1], 0x2f
	sete	al
	cmp	byte ptr [rdi + 1], 0x2f
	mov	r14, rcx
	mov	r12, rdx
	sete	cl
	xor	ebx, ebx
	xor	cl, al
	jne	.label_166
	mov	dl, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rdi
	mov	eax, 0
	je	.label_161
	xor	ecx, ecx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_172:
	movzx	ebx, byte ptr [rdi + rcx]
	test	bl, bl
	je	.label_170
	cmp	dl, bl
	jne	.label_170
	lea	rbx, [rcx + 1]
	cmp	dl, 0x2f
	cmove	eax, ebx
	movzx	edx, byte ptr [rsi + rcx + 1]
	test	dl, dl
	mov	rcx, rbx
	jne	.label_172
	mov	rcx, rbx
	add	rcx, rdi
.label_161:
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_178
	cmp	cl, 0x2f
	je	.label_178
	jmp	.label_180
.label_170:
	cmp	dl, 0x2f
	jne	.label_180
	test	bl, bl
	jne	.label_180
	mov	ebx, ecx
.label_178:
	mov	eax, ebx
.label_180:
	test	eax, eax
	je	.label_183
	cdqe	
	lea	rcx, [rdi + rax]
	cmp	byte ptr [rsi + rax], 0x2f
	lea	rdx, [rsi + rax + 1]
	lea	rbx, [rsi + rax]
	cmove	rbx, rdx
	cmp	byte ptr [rdi + rax], 0x2f
	lea	r15, [rdi + rax + 1]
	cmovne	r15, rcx
	cmp	byte ptr [rbx], 0
	je	.label_184
	test	r12, r12
	je	.label_164
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_162
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_168
.label_183:
	xor	ebx, ebx
	jmp	.label_166
.label_184:
	cmp	byte ptr [r15], 0
	mov	ebx, OFFSET FLAT:label_174
	cmovne	rbx, r15
	test	r12, r12
	je	.label_175
	mov	rdi, rbx
	call	strlen
	cmp	rax, r14
	jae	.label_181
	inc	rax
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rax
	call	memcpy
	jmp	.label_188
.label_164:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_190
	call	fputs_unlocked
	xor	r12d, r12d
.label_168:
	xor	ebp, ebp
	jmp	.label_162
.label_167:
	inc	rbx
.label_162:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_177
	test	al, al
	jne	.label_167
	jmp	.label_169
.label_177:
	test	r12, r12
	je	.label_165
	mov	al, 1
	cmp	r14, 4
	jb	.label_171
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_173
.label_165:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_176
	call	fputs_unlocked
	xor	r12d, r12d
.label_173:
	xor	eax, eax
.label_171:
	and	bpl, 1
	or	bpl, al
	jmp	.label_167
.label_169:
	cmp	byte ptr [r15], 0
	je	.label_182
	test	r12, r12
	je	.label_185
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_186
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_189
.label_175:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_188:
	mov	bl, 1
	jmp	.label_166
.label_185:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_160
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_163
.label_186:
	mov	bpl, 1
.label_189:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_179
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_163:
	xor	ebx, ebx
.label_179:
	or	bpl, bl
.label_182:
	mov	bl, 1
	test	bpl, 1
	je	.label_166
.label_181:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	call	error
.label_166:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402aa9
	.globl sub_402aa9
	.type sub_402aa9, @function
sub_402aa9:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
.label_192:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ab5
	.globl sub_402ab5
	.type sub_402ab5, @function
sub_402ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402abf

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_191
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_192
.label_191:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_193
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_194:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_194
.label_193:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b0e
	.globl sub_402b0e
	.type sub_402b0e, @function
sub_402b0e:

	nop	
.label_195:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b15
	.globl sub_402b15
	.type sub_402b15, @function
sub_402b15:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b17
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_195
	test	rdx, rdx
	je	.label_195
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
	#Procedure 0x402b80
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b85
	.globl sub_402b85
	.type sub_402b85, @function
sub_402b85:

	nop	word ptr cs:[rax + rax]
.label_196:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b95
	.globl sub_402b95
	.type sub_402b95, @function
sub_402b95:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b99
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_196
	test	rsi, rsi
	je	.label_196
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
	#Procedure 0x402c00
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_197
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_200
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_201
	call	free
	xor	eax, eax
	jmp	.label_199
.label_200:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c37
	.globl sub_402c37
	.type sub_402c37, @function
sub_402c37:

	nop	word ptr cs:[rax + rax]
.label_197:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_198
	mov	qword ptr [rsi], rbx
.label_201:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_199
	test	rax, rax
	je	.label_198
.label_199:
	pop	rbx
	ret	
.label_198:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c70

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
	jae	.label_214
	test	dl, dl
	je	.label_209
	nop	dword ptr [rax]
.label_219:
	cmp	qword ptr [r13], 0
	je	.label_213
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_217
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_212:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_206
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_211
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x402cfa
	.globl sub_402cfa
	.type sub_402cfa, @function
sub_402cfa:

	nop	word ptr [rax + rax]
.label_211:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_205:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_212
	mov	rax, qword ptr [r15 + 8]
.label_217:
	mov	qword ptr [r13 + 8], 0
.label_213:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_219
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x402d44
	.globl sub_402d44
	.type sub_402d44, @function
sub_402d44:

	nop	word ptr cs:[rax + rax]
.label_209:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_208
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_218
	nop	word ptr [rax + rax]
.label_210:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_206
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_204
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_222
	.section	.text
	.align	16
	#Procedure 0x402daa
	.globl sub_402daa
	.type sub_402daa, @function
sub_402daa:

	nop	word ptr [rax + rax]
.label_204:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_222:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_210
	mov	r12, qword ptr [r13]
.label_218:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_216
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_220
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_203
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x402e18
	.globl sub_402e18
	.type sub_402e18, @function
sub_402e18:

	nop	dword ptr [rax + rax]
.label_220:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_202
.label_203:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_221
.label_207:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_202:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_208:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_209
.label_214:
	mov	al, 1
.label_215:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_221:
	xor	eax, eax
	jmp	.label_215
.label_206:
	call	abort
.label_216:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e89
	.globl sub_402e89
	.type sub_402e89, @function
sub_402e89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e90

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
	#Procedure 0x402ea0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_223
	pop	rcx
	ret	
.label_223:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402eb2
	.globl sub_402eb2
	.type sub_402eb2, @function
sub_402eb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0

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
	#Procedure 0x402ed8
	.globl sub_402ed8
	.type sub_402ed8, @function
sub_402ed8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0

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
	jne	.label_228
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_224
.label_228:
	xor	ebp, ebp
.label_226:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_224:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 8]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_229
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_229:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_225
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_225:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_230
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_227
.label_230:
	xor	ebp, ebp
.label_227:
	mov	rdi, rbx
	call	free
	jmp	.label_226
	.section	.text
	.align	16
	#Procedure 0x403028
	.globl sub_403028
	.type sub_403028, @function
sub_403028:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_231
	test	rbx, rbx
	jne	.label_231
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_231:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_233
	test	rax, rax
	je	.label_232
.label_233:
	pop	rbx
	ret	
.label_232:
	call	xalloc_die
.label_234:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403065
	.globl sub_403065
	.type sub_403065, @function
sub_403065:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40306f

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
	je	.label_235
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
	je	.label_234
	cmp	rax, rbx
	je	.label_235
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_235:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030e0

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
	je	.label_237
	test	r15, r15
	je	.label_236
.label_237:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_236:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403122
	.globl sub_403122
	.type sub_403122, @function
sub_403122:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_238
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_241
.label_238:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_240
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_239
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_239:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_240:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c6
	.globl sub_4031c6
	.type sub_4031c6, @function
sub_4031c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0
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
	#Procedure 0x4031e9
	.globl sub_4031e9
	.type sub_4031e9, @function
sub_4031e9:

	nop	dword ptr [rax]
.label_242:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031f3
	.globl sub_4031f3
	.type sub_4031f3, @function
sub_4031f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031fe

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_242
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
	#Procedure 0x403230

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
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
	#Procedure 0x403285
	.globl sub_403285
	.type sub_403285, @function
sub_403285:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403290
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
	#Procedure 0x40329d
	.globl sub_40329d
	.type sub_40329d, @function
sub_40329d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
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
	#Procedure 0x40330e
	.globl sub_40330e
	.type sub_40330e, @function
sub_40330e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403310
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40331a
	.globl sub_40331a
	.type sub_40331a, @function
sub_40331a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403320

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
	#Procedure 0x403337
	.globl sub_403337
	.type sub_403337, @function
sub_403337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403340

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_243
	test	rax, rax
	je	.label_244
.label_243:
	pop	rbx
	ret	
.label_244:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40335a
	.globl sub_40335a
	.type sub_40335a, @function
sub_40335a:

	nop	word ptr [rax + rax]
.label_245:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403365
	.globl sub_403365
	.type sub_403365, @function
sub_403365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403370

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
	je	.label_245
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
	#Procedure 0x403400

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
	#Procedure 0x403415
	.globl sub_403415
	.type sub_403415, @function
sub_403415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_247
	cmp	byte ptr [rax], 0x43
	jne	.label_249
	cmp	byte ptr [rax + 1], 0
	je	.label_246
.label_249:
	mov	esi, OFFSET FLAT:label_248
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_247
.label_246:
	xor	ebx, ebx
.label_247:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403451
	.globl sub_403451
	.type sub_403451, @function
sub_403451:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403460

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
	jne	.label_251
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_250
	test	cl, cl
	jne	.label_250
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_250
.label_251:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_250
	call	__errno_location
	mov	dword ptr [rax], 0
.label_250:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_252
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_255:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_255
.label_252:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_256
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_253], OFFSET FLAT:slot0
.label_256:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_254
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_254:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403551
	.globl sub_403551
	.type sub_403551, @function
sub_403551:

	nop	word ptr cs:[rax + rax]
.label_257:
	xor	eax, eax
	ret	
.label_258:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403566

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_258
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_257
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403590
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
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
	#Procedure 0x4035e4
	.globl sub_4035e4
	.type sub_4035e4, @function
sub_4035e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_259:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_259
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403611
	.globl sub_403611
	.type sub_403611, @function
sub_403611:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403620
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403628
	.globl sub_403628
	.type sub_403628, @function
sub_403628:

	nop	dword ptr [rax + rax]
.label_261:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40363c
	.globl sub_40363c
	.type sub_40363c, @function
sub_40363c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403648

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_261
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_260
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_261
.label_260:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_261
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_262
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_262:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036b0
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_263
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_264
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_264:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036d8
	.globl sub_4036d8
	.type sub_4036d8, @function
sub_4036d8:

	nop	dword ptr [rax + rax]
.label_263:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036e0

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
	jae	.label_269
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_266
	add	rbx, rax
	je	.label_266
	cmp	rsi, r12
	je	.label_268
	xor	r15d, r15d
	nop	
.label_267:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_265
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_266
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_267
.label_268:
	mov	r15, r12
	jmp	.label_266
.label_269:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403746
	.globl sub_403746
	.type sub_403746, @function
sub_403746:

	nop	dword ptr [rax + rax]
.label_265:
	mov	r15, qword ptr [rbx]
.label_266:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_270:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40376b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_274
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_271
	cmp	dword ptr [rbp], 0x20
	jne	.label_271
.label_274:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_270
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_272:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_273
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_271:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_272
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403820
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_276
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_282
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_279:
	cmp	qword ptr [rcx], 0
	je	.label_277
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_281:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_281
	cmp	rdi, rax
	cmova	rax, rdi
.label_277:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_278
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_283:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_283
	cmp	rdi, rax
	cmova	rax, rdi
.label_278:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_279
.label_282:
	test	r8, r8
	je	.label_276
	cmp	qword ptr [rcx], 0
	je	.label_276
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_280:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_280
	cmp	rdx, rax
	cmova	rax, rdx
.label_276:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038d4
	.globl sub_4038d4
	.type sub_4038d4, @function
sub_4038d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0
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
	#Procedure 0x403916
	.globl sub_403916
	.type sub_403916, @function
sub_403916:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403920

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
	#Procedure 0x403946
	.globl sub_403946
	.type sub_403946, @function
sub_403946:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403950

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403957
	.globl sub_403957
	.type sub_403957, @function
sub_403957:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40396e
	.globl sub_40396e
	.type sub_40396e, @function
sub_40396e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403970

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
	js	.label_287
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_290
	cmp	r12d, 0x7fffffff
	je	.label_285
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
	jne	.label_288
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_288:
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
.label_290:
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
	jbe	.label_286
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_289
.label_286:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_284
	mov	rdi, r14
	call	free
.label_284:
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
.label_289:
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
.label_287:
	call	abort
.label_285:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403b2d
	.globl sub_403b2d
	.type sub_403b2d, @function
sub_403b2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b30
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
	#Procedure 0x403b3f
	.globl sub_403b3f
	.type sub_403b3f, @function
sub_403b3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403b40
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
.label_292:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_291
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_292
.label_291:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b7b
	.globl sub_403b7b
	.type sub_403b7b, @function
sub_403b7b:

	nop	dword ptr [rax + rax]
.label_293:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403b85
	.globl sub_403b85
	.type sub_403b85, @function
sub_403b85:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b8b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_294
	test	rax, rax
	je	.label_293
.label_294:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ba0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_295
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_297
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_297
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_300
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_300:
	mov	rbx, r14
.label_297:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_295:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_296
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403c41
	.globl sub_403c41
	.type sub_403c41, @function
sub_403c41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c50

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
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x403cff
	.globl sub_403cff
	.type sub_403cff, @function
sub_403cff:

	nop	
.label_382:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_302
	or	al, dl
	jne	.label_302
	test	dil, 1
	jne	.label_380
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_302
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_344
	jmp	.label_302
.label_693:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_390
	test	rbp, rbp
	je	.label_393
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_393:
	mov	r14d, 1
	jmp	.label_396
.label_694:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_149
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_339
.label_390:
	xor	r14d, r14d
.label_396:
	mov	eax, OFFSET FLAT:label_149
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_405
	.section	.text
	.align	16
	#Procedure 0x403dcf
	.globl sub_403dcf
	.type sub_403dcf, @function
sub_403dcf:

	nop	
.label_344:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_412
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_387]
.label_695:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_425
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_150
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_696:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_314
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_314
	xor	r14d, r14d
	nop	
.label_327:
	cmp	r14, rbp
	jae	.label_381
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_381:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_327
.label_314:
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
	jmp	.label_339
.label_688:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_339
.label_691:
	mov	al, 1
.label_689:
	mov	r12b, 1
.label_692:
	test	r12b, 1
	mov	cl, 1
	je	.label_353
	mov	ecx, eax
.label_353:
	mov	al, cl
.label_690:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_356
	test	rbp, rbp
	je	.label_362
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_362:
	mov	r14d, 1
	jmp	.label_421
.label_356:
	xor	r14d, r14d
.label_421:
	mov	ecx, OFFSET FLAT:label_150
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_405:
	mov	sil, r12b
.label_339:
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
	jmp	.label_371
	.section	.text
	.align	16
	#Procedure 0x403f91
	.globl sub_403f91
	.type sub_403f91, @function
sub_403f91:

	nop	word ptr cs:[rax + rax]
.label_349:
	inc	r12
.label_371:
	cmp	r11, -1
	je	.label_399
	cmp	r12, r11
	jne	.label_400
	jmp	.label_402
	.section	.text
	.align	16
	#Procedure 0x403fb3
	.globl sub_403fb3
	.type sub_403fb3, @function
sub_403fb3:

	nop	word ptr cs:[rax + rax]
.label_399:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_336
.label_400:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_413
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_417
	cmp	r11, -1
	jne	.label_417
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_417:
	cmp	rbx, r11
	jbe	.label_305
.label_413:
	xor	esi, esi
.label_329:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_306
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_310]
.label_748:
	test	r12, r12
	jne	.label_317
	jmp	.label_318
	.section	.text
	.align	16
	#Procedure 0x404046
	.globl sub_404046
	.type sub_404046, @function
sub_404046:

	nop	word ptr cs:[rax + rax]
.label_305:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_325
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_329
	jmp	.label_340
.label_325:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_329
.label_752:
	xor	eax, eax
	cmp	r11, -1
	je	.label_346
	test	r12, r12
	jne	.label_350
	cmp	r11, 1
	je	.label_318
	xor	r13d, r13d
	jmp	.label_309
.label_741:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_358
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_340
	cmp	r8d, 2
	jne	.label_363
	mov	eax, r9d
	and	al, 1
	jne	.label_363
	cmp	r14, rbp
	jae	.label_366
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_368
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_368:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_375
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	add	r14, 3
	mov	r9b, 1
.label_363:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_379
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_379:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_389
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_389
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_389
	cmp	r14, rbp
	jae	.label_385
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_385:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_374
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_374:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_309
.label_742:
	mov	bl, 0x62
	jmp	.label_315
.label_743:
	mov	cl, 0x74
	jmp	.label_338
.label_744:
	mov	bl, 0x76
	jmp	.label_315
.label_745:
	mov	bl, 0x66
	jmp	.label_315
.label_746:
	mov	cl, 0x72
	jmp	.label_338
.label_749:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_410
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_335
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
	jae	.label_418
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_418:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_307
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_307:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_313
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_313:
	add	r14, 3
	xor	r9d, r9d
.label_410:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_309
.label_750:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_321
	cmp	r8d, 2
	jne	.label_317
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_317
	jmp	.label_335
.label_751:
	cmp	r8d, 2
	jne	.label_332
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_335
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_388
.label_306:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_343
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_355
.label_346:
	test	r12, r12
	jne	.label_364
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_364
.label_318:
	mov	dl, 1
.label_747:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_335
	xor	eax, eax
	mov	r13b, dl
.label_309:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_372
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_376
	jmp	.label_377
	.section	.text
	.align	16
	#Procedure 0x404324
	.globl sub_404324
	.type sub_404324, @function
sub_404324:

	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_377
.label_376:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_384
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_386
	.section	.text
	.align	16
	#Procedure 0x40435d
	.globl sub_40435d
	.type sub_40435d, @function
sub_40435d:

	nop	dword ptr [rax]
.label_377:
	test	sil, sil
.label_386:
	mov	ebx, r15d
	je	.label_319
	jmp	.label_392
.label_384:
	mov	ebx, r15d
	jmp	.label_392
.label_358:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_349
	xor	r15d, r15d
	jmp	.label_317
.label_332:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_338
	xor	eax, eax
	mov	r15b, 0x5c
.label_388:
	xor	r13d, r13d
	jmp	.label_319
.label_338:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_335
.label_315:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_309
	nop	
.label_392:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_340
	cmp	r8d, 2
	jne	.label_411
	mov	eax, r9d
	and	al, 1
	jne	.label_411
	cmp	r14, rbp
	jae	.label_373
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_373:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_419
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_419:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_424
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_424:
	add	r14, 3
	mov	r9b, 1
.label_411:
	cmp	r14, rbp
	jae	.label_326
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_326:
	inc	r14
	jmp	.label_354
.label_343:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_311
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_311:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_403
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_397:
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
	je	.label_333
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_348
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_365
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_360
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_352:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_312
	bt	rsi, rdx
	jb	.label_335
.label_312:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_352
.label_360:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_378
	xor	r13d, r13d
.label_378:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_397
	jmp	.label_341
.label_389:
	xor	r13d, r13d
	jmp	.label_309
.label_364:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_309
.label_321:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_317
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_317
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_317
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_398
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_423
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
	cmp	r14, rbp
	jae	.label_408
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_408:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_414
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_414:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_330
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_330:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_415
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_415:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_423:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_309
.label_317:
	xor	eax, eax
.label_350:
	xor	r13d, r13d
	jmp	.label_309
.label_403:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_420:
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
	je	.label_342
	cmp	rbp, -1
	je	.label_331
	cmp	rbp, -2
	je	.label_333
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_345
	xor	r13d, r13d
.label_345:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_420
	jmp	.label_341
.label_333:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_359
	lea	rax, [r10 + r12]
.label_401:
	cmp	byte ptr [rax + rsi], 0
	je	.label_359
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_401
.label_359:
	mov	qword ptr [rsp + 0x40], rsi
.label_348:
	xor	r13d, r13d
	jmp	.label_365
.label_331:
	xor	r13d, r13d
.label_342:
	mov	r10, qword ptr [rsp + 0x28]
.label_365:
	mov	r12, qword ptr [rsp + 0x40]
.label_341:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_355:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_370
	test	al, al
	je	.label_370
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_309
.label_370:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_383
	.section	.text
	.align	16
	#Procedure 0x404757
	.globl sub_404757
	.type sub_404757, @function
sub_404757:

	nop	word ptr [rax + rax]
.label_351:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_383:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_391
	test	sil, 1
	je	.label_347
	cmp	r14, rbp
	jae	.label_395
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_395:
	inc	r14
	xor	esi, esi
	jmp	.label_347
	.section	.text
	.align	16
	#Procedure 0x404795
	.globl sub_404795
	.type sub_404795, @function
sub_404795:

	nop	word ptr cs:[rax + rax]
.label_391:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_340
	cmp	r8d, 2
	jne	.label_367
	mov	eax, r9d
	and	al, 1
	jne	.label_367
	cmp	r14, rbp
	jae	.label_320
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_320:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_409
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_409:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_404
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_404:
	add	r14, 3
	mov	r9b, 1
.label_367:
	cmp	r14, rbp
	jae	.label_422
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_422:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_303
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_303:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_308
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_308:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_347:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_319
	test	r9b, 1
	je	.label_322
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_316
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_324
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_324:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_334
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_334:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_322
	.section	.text
	.align	16
	#Procedure 0x4048a6
	.globl sub_4048a6
	.type sub_4048a6, @function
sub_4048a6:

	nop	word ptr cs:[rax + rax]
.label_316:
	mov	rbx, rcx
.label_322:
	cmp	r14, rbp
	jae	.label_351
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x4048ce
	.globl sub_4048ce
	.type sub_4048ce, @function
sub_4048ce:

	nop	
.label_319:
	test	r9b, 1
	je	.label_357
	and	al, 1
	jne	.label_357
	cmp	r14, rbp
	jae	.label_361
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_361:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_394
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_394:
	add	r14, 2
	xor	r9d, r9d
.label_357:
	mov	ebx, r15d
.label_354:
	cmp	r14, rbp
	jae	.label_369
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_369:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_349
.label_398:
	xor	r13d, r13d
	jmp	.label_309
	.section	.text
	.align	16
	#Procedure 0x404931
	.globl sub_404931
	.type sub_404931, @function
sub_404931:

	nop	word ptr cs:[rax + rax]
.label_402:
	mov	rcx, r12
.label_336:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_382
	or	al, dl
	jne	.label_382
	mov	r11, rcx
	jmp	.label_340
.label_335:
	mov	eax, 2
.label_328:
	mov	qword ptr [rsp + 0x38], rax
.label_340:
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
.label_416:
	mov	r14, rax
.label_323:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_302:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_407
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_337
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_337
	inc	rdx
	nop	dword ptr [rax + rax]
.label_304:
	cmp	r14, rbp
	jae	.label_301
	mov	byte ptr [rcx + r14], al
.label_301:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_304
	jmp	.label_337
.label_380:
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
	jmp	.label_416
.label_407:
	mov	rcx, qword ptr [rsp + 0x10]
.label_337:
	cmp	r14, rbp
	jae	.label_323
	mov	byte ptr [rcx + r14], 0
	jmp	.label_323
.label_406:
	mov	eax, 5
	jmp	.label_328
.label_412:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a80

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
	je	.label_426
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_426
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_439
	cmp	rsi, r14
	je	.label_446
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_458
	mov	rax, qword ptr [r12]
.label_445:
	test	rax, rax
	jne	.label_453
	jmp	.label_439
.label_446:
	mov	rax, r14
.label_453:
	xor	ebp, ebp
	test	r15, r15
	je	.label_430
	mov	qword ptr [r15], rax
	jmp	.label_430
.label_458:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_439
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_432:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_429
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_435
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_432
.label_439:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_441
	cvtsi2ss	xmm1, rax
	jmp	.label_448
.label_441:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_448:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_454
	cvtsi2ss	xmm0, rcx
	jmp	.label_460
.label_454:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_460:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_428
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_436
	ucomiss	xmm2, dword ptr [rip + label_450]
	jbe	.label_438
	movss	xmm3, dword ptr [rip + label_437]
	ucomiss	xmm3, xmm2
	jbe	.label_438
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_442]
	jbe	.label_438
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_438
	addss	xmm3, dword ptr [rip + label_450]
	ucomiss	xmm2, xmm3
	jbe	.label_438
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_451]
	ucomiss	xmm5, xmm4
	jb	.label_438
	ucomiss	xmm4, xmm3
	ja	.label_459
.label_438:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_462]
	jmp	.label_459
.label_436:
	mov	eax, OFFSET FLAT:default_tuning
.label_459:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_428
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_461
	mulss	xmm0, xmm2
.label_461:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_440]
	jae	.label_430
	movss	xmm1, dword ptr [rip + label_444]
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
	je	.label_430
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_426
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_428
	cmp	rsi, r14
	mov	rax, r14
	je	.label_431
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_443
	mov	rax, qword ptr [r12]
.label_431:
	test	rax, rax
	jne	.label_447
.label_428:
	cmp	qword ptr [r12], 0
	je	.label_449
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_452
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_455
.label_449:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_433]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_434
.label_452:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_430
.label_455:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_434:
	mov	ebp, 1
.label_430:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_429:
	mov	rax, r14
	jmp	.label_445
.label_435:
	mov	rax, qword ptr [rbp]
	jmp	.label_445
.label_443:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_428
	lea	rbp, [rbx + rbp + 8]
.label_427:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_457
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_456
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_427
	jmp	.label_428
.label_457:
	mov	rax, r14
	jmp	.label_431
.label_456:
	mov	rax, qword ptr [rbp]
	jmp	.label_431
.label_426:
	call	abort
.label_447:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404db1
	.globl sub_404db1
	.type sub_404db1, @function
sub_404db1:

	nop	word ptr cs:[rax + rax]
.label_465:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_467:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_465
	test	dl, dl
	je	.label_464
	mov	ecx, esi
	and	cl, 1
	je	.label_463
	xor	esi, esi
.label_463:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_465
	.section	.text
	.align	16
	#Procedure 0x404de8

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_466:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_466
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_467
	.section	.text
	.align	16
	#Procedure 0x404e0b
	.globl sub_404e0b
	.type sub_404e0b, @function
sub_404e0b:

	nop	word ptr cs:[rax + rax]
.label_464:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e1c
	.globl sub_404e1c
	.type sub_404e1c, @function
sub_404e1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e20

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
	je	.label_480
	mov	edx, OFFSET FLAT:label_471
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_477
.label_480:
	mov	edx, OFFSET FLAT:label_478
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_477:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
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
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_483
	jmp	qword ptr [(r12 * 8) + label_484]
.label_677:
	add	rsp, 8
	jmp	.label_470
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
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
	jmp	.label_470
.label_678:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
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
.label_679:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
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
.label_680:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
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
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
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
	jmp	.label_470
.label_682:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
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
	jmp	.label_470
.label_683:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
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
	jmp	.label_470
.label_684:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_473
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
	jmp	.label_470
.label_686:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_476
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
	jmp	.label_470
.label_685:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
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
.label_470:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405178
	.globl sub_405178
	.type sub_405178, @function
sub_405178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180

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
	jne	.label_487
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_496
	cvtsi2ss	xmm0, rsi
	jmp	.label_500
.label_496:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_500:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_444]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_440]
	jae	.label_495
.label_487:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_504
	.section	.text
	.align	16
	#Procedure 0x40520b
	.globl sub_40520b
	.type sub_40520b, @function
sub_40520b:

	nop	dword ptr [rax + rax]
.label_498:
	add	rbx, 2
.label_504:
	cmp	rbx, -1
	je	.label_495
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_488
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_493:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_488
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_493
.label_488:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_498
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_495
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_489
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_495
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
	je	.label_502
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_489
.label_502:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_497
	.section	.text
	.align	16
	#Procedure 0x40532e
	.globl sub_40532e
	.type sub_40532e, @function
sub_40532e:

	nop	
.label_491:
	add	r12, 0x10
.label_497:
	cmp	r12, r15
	jae	.label_503
	cmp	qword ptr [r12], 0
	je	.label_491
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_490
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_505:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_501
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_494
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_492
	.section	.text
	.align	16
	#Procedure 0x40539a
	.globl sub_40539a
	.type sub_40539a, @function
sub_40539a:

	nop	word ptr [rax + rax]
.label_494:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_492:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_505
.label_490:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_491
.label_503:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_499
	mov	rdi, qword ptr [rsp]
	call	free
.label_495:
	xor	ebp, ebp
.label_489:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_501:
	call	abort
.label_499:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40540a
	.globl sub_40540a
	.type sub_40540a, @function
sub_40540a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbp, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_21
	call	setlocale
	mov	edi, OFFSET FLAT:label_523
	mov	esi, OFFSET FLAT:label_533
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_523
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r15d, 1
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_529
.label_724:
	mov	r14, qword ptr [rip + optarg]
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	edx, OFFSET FLAT:label_534
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_538
	add	eax, -0x4c
	cmp	eax, 0x35
	ja	.label_539
	jmp	qword ptr [(rax * 8) + label_556]
.label_716:
	or	r15d, 4
	mov	byte ptr [rip + logical],  1
	jmp	.label_529
.label_717:
	and	r15d, 0xfffffffb
	mov	byte ptr [rip + logical],  0
	jmp	.label_529
.label_718:
	and	r15d, 0xfffffffc
	jmp	.label_529
.label_719:
	and	r15d, 0xfffffffc
	or	r15d, 2
	jmp	.label_529
.label_720:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_529
.label_721:
	or	r15d, 4
	mov	byte ptr [rip + logical],  0
	jmp	.label_529
.label_722:
	mov	byte ptr [rip + use_nuls],  1
	jmp	.label_529
.label_723:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_529
.label_538:
	cmp	eax, -1
	jne	.label_507
	mov	qword ptr [rsp + 8], rbp
	cmp	dword ptr [rip + optind],  r12d
	jge	.label_511
	test	r14, r14
	mov	rbp, r14
	cmove	rbp, rbx
	test	rbx, rbx
	cmovne	rbp, rbx
	mov	ebx, r15d
	and	ebx, 3
	test	rbp, rbp
	je	.label_514
	mov	rdi, rbp
	mov	esi, r15d
	call	canonicalize_filename_mode
	mov	r13, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_521
	test	r13, r13
	je	.label_521
	mov	esi, r15d
	and	esi, 0xfffffffb
	mov	rdi, r13
	call	canonicalize_filename_mode
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	call	free
	mov	r13, qword ptr [rsp + 0x10]
.label_521:
	mov	qword ptr [rip + can_relative_to],  r13
	test	r13, r13
	je	.label_532
	test	ebx, ebx
	jne	.label_514
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	jne	.label_540
	mov	eax, dword ptr [rsp + 0x30]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_543
.label_514:
	cmp	r14, rbp
	je	.label_546
	test	r14, r14
	mov	r13, qword ptr [rsp + 8]
	je	.label_536
	mov	rdi, r14
	mov	esi, r15d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_553
	test	rbp, rbp
	je	.label_553
	mov	esi, r15d
	and	esi, 0xfffffffb
	mov	rdi, rbp
	call	canonicalize_filename_mode
	mov	r13, rax
	mov	rdi, rbp
	call	free
	mov	rbp, r13
	mov	r13, qword ptr [rsp + 8]
.label_553:
	test	rbp, rbp
	je	.label_525
	test	ebx, ebx
	jne	.label_513
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	rsi, rbp
	call	__xstat
	test	eax, eax
	jne	.label_517
	mov	eax, dword ptr [rsp + 0x30]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_520
.label_513:
	mov	rax, qword ptr [rip + can_relative_to]
	inc	rax
	mov	cl, byte ptr [rbp + 1]
	test	cl, cl
	je	.label_522
	cmp	cl, 0x2f
	jne	.label_526
	mov	cl, 0x2f
	cmp	byte ptr [rbp + 2], 0
	je	.label_528
.label_526:
	lea	rdx, [rbp + 2]
	nop	dword ptr [rax + rax]
.label_516:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_530
	cmp	cl, bl
	jne	.label_530
	inc	rax
	movzx	ecx, byte ptr [rdx]
	inc	rdx
	test	cl, cl
	jne	.label_516
	jmp	.label_519
.label_546:
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_536
.label_522:
	cmp	byte ptr [rax], 0x2f
	jne	.label_541
	jmp	.label_518
.label_530:
	test	cl, cl
	jne	.label_518
.label_519:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_541
	cmp	al, 0x2f
	je	.label_541
	jmp	.label_518
.label_528:
	cmp	byte ptr [rax], 0x2f
	jne	.label_518
.label_541:
	mov	qword ptr [rip + can_relative_base],  rbp
	jmp	.label_536
.label_518:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	mov	qword ptr [rip + can_relative_to],  0
.label_536:
	mov	eax, dword ptr [rip + optind]
	mov	r14b, 1
	cmp	eax, r12d
	jge	.label_554
	mov	ecx, r15d
	and	ecx, 0xfffffffb
	mov	dword ptr [rsp + 0x10], ecx
	mov	r14b, 1
	jmp	.label_527
.label_524:
	call	__overflow
	jmp	.label_509
.label_527:
	cdqe	
	mov	rbx, qword ptr [r13 + rax*8]
	mov	rdi, rbx
	mov	esi, r15d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_515
	test	rbp, rbp
	je	.label_515
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x10]
	call	canonicalize_filename_mode
	mov	r13, rax
	mov	rdi, rbp
	call	free
	mov	rbp, r13
	mov	r13, qword ptr [rsp + 8]
.label_515:
	test	rbp, rbp
	je	.label_555
	mov	rsi, qword ptr [rip + can_relative_to]
	test	rsi, rsi
	je	.label_510
	mov	rcx, qword ptr [rip + can_relative_base]
	test	rcx, rcx
	je	.label_508
	lea	rax, [rbp + 1]
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_531
	cmp	dl, 0x2f
	jne	.label_535
	mov	dl, 0x2f
	cmp	byte ptr [rcx + 2], 0
	je	.label_537
.label_535:
	add	rcx, 2
	nop	dword ptr [rax + rax]
.label_549:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_542
	cmp	dl, bl
	jne	.label_542
	inc	rax
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_549
	jmp	.label_545
	.section	.text
	.align	16
	#Procedure 0x4057ba
	.globl sub_4057ba
	.type sub_4057ba, @function
sub_4057ba:

	nop	word ptr [rax + rax]
.label_555:
	mov	al, byte ptr [rip + verbose]
	test	al, al
	je	.label_547
	xor	ebp, ebp
	jmp	.label_506
.label_547:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	esi, r13d
	mov	r13, qword ptr [rsp + 8]
	call	error
	jmp	.label_506
.label_531:
	cmp	byte ptr [rax], 0x2f
	jne	.label_508
	jmp	.label_510
.label_542:
	test	dl, dl
	jne	.label_510
.label_545:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_508
	cmp	al, 0x2f
	je	.label_508
	jmp	.label_510
.label_537:
	cmp	byte ptr [rax], 0x2f
	jne	.label_510
	nop	word ptr cs:[rax + rax]
.label_508:
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbp
	call	relpath
	test	al, al
	jne	.label_550
.label_510:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
.label_550:
	mov	al, byte ptr [rip + use_nuls]
	test	al, al
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_524
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_509:
	mov	rdi, rbp
	call	free
	mov	bpl, 1
.label_506:
	and	r14b, bpl
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r12d
	jl	.label_527
.label_554:
	movzx	eax, r14b
	xor	eax, 1
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_507:
	cmp	eax, 0xffffff7d
	je	.label_548
	cmp	eax, 0xffffff7e
	jne	.label_539
	xor	edi, edi
	call	usage
.label_548:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_130
	mov	edx, OFFSET FLAT:label_138
	mov	r8d, OFFSET FLAT:label_552
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_539:
	mov	edi, 1
	call	usage
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_544
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
.label_532:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_525:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_540:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
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
.label_543:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_551
.label_517:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_520:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
.label_551:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x14
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
.label_558:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405a55
	.globl sub_405a55
	.type sub_405a55, @function
sub_405a55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a5f
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
	je	.label_557
	test	r14, r14
	je	.label_558
.label_557:
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
	#Procedure 0x405a90
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a95
	.globl sub_405a95
	.type sub_405a95, @function
sub_405a95:

	nop	word ptr cs:[rax + rax]
.label_559:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405aa5
	.globl sub_405aa5
	.type sub_405aa5, @function
sub_405aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ab0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_559
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_560
	test	rax, rax
	je	.label_559
.label_560:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ae0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_96]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_98]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_561
	test	rdx, rdx
	je	.label_561
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_561:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b4a
	.globl sub_405b4a
	.type sub_405b4a, @function
sub_405b4a:

	nop	word ptr [rax + rax]
.label_562:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b55
	.globl sub_405b55
	.type sub_405b55, @function
sub_405b55:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b59
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
	je	.label_562
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
	#Procedure 0x405bc0
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
	#Procedure 0x405bd3
	.globl sub_405bd3
	.type sub_405bd3, @function
sub_405bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405be0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_569
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_572
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_568:
	cmp	qword ptr [rax], 0
	je	.label_564
	mov	rdx, rax
	nop	dword ptr [rax]
.label_571:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_571
	inc	r10
.label_564:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_573
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_566:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_566
	inc	r10
.label_573:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_568
	jmp	.label_570
.label_572:
	xor	r10d, r10d
.label_570:
	test	r8, r8
	je	.label_569
	cmp	qword ptr [rax], 0
	je	.label_569
	nop	dword ptr [rax]
.label_563:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_563
	inc	r10
.label_569:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_565
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_567
.label_565:
	xor	eax, eax
.label_567:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ca0
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
	jae	.label_585
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_579
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_591
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_592
	mov	r14, qword ptr [r13]
.label_591:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_584
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_575
.label_592:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_579
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_589:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_586
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_588
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_589
	jmp	.label_579
.label_584:
	mov	qword ptr [r13], 0
	jmp	.label_575
.label_586:
	mov	rcx, rax
	jmp	.label_594
.label_588:
	mov	r14, qword ptr [rcx]
.label_594:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_575:
	xor	r12d, r12d
	test	r14, r14
	je	.label_579
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_578
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_583
	cvtsi2ss	xmm1, rax
	jmp	.label_587
.label_583:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_587:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_590
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_593
.label_590:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_593:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_578
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_580
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_450]
	jbe	.label_582
	movss	xmm4, dword ptr [rip + label_437]
	ucomiss	xmm4, xmm3
	jbe	.label_582
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_582
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_442]
	jbe	.label_582
	movss	xmm4, dword ptr [rip + label_450]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_582
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_451]
	ucomiss	xmm5, xmm3
	jb	.label_582
	ucomiss	xmm3, xmm4
	ja	.label_574
.label_582:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_574
.label_580:
	mov	eax, OFFSET FLAT:default_tuning
.label_574:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_578
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_581
	mulss	xmm0, dword ptr [rax + 8]
.label_581:
	movss	xmm1, dword ptr [rip + label_444]
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
	jne	.label_578
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_576
	nop	word ptr cs:[rax + rax]
.label_577:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_577
.label_576:
	mov	qword ptr [r15 + 0x48], 0
.label_578:
	mov	r12, r14
.label_579:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_585:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405f33
	.globl sub_405f33
	.type sub_405f33, @function
sub_405f33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f40
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_595
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_596:
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
	jne	.label_596
.label_595:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f73
	.globl sub_405f73
	.type sub_405f73, @function
sub_405f73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_597
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_597
	test	byte ptr [rbx + 1], 1
	je	.label_597
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_597:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x405fb3
	.globl sub_405fb3
	.type sub_405fb3, @function
sub_405fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405fd1
	.globl sub_405fd1
	.type sub_405fd1, @function
sub_405fd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0

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
	je	.label_601
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_604
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_450]
	jbe	.label_600
	movss	xmm1, dword ptr [rip + label_437]
	ucomiss	xmm1, xmm0
	jbe	.label_600
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_442]
	jbe	.label_600
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_600
	addss	xmm1, dword ptr [rip + label_450]
	ucomiss	xmm0, xmm1
	jbe	.label_600
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_451]
	ucomiss	xmm2, xmm0
	jb	.label_600
	ucomiss	xmm0, xmm1
	jbe	.label_600
.label_604:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_602
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_606
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_598
.label_606:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_598:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_444]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_440]
	jae	.label_600
.label_602:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_603
	.section	.text
	.align	16
	#Procedure 0x40612e
	.globl sub_40612e
	.type sub_40612e, @function
sub_40612e:

	nop	
.label_607:
	add	rbx, 2
.label_603:
	cmp	rbx, -1
	je	.label_600
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_599
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_605:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_599
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_605
.label_599:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_607
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_600
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_600
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_600
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
	jmp	.label_601
.label_600:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_601:
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
	#Procedure 0x4061f8
	.globl sub_4061f8
	.type sub_4061f8, @function
sub_4061f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406200
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_608
	test	rdx, rdx
	je	.label_608
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_608:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40622b
	.globl sub_40622b
	.type sub_40622b, @function
sub_40622b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406230
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
	jae	.label_613
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_616
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_615:
	cmp	qword ptr [rax], 0
	je	.label_609
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_617:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_617
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_609:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_611
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_618:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_618
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_611:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_615
.label_616:
	test	r8, r8
	je	.label_613
	cmp	qword ptr [rax], 0
	je	.label_613
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_610:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_610
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_613:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_614
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_612
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_620]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_621]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_622]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_623
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_619
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
	#Procedure 0x40639f
	.globl sub_40639f
	.type sub_40639f, @function
sub_40639f:

	nop	
.label_632:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_624
	.section	.text
	.align	16
	#Procedure 0x4063a9
	.globl sub_4063a9
	.type sub_4063a9, @function
sub_4063a9:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4063aa

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_632
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_632
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_630
	.section	.text
	.align	16
	#Procedure 0x4063c9
	.globl sub_4063c9
	.type sub_4063c9, @function
sub_4063c9:

	nop	
.label_633:
	add	r15, 0x10
.label_630:
	cmp	r15, rax
	jae	.label_632
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_633
	test	r15, r15
	je	.label_633
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_631
.label_634:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_631:
	test	rbx, rbx
	jne	.label_634
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_633
.label_626:
	add	r15, 0x10
.label_624:
	cmp	r15, rax
	jae	.label_625
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_626
	nop	word ptr cs:[rax + rax]
.label_627:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_627
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_626
.label_625:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_629
.label_628:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_628
.label_629:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x406466
	.globl sub_406466
	.type sub_406466, @function
sub_406466:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406470
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_635]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x406484
	.globl sub_406484
	.type sub_406484, @function
sub_406484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406490
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
	#Procedure 0x406551
	.globl sub_406551
	.type sub_406551, @function
sub_406551:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406560
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
	jae	.label_639
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_640:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_638
	test	rdx, rdx
	jne	.label_640
	jmp	.label_636
.label_638:
	test	rdx, rdx
	je	.label_636
	mov	rax, qword ptr [rdx]
	jmp	.label_637
.label_636:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_641:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_637
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_641
.label_637:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_639:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4065e3
	.globl sub_4065e3
	.type sub_4065e3, @function
sub_4065e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0

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
	je	.label_642
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
.label_642:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406658
	.globl sub_406658
	.type sub_406658, @function
sub_406658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406660
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_643
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_644
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_646
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_138
	mov	ecx, OFFSET FLAT:label_137
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_645
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4066d4
	.globl sub_4066d4
	.type sub_4066d4, @function
sub_4066d4:

	nop	word ptr cs:[rax + rax]
.label_648:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_647
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_647:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406714
	.globl sub_406714
	.type sub_406714, @function
sub_406714:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406716

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
	jne	.label_649
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_649
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_648
.label_649:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_650:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406755
	.globl sub_406755
	.type sub_406755, @function
sub_406755:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40675d
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
	je	.label_650
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
.label_653:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4067c5
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_651
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_653
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_657
.label_652:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_656
	test	rax, rax
	je	.label_653
.label_656:
	pop	rbx
	ret	
.label_654:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40680b
	.globl sub_40680b
	.type sub_40680b, @function
sub_40680b:

	nop	word ptr [rax + rax]
.label_651:
	test	rcx, rcx
	jne	.label_655
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_655:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_654
.label_657:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_652
	test	rbx, rbx
	jne	.label_652
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406860

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_668
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_670
.label_668:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_670:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_659
	cmp	r10d, 0x29
	jae	.label_667
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_669
.label_667:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_669:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_659
	cmp	r10d, 0x29
	jae	.label_665
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_666
.label_665:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_666:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_659
	cmp	r10d, 0x29
	jae	.label_663
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_664
.label_663:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_664:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_659
	cmp	r10d, 0x29
	jae	.label_661
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_662
.label_661:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_662:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_659
	cmp	r10d, 0x29
	jae	.label_658
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_660
.label_658:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_660:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_659
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_659
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_659
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_659
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_659:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a42
	.globl sub_406a42
	.type sub_406a42, @function
sub_406a42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a50
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x406a5a
	.globl sub_406a5a
	.type sub_406a5a, @function
sub_406a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ac5
	.globl sub_406ac5
	.type sub_406ac5, @function
sub_406ac5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ad2
	.globl sub_406ad2
	.type sub_406ad2, @function
sub_406ad2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af6
	.globl sub_406af6
	.type sub_406af6, @function
sub_406af6:

	nop	word ptr cs:[rax + rax]
