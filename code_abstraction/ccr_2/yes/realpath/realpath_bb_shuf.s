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
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_9:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_9
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4015d1
	.globl sub_4015d1
	.type sub_4015d1, @function
sub_4015d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_10
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_10
	test	byte ptr [rbx + 1], 1
	je	.label_10
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_10:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401613
	.globl sub_401613
	.type sub_401613, @function
sub_401613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401620

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_11
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
.label_11:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401655
	.globl sub_401655
	.type sub_401655, @function
sub_401655:

	nop	word ptr cs:[rax + rax]
.label_14:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_13
.label_12:
	pop	rbx
	ret	
.label_13:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401679
	.globl sub_401679
	.type sub_401679, @function
sub_401679:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401681
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_13
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_14
	test	rbx, rbx
	jne	.label_14
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016b0
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
	#Procedure 0x4016bf
	.globl sub_4016bf
	.type sub_4016bf, @function
sub_4016bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016c0
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
	#Procedure 0x4016d8
	.globl sub_4016d8
	.type sub_4016d8, @function
sub_4016d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0

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
	je	.label_27
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_24
.label_27:
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_30
	jmp	qword ptr [(r12 * 8) + label_31]
.label_742:
	add	rsp, 8
	jmp	.label_17
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	jmp	.label_17
.label_743:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
.label_744:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
.label_745:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
.label_746:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
	jmp	.label_17
.label_747:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	jmp	.label_17
.label_748:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
	jmp	.label_17
.label_749:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	jmp	.label_17
.label_751:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	jmp	.label_17
.label_750:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
.label_17:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a38
	.globl sub_401a38
	.type sub_401a38, @function
sub_401a38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_35
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_34
.label_35:
	mov	rax, rbx
	pop	rbx
	ret	
.label_34:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a66
	.globl sub_401a66
	.type sub_401a66, @function
sub_401a66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_36
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_37:
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
	jne	.label_37
.label_36:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aa3
	.globl sub_401aa3
	.type sub_401aa3, @function
sub_401aa3:

	nop	word ptr cs:[rax + rax]
.label_38:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ab5
	.globl sub_401ab5
	.type sub_401ab5, @function
sub_401ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ac0

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
	je	.label_38
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
	#Procedure 0x401b50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
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
	#Procedure 0x401ba4
	.globl sub_401ba4
	.type sub_401ba4, @function
sub_401ba4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb0

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_53
	nop	word ptr cs:[rax + rax]
.label_51:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_49
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_52
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_47:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_44
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_46
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_55
	.section	.text
	.align	16
	#Procedure 0x401c39
	.globl sub_401c39
	.type sub_401c39, @function
sub_401c39:

	nop	dword ptr [rax]
.label_46:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_55:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_47
	mov	r13, qword ptr [r14]
.label_52:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_49
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_42
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_45
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_48
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_50
.label_45:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_54
.label_48:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_43
.label_50:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_54:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_49:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_51
	mov	al, 1
.label_53:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_43:
	xor	eax, eax
	jmp	.label_53
.label_44:
	call	abort
.label_42:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d17
	.globl sub_401d17
	.type sub_401d17, @function
sub_401d17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12d, edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_72
	call	setlocale
	mov	edi, OFFSET FLAT:label_78
	mov	esi, OFFSET FLAT:label_79
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_78
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r13d, 1
	xor	ebx, ebx
	xor	r15d, r15d
	jmp	.label_56
.label_681:
	mov	r15, qword ptr [rip + optarg]
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	edx, OFFSET FLAT:label_85
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_98
	add	eax, -0x4c
	cmp	eax, 0x35
	ja	.label_89
	jmp	qword ptr [(rax * 8) + label_101]
.label_673:
	or	r13d, 4
	mov	byte ptr [rip + logical],  1
	jmp	.label_56
.label_674:
	and	r13d, 0xfffffffb
	mov	byte ptr [rip + logical],  0
	jmp	.label_56
.label_675:
	and	r13d, 0xfffffffc
	jmp	.label_56
.label_676:
	and	r13d, 0xfffffffc
	or	r13d, 2
	jmp	.label_56
.label_677:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_56
.label_678:
	or	r13d, 4
	mov	byte ptr [rip + logical],  0
	jmp	.label_56
.label_679:
	mov	byte ptr [rip + use_nuls],  1
	jmp	.label_56
.label_680:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_56
.label_98:
	cmp	eax, -1
	jne	.label_60
	cmp	dword ptr [rip + optind],  r12d
	jge	.label_61
	test	r15, r15
	mov	rbp, r15
	cmove	rbp, rbx
	test	rbx, rbx
	cmovne	rbp, rbx
	mov	r14d, r13d
	and	r14d, 3
	test	rbp, rbp
	je	.label_68
	mov	rdi, rbp
	mov	esi, r13d
	call	canonicalize_filename_mode
	mov	rbx, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_76
	test	rbx, rbx
	je	.label_76
	mov	esi, r13d
	and	esi, 0xfffffffb
	mov	rdi, rbx
	call	canonicalize_filename_mode
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbx
	call	free
	mov	rbx, qword ptr [rsp + 8]
.label_76:
	mov	qword ptr [rip + can_relative_to],  rbx
	test	rbx, rbx
	je	.label_65
	test	r14d, r14d
	jne	.label_68
	mov	rdi, rbx
	call	isdir
	test	al, al
	je	.label_96
.label_68:
	cmp	r15, rbp
	je	.label_99
	test	r15, r15
	je	.label_84
	mov	rdi, r15
	mov	esi, r13d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_102
	test	rbp, rbp
	je	.label_102
	mov	esi, r13d
	and	esi, 0xfffffffb
	mov	rdi, rbp
	call	canonicalize_filename_mode
	mov	rbx, rax
	mov	rdi, rbp
	call	free
	mov	rbp, rbx
.label_102:
	test	rbp, rbp
	je	.label_106
	test	r14d, r14d
	jne	.label_108
	mov	rdi, rbp
	call	isdir
	test	al, al
	je	.label_74
.label_108:
	mov	rax, qword ptr [rip + can_relative_to]
	inc	rax
	mov	cl, byte ptr [rbp + 1]
	test	cl, cl
	je	.label_59
	cmp	cl, 0x2f
	jne	.label_64
	mov	cl, 0x2f
	cmp	byte ptr [rbp + 2], 0
	je	.label_67
.label_64:
	lea	rdx, [rbp + 2]
	nop	word ptr cs:[rax + rax]
.label_77:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_73
	cmp	cl, bl
	jne	.label_73
	inc	rax
	movzx	ecx, byte ptr [rdx]
	inc	rdx
	test	cl, cl
	jne	.label_77
	jmp	.label_83
.label_99:
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	jmp	.label_84
.label_59:
	cmp	byte ptr [rax], 0x2f
	jne	.label_86
	jmp	.label_87
.label_73:
	test	cl, cl
	jne	.label_87
.label_83:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_86
	cmp	al, 0x2f
	je	.label_86
	jmp	.label_87
.label_67:
	cmp	byte ptr [rax], 0x2f
	jne	.label_87
