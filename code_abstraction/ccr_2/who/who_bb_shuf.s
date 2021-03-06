	.section	.text
	.align	32
	#Procedure 0x4018c9
	.globl sub_4018c9
	.type sub_4018c9, @function
sub_4018c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4018ca
	.globl sub_4018ca
	.type sub_4018ca, @function
sub_4018ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401902
	.globl sub_401902
	.type sub_401902, @function
sub_401902:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40194a
	.globl sub_40194a
	.type sub_40194a, @function
sub_40194a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40196c
	.globl sub_40196c
	.type sub_40196c, @function
sub_40196c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40197d
	.globl sub_40197d
	.type sub_40197d, @function
sub_40197d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401996
	.globl sub_401996
	.type sub_401996, @function
sub_401996:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x401a0f
	.globl sub_401a0f
	.type sub_401a0f, @function
sub_401a0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a10
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
	#Procedure 0x401a1f
	.globl sub_401a1f
	.type sub_401a1f, @function
sub_401a1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_12
	test	rdx, rdx
	je	.label_12
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_12:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401a8e
	.globl sub_401a8e
	.type sub_401a8e, @function
sub_401a8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a90
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
	#Procedure 0x401ac3
	.globl sub_401ac3
	.type sub_401ac3, @function
sub_401ac3:

	nop	word ptr cs:[rax + rax]
.label_24:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_25:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_18
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_21
	.section	.text
	.align	32
	#Procedure 0x401b09

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_24
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_25
.label_23:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_13:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_14
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_15
.label_18:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_21:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_23
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_13
.label_14:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_15:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_20
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_22
.label_20:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_22:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_17
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_19
.label_17:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_19:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_16:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cb2
	.globl sub_401cb2
	.type sub_401cb2, @function
sub_401cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cc0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401cd1
	.globl sub_401cd1
	.type sub_401cd1, @function
sub_401cd1:

	nop	word ptr cs:[rax + rax]
.label_40:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	#Procedure 0x401d18
	.globl sub_401d18
	.type sub_401d18, @function
sub_401d18:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d23

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_40
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_34
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_32
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_30
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_30
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_39
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_50
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_50:
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
	#Procedure 0x401fd3
	.globl sub_401fd3
	.type sub_401fd3, @function
sub_401fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_51
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_53
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_53
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_56
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_56:
	mov	rbx, r14
.label_53:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_51:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_52
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402081
	.globl sub_402081
	.type sub_402081, @function
sub_402081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402090
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
	#Procedure 0x402105
	.globl sub_402105
	.type sub_402105, @function
sub_402105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402110

	.globl who
	.type who, @function
who:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x48]
	lea	rdx, [rsp + 0x40]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_119
	mov	r12, qword ptr [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x40]
	cmp	byte ptr [rip + short_list],  1
	jne	.label_128
	xor	r14d, r14d
	test	r12, r12
	je	.label_122
	mov	r15d, OFFSET FLAT:label_98
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_139:
	dec	r12
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_124
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_124
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_131
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	inc	r14
	mov	r15d, OFFSET FLAT:label_136
.label_124:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_139
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	call	__printf_chk
	jmp	.label_99
.label_128:
	cmp	byte ptr [rip + include_heading],  1
	jne	.label_145
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, r15
	push	rax
	push	r14
	push	rbp
	push	r13
	call	print_line
	add	rsp, 0x20
.label_145:
	cmp	byte ptr [rip + my_line_only],  1
	jne	.label_65
	xor	edi, edi
	call	ttyname
	mov	rbp, rax
	test	rbp, rbp
	je	.label_99
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	mov	rdi, rbp
	call	strncmp
	lea	r13, [rbp + 5]
	test	eax, eax
	cmovne	r13, rbp
.label_65:
	test	r12, r12
	je	.label_99
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 8], r13
	nop	word ptr cs:[rax + rax]
.label_133:
	cmp	byte ptr [rip + my_line_only],  1
	jne	.label_79
	lea	rsi, [rbx + 8]
	mov	edx, 0x20
	mov	rdi, r13
	call	strncmp
	test	eax, eax
	jne	.label_93
.label_79:
	cmp	byte ptr [rip + need_users],  1
	jne	.label_91
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_91
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_91
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_82
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	mov	cl, byte ptr [rbx + 8]
	cmp	cl, 0x2f
	lea	rax, [rsp + 0x50]
	je	.label_126
	mov	word ptr [rsp + 0x54], 0x2f
	mov	dword ptr [rsp + 0x50], 0x7665642f
	test	cl, cl
	lea	rax, [rsp + 0x55]
	mov	rdx, rax
	je	.label_108
.label_126:
	lea	rdx, [rbx + 0x28]
	mov	edi, 9
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rsi, rdi
	lea	rdi, [rbx + rsi]
	mov	byte ptr [rax + rsi - 9], cl
	cmp	rdi, rdx
	jae	.label_137
	movzx	ecx, byte ptr [rdi]
	lea	rdi, [rsi + 1]
	test	cl, cl
	jne	.label_134
.label_137:
	lea	rdx, [rax + rsi - 8]
