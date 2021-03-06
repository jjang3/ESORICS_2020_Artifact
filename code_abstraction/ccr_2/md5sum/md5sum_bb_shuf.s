	.section	.text
	.align	16
	#Procedure 0x4015f9
	.globl sub_4015f9
	.type sub_4015f9, @function
sub_4015f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4015fa
	.globl sub_4015fa
	.type sub_4015fa, @function
sub_4015fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401632
	.globl sub_401632
	.type sub_401632, @function
sub_401632:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167a
	.globl sub_40167a
	.type sub_40167a, @function
sub_40167a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40169c
	.globl sub_40169c
	.type sub_40169c, @function
sub_40169c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016ad
	.globl sub_4016ad
	.type sub_4016ad, @function
sub_4016ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016c6
	.globl sub_4016c6
	.type sub_4016c6, @function
sub_4016c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4016e1
	.globl sub_4016e1
	.type sub_4016e1, @function
sub_4016e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016f0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rdx
	movaps	xmm0, xmmword ptr [rip + label_9]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	mov	edx, dword ptr [rsp + 0x14]
	jae	.label_10
	inc	edx
	mov	dword ptr [rsp + 0x14], edx
.label_10:
	lea	esi, [rcx*8]
	lea	r15, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], esi
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017b4
	.globl sub_4017b4
	.type sub_4017b4, @function
sub_4017b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c0

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
	je	.label_11
	cmp	r15, -2
	jb	.label_11
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_11
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_11:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401816
	.globl sub_401816
	.type sub_401816, @function
sub_401816:

	nop	word ptr cs:[rax + rax]
.label_12:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401826
	.globl sub_401826
	.type sub_401826, @function
sub_401826:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40182b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_12
	test	rdx, rdx
	je	.label_12
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_15:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_13
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_13:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401884
	.globl sub_401884
	.type sub_401884, @function
sub_401884:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401886

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
	jne	.label_14
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_14
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_15
.label_14:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4018c0

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
.label_105:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_103
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_108]
.label_564:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_115
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
.label_565:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_102
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_102
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_21:
	cmp	r14, r11
	jae	.label_16
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_16:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_21
.label_102:
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
	jmp	.label_35
.label_557:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_35
.label_560:
	mov	al, 1
.label_558:
	mov	r12b, 1
.label_561:
	test	r12b, 1
	mov	cl, 1
	je	.label_42
	mov	ecx, eax
.label_42:
	mov	al, cl
.label_559:
	test	r12b, 1
	jne	.label_44
	test	r11, r11
	je	.label_45
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_45:
	mov	r14d, 1
	jmp	.label_47
.label_44:
	xor	r14d, r14d
.label_47:
	mov	ecx, OFFSET FLAT:label_50
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_35
.label_562:
	test	r12b, 1
	jne	.label_58
	test	r11, r11
	je	.label_60
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_60:
	mov	r14d, 1
	jmp	.label_64
.label_563:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_66
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_35
.label_58:
	xor	r14d, r14d
.label_64:
	mov	eax, OFFSET FLAT:label_66
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_35:
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
	jmp	.label_81
	.section	.text
	.align	16
	#Procedure 0x401bad
	.globl sub_401bad
	.type sub_401bad, @function
sub_401bad:

	nop	dword ptr [rax]
.label_22:
	inc	rsi
.label_81:
	cmp	rbp, -1
	je	.label_123
	cmp	rsi, rbp
	jne	.label_124
	jmp	.label_126
	.section	.text
	.align	16
	#Procedure 0x401bc3
	.globl sub_401bc3
	.type sub_401bc3, @function
sub_401bc3:

	nop	word ptr cs:[rax + rax]
.label_123:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_131
.label_124:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_135
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_136
	cmp	rbp, -1
	jne	.label_136
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
.label_136:
	cmp	rbx, rbp
	jbe	.label_30
.label_135:
	xor	r8d, r8d
.label_61:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_31
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_33]
.label_592:
	test	rsi, rsi
	jne	.label_24
	jmp	.label_39
	.section	.text
	.align	16
	#Procedure 0x401c65
	.globl sub_401c65
	.type sub_401c65, @function
sub_401c65:

	nop	word ptr cs:[rax + rax]
.label_30:
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
	jne	.label_51
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_61
	jmp	.label_63
.label_51:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_61
.label_596:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_73
	test	rsi, rsi
	jne	.label_74
	cmp	rbp, 1
	je	.label_39
	xor	r13d, r13d
	jmp	.label_18
.label_585:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_80
	cmp	byte ptr [rsp + 6], 0
	jne	.label_55
	cmp	r12d, 2
	jne	.label_86
	mov	eax, r9d
	and	al, 1
	jne	.label_86
	cmp	r14, r11
	jae	.label_90
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_90:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_94
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_94:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_93
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_93:
	add	r14, 3
	mov	r9b, 1
.label_86:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_57
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_57:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_110
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_110
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_110
	cmp	r14, r11
	jae	.label_29
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_29:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_106
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_106:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_18
.label_586:
	mov	bl, 0x62
	jmp	.label_95
.label_587:
	mov	cl, 0x74
	jmp	.label_28
.label_588:
	mov	bl, 0x76
	jmp	.label_95
.label_589:
	mov	bl, 0x66
	jmp	.label_95
.label_590:
	mov	cl, 0x72
	jmp	.label_28
.label_593:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_19
	cmp	byte ptr [rsp + 6], 0
	jne	.label_23
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
	jae	.label_27
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_27:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_36
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_36:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_43
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_43:
	add	r14, 3
	xor	r9d, r9d
.label_19:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_18
.label_594:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_48
	cmp	r12d, 2
	jne	.label_24
	cmp	byte ptr [rsp + 6], 0
	je	.label_24
	jmp	.label_23
.label_595:
	cmp	r12d, 2
	jne	.label_59
	cmp	byte ptr [rsp + 6], 0
	jne	.label_23
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_20
.label_31:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_69
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
.label_54:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_85
	test	r8b, r8b
	je	.label_85
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_18
.label_73:
	test	rsi, rsi
	jne	.label_71
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_71
.label_39:
	mov	dl, 1
.label_591:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_23
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_18:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_119
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_120
	jmp	.label_112
	.section	.text
	.align	16
	#Procedure 0x401fb4
	.globl sub_401fb4
	.type sub_401fb4, @function
sub_401fb4:

	nop	word ptr cs:[rax + rax]
.label_119:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_112
.label_120:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_129
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_20
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401ffd
	.globl sub_401ffd
	.type sub_401ffd, @function
sub_401ffd:

	nop	dword ptr [rax]
.label_112:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_17
	jmp	.label_20
.label_129:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_17
.label_80:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_22
	xor	r15d, r15d
	jmp	.label_24
.label_59:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_28
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_20
.label_28:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_23
.label_95:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_18
	nop	word ptr cs:[rax + rax]
.label_17:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_55
	cmp	r12d, 2
	jne	.label_46
	mov	eax, r9d
	and	al, 1
	jne	.label_46
	cmp	r14, r11
	jae	.label_88
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_88:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_52
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_52:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_134
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_134:
	add	r14, 3
	mov	r9b, 1
.label_46:
	cmp	r14, r11
	jae	.label_62
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_62:
	inc	r14
	jmp	.label_67
.label_69:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_70
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_70:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_99:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_92
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_97
	cmp	rbp, -2
	je	.label_101
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_82
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_41:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_128
	bt	rsi, rdx
	jb	.label_122