.label_86:
	mov	qword ptr [rip + can_relative_base],  rbp
	jmp	.label_84
.label_87:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	mov	qword ptr [rip + can_relative_to],  0
.label_84:
	mov	eax, dword ptr [rip + optind]
	mov	r14b, 1
	cmp	eax, r12d
	jge	.label_100
	mov	ecx, r13d
	and	ecx, 0xfffffffb
	mov	dword ptr [rsp + 8], ecx
	mov	r14b, 1
	jmp	.label_80
.label_58:
	call	__overflow
	jmp	.label_104
	.section	.text
	.align	16
	#Procedure 0x401fdb
	.globl sub_401fdb
	.type sub_401fdb, @function
sub_401fdb:

	nop	dword ptr [rax + rax]
.label_80:
	cdqe	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rcx + rax*8]
	mov	rdi, rbx
	mov	esi, r13d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_57
	test	rbp, rbp
	je	.label_57
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 8]
	call	canonicalize_filename_mode
	mov	r15, rax
	mov	rdi, rbp
	call	free
	mov	rbp, r15
.label_57:
	test	rbp, rbp
	je	.label_62
	mov	rsi, qword ptr [rip + can_relative_to]
	test	rsi, rsi
	je	.label_66
	mov	rcx, qword ptr [rip + can_relative_base]
	test	rcx, rcx
	je	.label_69
	lea	rax, [rbp + 1]
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_97
	cmp	dl, 0x2f
	jne	.label_81
	mov	dl, 0x2f
	cmp	byte ptr [rcx + 2], 0
	je	.label_82
.label_81:
	add	rcx, 2
	nop	word ptr cs:[rax + rax]
.label_105:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_71
	cmp	dl, bl
	jne	.label_71
	inc	rax
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_105
	jmp	.label_90
	.section	.text
	.align	16
	#Procedure 0x40208a
	.globl sub_40208a
	.type sub_40208a, @function
sub_40208a:

	nop	word ptr [rax + rax]
.label_62:
	mov	al, byte ptr [rip + verbose]
	test	al, al
	je	.label_91
	xor	ebp, ebp
	jmp	.label_95
.label_91:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, r15d
	call	error
	jmp	.label_95
.label_97:
	cmp	byte ptr [rax], 0x2f
	jne	.label_69
	jmp	.label_66
.label_71:
	test	dl, dl
	jne	.label_66
.label_90:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_69
	cmp	al, 0x2f
	je	.label_69
	jmp	.label_66
.label_82:
	cmp	byte ptr [rax], 0x2f
	jne	.label_66
	nop	dword ptr [rax]
.label_69:
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbp
	call	relpath
	test	al, al
	jne	.label_107
.label_66:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
.label_107:
	mov	al, byte ptr [rip + use_nuls]
	test	al, al
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_58
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_104:
	mov	rdi, rbp
	call	free
	mov	bpl, 1
.label_95:
	and	r14b, bpl
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r12d
	jl	.label_80
.label_100:
	movzx	eax, r14b
	xor	eax, 1
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_60:
	cmp	eax, 0xffffff7d
	je	.label_88
	cmp	eax, 0xffffff7e
	jne	.label_89
	xor	edi, edi
	call	usage
.label_88:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_92
	mov	edx, OFFSET FLAT:label_93
	mov	r8d, OFFSET FLAT:label_94
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_89:
	mov	edi, 1
	call	usage
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
.label_65:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_75
.label_106:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
.label_75:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_96:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_70
.label_74:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
.label_70:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x14
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
.label_109:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402275
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_109
	test	rsi, rsi
	je	.label_109
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_110:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4022e5
	.globl sub_4022e5
	.type sub_4022e5, @function
sub_4022e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_110
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_111
	test	rax, rax
	je	.label_110
.label_111:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402320

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
	mov	r13, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_124
	test	r13, r13
	je	.label_124
	mov	al, byte ptr [r13]
	cmp	al, 0x2f
	je	.label_132
	test	al, al
	jne	.label_134
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_137
.label_124:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_137:
	xor	ebp, ebp
.label_117:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_132:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_148
.label_134:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_117
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_160
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_148
.label_160:
	mov	rbp, r8
.label_148:
	mov	al, byte ptr [r13]
	xor	r15d, r15d
	test	al, al
	je	.label_171
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x58], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x5c], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x34], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x54], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x38], r13
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	mov	dword ptr [rsp + 0xc], ecx
	xor	ebx, ebx
.label_154:
	mov	qword ptr [rsp + 0x10], r15
.label_138:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_120:
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_139
	nop	dword ptr [rax]
.label_144:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_144
	lea	r14, [rsi - 1]
.label_139:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x402486
	.globl sub_402486
	.type sub_402486, @function
sub_402486:

	nop	word ptr cs:[rax + rax]
.label_153:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_173:
	test	al, al
	je	.label_152
	cmp	al, 0x2f
	jne	.label_153
.label_152:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_155
	cmp	r15, 2
	jne	.label_157
	cmp	dl, 0x2e
	mov	r15d, 2
	jne	.label_158
	cmp	byte ptr [rsi], 0x2e
	mov	r15d, 2
	jne	.label_158
	cmp	r12, rcx
	jbe	.label_163
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x4024cf
	.globl sub_4024cf
	.type sub_4024cf, @function
sub_4024cf:

	nop	
.label_155:
	cmp	byte ptr [r14], 0x2e
	mov	r15d, 1
	jne	.label_158
.label_163:
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_167
	jmp	.label_123
.label_165:
	dec	r12
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_114:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_112
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_114
.label_112:
	test	al, al
	jne	.label_120
	jmp	.label_123
.label_157:
	test	r15, r15
	je	.label_123
.label_158:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_113
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_113:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_128
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdi
	jmp	.label_130
.label_128:
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
	mov	qword ptr [rsp + 0x18], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x28], rbp
.label_130:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x5c], 6
	jne	.label_150
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r14, [rsp + 0x68]
	jmp	.label_122
.label_150:
	cmp	dword ptr [rsp + 0x58], 0
	lea	r14, [rsp + 0x68]
	mov	edi, 1
	jne	.label_162
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__lxstat
	jmp	.label_168
.label_162:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__xstat
.label_168:
	test	eax, eax
	je	.label_151
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_172
	test	al, al
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	je	.label_115
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_122
.label_151:
	mov	eax, dword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
.label_122:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_129
	mov	qword ptr [rsp + 0x48], rbp
	test	rbx, rbx
	jne	.label_133
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	rbx, rax
	test	rbx, rbx
	je	.label_145
.label_133:
	mov	rdi, rbx
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	rdx, r14
	call	seen_file
	test	al, al
	je	.label_149
	cmp	dword ptr [rsp + 0x34], 2
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0xc], eax
	mov	eax, dword ptr [rsp + 0x54]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x48]
	jmp	.label_146
.label_149:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x18]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_169
	call	__errno_location
	cmp	dword ptr [rsp + 0x34], 2
	mov	rbp, qword ptr [rsp + 0x48]
	jne	.label_125
	cmp	dword ptr [rax], 0xc
	je	.label_125
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_118
.label_172:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
.label_127:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_127
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_146:
	and	al, 0xf
	cmp	al, 4
	jne	.label_135