.label_108:
	mov	byte ptr [rdx], 0
	mov	edi, 1
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x188]
	call	__xstat
	mov	r14b, 0x3f
	test	eax, eax
	jne	.label_144
	mov	r14b, byte ptr [rsp + 0x1a0]
	shr	r14b, 3
	not	r14b
	and	r14b, 2
	add	r14b, 0x2b
	mov	rbp, qword ptr [rsp + 0x1d0]
	test	rbp, rbp
	je	.label_144
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rip + idle_string.now],  rax
	jne	.label_63
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_63:
	cmp	rbp, qword ptr [rsp + 0x30]
	jle	.label_70
	mov	r9, qword ptr [rip + idle_string.now]
	cmp	r9, rbp
	jl	.label_70
	lea	rax, [r9 - 0x15180]
	cmp	rax, rbp
	jge	.label_70
	sub	r9d, ebp
	cmp	r9d, 0x3c
	mov	ebp, OFFSET FLAT:label_80
	jl	.label_81
	cmp	r9d, 0x15180
	jge	.label_84
	mov	r8d, r9d
	mov	eax, 0x91a2b3c5
	imul	r8, rax
	shr	r8, 0x2b
	imul	eax, r8d, 0xe10
	sub	r9d, eax
	mov	eax, 0x88888889
	imul	r9, rax
	shr	r9, 0x25
	mov	edi, OFFSET FLAT:idle_string.idle_hhmm
	mov	esi, 1
	mov	edx, 6
	mov	ecx, OFFSET FLAT:label_88
	xor	eax, eax
	call	__sprintf_chk
	mov	ebp, OFFSET FLAT:idle_string.idle_hhmm
	jmp	.label_81
.label_91:
	cmp	byte ptr [rip + need_runlevel],  1
	jne	.label_103
	movzx	eax, word ptr [rbx]
	cmp	eax, 1
	jne	.label_103
	mov	r15d, dword ptr [rbx + 4]
	mov	ebp, r15d
	sar	ebp, 0x1f
	shr	ebp, 0x18
	add	ebp, r15d
	mov	r14, qword ptr [rip + print_runlevel.runlevline]
	test	r14, r14
	jne	.label_107
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rip + print_runlevel.runlevline],  r14
.label_107:
	sar	ebp, 8
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	r9d, r15b
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_121
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14, qword ptr [rip + print_runlevel.comment]
	test	r14, r14
	jne	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 2]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rip + print_runlevel.comment],  r14
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	ebp, bpl
	cmp	ebp, 0x4e
	mov	r9d, ebp
	mov	eax, 0x53
	cmove	r9d, eax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_117
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14, qword ptr [rip + print_runlevel.runlevline]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_58
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_66
	.section	.text
	.align	32
	#Procedure 0x402631
	.globl sub_402631
	.type sub_402631, @function
sub_402631:

	nop	word ptr cs:[rax + rax]
.label_103:
	cmp	byte ptr [rip + need_boottime],  1
	jne	.label_71
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_86
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_97
	.section	.text
	.align	32
	#Procedure 0x4026ae
	.globl sub_4026ae
	.type sub_4026ae, @function
sub_4026ae:

	nop	
.label_71:
	cmp	byte ptr [rip + need_clockchange],  1
	jne	.label_75
	movzx	eax, word ptr [rbx]
	cmp	eax, 3
	jne	.label_75
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_109
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_113
	.section	.text
	.align	32
	#Procedure 0x40271e
	.globl sub_40271e
	.type sub_40271e, @function
sub_40271e:

	nop	
.label_75:
	cmp	byte ptr [rip + need_initspawn],  1
	jne	.label_115
	movzx	eax, word ptr [rbx]
	cmp	eax, 5
	jne	.label_115
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_82
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	lea	r15, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_106
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_150
.label_115:
	cmp	byte ptr [rip + need_login],  1
	jne	.label_61
	movzx	eax, word ptr [rbx]
	cmp	eax, 6
	jne	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_82
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	r14, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_101
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_104
.label_61:
	cmp	byte ptr [rip + need_deadprocs],  1
	jne	.label_93
	movzx	eax, word ptr [rbx]
	cmp	eax, 8
	jne	.label_93
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rdi, r15
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, r15
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_82
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	mov	rbp, qword ptr [rip + print_deadprocs.exitstr]
	test	rbp, rbp
	jne	.label_130
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rbp + rax + 0xe]
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rip + print_deadprocs.exitstr],  rbp
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsx	r13d, word ptr [rbx + 0x14c]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	movsx	r11d, word ptr [rbx + 0x14e]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_57
	mov	eax, 0
	mov	rdi, rbp
	mov	r8, r14
	mov	r9d, r13d
	push	r11
	push	r10
	call	__sprintf_chk
	add	rsp, 0x10
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_76
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_85
.label_144:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_89
	xor	eax, eax
	lea	rdi, [rsp + 0x39]
	call	__sprintf_chk
	jmp	.label_96
.label_58:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_66:
	add	ebp, -0x20
	cmp	ebp, 0x5f
	mov	rax, qword ptr [rip + print_runlevel.comment]
	mov	ecx, OFFSET FLAT:label_98
	cmovae	rax, rcx
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	push	OFFSET FLAT:label_98
	push	rax
	push	OFFSET FLAT:label_98
	push	OFFSET FLAT:label_98
	call	print_line
	add	rsp, 0x20
	jmp	.label_93
.label_86:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_97:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, rbp
	push	OFFSET FLAT:label_98
	push	OFFSET FLAT:label_98
	push	OFFSET FLAT:label_98
	push	OFFSET FLAT:label_98
	call	print_line
	add	rsp, 0x20
	jmp	.label_93
.label_109:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_113:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, rbp
	push	OFFSET FLAT:label_98
	push	OFFSET FLAT:label_98
	push	OFFSET FLAT:label_98
	push	OFFSET FLAT:label_98
	call	print_line
	add	rsp, 0x20
	jmp	.label_93
.label_106:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_150:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, r15
	push	OFFSET FLAT:label_98
	push	rbp
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_98
	call	print_line
	add	rsp, 0x20
	mov	rdi, rbp
	jmp	.label_143
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
.label_81:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_59
	mov	r8d, 6
	xor	eax, eax
	lea	rdi, [rsp + 0x39]
	mov	r9, rbp
	call	__sprintf_chk