.label_128:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_41
.label_82:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_132
	xor	r13d, r13d
.label_132:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_99
	jmp	.label_54
.label_110:
	xor	r13d, r13d
	jmp	.label_18
.label_71:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_18
.label_48:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_24
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_24
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_24
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_109
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_107
	cmp	byte ptr [rsp + 6], 0
	jne	.label_40
	cmp	r14, r11
	jae	.label_125
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_125:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_77
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_77:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_49
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_49:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_133
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_133:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_18
.label_24:
	xor	eax, eax
.label_74:
	xor	r13d, r13d
	jmp	.label_18
.label_85:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_68
	.section	.text
	.align	16
	#Procedure 0x4022e2
	.globl sub_4022e2
	.type sub_4022e2, @function
sub_4022e2:

	nop	word ptr cs:[rax + rax]
.label_25:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_68:
	test	r8b, r8b
	je	.label_75
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_76
	cmp	r14, r11
	jae	.label_78
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_78:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x40232c
	.globl sub_40232c
	.type sub_40232c, @function
sub_40232c:

	nop	dword ptr [rax]
.label_75:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_63
	cmp	r12d, 2
	jne	.label_91
	mov	eax, r9d
	and	al, 1
	jne	.label_91
	cmp	r14, r11
	jae	.label_96
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_96:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_98
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_98:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_104
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_104:
	add	r14, 3
	mov	r9b, 1
.label_91:
	cmp	r14, r11
	jae	.label_38
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_38:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_116
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_116:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_121
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_121:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_76:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_20
	test	r9b, 1
	je	.label_111
	mov	ebx, eax
	and	bl, 1
	jne	.label_111
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_137
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_137:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_83
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_83:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_111:
	cmp	r14, r11
	jae	.label_25
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_25
	.section	.text
	.align	16
	#Procedure 0x402433
	.globl sub_402433
	.type sub_402433, @function
sub_402433:

	nop	word ptr cs:[rax + rax]
.label_20:
	test	r9b, 1
	je	.label_32
	and	al, 1
	jne	.label_32
	cmp	r14, r11
	jae	.label_34
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_34:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_117
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_117:
	add	r14, 2
	xor	r9d, r9d
.label_32:
	mov	ebx, r15d
.label_67:
	cmp	r14, r11
	jae	.label_72
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_72:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_22
.label_97:
	xor	r13d, r13d
.label_92:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_54
.label_101:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_89
	mov	rsi, qword ptr [rsp + 0x58]
.label_65:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_114
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_65
	xor	r13d, r13d
	jmp	.label_54
.label_89:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_54
.label_114:
	xor	r13d, r13d
	jmp	.label_54
.label_109:
	xor	r13d, r13d
	jmp	.label_18
.label_107:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_18
	.section	.text
	.align	16
	#Procedure 0x402508
	.globl sub_402508
	.type sub_402508, @function
sub_402508:

	nop	dword ptr [rax + rax]
.label_126:
	mov	rcx, rsi
.label_131:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_79
	or	al, dl
	je	.label_84
.label_79:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_87
	or	al, dl
	jne	.label_87
	test	r10b, 1
	jne	.label_100
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_87
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_105
.label_87:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_113
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_118
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_118
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_130:
	cmp	r14, r11
	jae	.label_127
	mov	byte ptr [rcx + r14], al
.label_127:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_130
	jmp	.label_118
.label_55:
	mov	qword ptr [rsp + 0x20], rbp
.label_63:
	mov	rdx, rdi
	jmp	.label_37
.label_23:
	mov	qword ptr [rsp + 0x20], rbp
.label_122:
	mov	rdx, rdi
	mov	eax, 2
.label_26:
	mov	qword ptr [rsp + 0x38], rax
.label_37:
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
.label_53:
	mov	r14, rax
.label_56:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_84:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_37
.label_100:
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
	jmp	.label_53
.label_113:
	mov	rcx, qword ptr [rsp + 8]
.label_118:
	cmp	r14, r11
	jae	.label_56
	mov	byte ptr [rcx + r14], 0
	jmp	.label_56
.label_40:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_26
.label_103:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4026c7
	.globl sub_4026c7
	.type sub_4026c7, @function
sub_4026c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0

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
	#Procedure 0x4026e7
	.globl sub_4026e7
	.type sub_4026e7, @function
sub_4026e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	rbp, rsi
	mov	r15d, edi
	mov	r14d, 3
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_304
	call	setlocale
	mov	edi, OFFSET FLAT:label_306
	mov	esi, OFFSET FLAT:label_307
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_306
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi, qword ptr [rip + stdout]
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	ecx, 0xffffffff
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_143
.label_320:
	mov	byte ptr [rip + quiet],  0
	mov	ecx, ebx
	nop	dword ptr [rax + rax]
.label_143:
	mov	ebx, ecx
	mov	edx, OFFSET FLAT:label_315
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_318
	add	eax, -0x62
	cmp	eax, 0x22
	ja	.label_229
	mov	ecx, 1
	jmp	qword ptr [(rax * 8) + label_260]
.label_614:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	ecx, ebx
	jmp	.label_143
.label_615:
	xor	ecx, ecx
	jmp	.label_143
.label_616:
	mov	byte ptr [rip + status_only],  0
	mov	byte ptr [rip + warn],  1
	jmp	.label_320
.label_617:
	mov	byte ptr [rip + delim],  1
	mov	ecx, ebx
	jmp	.label_143
.label_618:
	mov	byte ptr [rip + ignore_missing],  1
	mov	ecx, ebx
	jmp	.label_143
.label_619:
	mov	byte ptr [rip + status_only],  1
	mov	byte ptr [rip + warn],  0
	jmp	.label_320
.label_620:
	mov	byte ptr [rip + status_only],  0
	mov	byte ptr [rip + warn],  0
	mov	byte ptr [rip + quiet],  1
	mov	ecx, ebx
	jmp	.label_143
.label_621:
	mov	byte ptr [rip + strict],  1
	mov	ecx, ebx
	jmp	.label_143
.label_622:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	ecx, 1
	jmp	.label_143
.label_318:
	cmp	eax, -1
	jne	.label_152
	mov	byte ptr [rip + min_digest_line_length],  1
	mov	byte ptr [rip + digest_hex_bytes],  1
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	sete	al
	test	ebx, ebx
	jne	.label_156
	test	al, al
	je	.label_172
.label_156:
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	je	.label_164
	mov	cl, byte ptr [rip + delim]
	xor	cl, 1
	test	cl, 1
	je	.label_168
.label_164:
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	sete	cl
	or	cl, al
	je	.label_173
	test	ebx, ebx
	js	.label_176
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_177
.label_176:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_179
	test	byte ptr [rip + ignore_missing],  1
	jne	.label_181
.label_179:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_183
	test	byte ptr [rip + status_only],  1
	jne	.label_184
.label_183:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_186
	test	byte ptr [rip + warn],  1
	jne	.label_189
.label_186:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_228
	test	byte ptr [rip + quiet],  1
	jne	.label_196
.label_228:
	movzx	eax, byte ptr [rip + strict]
	mov	rcx, qword ptr [rsp + 0x18]
	movzx	ecx, cl
	xor	ecx, 1
	test	eax, ecx
	jne	.label_198
	movsxd	rax, r15d
	lea	rcx, [rbp + rax*8]
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r15d
	jne	.label_202
	mov	qword ptr [rcx], OFFSET FLAT:label_206
	add	rcx, 8