.label_118:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_138
	jmp	.label_141
.label_129:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_142
	cmp	dword ptr [rsp + 0x34], 2
	je	.label_142
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_147
.label_142:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_140
.label_169:
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [rbx + rdx + 1]
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x48]
	je	.label_159
	cmp	rcx, rax
	jbe	.label_164
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xrealloc
	jmp	.label_156
.label_159:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xmalloc
.label_156:
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_116
.label_164:
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
.label_116:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, rbx
	add	rdi, rax
	inc	rdx
	mov	rsi, r13
	mov	r13, rax
	call	memmove
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_131
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_126
.label_131:
	cmp	rbp, rax
	jbe	.label_126
	lea	rax, [r12 + r15 - 1]
.label_143:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_126
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_143
.label_126:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r15, r13
	mov	qword ptr [rsp + 0x38], r13
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x20]
.label_140:
	mov	al, byte ptr [r13]
	test	al, al
	mov	qword ptr [rsp + 0x20], rcx
	jne	.label_154
	jmp	.label_119
.label_123:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_119
.label_171:
	xor	ebx, ebx
.label_119:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_161
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_161:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_166
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_170
.label_166:
	mov	rbp, rdi
.label_170:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	je	.label_117
	mov	rdi, rbx
	call	hash_free
	jmp	.label_117
.label_141:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_119
.label_125:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_121
.label_135:
	cmp	al, 0xd
	jne	.label_117
	jmp	.label_121
.label_115:
	mov	eax, dword ptr [rsp + 0xc]
.label_147:
	mov	dword ptr [rsp + 0xc], eax
.label_121:
	mov	rbp, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	je	.label_136
	mov	rdi, rbx
	call	hash_free
.label_136:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
	jmp	.label_137
.label_145:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402976
	.globl sub_402976
	.type sub_402976, @function
sub_402976:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980

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
	jne	.label_175
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_174
	test	cl, cl
	jne	.label_174
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_174
.label_175:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_174
	call	__errno_location
	mov	dword ptr [rax], 0
.label_174:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_176:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4029e5
	.globl sub_4029e5
	.type sub_4029e5, @function
sub_4029e5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029eb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_176
	test	rdx, rdx
	je	.label_176
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_177:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a55
	.globl sub_402a55
	.type sub_402a55, @function
sub_402a55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a5f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_177
	call	rpl_calloc
	test	rax, rax
	je	.label_177
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a80
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
	je	.label_178
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
.label_178:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402aec
	.globl sub_402aec
	.type sub_402aec, @function
sub_402aec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_182
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_180
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_180
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_181
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_181:
	mov	rbx, r14
.label_180:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_182:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_183
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b91
	.globl sub_402b91
	.type sub_402b91, @function
sub_402b91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_189
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402c14
	.globl sub_402c14
	.type sub_402c14, @function
sub_402c14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20

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
	#Procedure 0x402c37
	.globl sub_402c37
	.type sub_402c37, @function
sub_402c37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40
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
	jae	.label_190
	xor	ebx, ebx
.label_194:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_192
	test	r13, r13
	je	.label_192
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_190
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_191:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_193
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_191
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x402cac
	.globl sub_402cac
	.type sub_402cac, @function
sub_402cac:

	nop	dword ptr [rax]
.label_193:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_192:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_194
.label_190:
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
	#Procedure 0x402cd3
	.globl sub_402cd3
	.type sub_402cd3, @function
sub_402cd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ce7
	.globl sub_402ce7
	.type sub_402ce7, @function
sub_402ce7:

	nop	word ptr [rax + rax]
.label_195:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402cf5
	.globl sub_402cf5
	.type sub_402cf5, @function
sub_402cf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d03

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
	je	.label_196
	test	r15, r15
	je	.label_195
.label_196:
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
	#Procedure 0x402d40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_202
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_198
	cmp	dword ptr [rbp], 0x20
	jne	.label_198
.label_202:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_200
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_198:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_199
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_200:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_199:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

	.globl isdir
	.type isdir, @function
isdir:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	jne	.label_204
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_204:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x402e80
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402e8a
	.globl sub_402e8a
	.type sub_402e8a, @function
sub_402e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e90

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
	je	.label_205
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_205:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ebc
	.globl sub_402ebc
	.type sub_402ebc, @function
sub_402ebc:

	nop	dword ptr [rax]
.label_207:
	mov	ecx, 1
.label_206:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402ed0
	.globl sub_402ed0
	.type sub_402ed0, @function
sub_402ed0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_207
	test	rsi, rsi
	mov	ecx, 1
	je	.label_206
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_206
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_213:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_217:
	test	rbx, rbx
	jne	.label_213
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_212
.label_211:
	add	r15, 0x10
.label_216:
	cmp	r15, rax
	jae	.label_215
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_211
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_209
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_211
.label_212:
	add	r15, 0x10
.label_210:
	cmp	r15, rax
	jae	.label_208
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_212
	test	r15, r15
	je	.label_212
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_217
	.section	.text
	.align	16
	#Procedure 0x402f7d

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_208
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_208
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_210
	.section	.text
	.align	16
	#Procedure 0x402f9c
	.globl sub_402f9c
	.type sub_402f9c, @function
sub_402f9c:

	nop	
.label_208:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_216
	.section	.text
	.align	16
	#Procedure 0x402fa6
	.globl sub_402fa6
	.type sub_402fa6, @function
sub_402fa6:

	nop	
.label_215:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_214
.label_218:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_218
.label_214:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x402fd6
	.globl sub_402fd6
	.type sub_402fd6, @function
sub_402fd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fe5
	.globl sub_402fe5
	.type sub_402fe5, @function
sub_402fe5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_220
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_221
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_227:
	cmp	qword ptr [rax], 0
	je	.label_228
	mov	rdx, rax
	nop	dword ptr [rax]
.label_219:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_219
	inc	r10
.label_228:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_222
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_225:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_225
	inc	r10
.label_222:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_227
	jmp	.label_229
.label_221:
	xor	r10d, r10d
.label_229:
	test	r8, r8
	je	.label_220
	cmp	qword ptr [rax], 0
	je	.label_220
	nop	dword ptr [rax]
.label_223:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_223
	inc	r10
.label_220:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_224
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_226
.label_224:
	xor	eax, eax
.label_226:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030b0

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
	je	.label_230
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
.label_230:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403118
	.globl sub_403118
	.type sub_403118, @function
sub_403118:

	nop	dword ptr [rax + rax]
.label_232:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403123
	.globl sub_403123
	.type sub_403123, @function
sub_403123:

	nop	dword ptr [rax + rax]
.label_231:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40312b
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_231
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_232
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403150

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
	jae	.label_235
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_233
	add	rbx, rax
	je	.label_233
	cmp	rsi, r12
	je	.label_236
	xor	r15d, r15d
	nop	
.label_234:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_237
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_233
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_234
.label_236:
	mov	r15, r12
	jmp	.label_233
.label_235:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4031b6
	.globl sub_4031b6
	.type sub_4031b6, @function
sub_4031b6:

	nop	dword ptr [rax + rax]