.label_96:
	mov	cl, byte ptr [rbx + 0x4c]
	test	cl, cl
	je	.label_67
	mov	byte ptr [rsp + 0x10], r14b
	lea	rax, [rbx + 0x14c]
	mov	esi, 0x4d
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	rdx, rsi
	lea	rsi, [rbx + rdx]
	mov	byte ptr [rsp + rdx + 0x33], cl
	cmp	rsi, rax
	jae	.label_73
	movzx	ecx, byte ptr [rsi]
	lea	rsi, [rdx + 1]
	test	cl, cl
	jne	.label_78
.label_73:
	mov	byte ptr [rsp + rdx + 0x34], 0
	mov	esi, 0x3a
	lea	rdi, [rsp + 0x80]
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_87
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_87:
	cmp	byte ptr [rsp + 0x80], 0
	mov	eax, 0
	je	.label_94
	cmp	byte ptr [rip + do_lookup],  1
	mov	eax, 0
	jne	.label_94
	lea	rdi, [rsp + 0x80]
	call	canon_host
.label_94:
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rax
	lea	rax, [rsp + 0x80]
	cmove	rbp, rax
	mov	r15, qword ptr [rip + print_user.hostlen]
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	test	r14, r14
	je	.label_105
	mov	rdi, r14
	call	strlen
	lea	rax, [r13 + rax + 4]
	cmp	r15, rax
	jae	.label_110
	mov	qword ptr [rip + print_user.hostlen],  rax
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rip + print_user.hoststr],  rdi
	jmp	.label_116
.label_67:
	cmp	qword ptr [rip + print_user.hostlen],  0
	je	.label_118
	mov	rax, qword ptr [rip + print_user.hoststr]
	jmp	.label_120
.label_105:
	add	r13, 3
	cmp	r15, r13
	jae	.label_90
	mov	qword ptr [rip + print_user.hostlen],  r13
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rip + print_user.hoststr],  rdi
	jmp	.label_127
.label_110:
	mov	rdi, qword ptr [rip + print_user.hoststr]
.label_116:
	mov	r13, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x28]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_140
	xor	eax, eax
	mov	r8, rbp
	mov	r9, r14
	call	__sprintf_chk
	mov	r14b, byte ptr [rsp + 0x10]
	jmp	.label_138
.label_101:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_104:
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
	mov	r8, r14
	push	OFFSET FLAT:label_98
	push	rbp
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_98
	call	print_line
	add	rsp, 0x20
	mov	rdi, rbp
	jmp	.label_143
.label_118:
	mov	qword ptr [rip + print_user.hostlen],  1
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	qword ptr [rip + print_user.hoststr],  rax
.label_120:
	mov	byte ptr [rax], 0
	jmp	.label_68
.label_76:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_85:
	mov	r13, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, rbp
	push	qword ptr [rip + print_deadprocs.exitstr]
	push	r15
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_98
	call	print_line
	add	rsp, 0x20
	mov	rdi, r15
.label_143:
	call	free
	jmp	.label_93
.label_90:
	mov	rdi, qword ptr [rip + print_user.hoststr]
.label_127:
	mov	r13, qword ptr [rsp + 8]
	mov	r14b, byte ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x28]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_95
	xor	eax, eax
	mov	r8, rbp
	call	__sprintf_chk
.label_138:
	test	r15, r15
	je	.label_68
	mov	rdi, rbp
	call	free
.label_68:
	lea	r15, [rbx + 0x2c]
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_111
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_114
.label_111:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_114:
	mov	rax, qword ptr [rip + print_user.hoststr]
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_98
	cmove	rax, rcx
	movsx	edx, r14b
	mov	edi, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
	mov	r8, rbp
	push	OFFSET FLAT:label_98
	push	rax
	lea	rax, [rsp + 0x2c]
	push	rax
	lea	rax, [rsp + 0x51]
	push	rax
	call	print_line
	add	rsp, 0x20
	nop	word ptr cs:[rax + rax]
.label_93:
	dec	r12
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_129
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x30], rax
.label_129:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_133
.label_99:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_119:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_84:
	mov	edi, OFFSET FLAT:label_146
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 0xcd
	mov	ecx, OFFSET FLAT:label_148
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403008
	.globl sub_403008
	.type sub_403008, @function
sub_403008:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010
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
	#Procedure 0x403046
	.globl sub_403046
	.type sub_403046, @function
sub_403046:

	nop	word ptr cs:[rax + rax]
.label_152:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403055
	.globl sub_403055
	.type sub_403055, @function
sub_403055:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403060
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_152
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_153
	test	rax, rax
	je	.label_152
.label_153:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403090
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi, dword ptr [rip + last_cherror]
	jmp	gai_strerror
	.section	.text
	.align	32
	#Procedure 0x40309b
	.globl sub_40309b
	.type sub_40309b, @function
sub_40309b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_154
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_157:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_157
.label_154:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_158
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_155], OFFSET FLAT:slot0
.label_158:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_156
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_156:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403131
	.globl sub_403131
	.type sub_403131, @function
sub_403131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140
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
	je	.label_160
	test	r15, r15
	je	.label_159
.label_160:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_159:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403182
	.globl sub_403182
	.type sub_403182, @function
sub_403182:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403190

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
	#Procedure 0x4031a7
	.globl sub_4031a7
	.type sub_4031a7, @function
sub_4031a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0
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
	je	.label_161
	mov	qword ptr [rax], rbx
.label_161:
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
	#Procedure 0x40329c
	.globl sub_40329c
	.type sub_40329c, @function
sub_40329c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4032ae
	.globl sub_4032ae
	.type sub_4032ae, @function
sub_4032ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4032b0

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
	js	.label_165
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_168
	cmp	r12d, 0x7fffffff
	je	.label_163
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
	jne	.label_166
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_166:
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
.label_168:
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
	jbe	.label_164
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_167
.label_164:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_162
	mov	rdi, r14
	call	free