.label_202:
	lea	rdx, [rbp + rax*8]
	mov	bpl, 1
	cmp	rdx, rcx
	jae	.label_209
	test	ebx, ebx
	mov	eax, 0x2a
	mov	esi, 0x20
	cmovg	esi, eax
	mov	dword ptr [rsp + 0x94], esi
	mov	byte ptr [rsp + 7], 0x2a
	jg	.label_213
	mov	byte ptr [rsp + 7], 0x20
.label_213:
	neg	r14
	lea	rbx, [rsp + r14 + 0xd3]
	mov	sil, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x88], rbx
	jmp	.label_197
.label_182:
	call	__overflow
	jmp	.label_230
.label_303:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_233
.label_330:
	mov	esi, dword ptr [rsp + 0x94]
	call	__overflow
	jmp	.label_236
.label_286:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_238
.label_324:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x4029d5
	.globl sub_4029d5
	.type sub_4029d5, @function
sub_4029d5:

	nop	word ptr cs:[rax + rax]
.label_197:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	mov	rbx, qword ptr [rdx]
	mov	dword ptr [rsp + 8], esi
	je	.label_245
	mov	qword ptr [rsp + 0x40], rdx
	cmp	byte ptr [rbx], 0x2d
	jne	.label_247
	cmp	byte ptr [rbx + 1], 0
	je	.label_250
.label_247:
	mov	esi, OFFSET FLAT:label_254
	mov	rdi, rbx
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_259
	mov	qword ptr [rsp + 0x10], rbx
	mov	dword ptr [rsp + 0x5c], 0
	jmp	.label_180
	.section	.text
	.align	16
	#Procedure 0x402a2f
	.globl sub_402a2f
	.type sub_402a2f, @function
sub_402a2f:

	nop	
.label_245:
	mov	r14, rdx
	mov	rdi, rbx
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0xb0]
	call	digest_file
	test	al, al
	je	.label_270
	mov	esi, 0x5c
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_273
	mov	esi, 0xa
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	je	.label_279
.label_273:
	mov	r15b, byte ptr [rip + delim]
	xor	r15b, 1
.label_297:
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	je	.label_282
	mov	rax, qword ptr [rip + stdout]
	test	r15b, 1
	je	.label_283
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_286
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_238:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_175
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_290
	call	fputs_unlocked
	mov	r12, rbx
	mov	al, byte ptr [rbx]
	test	al, al
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_144
	lea	rbp, [r12 + 1]
	jmp	.label_296
.label_259:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdx, rbx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_280
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_205
.label_270:
	xor	eax, eax
	jmp	.label_309
.label_250:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, qword ptr [rip + stdin]
.label_180:
	mov	qword ptr [rsp + 0x80], 0
	mov	qword ptr [rsp + 0xa8], 0
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x28], rbp
	jmp	.label_185
.label_282:
	mov	r12, rbx
	test	r15b, 1
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_242
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_324
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_242
.label_283:
	mov	edi, OFFSET FLAT:label_175
	mov	rsi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_290
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	r12, rbx
	mov	rdi, rbx
	call	fputs_unlocked
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_144
.label_155:
	mov	esi, 0xa
	mov	rdi, r14
	call	strchr
	test	rax, rax
	setne	bpl
.label_160:
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rdi, r14
	lea	rsi, [rsp + 0xb0]
	lea	rdx, [rsp + 0xf]
	call	digest_file
	test	al, al
	je	.label_158
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_257
	mov	al, byte ptr [rip + ignore_missing]
	xor	al, 1
	test	al, 1
	je	.label_162
.label_257:
	mov	dword ptr [rsp + 0x78], ebp
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	mov	r15, rax
	shl	r15, 4
	cmp	rax, 1
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_165
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_187:
	movzx	edx, byte ptr [r13 + r12*2]
	lea	rcx, [rsp + 0xb0]
	movzx	ecx, byte ptr [rcx + r12]
	mov	rsi, rcx
	shr	rsi, 4
	movsx	esi, byte ptr [rsi + digest_check.bin2hex]
	cmp	dword ptr [rax + rdx*4], esi
	jne	.label_165
	movzx	edx, byte ptr [r13 + r12*2 + 1]
	and	ecx, 0xf
	movsx	ecx, byte ptr [rcx + digest_check.bin2hex]
	cmp	dword ptr [rax + rdx*4], ecx
	jne	.label_165
	inc	r12
	cmp	r12, r15
	jb	.label_187
.label_165:
	inc	rbx
	cmp	r12, r15
	mov	rax, qword ptr [rsp + 0x20]
	jne	.label_191
	mov	al, 1
.label_191:
	mov	rcx, qword ptr [rsp + 0x60]
	cmovne	rcx, rbx
	mov	dl, byte ptr [rip + status_only]
	test	dl, dl
	je	.label_195
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x60], rcx
	jmp	.label_162
.label_158:
	inc	rbx
	mov	qword ptr [rsp + 0x68], rbx
	mov	al, byte ptr [rip + status_only]
	test	al, al
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
	jne	.label_201
	mov	rax, qword ptr [rip + stdout]
	test	bpl, bpl
	je	.label_208
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_211
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_322:
	mov	al, byte ptr [r14]
	test	al, al
	je	.label_214
	inc	r14
	jmp	.label_217
.label_195:
	cmp	r12, r15
	jne	.label_219
	mov	al, byte ptr [rip + quiet]
	test	al, al
	je	.label_219
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_162
.label_208:
	mov	rdi, r14
	mov	rsi, rax
	call	fputs_unlocked
	jmp	.label_214
.label_219:
	mov	rax, qword ptr [rip + stdout]
	mov	ecx, dword ptr [rsp + 0x78]
	test	cl, cl
	je	.label_232
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_234
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_325:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	al, byte ptr [r14]
	test	al, al
	je	.label_237
	inc	r14
	jmp	.label_241
.label_232:
	mov	rdi, r14
	mov	rsi, rax
	call	fputs_unlocked
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_237
.label_268:
	movzx	esi, al
	call	__overflow
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x402df6
	.globl sub_402df6
	.type sub_402df6, @function
sub_402df6:

	nop	word ptr cs:[rax + rax]
.label_217:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_252
	cmp	ecx, 0xa
	jne	.label_255
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_141
	call	fputs_unlocked
	jmp	.label_248
.label_252:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_166
	call	fputs_unlocked
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x402e33
	.globl sub_402e33
	.type sub_402e33, @function
sub_402e33:

	nop	word ptr cs:[rax + rax]
.label_255:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_268
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_248:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_217
.label_214:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_188
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_201
.label_292:
	movzx	esi, al
	call	__overflow
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x402e9d
	.globl sub_402e9d
	.type sub_402e9d, @function
sub_402e9d:

	nop	dword ptr [rax]
.label_241:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_151
	cmp	ecx, 0xa
	jne	.label_287
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_141
	call	fputs_unlocked
	jmp	.label_169
.label_151:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_166
	call	fputs_unlocked
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x402ed3
	.globl sub_402ed3
	.type sub_402ed3, @function
sub_402ed3:

	nop	word ptr cs:[rax + rax]