.label_237:
	mov	r15, qword ptr [rbx]
.label_233:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031d0

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
	je	.label_263
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_263
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_240
	cmp	rsi, r14
	je	.label_250
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_270
	mov	rax, qword ptr [r12]
.label_249:
	test	rax, rax
	jne	.label_256
	jmp	.label_240
.label_250:
	mov	rax, r14
.label_256:
	xor	ebp, ebp
	test	r15, r15
	je	.label_242
	mov	qword ptr [r15], rax
	jmp	.label_242
.label_270:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_240
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_274:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_269
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_273
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_274
.label_240:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_243
	cvtsi2ss	xmm1, rax
	jmp	.label_252
.label_243:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_252:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_257
	cvtsi2ss	xmm0, rcx
	jmp	.label_265
.label_257:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_265:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_268
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_272
	ucomiss	xmm2, dword ptr [rip + label_254]
	jbe	.label_239
	movss	xmm3, dword ptr [rip + label_238]
	ucomiss	xmm3, xmm2
	jbe	.label_239
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_244]
	jbe	.label_239
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_239
	addss	xmm3, dword ptr [rip + label_254]
	ucomiss	xmm2, xmm3
	jbe	.label_239
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_259]
	ucomiss	xmm5, xmm4
	jb	.label_239
	ucomiss	xmm4, xmm3
	ja	.label_264
.label_239:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_271]
	jmp	.label_264
.label_272:
	mov	eax, OFFSET FLAT:default_tuning
.label_264:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_268
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_246
	mulss	xmm0, xmm2
.label_246:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_241]
	jae	.label_242
	movss	xmm1, dword ptr [rip + label_248]
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
	je	.label_242
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_263
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_268
	cmp	rsi, r14
	mov	rax, r14
	je	.label_247
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_245
	mov	rax, qword ptr [r12]
.label_247:
	test	rax, rax
	jne	.label_251
.label_268:
	cmp	qword ptr [r12], 0
	je	.label_253
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_255
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_258
.label_253:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_261]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_262
.label_255:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_242
.label_258:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_262:
	mov	ebp, 1
.label_242:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_269:
	mov	rax, r14
	jmp	.label_249
.label_273:
	mov	rax, qword ptr [rbp]
	jmp	.label_249
.label_245:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_268
	lea	rbp, [rbx + rbp + 8]
.label_267:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_260
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_266
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_267
	jmp	.label_268
.label_260:
	mov	rax, r14
	jmp	.label_247
.label_266:
	mov	rax, qword ptr [rbp]
	jmp	.label_247
.label_263:
	call	abort
.label_251:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403501
	.globl sub_403501
	.type sub_403501, @function
sub_403501:

	nop	word ptr cs:[rax + rax]
.label_275:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403515
	.globl sub_403515
	.type sub_403515, @function
sub_403515:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403523

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_275
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_276
	test	rdx, rdx
	je	.label_276
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_276:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40359e
	.globl sub_40359e
	.type sub_40359e, @function
sub_40359e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_277
	test	rax, rax
	je	.label_278
.label_277:
	pop	rbx
	ret	
.label_278:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035ba
	.globl sub_4035ba
	.type sub_4035ba, @function
sub_4035ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035c0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
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
	#Procedure 0x40362e
	.globl sub_40362e
	.type sub_40362e, @function
sub_40362e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403630

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_290
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_189
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_286
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_286
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_189
	mov	ecx, OFFSET FLAT:label_92
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:label_283
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_290:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
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
	#Procedure 0x4037eb
	.globl sub_4037eb
	.type sub_4037eb, @function
sub_4037eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_293
	test	rdx, rdx
	je	.label_293
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_293:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40381b
	.globl sub_40381b
	.type sub_40381b, @function
sub_40381b:

	nop	dword ptr [rax + rax]
.label_298:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_294
	mov	eax, OFFSET FLAT:label_295
	jmp	.label_296
	.section	.text
	.align	16
	#Procedure 0x40382f
	.globl sub_40382f
	.type sub_40382f, @function
sub_40382f:

	nop	word ptr cs:[rax + rax]
.label_304:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_297
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_297
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_297
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_297
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_297
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_297
	cmp	byte ptr [rax + 7], 0
	je	.label_298
.label_297:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_299
	mov	eax, OFFSET FLAT:label_300
.label_296:
	cmove	rax, rcx
.label_303:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403882

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
	jne	.label_303
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_304
	cmp	ecx, 0x55
	jne	.label_297
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_297
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_297
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_297
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_297
	cmp	byte ptr [rax + 5], 0
	jne	.label_297
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_301
	mov	eax, OFFSET FLAT:label_302
	jmp	.label_296
	.section	.text
	.align	16
	#Procedure 0x4038f0
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
	#Procedure 0x4038ff
	.globl sub_4038ff
	.type sub_4038ff, @function
sub_4038ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403900
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40390a
	.globl sub_40390a
	.type sub_40390a, @function
sub_40390a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910
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
	#Procedure 0x403928
	.globl sub_403928
	.type sub_403928, @function
sub_403928:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_315
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_317
.label_315:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_317:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_305
	cmp	r10d, 0x29
	jae	.label_314
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_316
.label_314:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_316:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_305
	cmp	r10d, 0x29
	jae	.label_312
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_313
.label_312:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_313:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_305
	cmp	r10d, 0x29
	jae	.label_310
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_311
.label_310:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_311:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_305
	cmp	r10d, 0x29
	jae	.label_308
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_309
.label_308:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_309:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_305
	cmp	r10d, 0x29
	jae	.label_306
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_307
.label_306:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_307:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_305
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_305
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_305
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_305
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_305:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b12
	.globl sub_403b12
	.type sub_403b12, @function
sub_403b12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_318
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_321
.label_318:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_322
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_319], OFFSET FLAT:slot0
.label_322:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_320
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_320:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bb1
	.globl sub_403bb1
	.type sub_403bb1, @function
sub_403bb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_323]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bd4
	.globl sub_403bd4
	.type sub_403bd4, @function
sub_403bd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403be8
	.globl sub_403be8
	.type sub_403be8, @function
sub_403be8:

	nop	dword ptr [rax + rax]
.label_324:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403bf5
	.globl sub_403bf5
	.type sub_403bf5, @function
sub_403bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bff
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
	je	.label_325
	test	r14, r14
	je	.label_324
.label_325:
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
	#Procedure 0x403c30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
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
	#Procedure 0x403c85
	.globl sub_403c85
	.type sub_403c85, @function
sub_403c85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c90
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
	jae	.label_331
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_335
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_330:
	cmp	qword ptr [rax], 0
	je	.label_326
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_334:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_334
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_326:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_328
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_332:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_332
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_328:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_330
.label_335:
	test	r8, r8
	je	.label_331
	cmp	qword ptr [rax], 0
	je	.label_331
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_327:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_327
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_331:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_333
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_337]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_338]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_339]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_340
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_336
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
	#Procedure 0x403dff
	.globl sub_403dff
	.type sub_403dff, @function
sub_403dff:

	nop	
.label_343:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e05
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_342
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_344
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_345
	call	free
	xor	eax, eax
	jmp	.label_341