.label_162:
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
.label_167:
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
.label_165:
	call	abort
.label_163:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40346d
	.globl sub_40346d
	.type sub_40346d, @function
sub_40346d:

	nop	dword ptr [rax]
.label_170:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_169
	mov	dword ptr [rip + last_cherror],  0xfffffff6
.label_169:
	mov	rdi, qword ptr [rsp + 8]
	call	freeaddrinfo
.label_171:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034ad
	.globl sub_4034ad
	.type sub_4034ad, @function
sub_4034ad:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b6

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_170
	mov	dword ptr [rip + last_cherror],  eax
	xor	ebx, ebx
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403520

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_175
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_173
	cmp	dword ptr [rbp], 0x20
	jne	.label_173
.label_175:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_177
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_177:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_176:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_174
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_176
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4035e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_179
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_179
	test	byte ptr [rbx + 1], 1
	je	.label_179
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_179:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403613
	.globl sub_403613
	.type sub_403613, @function
sub_403613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403620
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x40368e
	.globl sub_40368e
	.type sub_40368e, @function
sub_40368e:

	nop	
.label_181:
	mov	ecx, 1
.label_180:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4036a0
	.globl sub_4036a0
	.type sub_4036a0, @function
sub_4036a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_181
	test	rsi, rsi
	mov	ecx, 1
	je	.label_180
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_180
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036e0

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
	#Procedure 0x4036f9
	.globl sub_4036f9
	.type sub_4036f9, @function
sub_4036f9:

	nop	dword ptr [rax]
.label_184:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_182
	test	rbx, rbx
	jne	.label_182
	mov	dword ptr [r14], 0xfffffff6
.label_182:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_183:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40373f
	.globl sub_40373f
	.type sub_40373f, @function
sub_40373f:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403742
	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:

	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_184
	xor	ebx, ebx
	test	r14, r14
	je	.label_183
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_183
.label_185:
	test	rcx, rcx
	jne	.label_186
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_186:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_191
.label_187:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_189
	test	rbx, rbx
	jne	.label_189
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_189:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_190
	test	rax, rax
	je	.label_188
.label_190:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_185
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_188
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_187
.label_188:
	call	xalloc_die
.label_191:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403817
	.globl sub_403817
	.type sub_403817, @function
sub_403817:

	nop	word ptr [rax + rax]
.label_196:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_192
	mov	eax, OFFSET FLAT:label_193
	jmp	.label_194
	.section	.text
	.align	32
	#Procedure 0x40382f
	.globl sub_40382f
	.type sub_40382f, @function
sub_40382f:

	nop	word ptr cs:[rax + rax]
.label_202:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_195
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_195
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_195
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_195
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_195
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_195
	cmp	byte ptr [rax + 7], 0
	je	.label_196
.label_195:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_197
	mov	eax, OFFSET FLAT:label_198
.label_194:
	cmove	rax, rcx
.label_201:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
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
	jne	.label_201
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_202
	cmp	ecx, 0x55
	jne	.label_195
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_195
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_195
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_195
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_195
	cmp	byte ptr [rax + 5], 0
	jne	.label_195
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_199
	mov	eax, OFFSET FLAT:label_200
	jmp	.label_194
	.section	.text
	.align	32
	#Procedure 0x4038f0
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
	#Procedure 0x403908
	.globl sub_403908
	.type sub_403908, @function
sub_403908:

	nop	dword ptr [rax + rax]
.label_203:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403915
	.globl sub_403915
	.type sub_403915, @function
sub_403915:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40391f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_203
	call	rpl_calloc
	test	rax, rax
	je	.label_203
	pop	rcx
	ret	
.label_204:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403945
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_204
	test	rsi, rsi
	je	.label_204
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039b0

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
	jne	.label_205
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_205
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_206
.label_205:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_206:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_207
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_207:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a1e
	.globl sub_403a1e
	.type sub_403a1e, @function
sub_403a1e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403a20
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
	#Procedure 0x403a39
	.globl sub_403a39
	.type sub_403a39, @function
sub_403a39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a40

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x403a95
	.globl sub_403a95
	.type sub_403a95, @function
sub_403a95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403aa0

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
	je	.label_220
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_217
.label_220:
	mov	edx, OFFSET FLAT:label_218
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
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
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_223
	jmp	qword ptr [(r12 * 8) + label_224]
.label_500:
	add	rsp, 8
	jmp	.label_210
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
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
	jmp	.label_210
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
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
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
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
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
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
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
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
	jmp	.label_210
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
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
	jmp	.label_210
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
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
	jmp	.label_210
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
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
	jmp	.label_210
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
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
	jmp	.label_210
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
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
.label_210:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403df8
	.globl sub_403df8
	.type sub_403df8, @function
sub_403df8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e00
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
	je	.label_227
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
.label_227:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403e68
	.globl sub_403e68
	.type sub_403e68, @function
sub_403e68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403e7a
	.globl sub_403e7a
	.type sub_403e7a, @function
sub_403e7a:

	nop	word ptr [rax + rax]
.label_232:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_228
	mov	qword ptr [rsi], rbx
.label_230:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_229
	test	rax, rax
	je	.label_228
.label_229:
	pop	rbx
	ret	
.label_228:
	call	xalloc_die
.label_231:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403eb2
	.globl sub_403eb2
	.type sub_403eb2, @function
sub_403eb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ebe
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_232
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_231
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_230
	call	free
	xor	eax, eax
	jmp	.label_229
.label_233:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ef5
	.globl sub_403ef5
	.type sub_403ef5, @function
sub_403ef5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403efb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_233
	test	rdx, rdx
	je	.label_233
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_234:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403f65
	.globl sub_403f65
	.type sub_403f65, @function