.label_287:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_292
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_169:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_241
.label_237:
	mov	qword ptr [rsp + 0x10], rbp
	cmp	r12, r15
	je	.label_299
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_188
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	qword ptr [rsp + 0x60], rbx
.label_162:
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
.label_201:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
.label_154:
	mov	al, 1
	mov	qword ptr [rsp + 0x98], rax
	jmp	.label_148
.label_299:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	al, byte ptr [rip + quiet]
	test	al, al
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_154
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_188
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_154
.label_211:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_322
.label_234:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_325
	.section	.text
	.align	16
	#Procedure 0x402fd3
	.globl sub_402fd3
	.type sub_402fd3, @function
sub_402fd3:

	nop	word ptr cs:[rax + rax]
.label_185:
	inc	rbx
	je	.label_239
	mov	edx, 0xa
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0xa8]
	mov	rcx, rbp
	call	__getdelim
	mov	r12, rax
	test	r12, r12
	jle	.label_139
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, qword ptr [rsp + 0x80]
	cmp	byte ptr [r14], 0x23
	jne	.label_142
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x403034
	.globl sub_403034
	.type sub_403034, @function
sub_403034:

	nop	word ptr cs:[rax + rax]
.label_142:
	cmp	byte ptr [r14 + r12 - 1], 0xa
	jne	.label_153
	dec	r12
	mov	byte ptr [r14 + r12], 0
	mov	r14, qword ptr [rsp + 0x80]
.label_153:
	mov	rax, r13
	xor	ebp, ebp
	jmp	.label_327
	.section	.text
	.align	16
	#Procedure 0x40305f
	.globl sub_40305f
	.type sub_40305f, @function
sub_40305f:

	nop	
.label_163:
	inc	rbp
.label_327:
	movzx	r13d, byte ptr [r14 + rbp]
	cmp	r13b, 0x20
	je	.label_163
	cmp	r13b, 9
	je	.label_163
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x50], rax
	xor	r15d, r15d
	cmp	r13b, 0x5c
	sete	r15b
	lea	rbx, [r14 + r15]
	lea	rdi, [rbx + rbp]
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 3
	mov	qword ptr [rsp + 0x78], rdi
	call	strncmp
	test	eax, eax
	je	.label_178
	mov	rax, r12
	sub	rax, r15
	sub	rax, rbp
	mov	cl, byte ptr [rip + min_digest_line_length]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0x22
	cmovne	rcx, rdx
	xor	edx, edx
	cmp	byte ptr [rbx + rbp], 0x5c
	sete	dl
	or	rdx, rcx
	cmp	rax, rdx
	mov	r8, qword ptr [rsp + 0x78]
	jb	.label_138
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	mov	r9, rax
	shl	r9, 5
	lea	rcx, [r9 + r15]
	add	rcx, r14
	mov	dl, byte ptr [rbp + rcx]
	cmp	dl, 0x20
	je	.label_193
	cmp	dl, 9
	jne	.label_138
.label_193:
	mov	byte ptr [rcx + rbp], 0
	mov	bl, byte ptr [rbx + rbp]
	test	al, al
	je	.label_200
	mov	qword ptr [rsp + 0xa0], r9
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0xa0]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rax]
	lea	rcx, [r14 + r15 + 2]
	xor	edx, edx
	nop	dword ptr [rax]
.label_216:
	movzx	esi, bl
	test	byte ptr [rax + rsi*2 + 1], 0x10
	je	.label_138
	lea	rsi, [rcx + rdx]
	movzx	edi, byte ptr [rbp + rsi - 1]
	test	byte ptr [rax + rdi*2 + 1], 0x10
	je	.label_138
	movzx	ebx, byte ptr [rbp + rsi]
	add	rdx, 2
	cmp	edx, 0x20
	jb	.label_216
.label_200:
	test	bl, bl
	jne	.label_138
	add	r9, r15
	lea	rax, [rbp + r9 + 1]
	mov	ecx, 2
	sub	rcx, r12
	add	rcx, r9
	add	rcx, rbp
	je	.label_221
	lea	rcx, [r14 + r9]
	mov	cl, byte ptr [rbp + rcx + 1]
	cmp	cl, 0x20
	je	.label_231
	cmp	cl, 0x2a
	jne	.label_221
.label_231:
	cmp	dword ptr [rip + bsd_reversed],  1
	je	.label_235
	mov	dword ptr [rip + bsd_reversed],  0
	lea	rax, [rbp + r9 + 2]
	jmp	.label_235
.label_178:
	lea	rax, [r15 + rbp + 3]
	cmp	byte ptr [rbp + rbx + 3], 0x20
	lea	rdx, [r15 + rbp + 4]
	cmovne	rdx, rax
	cmp	byte ptr [r14 + rdx], 0x28
	jne	.label_138
	lea	rax, [rdx + 1]
	cmp	r12, rax
	je	.label_138
	lea	r9, [r14 + rdx + 1]
	mov	rsi, rdx
	neg	rsi
	lea	rdi, [r14 + r12]
	lea	rbp, [r14 + r12 + 1]
	lea	rbx, [r14 + r12 + 3]
	nop	
.label_192:
	mov	rax, r12
	mov	rcx, rdi
	mov	r8, rbp
	mov	r15, rbx
	lea	rdi, [rsi + rax]
	cmp	rdi, 2
	je	.label_258
	lea	r12, [rax - 1]
	lea	rdi, [rcx - 1]
	lea	rbp, [r8 - 1]
	lea	rbx, [r15 - 1]
	cmp	byte ptr [r14 + rax - 1], 0x29
	jne	.label_192
	add	r14, r12
	sub	r12, rdx
	dec	r12
	xor	esi, esi
	jmp	.label_266
.label_258:
	mov	sil, 1
	cmp	byte ptr [r9], 0x29
	mov	r14, r9
	mov	r12d, 0
	jne	.label_138
.label_266:
	sub	rax, rdx
	cmp	r13b, 0x5c
	jne	.label_274
	test	sil, sil
	mov	rdx, r9
	jne	.label_278
	xor	esi, esi
	mov	rdx, r9
	nop	dword ptr [rax + rax]
.label_291:
	movzx	ebx, byte ptr [r9 + rsi]
	movsx	edi, bl
	cmp	edi, 0x5c
	je	.label_281
	test	edi, edi
	je	.label_138
	mov	byte ptr [rdx], bl
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x403299
	.globl sub_403299
	.type sub_403299, @function
sub_403299:

	nop	dword ptr [rax]
.label_281:
	mov	rdi, rax
	sub	rdi, rsi
	add	rdi, -3
	je	.label_138
	movsx	edi, byte ptr [r9 + rsi + 1]
	inc	rsi
	cmp	edi, 0x5c
	je	.label_288
	cmp	edi, 0x6e
	jne	.label_138
	mov	byte ptr [rdx], 0xa
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x4032cc
	.globl sub_4032cc
	.type sub_4032cc, @function
sub_4032cc:

	nop	dword ptr [rax]
.label_288:
	mov	byte ptr [rdx], 0x5c
.label_289:
	inc	rdx
	inc	rsi
	cmp	rsi, r12
	jb	.label_291
.label_278:
	cmp	rdx, r14
	jae	.label_274
	mov	byte ptr [rdx], 0
.label_274:
	dec	rax
	mov	byte ptr [r14], 0
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x4032ef
	.globl sub_4032ef
	.type sub_4032ef, @function
sub_4032ef:

	nop	
.label_298:
	inc	rax
	inc	rcx
	inc	r8
	inc	r15