.label_344:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e3c
	.globl sub_403e3c
	.type sub_403e3c, @function
sub_403e3c:

	nop	word ptr cs:[rax + rax]
.label_342:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_343
	mov	qword ptr [rsi], rbx
.label_345:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_341
	test	rax, rax
	je	.label_343
.label_341:
	pop	rbx
	ret	
.label_348:
	add	rcx, 0x10
.label_349:
	cmp	rcx, rdx
	jae	.label_347
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_348
.label_346:
	ret	
.label_347:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e88
	.globl sub_403e88
	.type sub_403e88, @function
sub_403e88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e90
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_346
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x403ea2
	.globl sub_403ea2
	.type sub_403ea2, @function
sub_403ea2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403eb5
	.globl sub_403eb5
	.type sub_403eb5, @function
sub_403eb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_350
	.section	.text
	.align	16
	#Procedure 0x403ed1
	.globl sub_403ed1
	.type sub_403ed1, @function
sub_403ed1:

	nop	word ptr cs:[rax + rax]
.label_353:
	add	r14, 0x10
.label_350:
	cmp	r14, rax
	jae	.label_352
	cmp	qword ptr [r14], 0
	je	.label_353
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_354
	nop	word ptr cs:[rax + rax]
.label_356:
	test	cl, 1
	je	.label_355
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_355:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_356
.label_354:
	test	cl, cl
	je	.label_351
	mov	rdi, qword ptr [r14]
	call	rax
.label_351:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_353
.label_352:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f67
	.globl sub_403f67
	.type sub_403f67, @function
sub_403f67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_357
	test	rbx, rbx
	jne	.label_357
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_357:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_359
	test	rax, rax
	je	.label_358
.label_359:
	pop	rbx
	ret	
.label_358:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_361:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_360
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_361
.label_360:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fc6
	.globl sub_403fc6
	.type sub_403fc6, @function
sub_403fc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fd5
	.globl sub_403fd5
	.type sub_403fd5, @function
sub_403fd5:

	nop	word ptr cs:[rax + rax]
.label_362:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403fec
	.globl sub_403fec
	.type sub_403fec, @function
sub_403fec:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_362
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_364
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_362
.label_364:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_362
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_363
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_363:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404060
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
	je	.label_365
	mov	qword ptr [rax], rbx
.label_365:
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
	#Procedure 0x40414c
	.globl sub_40414c
	.type sub_40414c, @function
sub_40414c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404150

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
	jne	.label_366
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_366
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_367
.label_366:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_367:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_368
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_368:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041be
	.globl sub_4041be
	.type sub_4041be, @function
sub_4041be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4041c0
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
	#Procedure 0x4041f3
	.globl sub_4041f3
	.type sub_4041f3, @function
sub_4041f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404200
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
	#Procedure 0x404275
	.globl sub_404275
	.type sub_404275, @function
sub_404275:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280
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
	jae	.label_374
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_369
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_380
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_382
	mov	r14, qword ptr [r13]
.label_380:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_386
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_381
.label_382:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_369
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_377:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_375
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_373
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_377
	jmp	.label_369
.label_386:
	mov	qword ptr [r13], 0
	jmp	.label_381
.label_375:
	mov	rcx, rax
	jmp	.label_384
.label_373:
	mov	r14, qword ptr [rcx]
.label_384:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_381:
	xor	r12d, r12d
	test	r14, r14
	je	.label_369
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_371
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_379
	cvtsi2ss	xmm1, rax
	jmp	.label_376
.label_379:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_376:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_378
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_383
.label_378:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_383:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_371
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_389
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_254]
	jbe	.label_372
	movss	xmm4, dword ptr [rip + label_238]
	ucomiss	xmm4, xmm3
	jbe	.label_372
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_372
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_244]
	jbe	.label_372
	movss	xmm4, dword ptr [rip + label_254]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_372
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_259]
	ucomiss	xmm5, xmm3
	jb	.label_372
	ucomiss	xmm3, xmm4
	ja	.label_385
.label_372:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_385
.label_389:
	mov	eax, OFFSET FLAT:default_tuning
.label_385:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_371
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_370
	mulss	xmm0, dword ptr [rax + 8]
.label_370:
	movss	xmm1, dword ptr [rip + label_248]
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
	jne	.label_371
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_388
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_387
.label_388:
	mov	qword ptr [r15 + 0x48], 0
.label_371:
	mov	r12, r14
.label_369:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_374:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404513
	.globl sub_404513
	.type sub_404513, @function
sub_404513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520

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
	jne	.label_401
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_406
	cvtsi2ss	xmm0, rsi
	jmp	.label_392
.label_406:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_392:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_248]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_241]
	jae	.label_394
.label_401:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_397
	.section	.text
	.align	16
	#Procedure 0x4045ab
	.globl sub_4045ab
	.type sub_4045ab, @function
sub_4045ab:

	nop	dword ptr [rax + rax]
.label_408:
	add	rbx, 2
.label_397:
	cmp	rbx, -1
	je	.label_394
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_390
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_405:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_390
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_405
.label_390:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_408
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_394
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_398
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_394
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
	je	.label_395
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_398
.label_395:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_407
	.section	.text
	.align	16
	#Procedure 0x4046ce
	.globl sub_4046ce
	.type sub_4046ce, @function
sub_4046ce:

	nop	
.label_399:
	add	r12, 0x10
.label_407:
	cmp	r12, r15
	jae	.label_396
	cmp	qword ptr [r12], 0
	je	.label_399
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_403
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_400:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_393
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_402
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_404
	.section	.text
	.align	16
	#Procedure 0x40473a
	.globl sub_40473a
	.type sub_40473a, @function
sub_40473a:

	nop	word ptr [rax + rax]
.label_402:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_404:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_400
.label_403:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_399
.label_396:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_391
	mov	rdi, qword ptr [rsp]
	call	free
.label_394:
	xor	ebp, ebp
.label_398:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_393:
	call	abort
.label_391:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047aa
	.globl sub_4047aa
	.type sub_4047aa, @function
sub_4047aa:

	nop	word ptr [rax + rax]
.label_410:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047b3

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_409
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_410
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_409:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047e0
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
	#Procedure 0x4047ed
	.globl sub_4047ed
	.type sub_4047ed, @function
sub_4047ed:

	nop	dword ptr [rax]
.label_416:
	test	rdx, rdx
	je	.label_411
	mov	rax, qword ptr [rdx]
	jmp	.label_412
.label_414:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047ff
	.globl sub_4047ff
	.type sub_4047ff, @function
sub_4047ff:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40480c
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
	jae	.label_414
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_415:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_416
	test	rdx, rdx
	jne	.label_415
	jmp	.label_411
.label_411:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_413:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_412
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_413
.label_412:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404880

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
	je	.label_422
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_418
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_254]
	jbe	.label_419
	movss	xmm1, dword ptr [rip + label_238]
	ucomiss	xmm1, xmm0
	jbe	.label_419
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_244]
	jbe	.label_419
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_419
	addss	xmm1, dword ptr [rip + label_254]
	ucomiss	xmm0, xmm1
	jbe	.label_419
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_259]
	ucomiss	xmm2, xmm0
	jb	.label_419
	ucomiss	xmm0, xmm1
	jbe	.label_419