sub_403f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f6f
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
	je	.label_235
	test	r14, r14
	je	.label_234
.label_235:
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
	#Procedure 0x403fa0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403faa
	.globl sub_403faa
	.type sub_403faa, @function
sub_403faa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_98
	call	setlocale
	mov	edi, OFFSET FLAT:label_254
	mov	esi, OFFSET FLAT:label_255
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_254
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	bpl, 1
	jmp	.label_236
.label_238:
	mov	byte ptr [rip + include_idle],  1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_236:
	mov	edx, OFFSET FLAT:label_240
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x81
	ja	.label_246
	jmp	qword ptr [(rcx * 8) + label_249]
.label_528:
	mov	byte ptr [rip + include_mesg],  1
	jmp	.label_236
.label_527:
	mov	byte ptr [rip + include_heading],  1
	jmp	.label_236
.label_530:
	mov	byte ptr [rip + need_boottime],  1
	xor	ebp, ebp
	jmp	.label_236
.label_531:
	mov	byte ptr [rip + need_deadprocs],  1
	jmp	.label_256
.label_532:
	mov	byte ptr [rip + need_login],  1
	jmp	.label_238
.label_533:
	mov	byte ptr [rip + my_line_only],  1
	jmp	.label_236
.label_536:
	mov	byte ptr [rip + need_runlevel],  1
	jmp	.label_238
.label_537:
	mov	byte ptr [rip + short_output],  1
	jmp	.label_236
.label_540:
	mov	byte ptr [rip + do_lookup],  1
	jmp	.label_236
.label_529:
	mov	byte ptr [rip + need_boottime],  1
	mov	byte ptr [rip + need_deadprocs],  1
	mov	byte ptr [rip + need_login],  1
	mov	byte ptr [rip + need_initspawn],  1
	mov	byte ptr [rip + need_runlevel],  1
	mov	byte ptr [rip + need_clockchange],  1
	mov	byte ptr [rip + need_users],  1
	mov	byte ptr [rip + include_mesg],  1
.label_256:
	mov	byte ptr [rip + include_idle],  1
	mov	byte ptr [rip + include_exit],  1
	xor	ebp, ebp
	jmp	.label_236
.label_534:
	mov	byte ptr [rip + need_initspawn],  1
	xor	ebp, ebp
	jmp	.label_236
.label_535:
	mov	byte ptr [rip + short_list],  1
	jmp	.label_236
.label_538:
	mov	byte ptr [rip + need_clockchange],  1
	xor	ebp, ebp
	jmp	.label_236
.label_539:
	mov	byte ptr [rip + need_users],  1
	jmp	.label_238
.label_526:
	test	bpl, bpl
	je	.label_242
	mov	byte ptr [rip + need_users],  1
	mov	byte ptr [rip + short_output],  1
.label_242:
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_247
	mov	byte ptr [rip + short_output],  0
.label_247:
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_243
	mov	edx, OFFSET FLAT:label_244
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [rip + time_format],  rdx
	mov	dword ptr [rip + time_format_width],  eax
	movsxd	rax, dword ptr [rip + optind]
	sub	ebx, eax
	lea	ecx, [rbx + 1]
	cmp	ecx, 2
	jb	.label_245
	cmp	ebx, 1
	je	.label_257
	cmp	ebx, 2
	jne	.label_237
	mov	byte ptr [rip + my_line_only],  1
.label_245:
	mov	edi, OFFSET FLAT:label_33
	mov	esi, 1
	jmp	.label_241
.label_257:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
.label_241:
	call	who
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_246:
	cmp	eax, 0xffffff7d
	je	.label_248
	cmp	eax, 0xffffff7e
	jne	.label_250
	xor	edi, edi
	call	usage
.label_250:
	mov	edi, 1
	call	usage
.label_248:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_29
	mov	edx, OFFSET FLAT:label_32
	mov	r8d, OFFSET FLAT:label_251
	mov	r9d, OFFSET FLAT:label_252
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_253
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8 + 0x10]
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
	.align	32
	#Procedure 0x40424e
	.globl sub_40424e
	.type sub_40424e, @function
sub_40424e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404250
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x4042a4
	.globl sub_4042a4
	.type sub_4042a4, @function
sub_4042a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0
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
	#Procedure 0x4042bf
	.globl sub_4042bf
	.type sub_4042bf, @function
sub_4042bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4042c0

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r12d, ecx
	mov	rbx, rsi
	mov	r13d, edi
	mov	byte ptr [rip + label_258],  dl
	cmp	byte ptr [rip + include_idle],  1
	jne	.label_259
	mov	al, byte ptr [rip + short_output]
	test	al, al
	jne	.label_259
	mov	r14, qword ptr [rsp + 0x70]
	mov	rdi, r14
	call	strlen
	cmp	rax, 6
	ja	.label_259
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 8
	mov	ecx, OFFSET FLAT:label_263
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_268
.label_259:
	mov	byte ptr [rsp + 0x10], 0
.label_268:
	mov	al, byte ptr [rip + short_output]
	test	al, al
	jne	.label_262
	mov	r14, qword ptr [rsp + 0x78]
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xb
	ja	.label_262
	lea	rdi, [rsp + 0x2b]
	mov	esi, 1
	mov	edx, 0xd
	mov	ecx, OFFSET FLAT:label_264
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_269
.label_262:
	mov	byte ptr [rsp + 0x2b], 0
.label_269:
	mov	r14, qword ptr [rsp + 0x88]
	mov	edi, 1
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_271
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xc
	lea	rax, [rax + 2]
	mov	edi, 0xe
	cmovae	rdi, rax
.label_271:
	mov	r15, qword ptr [rsp + 0x80]
	call	xmalloc
	mov	rbp, rax
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_270
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_272
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_265
.label_270:
	mov	byte ptr [rbp], 0