.label_293:
	movzx	edx, byte ptr [rcx]
	cmp	dl, 9
	je	.label_298
	cmp	dl, 0x20
	je	.label_298
	cmp	dl, 0x3d
	je	.label_300
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x403313
	.globl sub_403313
	.type sub_403313, @function
sub_403313:

	nop	word ptr cs:[rax + rax]
.label_308:
	inc	r8
	inc	r15
.label_300:
	movzx	ebx, byte ptr [r8]
	cmp	bl, 0x20
	je	.label_308
	cmp	bl, 9
	je	.label_308
	cmp	byte ptr [rip + digest_hex_bytes],  1
	jne	.label_310
	mov	r14, r8
	mov	rbp, r9
	call	__ctype_b_loc
	mov	r9, rbp
	mov	r8, r14
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_313:
	movzx	edx, bl
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_138
	movzx	edx, byte ptr [r15 - 1]
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_138
	add	ecx, 2
	movzx	ebx, byte ptr [r15]
	add	r15, 2
	cmp	ecx, 0x20
	jb	.label_313
.label_310:
	test	bl, bl
	mov	r14, r9
	jne	.label_138
	jmp	.label_317
.label_221:
	cmp	dword ptr [rip + bsd_reversed],  0
	je	.label_138
	mov	dword ptr [rip + bsd_reversed],  1
.label_235:
	add	r14, rax
	cmp	r13b, 0x5c
	jne	.label_317
	sub	r12, rax
	mov	rax, r14
	je	.label_323
	lea	rcx, [r12 - 1]
	xor	edx, edx
	mov	rax, r14
.label_328:
	movzx	ebx, byte ptr [r14 + rdx]
	movsx	esi, bl
	cmp	esi, 0x5c
	je	.label_326
	test	esi, esi
	je	.label_138
	mov	byte ptr [rax], bl
	jmp	.label_140
	.section	.text
	.align	16
	#Procedure 0x4033e5
	.globl sub_4033e5
	.type sub_4033e5, @function
sub_4033e5:

	nop	word ptr cs:[rax + rax]
.label_326:
	cmp	rdx, rcx
	je	.label_138
	movsx	esi, byte ptr [r14 + rdx + 1]
	inc	rdx
	cmp	esi, 0x5c
	je	.label_329
	cmp	esi, 0x6e
	jne	.label_138
	mov	byte ptr [rax], 0xa
	jmp	.label_140
	.section	.text
	.align	16
	#Procedure 0x40340d
	.globl sub_40340d
	.type sub_40340d, @function
sub_40340d:

	nop	dword ptr [rax]
.label_329:
	mov	byte ptr [rax], 0x5c
.label_140:
	inc	rax
	inc	rdx
	cmp	rdx, r12
	jb	.label_328
.label_323:
	add	r12, r14
	cmp	rax, r12
	jae	.label_146
	mov	byte ptr [rax], 0
.label_146:
	test	r14, r14
	je	.label_138
.label_317:
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	je	.label_150
	cmp	byte ptr [r14], 0x2d
	jne	.label_150
	cmp	byte ptr [r14 + 1], 0
	je	.label_138
.label_150:
	mov	al, byte ptr [rip + status_only]
	test	al, al
	mov	r13, r8
	je	.label_155
	xor	ebp, ebp
	jmp	.label_160
	.section	.text
	.align	16
	#Procedure 0x40345b
	.globl sub_40345b
	.type sub_40345b, @function
sub_40345b:

	nop	dword ptr [rax + rax]
.label_138:
	cmp	byte ptr [rip + warn],  1
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_269
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rdx, r14
	mov	r8, rbx
	call	error
.label_269:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r15, qword ptr [rsp + 0x48]
	inc	r15
	mov	r13, qword ptr [rsp + 0x50]
	inc	r13
	mov	rbp, qword ptr [rsp + 0x28]
.label_148:
	test	byte ptr [rbp], 0x30
	je	.label_185
.label_139:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	test	byte ptr [rbp], 0x20
	jne	.label_190
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	jne	.label_194
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_194
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_280
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x40352d
	.globl sub_40352d
	.type sub_40352d, @function
sub_40352d:

	nop	dword ptr [rax]
.label_190:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
.label_295:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_205
.label_194:
	mov	rax, qword ptr [rsp + 0x98]
	test	al, 1
	jne	.label_218
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
.label_205:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 8]
.label_251:
	and	bpl, sil
	and	bpl, 1
	jmp	.label_240
.label_218:
	cmp	byte ptr [rip + status_only],  1
	jne	.label_243
	mov	rax, qword ptr [rsp + 0x20]
	and	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_210:
	xor	ebp, ebp
	mov	rax, qword ptr [rsp + 0x60]
	or	qword ptr [rsp + 0x68], rax
	jne	.label_205
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 8]
	je	.label_251
	mov	bpl, byte ptr [rip + strict]
	test	r13, r13
	sete	al
	xor	bpl, 1
	or	bpl, al
	jmp	.label_251
.label_243:
	test	r15, r15
	je	.label_263
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, OFFSET FLAT:label_265
	mov	r8d, 5
	mov	rcx, r15
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
.label_263:
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_272
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, OFFSET FLAT:label_277
	mov	r8d, 5
	mov	rcx, r14
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_272:
	mov	r14, qword ptr [rsp + 0x60]
	test	r14, r14
	je	.label_314
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, OFFSET FLAT:label_285
	mov	r8d, 5
	mov	rcx, r14
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_314:
	mov	rax, qword ptr [rsp + 0x20]
	and	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jne	.label_210
	test	byte ptr [rip + ignore_missing],  1
	je	.label_210
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	jmp	.label_295
.label_279:
	xor	r15d, r15d
	jmp	.label_297
.label_311:
	movzx	esi, al
	call	__overflow
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x40370c
	.globl sub_40370c
	.type sub_40370c, @function
sub_40370c:

	nop	dword ptr [rax]
.label_296:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_302
	cmp	ecx, 0xa
	jne	.label_305
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_141
	call	fputs_unlocked
	jmp	.label_301
.label_302:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_166
	call	fputs_unlocked
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x403743
	.globl sub_403743
	.type sub_403743, @function
sub_403743:

	nop	word ptr cs:[rax + rax]
.label_305:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_311
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_301:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_296
.label_144:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_312
	call	fputs_unlocked