.label_418:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_421
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_423
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_424
.label_423:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_424:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_248]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_241]
	jae	.label_419
.label_421:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_425
	.section	.text
	.align	16
	#Procedure 0x4049ce
	.globl sub_4049ce
	.type sub_4049ce, @function
sub_4049ce:

	nop	
.label_426:
	add	rbx, 2
.label_425:
	cmp	rbx, -1
	je	.label_419
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_417
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_420:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_417
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_420
.label_417:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_426
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_419
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_419
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_419
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
	jmp	.label_422
.label_419:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_422:
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
	#Procedure 0x404a98
	.globl sub_404a98
	.type sub_404a98, @function
sub_404a98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404ab1
	.globl sub_404ab1
	.type sub_404ab1, @function
sub_404ab1:

	nop	word ptr cs:[rax + rax]
.label_427:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ac5
	.globl sub_404ac5
	.type sub_404ac5, @function
sub_404ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad4
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
	je	.label_427
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
	#Procedure 0x404b30
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_428
	test	rax, rax
	je	.label_429
.label_428:
	pop	rbx
	ret	
.label_429:
	call	xalloc_die
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

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_431
	cmp	byte ptr [rax], 0x43
	jne	.label_433
	cmp	byte ptr [rax + 1], 0
	je	.label_430
.label_433:
	mov	esi, OFFSET FLAT:label_432
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_431
.label_430:
	xor	ebx, ebx
.label_431:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b81
	.globl sub_404b81
	.type sub_404b81, @function
sub_404b81:

	nop	word ptr cs:[rax + rax]
.label_437:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_434
	test	rax, rax
	je	.label_435
.label_434:
	pop	rbx
	ret	
.label_435:
	call	xalloc_die
.label_440:
	test	rcx, rcx
	jne	.label_439
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_439:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_438
.label_436:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_437
	test	rbx, rbx
	jne	.label_437
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bf5
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_440
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_435
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_436
.label_438:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c27
	.globl sub_404c27
	.type sub_404c27, @function
sub_404c27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30

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
.label_504:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_502
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_532]
.label_663:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_510
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_300
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_664:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_525
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_525
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_533:
	cmp	r14, r11
	jae	.label_530
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_530:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_533
.label_525:
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
	jmp	.label_442
.label_656:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_442
.label_659:
	mov	al, 1
.label_657:
	mov	r12b, 1
.label_660:
	test	r12b, 1
	mov	cl, 1
	je	.label_551
	mov	ecx, eax
.label_551:
	mov	al, cl
.label_658:
	test	r12b, 1
	jne	.label_553
	test	r11, r11
	je	.label_560
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_560:
	mov	r14d, 1
	jmp	.label_558
.label_553:
	xor	r14d, r14d
.label_558:
	mov	ecx, OFFSET FLAT:label_300
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_442
.label_661:
	test	r12b, 1
	jne	.label_455
	test	r11, r11
	je	.label_459
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_459:
	mov	r14d, 1
	jmp	.label_462
.label_662:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_299
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_442
.label_455:
	xor	r14d, r14d
.label_462:
	mov	eax, OFFSET FLAT:label_299
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_442:
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
	jmp	.label_483
	.section	.text
	.align	16
	#Procedure 0x404f1d
	.globl sub_404f1d
	.type sub_404f1d, @function
sub_404f1d:

	nop	dword ptr [rax]
.label_535:
	inc	rsi
.label_483:
	cmp	rbp, -1
	je	.label_519
	cmp	rsi, rbp
	jne	.label_520
	jmp	.label_522
	.section	.text
	.align	16
	#Procedure 0x404f33
	.globl sub_404f33
	.type sub_404f33, @function
sub_404f33:

	nop	word ptr cs:[rax + rax]
.label_519:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_526
.label_520:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_554
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_484
	cmp	rbp, -1
	jne	.label_484
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
.label_484:
	cmp	rbx, rbp
	jbe	.label_539
.label_554:
	xor	r8d, r8d
.label_447:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_541
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_545]
.label_698:
	test	rsi, rsi
	jne	.label_446
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x404fd5
	.globl sub_404fd5
	.type sub_404fd5, @function
sub_404fd5:

	nop	word ptr cs:[rax + rax]
.label_539:
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
	jne	.label_443
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_447
	jmp	.label_460
.label_443:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_447
.label_702:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_469
	test	rsi, rsi
	jne	.label_471
	cmp	rbp, 1
	je	.label_474
	xor	r13d, r13d
	jmp	.label_457
.label_691:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_479
	cmp	byte ptr [rsp + 6], 0
	jne	.label_482
	cmp	r12d, 2
	jne	.label_487
	mov	eax, r9d
	and	al, 1
	jne	.label_487
	cmp	r14, r11
	jae	.label_492
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_492:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_495
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_495:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_494
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_494:
	add	r14, 3
	mov	r9b, 1
.label_487:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_505
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_505:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_508
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_508
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_508
	cmp	r14, r11
	jae	.label_461
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_461:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_544
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_544:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_457
.label_692:
	mov	bl, 0x62
	jmp	.label_528
.label_693:
	mov	cl, 0x74
	jmp	.label_449
.label_694:
	mov	bl, 0x76
	jmp	.label_528
.label_695:
	mov	bl, 0x66
	jmp	.label_528
.label_696:
	mov	cl, 0x72
	jmp	.label_449
.label_699:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_531
	cmp	byte ptr [rsp + 6], 0
	jne	.label_453
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
	jae	.label_537
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_537:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_549
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_549:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_552
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_552:
	add	r14, 3
	xor	r9d, r9d
.label_531:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_457
.label_700:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_559
	cmp	r12d, 2
	jne	.label_446
	cmp	byte ptr [rsp + 6], 0
	je	.label_446
	jmp	.label_453
.label_701:
	cmp	r12d, 2
	jne	.label_456
	cmp	byte ptr [rsp + 6], 0
	jne	.label_453
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_509
.label_541:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_467
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
.label_468:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_486
	test	r8b, r8b
	je	.label_486
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_457
.label_469:
	test	rsi, rsi
	jne	.label_507
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_507
.label_474:
	mov	dl, 1
.label_697:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_453
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_457:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_514
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_481
	jmp	.label_518
	.section	.text
	.align	16
	#Procedure 0x405324
	.globl sub_405324
	.type sub_405324, @function
sub_405324:

	nop	word ptr cs:[rax + rax]
.label_514:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_518
.label_481:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_523
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_509
	jmp	.label_490
	.section	.text
	.align	16
	#Procedure 0x40536d
	.globl sub_40536d
	.type sub_40536d, @function
sub_40536d:

	nop	dword ptr [rax]
.label_518:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_490
	jmp	.label_509
.label_523:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_490
.label_479:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_535
	xor	r15d, r15d
	jmp	.label_446
.label_456:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_449
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_509
.label_449:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_453
.label_528:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_457
	nop	word ptr cs:[rax + rax]