.label_265:
	test	rbx, rbx
	mov	r8d, OFFSET FLAT:label_266
	cmovne	r8, rbx
	mov	al, byte ptr [rip + include_mesg]
	mov	ecx, OFFSET FLAT:print_line.mesg
	mov	r9d, OFFSET FLAT:label_98
	test	al, al
	cmovne	r9, rcx
	mov	ebx, dword ptr [rip + time_format_width]
	lea	r10, [rsp + 0x2b]
	lea	r11, [rsp + 0x10]
	lea	rdi, [rsp + 8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_267
	mov	eax, 0
	mov	ecx, r13d
	push	rbp
	push	r15
	push	r10
	push	r11
	push	qword ptr [rsp + 0x38]
	push	rbx
	push	qword ptr [rsp + 0x50]
	push	r12
	call	__asprintf_chk
	add	rsp, 0x40
	cmp	eax, -1
	je	.label_261
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	call	strlen
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_260:
	cmp	byte ptr [rax - 2], 0x20
	lea	rax, [rax - 1]
	je	.label_260
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rsp + 8]
	call	puts
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, rbp
	call	free
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_261:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40449d
	.globl sub_40449d
	.type sub_40449d, @function
sub_40449d:

	nop	dword ptr [rax]
.label_274:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4044a5
	.globl sub_4044a5
	.type sub_4044a5, @function
sub_4044a5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044a9

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
	je	.label_273
	test	r15, r15
	je	.label_274
.label_273:
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
	.align	32
	#Procedure 0x4044e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044e8
	.globl sub_4044e8
	.type sub_4044e8, @function
sub_4044e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_275:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_275
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404511
	.globl sub_404511
	.type sub_404511, @function
sub_404511:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_276
	test	rax, rax
	je	.label_277
.label_276:
	pop	rbx
	ret	
.label_277:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40453a
	.globl sub_40453a
	.type sub_40453a, @function
sub_40453a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540

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
	je	.label_278
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
.label_278:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4045d5
	.globl sub_4045d5
	.type sub_4045d5, @function
sub_4045d5:

	nop	word ptr cs:[rax + rax]
.label_280:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_279:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_279
	mov	byte ptr [rsi], 0x2d
.label_281:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404638
	.globl sub_404638
	.type sub_404638, @function
sub_404638:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404645

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_280
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_282:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_282
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x4046a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_283
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_284
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_283
.label_284:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_283
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_285
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_285:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_283:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404714
	.globl sub_404714
	.type sub_404714, @function
sub_404714:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720
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
	#Procedure 0x404733
	.globl sub_404733
	.type sub_404733, @function
sub_404733:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404740

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
	jne	.label_287
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_286
	test	cl, cl
	jne	.label_286
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_286
.label_287:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_286
	call	__errno_location
	mov	dword ptr [rax], 0
.label_286:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047a0

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
.label_313:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_310
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_299]
.label_522:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_322
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_198
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_523:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_337
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_337
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_353:
	cmp	r14, r11
	jae	.label_330
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_330:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_353
.label_337:
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
	jmp	.label_361
.label_515:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_361
.label_518:
	mov	al, 1
.label_516:
	mov	r12b, 1
.label_519:
	test	r12b, 1
	mov	cl, 1
	je	.label_370
	mov	ecx, eax
.label_370:
	mov	al, cl
.label_517:
	test	r12b, 1
	jne	.label_372
	test	r11, r11
	je	.label_301
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_301:
	mov	r14d, 1
	jmp	.label_376
.label_372:
	xor	r14d, r14d
.label_376:
	mov	ecx, OFFSET FLAT:label_198
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_361
.label_520:
	test	r12b, 1
	jne	.label_386
	test	r11, r11
	je	.label_388
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_388:
	mov	r14d, 1
	jmp	.label_390
.label_521:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_197
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_361
.label_386:
	xor	r14d, r14d
.label_390:
	mov	eax, OFFSET FLAT:label_197
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_361:
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
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x404a8d
	.globl sub_404a8d
	.type sub_404a8d, @function
sub_404a8d:

	nop	dword ptr [rax]
.label_354:
	inc	rsi
.label_288:
	cmp	rbp, -1
	je	.label_333
	cmp	rsi, rbp
	jne	.label_335
	jmp	.label_336
	.section	.text
	.align	32
	#Procedure 0x404aa3
	.globl sub_404aa3
	.type sub_404aa3, @function
sub_404aa3:

	nop	word ptr cs:[rax + rax]
.label_333:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_342
.label_335:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_355
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_343
	cmp	rbp, -1
	jne	.label_343
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
.label_343:
	cmp	rbx, rbp
	jbe	.label_362
.label_355:
	xor	r8d, r8d
.label_382:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_325
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_365]
.label_556:
	test	rsi, rsi
	jne	.label_359
	jmp	.label_369
	.section	.text
	.align	32
	#Procedure 0x404b45
	.globl sub_404b45
	.type sub_404b45, @function
sub_404b45:

	nop	word ptr cs:[rax + rax]
.label_362:
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
	jne	.label_379
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_382
	jmp	.label_316
.label_379:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_382
.label_560:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_347
	test	rsi, rsi
	jne	.label_400
	cmp	rbp, 1
	je	.label_369
	xor	r13d, r13d
	jmp	.label_327
.label_549:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_407
	cmp	byte ptr [rsp + 6], 0
	jne	.label_403
	cmp	r12d, 2
	jne	.label_292
	mov	eax, r9d
	and	al, 1
	jne	.label_292
	cmp	r14, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_296:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_302
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_302:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_352
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_352:
	add	r14, 3
	mov	r9b, 1
.label_292:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_314
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_314:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_317
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_317
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_317
	cmp	r14, r11
	jae	.label_375
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_375:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_297
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_297:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_327
.label_550:
	mov	bl, 0x62
	jmp	.label_340