.label_242:
	cmp	byte ptr [rip + digest_hex_bytes],  1
	jne	.label_316
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_267:
	movzx	edx, byte ptr [rbx + rbp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_319
	xor	eax, eax
	call	__printf_chk
	inc	rbp
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	shl	rax, 4
	cmp	rbp, rax
	jb	.label_267
.label_316:
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	mov	rbp, r12
	jne	.label_147
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_303
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_233:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_330
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	cl, byte ptr [rsp + 7]
	mov	byte ptr [rax], cl
.label_236:
	test	r15b, 1
	je	.label_145
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_147
	inc	rbp
	jmp	.label_149
.label_145:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
	jmp	.label_147
.label_174:
	movzx	esi, al
	call	__overflow
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x40384c
	.globl sub_40384c
	.type sub_40384c, @function
sub_40384c:

	nop	dword ptr [rax]
.label_149:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_159
	cmp	ecx, 0xa
	jne	.label_161
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_141
	call	fputs_unlocked
	jmp	.label_157
.label_159:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_166
	call	fputs_unlocked
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x403883
	.globl sub_403883
	.type sub_403883, @function
sub_403883:

	nop	word ptr cs:[rax + rax]
.label_161:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_174
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_157:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_149
.label_147:
	mov	al, byte ptr [rip + delim]
	test	al, al
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_182
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_230:
	mov	eax, dword ptr [rsp + 8]
.label_309:
	mov	bpl, al
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, r14
.label_240:
	add	rdx, 8
	cmp	rdx, rcx
	mov	sil, bpl
	jb	.label_197
.label_209:
	mov	al, byte ptr [rip + have_read_stdin]
	test	al, al
	je	.label_199
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_204
.label_199:
	not	bpl
	and	bpl, 1
	movzx	eax, bpl
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_152:
	cmp	eax, 0xffffff7d
	je	.label_227
	cmp	eax, 0xffffff7e
	jne	.label_229
	xor	edi, edi
	call	usage
.label_227:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_222
	mov	edx, OFFSET FLAT:label_223
	mov	r8d, OFFSET FLAT:label_224
	mov	r9d, OFFSET FLAT:label_225
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_226
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_229:
	mov	edi, 1
	call	usage
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	jmp	.label_171
.label_168:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	jmp	.label_171
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	jmp	.label_171
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	jmp	.label_171
.label_181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	jmp	.label_171
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	jmp	.label_171
.label_189:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	jmp	.label_171
.label_196:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	jmp	.label_171
.label_198:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
.label_171:
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
.label_204:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_331
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	mov	ecx, OFFSET FLAT:label_175
	mov	r8d, 0x80
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_350
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_223
	mov	ecx, OFFSET FLAT:label_340
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_333
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_333
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_340
	mov	ecx, OFFSET FLAT:label_222
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_222
	mov	ecx, OFFSET FLAT:label_341
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_331:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
	#Procedure 0x403d13
	.globl sub_403d13
	.type sub_403d13, @function
sub_403d13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_280
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d50
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
	#Procedure 0x403d5f
	.globl sub_403d5f
	.type sub_403d5f, @function
sub_403d5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d60
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
	#Procedure 0x403d79
	.globl sub_403d79
	.type sub_403d79, @function
sub_403d79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_355
	cmp	byte ptr [rax], 0x43
	jne	.label_357
	cmp	byte ptr [rax + 1], 0
	je	.label_354
.label_357:
	mov	esi, OFFSET FLAT:label_356
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_355
.label_354:
	xor	ebx, ebx
.label_355:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403db1
	.globl sub_403db1
	.type sub_403db1, @function
sub_403db1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403dca
	.globl sub_403dca
	.type sub_403dca, @function
sub_403dca:

	nop	word ptr [rax + rax]
.label_358:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403dd5
	.globl sub_403dd5
	.type sub_403dd5, @function
sub_403dd5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ddd
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
	je	.label_358
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
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_359
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_359:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e5d
	.globl sub_403e5d
	.type sub_403e5d, @function
sub_403e5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e60
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
	je	.label_360
	mov	qword ptr [rax], rbx
.label_360:
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
	#Procedure 0x403f4c
	.globl sub_403f4c
	.type sub_403f4c, @function
sub_403f4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f50
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
	#Procedure 0x403fc5
	.globl sub_403fc5
	.type sub_403fc5, @function
sub_403fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_362
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_223
	mov	ecx, OFFSET FLAT:label_340
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404044
	.globl sub_404044
	.type sub_404044, @function
sub_404044:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050
	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_365
	inc	dword ptr [rbx + 0x14]
.label_365:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	mov	eax, dword ptr [rbx + 8]
	mov	dword ptr [r14 + 8], eax
	mov	eax, dword ptr [rbx + 0xc]
	mov	dword ptr [r14 + 0xc], eax
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040f2
	.globl sub_4040f2
	.type sub_4040f2, @function
sub_4040f2:

	nop	word ptr cs:[rax + rax]
.label_368:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_366
	test	rax, rax
	je	.label_367
.label_366:
	pop	rbx
	ret	
.label_367:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404119

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_368
	test	rbx, rbx
	jne	.label_368
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_373:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404135
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_372
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_371
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_370
	call	free
	xor	eax, eax
	jmp	.label_369
.label_371:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40416c
	.globl sub_40416c
	.type sub_40416c, @function
sub_40416c:

	nop	word ptr cs:[rax + rax]
.label_372:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_373
	mov	qword ptr [rsi], rbx
.label_370:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_369
	test	rax, rax
	je	.label_373
.label_369:
	pop	rbx
	ret	
.label_377:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_374
	mov	eax, OFFSET FLAT:label_375
	jmp	.label_376
	.section	.text
	.align	16
	#Procedure 0x4041af
	.globl sub_4041af
	.type sub_4041af, @function
sub_4041af:

	nop	word ptr cs:[rax + rax]
.label_381:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_378
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_378
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_378
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_378
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_378
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_378
	cmp	byte ptr [rax + 7], 0
	je	.label_377
.label_378:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_66
	mov	eax, OFFSET FLAT:label_50
.label_376:
	cmove	rax, rcx
.label_382:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404202

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
	jne	.label_382
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_381
	cmp	ecx, 0x55
	jne	.label_378
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_378
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_378
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_378
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_378
	cmp	byte ptr [rax + 5], 0
	jne	.label_378
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_379
	mov	eax, OFFSET FLAT:label_380
	jmp	.label_376
	.section	.text
	.align	16
	#Procedure 0x404270
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
	je	.label_384
	test	r14, r14
	je	.label_383
.label_384:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_383:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4042a6
	.globl sub_4042a6
	.type sub_4042a6, @function
sub_4042a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
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
	#Procedure 0x404371
	.globl sub_404371
	.type sub_404371, @function
sub_404371:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
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
	#Procedure 0x4043d5
	.globl sub_4043d5
	.type sub_4043d5, @function
sub_4043d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0
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
	je	.label_388
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
.label_388:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404441
	.globl sub_404441
	.type sub_404441, @function
sub_404441:

	nop	word ptr cs:[rax + rax]
.label_390:
	mov	ecx, 1
.label_389:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl sub_404460
	.type sub_404460, @function
sub_404460:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404465

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_390
	test	rsi, rsi
	mov	ecx, 1
	je	.label_389
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_389
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044a0

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rsi
	mov	r12, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r15, rax
	mov	eax, 1
	test	r15, r15
	je	.label_391
	movaps	xmm0, xmmword ptr [rip + label_9]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	r13, [rsp]
	jmp	.label_392
	.section	.text
	.align	16
	#Procedure 0x4044fa
	.globl sub_4044fa
	.type sub_4044fa, @function
sub_4044fa:

	nop	word ptr [rax + rax]
.label_394:
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
.label_392:
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_393:
	test	byte ptr [r12], 0x10
	jne	.label_398
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	je	.label_394
	test	rax, rax
	jne	.label_393
	test	byte ptr [r12], 0x20
	jne	.label_396
.label_398:
	test	rbx, rbx
	je	.label_397
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_397:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_395
	inc	dword ptr [rsp + 0x14]
.label_395:
	lea	edx, [rcx*8]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r12
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	xor	eax, eax
	jmp	.label_391
.label_396:
	mov	rdi, r15
	call	free
	mov	eax, 1
.label_391:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404611
	.globl sub_404611
	.type sub_404611, @function
sub_404611:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404620
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40462a
	.globl sub_40462a
	.type sub_40462a, @function
sub_40462a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630

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
	je	.label_399
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
.label_399:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4046c5
	.globl sub_4046c5
	.type sub_4046c5, @function
sub_4046c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

	.globl digest_file
	.type digest_file, @function
digest_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2d
	jne	.label_401
	cmp	byte ptr [r15 + 1], 0
	mov	byte ptr [rbx], 0
	jne	.label_404
	mov	byte ptr [rip + have_read_stdin],  1
	mov	bl, 1
	mov	rbp, qword ptr [rip + stdin]
	jmp	.label_405
.label_401:
	mov	byte ptr [rbx], 0
.label_404:
	mov	esi, OFFSET FLAT:label_254
	mov	rdi, r15
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_403
	xor	ebx, ebx
.label_405:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_stream
	test	eax, eax
	je	.label_406
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_280
	xor	eax, eax
	mov	esi, ebx
	call	error
	cmp	rbp, qword ptr [rip + stdin]
	je	.label_402
	mov	rdi, rbp
	call	rpl_fclose
	xor	r14d, r14d
	jmp	.label_402
.label_403:
	mov	bpl, byte ptr [rip + ignore_missing]
	call	__errno_location
	cmp	bpl, 1
	jne	.label_400
	cmp	dword ptr [rax], 2
	jne	.label_400
	mov	byte ptr [rbx], 1
	mov	r14b, 1
	jmp	.label_402
.label_406:
	mov	r14b, 1
	test	bl, bl
	jne	.label_402
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_402
	call	__errno_location
.label_400:
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_280
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_402:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047e6
	.globl sub_4047e6
	.type sub_4047e6, @function
sub_4047e6:

	nop	
	nop	dword ptr [rax + rax]
.label_407:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047f5
	.globl sub_4047f5
	.type sub_4047f5, @function
sub_4047f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047fb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_407
	test	rdx, rdx
	je	.label_407
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_412:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_410:
	xor	eax, eax
.label_408:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40487f
	.globl sub_40487f
	.type sub_40487f, @function
sub_40487f:

	nop	word ptr cs:[rax + rax]
.label_411:
	mov	rax, rbx
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x40488e

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
	je	.label_408
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_411
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_412
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_409
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_408
.label_409:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_410
	.section	.text
	.align	16
	#Procedure 0x4048f0
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
	#Procedure 0x4048ff
	.globl sub_4048ff
	.type sub_4048ff, @function
sub_4048ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404900
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_413
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_414
	test	rbx, rbx
	jne	.label_414
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_413:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404934
	.globl sub_404934
	.type sub_404934, @function
sub_404934:

	nop	dword ptr [rax + rax]
.label_414:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_415
	test	rax, rax
	je	.label_413
.label_415:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404950
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40495e
	.globl sub_40495e
	.type sub_40495e, @function
sub_40495e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404960

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
	js	.label_416
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_419
	cmp	r12d, 0x7fffffff
	je	.label_421
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
	jne	.label_417
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_417:
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
.label_419:
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
	jbe	.label_422
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_418
.label_422:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_420
	mov	rdi, r14
	call	free
.label_420:
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
.label_418:
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
.label_416:
	call	abort
.label_421:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404b1d
	.globl sub_404b1d
	.type sub_404b1d, @function
sub_404b1d:

	nop	dword ptr [rax]
.label_423:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b25
	.globl sub_404b25
	.type sub_404b25, @function
sub_404b25:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b29
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_423
	test	rsi, rsi
	je	.label_423
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
	#Procedure 0x404b90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
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
	#Procedure 0x404be4
	.globl sub_404be4
	.type sub_404be4, @function
sub_404be4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
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
	#Procedure 0x404c5e
	.globl sub_404c5e
	.type sub_404c5e, @function
sub_404c5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404c60
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
	je	.label_424
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
.label_424:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404cc8
	.globl sub_404cc8
	.type sub_404cc8, @function
sub_404cc8:

	nop	dword ptr [rax + rax]
.label_425:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404cd5
	.globl sub_404cd5
	.type sub_404cd5, @function
sub_404cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce3
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
	je	.label_426
	test	r15, r15
	je	.label_425
.label_426:
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
	#Procedure 0x404d20
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	mov	dword ptr [rsi + 8], eax
	mov	eax, dword ptr [rdi + 0xc]
	mov	dword ptr [rsi + 0xc], eax
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d3a
	.globl sub_404d3a
	.type sub_404d3a, @function
sub_404d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d48
	.globl sub_404d48
	.type sub_404d48, @function
sub_404d48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50
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
	#Procedure 0x404d86
	.globl sub_404d86
	.type sub_404d86, @function
sub_404d86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d90
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x404d95
	.globl sub_404d95
	.type sub_404d95, @function
sub_404d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_437
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_439
.label_437:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_439:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_428
	cmp	r10d, 0x29
	jae	.label_436
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_438
.label_436:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_438:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_428
	cmp	r10d, 0x29
	jae	.label_434
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_435
.label_434:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_435:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_428
	cmp	r10d, 0x29
	jae	.label_432
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_433
.label_432:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_433:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_428
	cmp	r10d, 0x29
	jae	.label_430
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_431
.label_430:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_431:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_428
	cmp	r10d, 0x29
	jae	.label_427
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_429
.label_427:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_429:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_428
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_428
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_428
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_428
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_428:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f82
	.globl sub_404f82
	.type sub_404f82, @function
sub_404f82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90

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
	je	.label_450
	mov	edx, OFFSET FLAT:label_455
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_442
.label_450:
	mov	edx, OFFSET FLAT:label_444
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
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
	mov	esi, OFFSET FLAT:label_445
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_451
	jmp	qword ptr [(r12 * 8) + label_452]
.label_653:
	add	rsp, 8
	jmp	.label_443
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
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
	jmp	.label_443
.label_654:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
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
.label_655:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
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
.label_656:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
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
.label_657:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
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
	jmp	.label_443
.label_658:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
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
	jmp	.label_443
.label_659:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
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
	jmp	.label_443
.label_660:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
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
	jmp	.label_443
.label_662:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
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
	jmp	.label_443
.label_661:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
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
.label_443:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052e8
	.globl sub_4052e8
	.type sub_4052e8, @function
sub_4052e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052f8
	.globl sub_4052f8
	.type sub_4052f8, @function
sub_4052f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_459
	test	rsi, rsi
	je	.label_459
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_459:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405370
	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:

	movaps	xmm0, xmmword ptr [rip + label_9]
	movups	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405390
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
	#Procedure 0x4053a3
	.globl sub_4053a3
	.type sub_4053a3, @function
sub_4053a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
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
	#Procedure 0x40541f
	.globl sub_40541f
	.type sub_40541f, @function
sub_40541f:

	nop	
.label_460:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405425
	.globl sub_405425
	.type sub_405425, @function
sub_405425:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405429
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
	je	.label_460
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
	#Procedure 0x405490
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
	#Procedure 0x4054a8
	.globl sub_4054a8
	.type sub_4054a8, @function
sub_4054a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_461
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_462
	test	rax, rax
	je	.label_461
.label_462:
	pop	rbx
	ret	
.label_461:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4054e5
	.globl sub_4054e5
	.type sub_4054e5, @function
sub_4054e5:

	nop	word ptr cs:[rax + rax]
.label_464:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_463
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405510
	.globl sub_405510
	.type sub_405510, @function
sub_405510:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40551f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_464
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_466
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_466
	mov	esi, OFFSET FLAT:label_467
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_465
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_465:
	mov	rbx, r14
.label_466:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_469
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_473
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_470
.label_473:
	call	xalloc_die
.label_474:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4055d7
	.globl sub_4055d7
	.type sub_4055d7, @function
sub_4055d7:

	nop	word ptr [rax + rax]
.label_471:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_472
	test	rax, rax
	je	.label_473
.label_472:
	pop	rbx
	ret	
.label_469:
	test	rcx, rcx
	jne	.label_475
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_475:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_474
.label_470:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_471
	test	rbx, rbx
	jne	.label_471
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405640
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
	#Procedure 0x405673
	.globl sub_405673
	.type sub_405673, @function
sub_405673:

	nop	word ptr cs:[rax + rax]
.label_476:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40568b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_480
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_477
	cmp	dword ptr [rbp], 0x20
	jne	.label_477
.label_480:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_476
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_478:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_479
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_477:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_478
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_280
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405740

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_482
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_482:
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
	#Procedure 0x4057c3
	.globl sub_4057c3
	.type sub_4057c3, @function
sub_4057c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r8, rsi
	and	r8, 0xfffffffffffffffc
	add	r8, rdi
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	rax, rsi
	shr	rax, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	eax, 0
	mov	qword ptr [rsp - 0x28], rdx
	add	dword ptr [rdx + 0x14], eax
	cmp	rdi, r8
	jae	.label_484
	mov	qword ptr [rsp - 0x20], r8
	nop	word ptr [rax + rax]
.label_483:
	mov	qword ptr [rsp - 0x78], rbx
	mov	qword ptr [rsp - 8], rbp
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x58], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	mov	qword ptr [rsp - 0x10], r10
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x78]
	add	edx, eax
	mov	rax, qword ptr [rsp - 0x78]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x30], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rcx, qword ptr [rsp - 0x78]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	mov	qword ptr [rsp - 0x18], r12
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x64], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x6c], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	add	ebx, esi
	mov	dword ptr [rsp - 0x38], esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x60], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x68], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x7c], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	add	ebx, edx
	mov	r13d, edx
	mov	dword ptr [rsp - 0x48], r13d
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	add	r9d, edx
	mov	dword ptr [rsp - 0x5c], edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x40], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	add	r11d, ebp
	mov	r15d, ebp
	mov	dword ptr [rsp - 0x3c], r15d
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 0x58]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x6c]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x64]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp - 0x7c]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	mov	dword ptr [rsp - 0x4c], r13d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x68]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	mov	dword ptr [rsp - 0x44], ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x30]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x60]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x40]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x5c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x58]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x48]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x10]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x18]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x38]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp - 0x7c]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x3c]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x30]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x60]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x4c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x6c]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp - 0x78]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 0x58]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x68]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x44]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x20]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x64]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0x5c]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x7c]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 8]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_483
	jmp	.label_485