.label_490:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_482
	cmp	r12d, 2
	jne	.label_556
	mov	eax, r9d
	and	al, 1
	jne	.label_556
	cmp	r14, r11
	jae	.label_488
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_488:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_444
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_444:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_538
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_538:
	add	r14, 3
	mov	r9b, 1
.label_556:
	cmp	r14, r11
	jae	.label_521
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_521:
	inc	r14
	jmp	.label_465
.label_467:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_546
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_546:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_480:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_493
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_498
	cmp	rbp, -2
	je	.label_501
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_513
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_506:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_470
	bt	rsi, rdx
	jb	.label_516
.label_470:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_506
.label_513:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_557
	xor	r13d, r13d
.label_557:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_480
	jmp	.label_468
.label_508:
	xor	r13d, r13d
	jmp	.label_457
.label_507:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_457
.label_559:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_446
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_446
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_446
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_543
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_476
	cmp	byte ptr [rsp + 6], 0
	jne	.label_548
	cmp	r14, r11
	jae	.label_515
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_515:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_540
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_540:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_441
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_441:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_475
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_475:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_457
.label_446:
	xor	eax, eax
.label_471:
	xor	r13d, r13d
	jmp	.label_457
.label_486:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_466
	.section	.text
	.align	16
	#Procedure 0x405652
	.globl sub_405652
	.type sub_405652, @function
sub_405652:

	nop	word ptr cs:[rax + rax]
.label_536:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_466:
	test	r8b, r8b
	je	.label_472
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_473
	cmp	r14, r11
	jae	.label_477
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_477:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_473
	.section	.text
	.align	16
	#Procedure 0x40569c
	.globl sub_40569c
	.type sub_40569c, @function
sub_40569c:

	nop	dword ptr [rax]
.label_472:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_460
	cmp	r12d, 2
	jne	.label_458
	mov	eax, r9d
	and	al, 1
	jne	.label_458
	cmp	r14, r11
	jae	.label_497
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_497:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_448
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_448:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_503
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_503:
	add	r14, 3
	mov	r9b, 1
.label_458:
	cmp	r14, r11
	jae	.label_542
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_542:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_511
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_511:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_491
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_491:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_473:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_509
	test	r9b, 1
	je	.label_464
	mov	ebx, eax
	and	bl, 1
	jne	.label_464
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_529
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_529:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_555
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_555:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_464:
	cmp	r14, r11
	jae	.label_536
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_536
	.section	.text
	.align	16
	#Procedure 0x4057a3
	.globl sub_4057a3
	.type sub_4057a3, @function
sub_4057a3:

	nop	word ptr cs:[rax + rax]
.label_509:
	test	r9b, 1
	je	.label_454
	and	al, 1
	jne	.label_454
	cmp	r14, r11
	jae	.label_547
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_547:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_496
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_496:
	add	r14, 2
	xor	r9d, r9d
.label_454:
	mov	ebx, r15d
.label_465:
	cmp	r14, r11
	jae	.label_452
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_452:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_535
.label_498:
	xor	r13d, r13d
.label_493:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_468
.label_501:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_451
	mov	rsi, qword ptr [rsp + 0x58]
.label_463:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_534
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_463
	xor	r13d, r13d
	jmp	.label_468
.label_451:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_468
.label_534:
	xor	r13d, r13d
	jmp	.label_468
.label_543:
	xor	r13d, r13d
	jmp	.label_457
.label_476:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_457
	.section	.text
	.align	16
	#Procedure 0x405878
	.globl sub_405878
	.type sub_405878, @function
sub_405878:

	nop	dword ptr [rax + rax]
.label_522:
	mov	rcx, rsi
.label_526:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_478
	or	al, dl
	je	.label_485
.label_478:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_489
	or	al, dl
	jne	.label_489
	test	r10b, 1
	jne	.label_500
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_489
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_504
.label_489:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_550
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_512
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_512
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_524:
	cmp	r14, r11
	jae	.label_517
	mov	byte ptr [rcx + r14], al
.label_517:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_524
	jmp	.label_512
.label_482:
	mov	qword ptr [rsp + 0x20], rbp
.label_460:
	mov	rdx, rdi
	jmp	.label_527
.label_453:
	mov	qword ptr [rsp + 0x20], rbp
.label_516:
	mov	rdx, rdi
	mov	eax, 2
.label_499:
	mov	qword ptr [rsp + 0x38], rax
.label_527:
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
.label_445:
	mov	r14, rax
.label_450:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_485:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_527
.label_500:
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
	jmp	.label_445
.label_550:
	mov	rcx, qword ptr [rsp + 8]
.label_512:
	cmp	r14, r11
	jae	.label_450
	mov	byte ptr [rcx + r14], 0
	jmp	.label_450
.label_548:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_499
.label_502:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a37
	.globl sub_405a37
	.type sub_405a37, @function
sub_405a37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a40

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
	#Procedure 0x405a55
	.globl sub_405a55
	.type sub_405a55, @function
sub_405a55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a68
	.globl sub_405a68
	.type sub_405a68, @function
sub_405a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a70
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
	#Procedure 0x405b31
	.globl sub_405b31
	.type sub_405b31, @function
sub_405b31:

	nop	word ptr cs:[rax + rax]
.label_563:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_565:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_563
	test	dl, dl
	je	.label_562
	mov	ecx, esi
	and	cl, 1
	je	.label_561
	xor	esi, esi
.label_561:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_563
	.section	.text
	.align	16
	#Procedure 0x405b68

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_564:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_564
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_565
	.section	.text
	.align	16
	#Procedure 0x405b8b
	.globl sub_405b8b
	.type sub_405b8b, @function
sub_405b8b:

	nop	word ptr cs:[rax + rax]
.label_562:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b9c
	.globl sub_405b9c
	.type sub_405b9c, @function
sub_405b9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ba0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405bae
	.globl sub_405bae
	.type sub_405bae, @function
sub_405bae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405bb0

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
	js	.label_569
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_572
	cmp	r12d, 0x7fffffff
	je	.label_567
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
	jne	.label_570
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_570:
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
.label_572:
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
	jbe	.label_568
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_571
.label_568:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_566
	mov	rdi, r14
	call	free
.label_566:
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
.label_571:
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
.label_569:
	call	abort
.label_567:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d6d
	.globl sub_405d6d
	.type sub_405d6d, @function
sub_405d6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d70

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
.label_576:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_573
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_576
.label_573:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_575
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_574
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_574:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_575:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e06
	.globl sub_405e06
	.type sub_405e06, @function
sub_405e06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e10

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
	#Procedure 0x405e36
	.globl sub_405e36
	.type sub_405e36, @function
sub_405e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40
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
.label_578:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_577
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_578
.label_577:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e7b
	.globl sub_405e7b
	.type sub_405e7b, @function
sub_405e7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80

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
	je	.label_579
	cmp	r15, -2
	jb	.label_579
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_579
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_579:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ed6
	.globl sub_405ed6
	.type sub_405ed6, @function
sub_405ed6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0

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
	#Procedure 0x405ef8
	.globl sub_405ef8
	.type sub_405ef8, @function