.label_551:
	mov	cl, 0x74
	jmp	.label_308
.label_552:
	mov	bl, 0x76
	jmp	.label_340
.label_553:
	mov	bl, 0x66
	jmp	.label_340
.label_554:
	mov	cl, 0x72
	jmp	.label_308
.label_557:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_351
	cmp	byte ptr [rsp + 6], 0
	jne	.label_319
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
	jae	.label_358
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_358:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_368
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_368:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_371
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_371:
	add	r14, 3
	xor	r9d, r9d
.label_351:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_327
.label_558:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_377
	cmp	r12d, 2
	jne	.label_359
	cmp	byte ptr [rsp + 6], 0
	je	.label_359
	jmp	.label_319
.label_559:
	cmp	r12d, 2
	jne	.label_387
	cmp	byte ptr [rsp + 6], 0
	jne	.label_319
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_309
.label_325:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_395
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
.label_350:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_291
	test	r8b, r8b
	je	.label_291
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_327
.label_347:
	test	rsi, rsi
	jne	.label_315
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_315
.label_369:
	mov	dl, 1
.label_555:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_319
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_327:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_326
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_367
	jmp	.label_332
	.section	.text
	.align	32
	#Procedure 0x404e94
	.globl sub_404e94
	.type sub_404e94, @function
sub_404e94:

	nop	word ptr cs:[rax + rax]
.label_326:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_332
.label_367:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_338
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_309
	jmp	.label_349
	.section	.text
	.align	32
	#Procedure 0x404edd
	.globl sub_404edd
	.type sub_404edd, @function
sub_404edd:

	nop	dword ptr [rax]
.label_332:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_349
	jmp	.label_309
.label_338:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_349
.label_407:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_354
	xor	r15d, r15d
	jmp	.label_359
.label_387:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_308
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_309
.label_308:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_319
.label_340:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_327
	nop	word ptr cs:[rax + rax]
.label_349:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_403
	cmp	r12d, 2
	jne	.label_374
	mov	eax, r9d
	and	al, 1
	jne	.label_374
	cmp	r14, r11
	jae	.label_323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_323:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_380
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_380:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_346
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_346:
	add	r14, 3
	mov	r9b, 1
.label_374:
	cmp	r14, r11
	jae	.label_389
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_389:
	inc	r14
	jmp	.label_393
.label_395:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_396
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_396:
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
	je	.label_341
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_304
	cmp	rbp, -2
	je	.label_307
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_392
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_300:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_357
	bt	rsi, rdx
	jb	.label_329
.label_357:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_300
.label_392:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_320
	xor	r13d, r13d
.label_320:
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
	jmp	.label_350
.label_317:
	xor	r13d, r13d
	jmp	.label_327
.label_315:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_327
.label_377:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_359
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_359
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_359
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_345
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_295
	cmp	byte ptr [rsp + 6], 0
	jne	.label_404
	cmp	r14, r11
	jae	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_293:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_398
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_398:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_378
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_378:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_363
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_363:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_327
.label_359:
	xor	eax, eax
.label_400:
	xor	r13d, r13d
	jmp	.label_327
.label_291:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x4051c2
	.globl sub_4051c2
	.type sub_4051c2, @function
sub_4051c2:

	nop	word ptr cs:[rax + rax]
.label_356:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_394:
	test	r8b, r8b
	je	.label_401
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_402
	cmp	r14, r11
	jae	.label_405
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_405:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_402
	.section	.text
	.align	32
	#Procedure 0x40520c
	.globl sub_40520c
	.type sub_40520c, @function
sub_40520c:

	nop	dword ptr [rax]
.label_401:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_316
	cmp	r12d, 2
	jne	.label_298
	mov	eax, r9d
	and	al, 1
	jne	.label_298
	cmp	r14, r11
	jae	.label_303
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_303:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_360
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_360:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_311
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_311:
	add	r14, 3
	mov	r9b, 1
.label_298:
	cmp	r14, r11
	jae	.label_312
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_312:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_399
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_399:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_328
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_328:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_402:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_309
	test	r9b, 1
	je	.label_305
	mov	ebx, eax
	and	bl, 1
	jne	.label_305
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_348
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_348:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_318
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_318:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_305:
	cmp	r14, r11
	jae	.label_356
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_356
	.section	.text
	.align	32
	#Procedure 0x405313
	.globl sub_405313
	.type sub_405313, @function
sub_405313:

	nop	word ptr cs:[rax + rax]
.label_309:
	test	r9b, 1
	je	.label_364
	and	al, 1
	jne	.label_364
	cmp	r14, r11
	jae	.label_366
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_373
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_373:
	add	r14, 2
	xor	r9d, r9d
.label_364:
	mov	ebx, r15d
.label_393:
	cmp	r14, r11
	jae	.label_334
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_334:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_354
.label_304:
	xor	r13d, r13d
.label_341:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_350
.label_307:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_384
	mov	rsi, qword ptr [rsp + 0x58]
.label_289:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_331
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_289
	xor	r13d, r13d
	jmp	.label_350
.label_384:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_350
.label_331:
	xor	r13d, r13d
	jmp	.label_350
.label_345:
	xor	r13d, r13d
	jmp	.label_327
.label_295:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x4053e8
	.globl sub_4053e8
	.type sub_4053e8, @function
sub_4053e8:

	nop	dword ptr [rax + rax]
.label_336:
	mov	rcx, rsi
.label_342:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_406
	or	al, dl
	je	.label_290
.label_406:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_294
	or	al, dl
	jne	.label_294
	test	r10b, 1
	jne	.label_306
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_294
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_313
.label_294:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_321
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_324
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_324
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_339:
	cmp	r14, r11
	jae	.label_397
	mov	byte ptr [rcx + r14], al