.label_484:
	mov	edx, ebp
	mov	eax, r9d
.label_485:
	mov	rcx, qword ptr [rsp - 0x28]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
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
	#Procedure 0x405fdc
	.globl sub_405fdc
	.type sub_405fdc, @function
sub_405fdc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x405fee
	.globl sub_405fee
	.type sub_405fee, @function
sub_405fee:

	nop	
.label_487:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_486
	call	__errno_location
	mov	dword ptr [rax], 0
.label_486:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40600b

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
	jne	.label_487
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_486
	test	cl, cl
	jne	.label_486
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_486
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_502
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_502:
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
	ja	.label_492
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_503
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_493
	test	esi, esi
	jne	.label_492
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_506
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_508
.label_492:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_488
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_493
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_495
.label_503:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_498
.label_493:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_499
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_500
.label_499:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_500:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_501:
	call	fcntl
.label_498:
	mov	ebp, eax
.label_489:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_495:
	cmp	eax, 6
	jne	.label_488
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_491
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_507
.label_488:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_494
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_497
.label_506:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_508:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_501
.label_491:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_507:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_505
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_490
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_490
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_489
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_496
.label_490:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_489
.label_494:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_497:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_498
.label_505:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_496:
	test	al, al
	je	.label_489
	test	ebp, ebp
	js	.label_489
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_504
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_489
.label_504:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_489
	.section	.text
	.align	16
	#Procedure 0x4062e1
	.globl sub_4062e1
	.type sub_4062e1, @function