sub_405ef8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00

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
	jne	.label_581
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_583
.label_581:
	xor	ebp, ebp
.label_580:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_583:
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
	je	.label_585
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_585:
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
	je	.label_586
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_586:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_582
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_584
.label_582:
	xor	ebp, ebp
.label_584:
	mov	rdi, rbx
	call	free
	jmp	.label_580
	.section	.text
	.align	16
	#Procedure 0x406048
	.globl sub_406048
	.type sub_406048, @function
sub_406048:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_587
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406080

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
	je	.label_588
	test	r15, r15
	je	.label_589
.label_588:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_589:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4060bc
	.globl sub_4060bc
	.type sub_4060bc, @function
sub_4060bc:

	nop	dword ptr [rax]
.label_590:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4060c5
	.globl sub_4060c5
	.type sub_4060c5, @function
sub_4060c5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060cd
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
	je	.label_590
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
	#Procedure 0x406130
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
	#Procedure 0x406143
	.globl sub_406143
	.type sub_406143, @function
sub_406143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150
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
	#Procedure 0x406186
	.globl sub_406186
	.type sub_406186, @function
sub_406186:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406190

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
	#Procedure 0x4061a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_72
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_591
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061c5
	.globl sub_4061c5
	.type sub_4061c5, @function
sub_4061c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061d0
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
	#Procedure 0x4061e9
	.globl sub_4061e9
	.type sub_4061e9, @function
sub_4061e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061f0

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
	je	.label_592
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
	je	.label_593
	cmp	rax, rbx
	je	.label_592
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_592:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_593:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406266
	.globl sub_406266
	.type sub_406266, @function
sub_406266:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406270
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
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
	#Procedure 0x4062df
	.globl sub_4062df
	.type sub_4062df, @function
sub_4062df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4062e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_594
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_594:
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
	#Procedure 0x406363
	.globl sub_406363
	.type sub_406363, @function
sub_406363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_600
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_596
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_602:
	cmp	qword ptr [rcx], 0
	je	.label_599
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_595:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_595
	cmp	rdi, rax
	cmova	rax, rdi
.label_599:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_601
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_597:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_597
	cmp	rdi, rax
	cmova	rax, rdi
.label_601:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_602
.label_596:
	test	r8, r8
	je	.label_600
	cmp	qword ptr [rcx], 0
	je	.label_600
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_598:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_598
	cmp	rdx, rax
	cmova	rax, rdx
.label_600:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406424
	.globl sub_406424
	.type sub_406424, @function
sub_406424:

	nop	word ptr cs:[rax + rax]
.label_603:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406435
	.globl sub_406435
	.type sub_406435, @function
sub_406435:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406439
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_603
	test	rsi, rsi
	je	.label_603
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
	#Procedure 0x4064a0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_604
	xor	eax, eax
.label_607:
	cmp	qword ptr [r9], 0
	je	.label_605
	test	r9, r9
	je	.label_605
	mov	r8, r9
	nop	
.label_606:
	cmp	rax, rdx
	jae	.label_604
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_606
	mov	r8, qword ptr [rdi + 8]
.label_605:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_607
.label_604:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064e6
	.globl sub_4064e6
	.type sub_4064e6, @function
sub_4064e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064f0

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
	jne	.label_620
	mov	dl, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rdi
	mov	eax, 0
	je	.label_615
	xor	ecx, ecx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_627:
	movzx	ebx, byte ptr [rdi + rcx]
	test	bl, bl
	je	.label_619
	cmp	dl, bl
	jne	.label_619
	lea	rbx, [rcx + 1]
	cmp	dl, 0x2f
	cmove	eax, ebx
	movzx	edx, byte ptr [rsi + rcx + 1]
	test	dl, dl
	mov	rcx, rbx
	jne	.label_627
	mov	rcx, rbx
	add	rcx, rdi
.label_615:
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_632
	cmp	cl, 0x2f
	je	.label_632
	jmp	.label_633
.label_619:
	cmp	dl, 0x2f
	jne	.label_633
	test	bl, bl
	jne	.label_633
	mov	ebx, ecx
.label_632:
	mov	eax, ebx
.label_633:
	test	eax, eax
	je	.label_613
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
	je	.label_636
	test	r12, r12
	je	.label_617
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_616
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_622
.label_613:
	xor	ebx, ebx
	jmp	.label_620
.label_636:
	cmp	byte ptr [r15], 0
	mov	ebx, OFFSET FLAT:label_629
	cmovne	rbx, r15
	test	r12, r12
	je	.label_630
	mov	rdi, rbx
	call	strlen
	cmp	rax, r14
	jae	.label_634
	inc	rax
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rax
	call	memcpy
	jmp	.label_609
.label_617:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_611
	call	fputs_unlocked
	xor	r12d, r12d
.label_622:
	xor	ebp, ebp
	jmp	.label_616
.label_621:
	inc	rbx
.label_616:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_618
	test	al, al
	jne	.label_621
	jmp	.label_623
.label_618:
	test	r12, r12
	je	.label_624
	mov	al, 1
	cmp	r14, 4
	jb	.label_625
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_628
.label_624:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_631
	call	fputs_unlocked
	xor	r12d, r12d
.label_628:
	xor	eax, eax
.label_625:
	and	bpl, 1
	or	bpl, al
	jmp	.label_621
.label_623:
	cmp	byte ptr [r15], 0
	je	.label_614
	test	r12, r12
	je	.label_637
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_638
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_610
.label_630:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_609:
	mov	bl, 1
	jmp	.label_620
.label_637:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_612
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_635
.label_638:
	mov	bpl, 1
.label_610:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_626
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_635:
	xor	ebx, ebx
.label_626:
	or	bpl, bl
.label_614:
	mov	bl, 1
	test	bpl, 1
	je	.label_620
.label_634:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_608
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	call	error
.label_620:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406739
	.globl sub_406739
	.type sub_406739, @function
sub_406739:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406740

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_639
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_640:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_640
.label_639:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40676e
	.globl sub_40676e
	.type sub_40676e, @function
sub_40676e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406770

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
	je	.label_642
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_649:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_641
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_645
.label_641:
	cmp	r13, r12
	jb	.label_644
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_646
	add	r12, r12
	jmp	.label_648
	.section	.text
	.align	16
	#Procedure 0x406803
	.globl sub_406803
	.type sub_406803, @function
sub_406803:

	nop	word ptr cs:[rax + rax]
.label_644:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_642
.label_646:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_643
.label_648:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_649
	jmp	.label_642
.label_645:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_647:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_642:
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
	#Procedure 0x406864
	.globl sub_406864
	.type sub_406864, @function
sub_406864:

	nop	word ptr cs:[rax + rax]
.label_643:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_647
	.section	.text
	.align	16
	#Procedure 0x406880
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
	#Procedure 0x406899
	.globl sub_406899
	.type sub_406899, @function
sub_406899:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406905
	.globl sub_406905
	.type sub_406905, @function
sub_406905:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406912
	.globl sub_406912
	.type sub_406912, @function
sub_406912:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406936
	.globl sub_406936
	.type sub_406936, @function
sub_406936:

	nop	word ptr cs:[rax + rax]