.label_397:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_339
	jmp	.label_324
.label_403:
	mov	qword ptr [rsp + 0x20], rbp
.label_316:
	mov	rdx, rdi
	jmp	.label_344
.label_319:
	mov	qword ptr [rsp + 0x20], rbp
.label_329:
	mov	rdx, rdi
	mov	eax, 2
.label_385:
	mov	qword ptr [rsp + 0x38], rax
.label_344:
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
.label_381:
	mov	r14, rax
.label_383:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_290:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_344
.label_306:
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
	jmp	.label_381
.label_321:
	mov	rcx, qword ptr [rsp + 8]
.label_324:
	cmp	r14, r11
	jae	.label_383
	mov	byte ptr [rcx + r14], 0
	jmp	.label_383
.label_404:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_385
.label_310:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4055a7
	.globl sub_4055a7
	.type sub_4055a7, @function
sub_4055a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0
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
	#Procedure 0x4055c8
	.globl sub_4055c8
	.type sub_4055c8, @function
sub_4055c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_409
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_32
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x405644
	.globl sub_405644
	.type sub_405644, @function
sub_405644:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405650
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_412
	test	rsi, rsi
	je	.label_412
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
.label_412:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4056bc
	.globl sub_4056bc
	.type sub_4056bc, @function
sub_4056bc:

	nop	dword ptr [rax]
.label_413:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4056c5
	.globl sub_4056c5
	.type sub_4056c5, @function
sub_4056c5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056cd
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
	je	.label_413
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
	.align	32
	#Procedure 0x405730

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	mov	ebp, 0
	je	.label_420
	mov	r13d, r14d
	and	r13d, 2
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_424
.label_414:
	cmp	rbp, r15
	jne	.label_415
	test	r12, r12
	je	.label_416
	movabs	rax, 0x38e38e38e38e38
	cmp	rbp, rax
	jae	.label_421
	mov	rax, rbp
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_417
.label_416:
	test	rbp, rbp
	mov	r15, rbp
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_422
.label_417:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
.label_415:
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	jmp	.label_419
	.section	.text
	.align	32
	#Procedure 0x405806
	.globl sub_405806
	.type sub_405806, @function
sub_405806:

	nop	word ptr cs:[rax + rax]
.label_424:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_423
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	jmp	.label_418
	.section	.text
	.align	32
	#Procedure 0x405821
	.globl sub_405821
	.type sub_405821, @function
sub_405821:

	nop	word ptr cs:[rax + rax]
.label_423:
	xor	eax, eax
.label_418:
	test	r13d, r13d
	je	.label_425
	test	al, al
	je	.label_419
.label_425:
	test	r14d, r14d
	je	.label_414
	xor	al, 1
	jne	.label_414
	mov	edi, dword ptr [rbx + 4]
	test	edi, edi
	jle	.label_414
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_414
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_414
.label_419:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_424
.label_420:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r12
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_421:
	call	xalloc_die
.label_422:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4058b1
	.globl sub_4058b1
	.type sub_4058b1, @function
sub_4058b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_427
	add	rax, rbx
	nop	dword ptr [rax]
.label_426:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_427
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_426
.label_427:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40591d
	.globl sub_40591d
	.type sub_40591d, @function
sub_40591d:

	nop	dword ptr [rax]
.label_428:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405925
	.globl sub_405925
	.type sub_405925, @function
sub_405925:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40592b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_429
	test	rax, rax
	je	.label_428
.label_429:
	pop	rbx
	ret	
.label_430:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405945
	.globl sub_405945
	.type sub_405945, @function
sub_405945:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405949
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
	je	.label_430
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
.label_431:
	call	xalloc_die
.label_432:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_433
	test	rax, rax
	je	.label_431
.label_433:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059c9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_432
	test	rbx, rbx
	jne	.label_432
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_98
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_434
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a05
	.globl sub_405a05
	.type sub_405a05, @function
sub_405a05:

	nop	word ptr cs:[rax + rax]
.label_435:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405a15
	.globl sub_405a15
	.type sub_405a15, @function
sub_405a15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a24
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
	je	.label_435
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
	#Procedure 0x405a80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a88
	.globl sub_405a88
	.type sub_405a88, @function
sub_405a88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_437
	cmp	byte ptr [rax], 0x43
	jne	.label_439
	cmp	byte ptr [rax + 1], 0
	je	.label_436
.label_439:
	mov	esi, OFFSET FLAT:label_438
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_437
.label_436:
	xor	ebx, ebx
.label_437:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ac1
	.globl sub_405ac1
	.type sub_405ac1, @function
sub_405ac1:

	nop	word ptr cs:[rax + rax]
.label_440:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405ad5
	.globl sub_405ad5
	.type sub_405ad5, @function
sub_405ad5:

	nop	dword ptr [rax + rax]
.label_442:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_441
	test	rax, rax
	je	.label_440
.label_441:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405af1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_440
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_442
	test	rbx, rbx
	jne	.label_442
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b20
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_443
	test	rdx, rdx
	je	.label_443
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_443:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405b4b
	.globl sub_405b4b
	.type sub_405b4b, @function
sub_405b4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b50
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
	#Procedure 0x405c11
	.globl sub_405c11
	.type sub_405c11, @function
sub_405c11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c20

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
	je	.label_444
	cmp	r15, -2
	jb	.label_444
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_444
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_444:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c76
	.globl sub_405c76
	.type sub_405c76, @function
sub_405c76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ce5
	.globl sub_405ce5
	.type sub_405ce5, @function
sub_405ce5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf2
	.globl sub_405cf2
	.type sub_405cf2, @function
sub_405cf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d16
	.globl sub_405d16
	.type sub_405d16, @function
sub_405d16:

	nop	word ptr cs:[rax + rax]