sub_4062e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_385]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_386]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_387]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_509
	test	rdx, rdx
	je	.label_509
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_509:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40635e
	.globl sub_40635e
	.type sub_40635e, @function
sub_40635e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_510
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_511
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_510
.label_511:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_510
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_512
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_512:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_510:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4063d4
	.globl sub_4063d4
	.type sub_4063d4, @function
sub_4063d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	je	.label_513
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	mov	dword ptr [r14 + 0x18], ebx
	cmp	ebx, 0x41
	jb	.label_517
	lea	rbp, [r14 + 0x1c]
	mov	esi, ebx
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	memcpy
.label_517:
	add	r15, r13
	sub	r12, r13
.label_513:
	cmp	r12, 0x40
	jb	.label_514
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_514:
	test	r12, r12
	je	.label_515
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_516
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_516:
	mov	dword ptr [r14 + 0x18], ebx
.label_515:
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
	#Procedure 0x4064de
	.globl sub_4064de
	.type sub_4064de, @function
sub_4064de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4064e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_518
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_518
	test	byte ptr [rbx + 1], 1
	je	.label_518
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_518:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x406513
	.globl sub_406513
	.type sub_406513, @function
sub_406513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_519:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_519
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x406541
	.globl sub_406541
	.type sub_406541, @function
sub_406541:

	nop	word ptr cs:[rax + rax]
.label_520:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406555
	.globl sub_406555
	.type sub_406555, @function
sub_406555:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40655b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_521
	test	rax, rax
	je	.label_520
.label_521:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406570

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_304
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_522
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406595
	.globl sub_406595
	.type sub_406595, @function
sub_406595:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065a0
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
	#Procedure 0x4065b9
	.globl sub_4065b9
	.type sub_4065b9, @function
sub_4065b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_523
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_525:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_525
.label_523:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_527
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_526], OFFSET FLAT:slot0
.label_527:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_524
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_524:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406651
	.globl sub_406651
	.type sub_406651, @function
sub_406651:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406660

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_528
	test	rax, rax
	je	.label_529
.label_528:
	pop	rbx
	ret	
.label_529:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40667a
	.globl sub_40667a
	.type sub_40667a, @function
sub_40667a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406680
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
	#Procedure 0x406698
	.globl sub_406698
	.type sub_406698, @function
sub_406698:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_530
	call	rpl_calloc
	test	rax, rax
	je	.label_530
	pop	rcx
	ret	
.label_530:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4066c6
	.globl sub_4066c6
	.type sub_4066c6, @function
sub_4066c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066d0

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
	je	.label_531
	test	r15, r15
	je	.label_532
.label_531:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_532:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40670c
	.globl sub_40670c
	.type sub_40670c, @function
sub_40670c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406775
	.globl sub_406775
	.type sub_406775, @function
sub_406775:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406782
	.globl sub_406782
	.type sub_406782, @function
sub_406782:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067a6
	.globl sub_4067a6
	.type sub_4067a6, @function
sub_4067a6:

	nop	word ptr cs:[rax + rax]
