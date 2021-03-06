	.section	.text
	.align	16
	#Procedure 0x401cb9
	.globl sub_401cb9
	.type sub_401cb9, @function
sub_401cb9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401cba
	.globl sub_401cba
	.type sub_401cba, @function
sub_401cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf2
	.globl sub_401cf2
	.type sub_401cf2, @function
sub_401cf2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d3a
	.globl sub_401d3a
	.type sub_401d3a, @function
sub_401d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d5c
	.globl sub_401d5c
	.type sub_401d5c, @function
sub_401d5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d6d
	.globl sub_401d6d
	.type sub_401d6d, @function
sub_401d6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d86
	.globl sub_401d86
	.type sub_401d86, @function
sub_401d86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d90
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x401d9a
	.globl sub_401d9a
	.type sub_401d9a, @function
sub_401d9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401da0

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
	je	.label_10
	mov	qword ptr [rax], rbx
.label_10:
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
	#Procedure 0x401e8c
	.globl sub_401e8c
	.type sub_401e8c, @function
sub_401e8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl parse_chunk
	.type parse_chunk, @function
parse_chunk:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	r12, [rbx + 1]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_14
	xor	r9d, r9d
	mov	rdi, r12
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r15], rax
	cmp	qword ptr [word ptr [rip + optarg]],  rbx
	je	.label_13
	mov	byte ptr [rbx], 0
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	rbx, qword ptr [r15]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_14
	xor	r9d, r9d
	mov	rdi, r12
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r14], rax
.label_13:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f29
	.globl sub_401f29
	.type sub_401f29, @function
sub_401f29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f30
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_15
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_15:
	xor	eax, eax
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
	jne	.label_20
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
	je	.label_16
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_21
	mov	eax, OFFSET FLAT:label_22
	jmp	.label_19
.label_25:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_23
	mov	eax, OFFSET FLAT:label_24
.label_19:
	cmove	rax, rcx
.label_20:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fcf
	.globl sub_401fcf
	.type sub_401fcf, @function
sub_401fcf:

	nop	dword ptr [rax]
.label_16:
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
	je	.label_25
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_17
	mov	eax, OFFSET FLAT:label_18
	jmp	.label_19
	.section	.text
	.align	16
	#Procedure 0x402010

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_26
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_28
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_28
.label_26:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_27
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_29
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_27:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_29:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_33:
	mov	eax, ebx
.label_34:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020dd
	.globl sub_4020dd
	.type sub_4020dd, @function
sub_4020dd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020e7

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
	je	.label_33
	test	ebx, ebx
	js	.label_33
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
	jmp	.label_34
	.section	.text
	.align	16
	#Procedure 0x402130

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
.label_138:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_103
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_143]]
.label_732:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_35
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_24
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_733:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_49
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_49
	xor	r14d, r14d
.label_64:
	cmp	r14, r11
	jae	.label_59
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_59:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_64
.label_49:
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
	jmp	.label_69
.label_725:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_69
.label_728:
	mov	al, 1
.label_726:
	mov	r12b, 1
.label_729:
	test	r12b, 1
	mov	cl, 1
	je	.label_84
	mov	ecx, eax
.label_84:
	mov	al, cl
.label_727:
	test	r12b, 1
	jne	.label_88
	test	r11, r11
	je	.label_90
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_90:
	mov	r14d, 1
	jmp	.label_95
.label_88:
	xor	r14d, r14d
.label_95:
	mov	ecx, OFFSET FLAT:label_24
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_69
.label_730:
	test	r12b, 1
	jne	.label_105
	test	r11, r11
	je	.label_107
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_107:
	mov	r14d, 1
	jmp	.label_109
.label_731:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_23
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_69
.label_105:
	xor	r14d, r14d
.label_109:
	mov	eax, OFFSET FLAT:label_23
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_69:
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
	jmp	.label_44
	.section	.text
	.align	16
	#Procedure 0x40240c
	.globl sub_40240c
	.type sub_40240c, @function
sub_40240c:

	nop	dword ptr [rax]
.label_60:
	inc	rsi
.label_44:
	cmp	rbp, -1
	je	.label_39
	cmp	rsi, rbp
	jne	.label_41
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x402423
	.globl sub_402423
	.type sub_402423, @function
sub_402423:

	nop	word ptr cs:[rax + rax]
.label_39:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_43
.label_41:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_52
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_55
	cmp	rbp, -1
	jne	.label_55
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
.label_55:
	cmp	rbx, rbp
	jbe	.label_67
.label_52:
	xor	r8d, r8d
.label_74:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_70
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_133]]
.label_755:
	test	rsi, rsi
	jne	.label_66
	jmp	.label_77
	.section	.text
	.align	16
	#Procedure 0x4024be
	.globl sub_4024be
	.type sub_4024be, @function
sub_4024be:

	nop	
.label_67:
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
	jne	.label_93
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_74
	jmp	.label_100
.label_93:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_74
.label_759:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_113
	test	rsi, rsi
	jne	.label_115
	cmp	rbp, 1
	je	.label_77
	xor	r13d, r13d
	jmp	.label_53
.label_748:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_121
	cmp	byte ptr [rsp + 7], 0
	jne	.label_61
	cmp	r12d, 2
	jne	.label_123
	mov	eax, r9d
	and	al, 1
	jne	.label_123
	cmp	r14, r11
	jae	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_124:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_127
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_127:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_131
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_131:
	add	r14, 3
	mov	r9b, 1
.label_123:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_68
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_68:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_140
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_140
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_140
	cmp	r14, r11
	jae	.label_36
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_36:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_106
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_106:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_53
.label_749:
	mov	bl, 0x62
	jmp	.label_47
.label_750:
	mov	cl, 0x74
	jmp	.label_51
.label_751:
	mov	bl, 0x76
	jmp	.label_47
.label_752:
	mov	bl, 0x66
	jmp	.label_47
.label_753:
	mov	cl, 0x72
	jmp	.label_51
.label_756:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_58
	cmp	byte ptr [rsp + 7], 0
	jne	.label_61
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
	jae	.label_65
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_65:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_76
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_76:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_79
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_79:
	add	r14, 3
	xor	r9d, r9d
.label_58:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_53
.label_757:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_91
	cmp	r12d, 2
	jne	.label_66
	cmp	byte ptr [rsp + 7], 0
	je	.label_66
	jmp	.label_61
.label_758:
	cmp	r12d, 2
	jne	.label_101
	cmp	byte ptr [rsp + 7], 0
	jne	.label_61
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_48
.label_70:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_139
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
.label_57:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_87
	test	r8b, r8b
	je	.label_87
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_53
.label_113:
	test	rsi, rsi
	jne	.label_137
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_137
.label_77:
	mov	dl, 1
.label_754:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_61
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_53:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_144
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_145
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x402804
	.globl sub_402804
	.type sub_402804, @function
sub_402804:

	nop	word ptr cs:[rax + rax]
.label_144:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_37
.label_145:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_40
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_48
	jmp	.label_56
	.section	.text
	.align	16
	#Procedure 0x40284d
	.globl sub_40284d
	.type sub_40284d, @function
sub_40284d:

	nop	dword ptr [rax]
.label_37:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_56
	jmp	.label_48
.label_40:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_56
.label_121:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_60
	xor	r15d, r15d
	jmp	.label_66
.label_101:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_51
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_48
.label_51:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_61
.label_47:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_53
	nop	word ptr cs:[rax + rax]
.label_56:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_61
	cmp	r12d, 2
	jne	.label_85
	mov	eax, r9d
	and	al, 1
	jne	.label_85
	cmp	r14, r11
	jae	.label_89
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_89:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_142
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_98
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_98:
	add	r14, 3
	mov	r9b, 1
.label_85:
	cmp	r14, r11
	jae	.label_104
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_104:
	inc	r14
	jmp	.label_82
.label_139:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_110
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_110:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_111:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_126
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_129
	cmp	rbp, -2
	je	.label_132
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_135
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_45:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_122
	bt	rsi, rdx
	jb	.label_100
.label_122:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_45
.label_135:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_42
	xor	r13d, r13d
.label_42:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_111
	jmp	.label_57
.label_140:
	xor	r13d, r13d
	jmp	.label_53
.label_137:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_53
.label_91:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_66
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_66
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_66
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_71
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_147
	cmp	byte ptr [rsp + 7], 0
	jne	.label_61
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_80
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_80:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_102
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_102:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_94
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_94:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_97
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_97:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_53
.label_66:
	xor	eax, eax
.label_115:
	xor	r13d, r13d
	jmp	.label_53
.label_87:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_108
	.section	.text
	.align	16
	#Procedure 0x402b33
	.globl sub_402b33
	.type sub_402b33, @function
sub_402b33:

	nop	word ptr cs:[rax + rax]
.label_62:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_108:
	test	r8b, r8b
	je	.label_116
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_117
	cmp	r14, r11
	jae	.label_118
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_118:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_117
	.section	.text
	.align	16
	#Procedure 0x402b7c
	.globl sub_402b7c
	.type sub_402b7c, @function
sub_402b7c:

	nop	dword ptr [rax]
.label_116:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_100
	cmp	r12d, 2
	jne	.label_125
	mov	eax, r9d
	and	al, 1
	jne	.label_125
	cmp	r14, r11
	jae	.label_128
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_128:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_130
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_130:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_136
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_136:
	add	r14, 3
	mov	r9b, 1
.label_125:
	cmp	r14, r11
	jae	.label_96
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_96:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_114
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_114:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_146
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_146:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_117:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_48
	test	r9b, 1
	je	.label_50
	mov	ebx, eax
	and	bl, 1
	jne	.label_50
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_54
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_54:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_83
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_83:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_50:
	cmp	r14, r11
	jae	.label_62
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_62
	.section	.text
	.align	16
	#Procedure 0x402c83
	.globl sub_402c83
	.type sub_402c83, @function
sub_402c83:

	nop	word ptr cs:[rax + rax]
.label_48:
	test	r9b, 1
	je	.label_120
	and	al, 1
	jne	.label_120
	cmp	r14, r11
	jae	.label_73
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_73:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_112
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_112:
	add	r14, 2
	xor	r9d, r9d
.label_120:
	mov	ebx, r15d
.label_82:
	cmp	r14, r11
	jae	.label_81
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_81:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_60
.label_129:
	xor	r13d, r13d
.label_126:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_57
.label_132:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_99
	mov	rsi, qword ptr [rsp + 0x50]
.label_75:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_63
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_75
	xor	r13d, r13d
	jmp	.label_57
.label_99:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_57
.label_63:
	xor	r13d, r13d
	jmp	.label_57
.label_71:
	xor	r13d, r13d
	jmp	.label_53
.label_147:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_53
	.section	.text
	.align	16
	#Procedure 0x402d58
	.globl sub_402d58
	.type sub_402d58, @function
sub_402d58:

	nop	dword ptr [rax + rax]
.label_43:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_119
	or	dl, al
	je	.label_100
.label_119:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_38
	or	dl, al
	jne	.label_38
	test	r10b, 1
	jne	.label_134
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_38
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_138
.label_38:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_141
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_46
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_46
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_72:
	cmp	r14, r11
	jae	.label_78
	mov	byte ptr [rcx + r14], al
.label_78:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_72
	jmp	.label_46
.label_61:
	mov	qword ptr [rsp + 0x20], rbp
.label_100:
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
.label_86:
	mov	r14, rax
.label_92:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_134:
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
	jmp	.label_86
.label_141:
	mov	rcx, qword ptr [rsp + 8]
.label_46:
	cmp	r14, r11
	jae	.label_92
	mov	byte ptr [rcx + r14], 0
	jmp	.label_92
.label_103:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402eec
	.globl sub_402eec
	.type sub_402eec, @function
sub_402eec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_148
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_149:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_149
.label_148:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f2e
	.globl sub_402f2e
	.type sub_402f2e, @function
sub_402f2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402f30

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
	jne	.label_150
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_150
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_151
.label_150:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_151:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_152
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_152:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f9e
	.globl sub_402f9e
	.type sub_402f9e, @function
sub_402f9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402fa0

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r14, r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x38], rdx
	cmp	rdi, rsi
	ja	.label_162
	lea	rax, [rsi - 1]
	cmp	rax, r14
	jae	.label_162
	xor	edx, edx
	mov	rax, r14
	div	rsi
	mov	ecx, 1
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	cmp	rdi, 2
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x40], rsi
	mov	qword ptr [rsp + 0x70], rax
	jb	.label_184
	lea	rcx, [rdi - 1]
	mov	r13, rax
	mov	rax, rcx
	mov	qword ptr [rsp + 8], rax
	imul	r13, rcx
	dec	r13
	mov	rsi, r13
	sub	rsi, rbp
	jae	.label_185
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rdi + r13]
	sub	rbp, r13
	mov	rdx, rbp
	call	memmove
	mov	r15, r13
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_170
.label_184:
	lea	r15, [rax - 1]
	jmp	.label_170
.label_185:
	xor	edi, edi
	mov	edx, 1
	call	lseek
	mov	rbp, -1
	test	rax, rax
	mov	r15, r13
	mov	rdi, qword ptr [rsp + 0x10]
	js	.label_161
.label_170:
	cmp	r13, r14
	jge	.label_181
	lea	rax, [r14 - 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	al, 1
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x50], r14
.label_154:
	cmp	rbp, -1
	jne	.label_153
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rsp + 7], al
	call	safe_read
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rax
	mov	al, byte ptr [rsp + 7]
	cmp	rbp, -1
	je	.label_161
.label_153:
	test	rbp, rbp
	je	.label_174
	mov	rdx, r14
	sub	rdx, r13
	cmp	rbp, rdx
	cmovb	rdx, rbp
	test	rdx, rdx
	je	.label_176
	mov	ecx, eax
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rax + rdx]
	xor	edi, edi
	mov	qword ptr [rsp + 0x28], rdi
	mov	rdi, rax
	mov	eax, ecx
	mov	qword ptr [rsp + 0x18], rsi
.label_180:
	mov	r14d, eax
	mov	r12, rsi
	mov	rbp, rdi
	mov	rax, r15
	sub	rax, r13
	mov	ecx, 0
	cmovns	rcx, rax
	cmp	rdx, rcx
	cmovb	rcx, rdx
	lea	rdi, [rbp + rcx]
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	qword ptr [rsp + 0x60], rdx
	sub	rdx, rcx
	call	memchr
	test	rax, rax
	lea	rcx, [rax + 1]
	setne	al
	cmove	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rcx
	sub	rbx, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp + 8], rcx
	jne	.label_164
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ebp, eax
	call	full_write
	cmp	rax, rbx
	mov	eax, ebp
	je	.label_163
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x40316a
	.globl sub_40316a
	.type sub_40316a, @function
sub_40316a:

	nop	word ptr [rax + rax]
.label_164:
	test	rcx, rcx
	jne	.label_163
	and	r14b, 1
	movzx	edi, r14b
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ebp, eax
	call	cwrite
	mov	eax, ebp
	nop	dword ptr [rax]
.label_163:
	add	r13, rbx
	test	al, al
	setne	r14b
	cmp	r15, r13
	jl	.label_157
	test	al, al
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_160
	mov	qword ptr [rsp + 0x30], rbx
	mov	byte ptr [rsp + 7], al
	mov	dl, al
	mov	rcx, r15
	jmp	.label_172
.label_157:
	mov	qword ptr [rsp + 0x30], rbx
	mov	byte ptr [rsp + 7], al
	mov	dl, al
	mov	rcx, r15
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_172:
	mov	dword ptr [rsp + 0x4c], edx
	cmp	rdi, rsi
	sete	al
	mov	r15, rcx
	mov	ebp, r14d
	xor	bpl, 1
	and	bpl, al
	mov	rax, qword ptr [rsp + 8]
	lea	r12, [rax + 1]
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_178:
	test	bpl, bpl
	jne	.label_158
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_155
	cmp	r12, rax
	ja	.label_156
.label_155:
	add	r15, qword ptr [rsp + 0x70]
	cmp	qword ptr [rsp + 0x40], r12
	cmove	r15, qword ptr [rsp + 0x68]
	test	rax, rax
	jne	.label_166
	cmp	r15, r13
	jge	.label_166
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	cmp	r15, r13
	setl	al
	or	al, r14b
	inc	r12
	test	al, 1
	jne	.label_178
	jmp	.label_171
	.section	.text
	.align	16
	#Procedure 0x403256
	.globl sub_403256
	.type sub_403256, @function
sub_403256:

	nop	word ptr cs:[rax + rax]
.label_166:
	cmp	r15, r13
	jge	.label_177
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	edx, dword ptr [rsp + 0x4c]
	jmp	.label_179
.label_177:
	xor	edx, edx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_179:
	mov	r14d, edx
	and	r14b, 1
	cmp	r15, r13
	mov	rax, r12
	mov	qword ptr [rsp + 8], rax
	mov	rcx, r15
	jl	.label_172
	test	r14b, r14b
	mov	rax, r12
	mov	qword ptr [rsp + 8], rax
	mov	rcx, r15
	jne	.label_172
	mov	qword ptr [rsp + 8], r12
	mov	al, byte ptr [rsp + 7]
	jmp	.label_173
.label_158:
	mov	r15, rbx
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_175
.label_171:
	dec	r12
	mov	qword ptr [rsp + 8], r12
.label_175:
	mov	al, byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_173:
	mov	rbx, qword ptr [rsp + 0x30]
.label_160:
	mov	rdx, qword ptr [rsp + 0x60]
	sub	rdx, rbx
	cmp	rdi, rsi
	jne	.label_180
	jmp	.label_159
	.section	.text
	.align	16
	#Procedure 0x4032f5
	.globl sub_4032f5
	.type sub_4032f5, @function
sub_4032f5:

	nop	word ptr cs:[rax + rax]
.label_176:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
.label_159:
	mov	rbp, -1
	mov	r14, qword ptr [rsp + 0x50]
	cmp	r13, r14
	mov	rdi, qword ptr [rsp + 0x10]
	jl	.label_154
	jmp	.label_174
.label_181:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_174:
	mov	rax, qword ptr [rsp + 0x28]
	and	al, 1
	movzx	eax, al
	test	rdi, rdi
	jne	.label_156
	mov	rcx, qword ptr [rsp + 8]
	lea	rcx, [rcx + rax]
	cmp	rcx, qword ptr [rsp + 0x40]
	ja	.label_156
	mov	rcx, qword ptr [rsp + 8]
	lea	rbp, [rcx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_156
	cmp	rbp, qword ptr [rsp + 0x40]
	lea	rbp, [rbp + 1]
	jbe	.label_183
.label_156:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_182:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	jmp	.label_165
.label_162:
	mov	edi, OFFSET FLAT:label_167
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 0x362
	mov	ecx, OFFSET FLAT:label_169
	call	__assert_fail
.label_161:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_165:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40340a
	.globl sub_40340a
	.type sub_40340a, @function
sub_40340a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403410
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40341d
	.globl sub_40341d
	.type sub_40341d, @function
sub_40341d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	16
	#Procedure 0x403430
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403433
	.globl sub_403433
	.type sub_403433, @function
sub_403433:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403448
	.globl sub_403448
	.type sub_403448, @function
sub_403448:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403450

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40345a
	.globl sub_40345a
	.type sub_40345a, @function
sub_40345a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403460
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
	#Procedure 0x403470

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x403479
	.globl sub_403479
	.type sub_403479, @function
sub_403479:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403480

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40348a
	.globl sub_40348a
	.type sub_40348a, @function
sub_40348a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034a4
	.globl sub_4034a4
	.type sub_4034a4, @function
sub_4034a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0

	.globl line_bytes_split
	.type line_bytes_split, @function
line_bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, rdx
	not	rax
	mov	qword ptr [rsp + 0x58], rax
	xor	edx, edx
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	xor	ebx, ebx
.label_190:
	mov	r12, rdx
	xor	edi, edi
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r14, rsi
	call	safe_read
	test	rax, rax
	je	.label_197
	cmp	rax, -1
	mov	qword ptr [rsp + 0x50], r14
	mov	r13, r14
	mov	qword ptr [rsp + 0x48], rax
	mov	rcx, rax
	mov	rdx, r12
	je	.label_209
	nop	dword ptr [rax + rax]
.label_199:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, qword ptr [rsp + 0x60]
	sub	r14, rbx
	mov	qword ptr [rsp + 0x20], rbp
	sub	r14, rbp
	cmp	r14, rcx
	mov	qword ptr [rsp + 0x40], rcx
	jbe	.label_192
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdi, r13
	mov	rdx, rcx
	call	memrchr
	mov	r12, rax
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_202
.label_192:
	lea	r15, [r13 + r14 - 1]
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdi, r13
	mov	rdx, r14
	call	memrchr
	mov	r12, rax
.label_202:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_208
	test	rbx, rbx
	je	.label_186
	test	r12, r12
	jne	.label_186
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x403592
	.globl sub_403592
	.type sub_403592, @function
sub_403592:

	nop	word ptr cs:[rax + rax]
.label_208:
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_206
	.section	.text
	.align	16
	#Procedure 0x4035a7
	.globl sub_4035a7
	.type sub_4035a7, @function
sub_4035a7:

	nop	word ptr [rax + rax]
.label_186:
	xor	edi, edi
	test	rbx, rbx
	sete	dil
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	call	cwrite
	add	rbx, rbp
	cmp	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x10], rbx
	jbe	.label_200
	mov	rdi, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], rbx
	jmp	.label_206
.label_200:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x18], rax
.label_206:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_188:
	test	r12, r12
	mov	qword ptr [rsp + 0x38], r15
	je	.label_187
	mov	rsi, r13
	mov	r13, r12
	sub	r13, rsi
	lea	rbp, [r13 + 1]
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	sete	dil
	mov	rdx, rbp
	call	cwrite
	lea	rbx, [rbx + r13 + 1]
	mov	rcx, qword ptr [rsp + 0x40]
	sub	rcx, rbp
	inc	r12
	test	r15, r15
	cmove	rbp, r15
	sub	r14, rbp
	mov	sil, 1
	mov	r13, r12
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x403658
	.globl sub_403658
	.type sub_403658, @function
sub_403658:

	nop	dword ptr [rax + rax]
.label_187:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	je	.label_198
	mov	rdx, qword ptr [rsp + 0x30]
	mov	eax, edx
	and	al, 1
	jne	.label_205
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	sete	dil
	test	r15, r15
	mov	rbp, rcx
	cmovne	rbp, r14
	mov	r12, r14
	cmove	r12, r15
	mov	rsi, r13
	mov	r15, rcx
	mov	rdx, rbp
	call	cwrite
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 0x38]
	add	rbx, rbp
	sub	rcx, rbp
	add	r13, rbp
	sub	r14, r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	esi, eax
	jmp	.label_193
.label_198:
	mov	rax, qword ptr [rsp + 0x30]
	mov	esi, eax
	jmp	.label_191
.label_205:
	mov	esi, edx
.label_191:
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
.label_193:
	test	r15, r15
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	je	.label_201
	test	r14, r14
	jne	.label_203
.label_201:
	test	r15, r15
	jne	.label_204
	test	rcx, rcx
	je	.label_204
.label_203:
	mov	rax, r15
	mov	r15, r13
	test	rax, rax
	cmove	r14, rcx
	mov	rax, rdx
	sub	rax, rbp
	cmp	rax, r14
	jae	.label_207
	mov	r12d, esi
	mov	r13, rcx
	cmp	rdx, qword ptr [rsp + 0x58]
	ja	.label_189
	add	rdx, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	jmp	.label_196
	.section	.text
	.align	16
	#Procedure 0x40373d
	.globl sub_40373d
	.type sub_40373d, @function
sub_40373d:

	nop	dword ptr [rax]
.label_207:
	mov	qword ptr [rsp + 0x18], rdx
	mov	r12d, esi
	mov	r13, rcx
.label_196:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rax + rbp]
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	add	rbp, r14
	mov	rcx, r13
	mov	r13, r15
	sub	rcx, r14
	add	r13, r14
	mov	r15, qword ptr [rsp + 0x38]
	mov	esi, r12d
	mov	rdx, qword ptr [rsp + 0x18]
.label_204:
	xor	eax, eax
	test	r15, r15
	mov	r15d, 0
	jne	.label_195
	mov	r15b, sil
.label_195:
	cmovne	rbx, rax
	test	rcx, rcx
	jne	.label_199
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_190
.label_197:
	test	rbp, rbp
	je	.label_194
	xor	edi, edi
	test	rbx, rbx
	sete	dil
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	cwrite
.label_194:
	mov	rdi, qword ptr [rsp + 8]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_189:
	call	xalloc_die
.label_209:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40384d
	.globl sub_40384d
	.type sub_40384d, @function
sub_40384d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403850

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
	#Procedure 0x403867
	.globl sub_403867
	.type sub_403867, @function
sub_403867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_211:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_210
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_211
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_210
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_211
.label_210:
	mov	rax, rbp
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
	#Procedure 0x4038f7
	.globl sub_4038f7
	.type sub_4038f7, @function
sub_4038f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403900

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_213
	cmp	byte ptr [rax], 0x43
	jne	.label_215
	cmp	byte ptr [rax + 1], 0
	je	.label_212
.label_215:
	mov	esi, OFFSET FLAT:label_214
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_213
.label_212:
	xor	ebx, ebx
.label_213:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403931
	.globl sub_403931
	.type sub_403931, @function
sub_403931:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403940
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
	#Procedure 0x40394f
	.globl sub_40394f
	.type sub_40394f, @function
sub_40394f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403950
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
	#Procedure 0x4039c2
	.globl sub_4039c2
	.type sub_4039c2, @function
sub_4039c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_216
	test	rdx, rdx
	je	.label_216
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_216:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4039fb
	.globl sub_4039fb
	.type sub_4039fb, @function
sub_4039fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a00
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a03
	.globl sub_403a03
	.type sub_403a03, @function
sub_403a03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a10
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	.section	.text
	.align	16
	#Procedure 0x403a11
	.globl sub_403a11
	.type sub_403a11, @function
sub_403a11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a20

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	dword ptr [rsp + 0x9c], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	qword ptr [rsp + 0xa0], 0
	mov	qword ptr [rsp + 0x90], 0
	mov	qword ptr [rsp + 0xa8], rbp
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_14
	call	setlocale
	mov	edi, OFFSET FLAT:label_243
	mov	esi, OFFSET FLAT:label_244
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_243
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:label_251
	call	bad_cast
	mov	qword ptr [word ptr [rip + infile]],  rax
	mov	edi, OFFSET FLAT:label_255
	call	bad_cast
	mov	qword ptr [word ptr [rip + outbase]],  rax
	mov	qword ptr [rsp + 0xc0], rbx
	not	rbx
	mov	qword ptr [rsp + 0xc8], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	movabs	r13, 0x7fffffffffffffff
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_224
	.section	.text
	.align	16
	#Procedure 0x403aee
	.globl sub_403aee
	.type sub_403aee, @function
sub_403aee:

	nop	
.label_292:
	mov	qword ptr [rsp + 0x90], rcx
	mov	ebx, 4
	mov	eax, ebp
	mov	qword ptr [rsp + 0xb0], rax
.label_224:
	mov	ebp,  dword ptr [dword ptr [rip + optind]]
	test	ebp, ebp
	mov	eax, 1
	cmove	ebp, eax
	mov	edx, OFFSET FLAT:label_270
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x9c]
	mov	rsi, qword ptr [rsp + 0xa8]
	call	getopt_long
	mov	r14d, eax
	lea	eax, [r14 + 0x83]
	cmp	eax, 0x106
	ja	.label_275
	jmp	qword ptr [word ptr [+ (rax * 8) + label_297]]
.label_806:
	cmp	ebx, 4
	je	.label_278
	test	ebx, ebx
	jne	.label_235
	mov	qword ptr [rsp + 0x90], 0
.label_278:
	mov	rax, qword ptr [rsp + 0xb0]
	test	eax, eax
	je	.label_285
	cmp	eax, ebp
	je	.label_285
	mov	qword ptr [rsp + 0x90], 0
	xor	eax, eax
	jmp	.label_287
.label_285:
	mov	rax, qword ptr [rsp + 0x90]
	movabs	rcx, 0x1999999999999999
	cmp	rax, rcx
	ja	.label_290
.label_287:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r14d
	lea	rcx, [rdx + rcx*2 - 0x30]
	cmp	rcx, rax
	jae	.label_292
	jmp	.label_290
.label_810:
	cmp	r14d, 0x64
	mov	ebp, OFFSET FLAT:label_249
	mov	eax, OFFSET FLAT:label_250
	cmove	rbp, rax
	mov	qword ptr [word ptr [rip + suffix_alphabet]],  rbp
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	test	r12, r12
	je	.label_224
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0xb8], rax
	mov	rdi, r12
	mov	rsi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0xb8], rax
	jne	.label_217
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rcx], 0x30
	jne	.label_221
.label_226:
	cmp	byte ptr [rcx + 1], 0
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	je	.label_259
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rcx
	cmp	byte ptr [rax + 1], 0x30
	je	.label_226
.label_221:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
.label_259:
	mov	qword ptr [word ptr [rip + numeric_suffix_start]],  rax
	jmp	.label_224
.label_812:
	test	ebx, ebx
	jne	.label_235
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_14
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	mov	ebx, 3
	jmp	.label_224
.label_815:
	mov	byte ptr [byte ptr [rip + unbuffered]],  1
	jmp	.label_224
.label_817:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + filter_command]],  rax
	jmp	.label_224
.label_819:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rdi, rbp
	call	last_component
	cmp	rax, rbp
	jne	.label_266
	mov	qword ptr [word ptr [rip + additional_suffix]],  rbp
	jmp	.label_224
.label_807:
	test	ebx, ebx
	jne	.label_235
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	mov	ebx, 2
	jmp	.label_224
.label_808:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_14
	xor	r9d, r9d
	mov	rdi, rbp
	movabs	rdx, 0x1fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
	jmp	.label_224
.label_809:
	test	ebx, ebx
	jne	.label_235
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	mov	ebx, 1
	jmp	.label_224
.label_811:
	mov	byte ptr [byte ptr [rip + elide_empty_files]],  1
	jmp	.label_224
.label_813:
	test	ebx, ebx
	jne	.label_235
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	r14d, al
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	test	byte ptr [rax + r14*2 + 1], 0x20
	je	.label_301
	inc	rbp
.label_218:
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [rbx]
	inc	rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_218
	dec	rbp
.label_301:
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 2
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_228
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 2
	mov	rdi, rbp
	call	strncmp
	mov	ebx, 5
	test	eax, eax
	jne	.label_234
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 6
	jmp	.label_234
.label_814:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_254
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_245
	cmp	al, 0x5c
	jne	.label_247
	cmp	dl, 0x30
	jne	.label_247
	cmp	byte ptr [rcx + 2], 0
	jne	.label_247
	xor	eax, eax
.label_245:
	mov	ecx,  dword ptr [dword ptr [rip + eolchar]]
	test	ecx, ecx
	movsx	eax, al
	js	.label_253
	cmp	eax, ecx
	jne	.label_258
.label_253:
	mov	dword ptr [dword ptr [rip + eolchar]],  eax
	jmp	.label_224
.label_816:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_224
.label_818:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
	jmp	.label_224
.label_228:
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 7
.label_234:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 0x2f
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_274
	lea	rdi, [rsp + 0xa0]
	lea	rsi, [rsp + 0x90]
	mov	rdx, rax
	call	parse_chunk
	jmp	.label_224
.label_274:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_14
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_224
.label_805:
	cmp	qword ptr [rsp + 0xa0], 0
	je	.label_288
	mov	rax,  qword ptr [word ptr [rip + filter_command]]
	test	rax, rax
	jne	.label_291
.label_288:
	test	ebx, ebx
	je	.label_294
	cmp	qword ptr [rsp + 0x90], 0
	jne	.label_295
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_298
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	edi, 1
	call	usage
.label_294:
	mov	qword ptr [rsp + 0x90], 0x3e8
	mov	ebx, 3
.label_295:
	cmp	dword ptr [dword ptr [rip + eolchar]],  0
	jns	.label_219
	mov	dword ptr [dword ptr [rip + eolchar]],  0xa
.label_219:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	esi, ebx
	call	set_suffix_length
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x9c]
	jge	.label_227
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + infile]],  rax
.label_227:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x9c]
	jge	.label_237
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + outbase]],  rax
.label_237:
	mov	eax, dword ptr [rsp + 0x9c]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jl	.label_248
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	test	rdi, rdi
	je	.label_296
	call	strlen
	cmp	rax,  qword ptr [word ptr [rip + suffix_length]]
	ja	.label_257
.label_296:
	mov	rax,  qword ptr [word ptr [rip + infile]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_241
	cmp	byte ptr [rax + 1], 0
	je	.label_260
.label_241:
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	js	.label_265
.label_260:
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	xor	edi, edi
	mov	esi, OFFSET FLAT:in_stat_buf
	call	fstat
	test	eax, eax
	jne	.label_252
	test	r15, r15
	jne	.label_223
	mov	ecx, 0x12
	mov	esi, OFFSET FLAT:in_stat_buf
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	r15, rax
.label_223:
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [r15 + rbp]
	call	xmalloc
	mov	rdi, rax
	mov	rsi, rbp
	call	ptr_align
	mov	r14, rax
	lea	eax, [rbx - 5]
	mov	rbp, -1
	cmp	eax, 1
	ja	.label_277
	mov	rdi, r14
	mov	rsi, r15
	call	input_file_size
	test	rax, rax
	js	.label_279
	mov	r13, qword ptr [rsp + 0x90]
	test	r13, r13
	js	.label_280
	cmp	rax, r15
	mov	rbp, r15
	cmovb	rbp, rax
	cmp	rax, r13
	cmova	r13, rax
.label_277:
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	je	.label_289
	mov	edi, OFFSET FLAT:newblocked
	call	sigemptyset
	lea	rdx, [rsp + 0xd0]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0xd0], 1
	je	.label_293
	mov	edi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
.label_293:
	xor	edi, edi
	mov	esi, OFFSET FLAT:newblocked
	mov	edx, OFFSET FLAT:oldblocked
	call	sigprocmask
.label_289:
	dec	ebx
	cmp	ebx, 6
	ja	.label_272
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_300]]
.label_849:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rsi, r14
	mov	rdx, r15
	call	lines_split
	jmp	.label_238
.label_847:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rcx, -1
	xor	r8d, r8d
	mov	rsi, r14
	mov	rdx, r15
	jmp	.label_220
.label_848:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rsi, r14
	mov	rdx, r15
	call	line_bytes_split
	jmp	.label_238
.label_850:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, qword ptr [rsp + 0x90]
	test	rdi, rdi
	je	.label_229
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbp
	mov	r9, r13
	call	bytes_chunk_extract
	jmp	.label_238
.label_851:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbp
	mov	r9, r13
	call	lines_chunk_split
	jmp	.label_238
.label_852:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, r14
	mov	rcx, r15
	call	lines_rr
	jmp	.label_238
.label_229:
	xor	edx, edx
	mov	rax, r13
	div	rbx
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
.label_220:
	call	bytes_split
.label_238:
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_252
	mov	esi,  dword ptr [dword ptr [rip + output_desc]]
	mov	edx,  dword ptr [dword ptr [rip + filter_pid]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	call	closeout
	xor	eax, eax
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_290:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x90]
	lea	rsi, [rsp + 0xd0]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8d, r14d
	call	error
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
.label_240:
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
.label_803:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_281
	mov	edx, OFFSET FLAT:label_282
	mov	r8d, OFFSET FLAT:label_283
	mov	r9d, OFFSET FLAT:label_284
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_804:
	xor	edi, edi
	call	usage
.label_275:
	mov	edi, 1
	call	usage
.label_252:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_247:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_217:
	xor	edi, edi
	cmp	r14d, 0x64
	jne	.label_222
	mov	esi, OFFSET FLAT:label_263
	jmp	.label_264
.label_266:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	jmp	.label_264
.label_254:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	jmp	.label_231
.label_258:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
.label_231:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_291:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	jmp	.label_240
.label_248:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rdi, qword ptr [rcx + rax*8]
	jmp	.label_246
.label_272:
	call	abort
.label_265:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_261
.label_257:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	jmp	.label_240
.label_279:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_261:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x90]
	lea	rsi, [rsp + 0xd0]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_222:
	mov	esi, OFFSET FLAT:label_286
.label_264:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
.label_246:
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
	#Procedure 0x4045a9
	.globl sub_4045a9
	.type sub_4045a9, @function
sub_4045a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_310
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_303:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_303
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_305
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_311
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_314
	cmp	eax, 0x22
	jne	.label_305
	mov	r12d, 1
.label_314:
	test	rbp, rbp
	jne	.label_320
	jmp	.label_308
.label_311:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_305
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_305
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_305
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_320:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_308
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_312
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_313
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_313
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_307
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_304
	cmp	ecx, 0x44
	je	.label_304
	cmp	ecx, 0x69
	jne	.label_307
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_307
.label_304:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_307
.label_313:
	mov	rsi, r14
.label_307:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_312
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_315]]
.label_777:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_306
.label_312:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_319
.label_778:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_306
.label_779:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_306
.label_781:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_306
.label_775:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_309
.label_776:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_306
.label_780:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_306
.label_782:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_306
.label_783:
	lea	rdi, [rsp]
	mov	edx, 7
.label_306:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_309:
	mov	rsi, r14
.label_785:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_308:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_319:
	mov	r15d, r12d
.label_305:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_784:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_309
.label_786:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_309
.label_310:
	mov	edi, OFFSET FLAT:label_316
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_318
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404852
	.globl sub_404852
	.type sub_404852, @function
sub_404852:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_322
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_282
	mov	ecx, OFFSET FLAT:label_325
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4048d4
	.globl sub_4048d4
	.type sub_4048d4, @function
sub_4048d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_326
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_326:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404903
	.globl sub_404903
	.type sub_404903, @function
sub_404903:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_328
.label_327:
	pop	rbx
	ret	
.label_328:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40492a
	.globl sub_40492a
	.type sub_40492a, @function
sub_40492a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40493a
	.globl sub_40493a
	.type sub_40493a, @function
sub_40493a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_329:
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
	ja	.label_329
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40498b
	.globl sub_40498b
	.type sub_40498b, @function
sub_40498b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404990

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [r13 - 1]
	mov	bpl, 1
	xor	r12d, r12d
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x10], rsi
.label_338:
	cmp	r14, -1
	je	.label_330
	cmp	r14, qword ptr [rsp + 0x20]
	setb	byte ptr [rsp + 7]
	jmp	.label_332
	.section	.text
	.align	16
	#Procedure 0x4049d9
	.globl sub_4049d9
	.type sub_4049d9, @function
sub_4049d9:

	nop	dword ptr [rax]
.label_330:
	mov	r15d, eax
	test	al, 1
	jne	.label_335
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	cmp	rax, -1
	je	.label_343
	mov	bpl, 1
.label_343:
	cmovne	rbx, qword ptr [rsp + 0x18]
.label_335:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x20]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_334
	test	r14, r14
	sete	byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	eax, r15d
.label_332:
	cmp	r14, rbx
	jae	.label_342
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_345
	.section	.text
	.align	16
	#Procedure 0x404a3f
	.globl sub_404a3f
	.type sub_404a3f, @function
sub_404a3f:

	nop	
.label_342:
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_331:
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_336
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, rbx
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_336:
	movzx	ecx, bpl
	add	r12, rcx
	cmp	rsi, r12
	jae	.label_341
	mov	ecx, eax
	and	cl, 1
	je	.label_344
.label_341:
	cmp	rsi, r12
	setae	bpl
	add	r15, rbx
	sub	r14, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	r14, rcx
	mov	rbx, rcx
	jae	.label_331
	mov	rbx, qword ptr [rsp + 0x18]
.label_345:
	mov	cl, 1
	test	r14, r14
	je	.label_337
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_340
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, r14
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_340:
	movzx	ecx, bpl
	add	r12, rcx
	xor	ebp, ebp
	mov	edi, eax
	and	dil, 1
	mov	rdx, r14
	cmove	rdx, rbp
	cmp	r12, r13
	setne	cl
	cmovne	rdx, r14
	sub	rbx, rdx
	or	cl, dil
.label_337:
	test	cl, 1
	je	.label_344
	xor	byte ptr [rsp + 7], 1
	mov	r14, -1
	jne	.label_338
.label_344:
	cmp	r12, r13
	jae	.label_333
	sub	r13, r12
	nop	word ptr cs:[rax + rax]
.label_339:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	r13
	jne	.label_339
.label_333:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_334:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_346:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_346
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_350
	.section	.text
	.align	16
	#Procedure 0x404ba1
	.globl sub_404ba1
	.type sub_404ba1, @function
sub_404ba1:

	nop	word ptr cs:[rax + rax]
.label_348:
	inc	rax
	mov	sil, dl
.label_350:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_348
	test	cl, cl
	je	.label_347
	mov	edx, esi
	and	dl, 1
	je	.label_349
	xor	esi, esi
.label_349:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_348
.label_347:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bdb
	.globl sub_404bdb
	.type sub_404bdb, @function
sub_404bdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404be0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_352:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_351
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_352
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_351
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_352
.label_351:
	mov	rax, rbp
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
	#Procedure 0x404c67
	.globl sub_404c67
	.type sub_404c67, @function
sub_404c67:

	nop	word ptr [rax + rax]
.label_353:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x404c7c
	.globl sub_404c7c
	.type sub_404c7c, @function
sub_404c7c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c89

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_353
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c90

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404cb2
	.globl sub_404cb2
	.type sub_404cb2, @function
sub_404cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_355
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_355
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_355:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404ce6
	.globl sub_404ce6
	.type sub_404ce6, @function
sub_404ce6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_356
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_356:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_357
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_359
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_358
.label_359:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_358:
	mov	edx, dword ptr [rax]
.label_357:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404db4
	.globl sub_404db4
	.type sub_404db4, @function
sub_404db4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

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
	#Procedure 0x404de3
	.globl sub_404de3
	.type sub_404de3, @function
sub_404de3:

	nop	word ptr cs:[rax + rax]
.label_363:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_361
	.section	.text
	.align	16
	#Procedure 0x404dfc

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_364
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_363
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_363
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_360
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_361
.label_364:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_361:
	test	ebx, ebx
	js	.label_360
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_360
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_362
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_360
.label_362:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_360:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404eb3
	.globl sub_404eb3
	.type sub_404eb3, @function
sub_404eb3:

	nop	word ptr cs:[rax + rax]
.label_368:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_366:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_367
	inc	r9
	cmp	r9, 0xa
	jb	.label_365
.label_367:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404eef
	.globl sub_404eef
	.type sub_404eef, @function
sub_404eef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404ef0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_365:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_368
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404f19
	.globl sub_404f19
	.type sub_404f19, @function
sub_404f19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f20

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	16
	#Procedure 0x404f25
	.globl sub_404f25
	.type sub_404f25, @function
sub_404f25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbx
	mov	rbx, rsi
	call	str2signum
	mov	dword ptr [rbx], eax
	sar	eax, 0x1f
	pop	rbx
	ret	
.label_371:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_369
.label_370:
	mov	eax, 1
	test	bpl, bpl
	je	.label_369
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
.label_369:
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
	#Procedure 0x404f88
	.globl sub_404f88
	.type sub_404f88, @function
sub_404f88:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f8b

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
	je	.label_371
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_370
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fca
	.globl sub_404fca
	.type sub_404fca, @function
sub_404fca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404ff2
	.globl sub_404ff2
	.type sub_404ff2, @function
sub_404ff2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_374:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_373
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_374
.label_373:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405026
	.globl sub_405026
	.type sub_405026, @function
sub_405026:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030

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
	#Procedure 0x405069
	.globl sub_405069
	.type sub_405069, @function
sub_405069:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405070

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
	#Procedure 0x405081
	.globl sub_405081
	.type sub_405081, @function
sub_405081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090
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
	#Procedure 0x4050a4
	.globl sub_4050a4
	.type sub_4050a4, @function
sub_4050a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

	.globl lines_rr
	.type lines_rr, @function
lines_rr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r12, rcx
	mov	qword ptr [rsp + 0x50], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	test	rdi, rdi
	jne	.label_392
	mov	esi, 0x20
	mov	rdi, r14
	call	xnmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_392
	mov	rbp, r15
	add	rbp, 0x18
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_382:
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x10], 0xffffffff
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp], 0
	add	rbp, 0x20
	dec	rbx
	jne	.label_382
.label_392:
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x10], r14
	xor	ebp, ebp
	mov	ebx, 1
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x60], r12
	jmp	.label_393
	.section	.text
	.align	16
	#Procedure 0x405161
	.globl sub_405161
	.type sub_405161, @function
sub_405161:

	nop	word ptr cs:[rax + rax]
.label_401:
	mov	r12, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x18]
.label_393:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	call	safe_read
	mov	r15, rax
	test	r15, r15
	je	.label_379
	cmp	r15, -1
	je	.label_384
	mov	rax, qword ptr [rsp + 0x50]
	add	r15, rax
	mov	rsi, rax
	jmp	.label_387
	.section	.text
	.align	16
	#Procedure 0x4051ac
	.globl sub_4051ac
	.type sub_4051ac, @function
sub_4051ac:

	nop	dword ptr [rax]
.label_391:
	cmp	rbx, qword ptr [rsp + 0x10]
	lea	rax, [rbx + 1]
	mov	ebx, 1
	cmovne	rbx, rax
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x58]
.label_387:
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13d, ecx
.label_376:
	mov	rbp, rax
.label_400:
	mov	qword ptr [rsp + 0x18], rbp
	shl	rbp, 5
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + rbp + 8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x30], rbp
	lea	r12, [rax + rbp + 0x10]
	mov	rbp, rsi
.label_377:
	mov	al, r13b
	mov	qword ptr [rsp + 0x38], rax
	nop	word ptr [rax + rax]
.label_388:
	cmp	rbp, r15
	je	.label_401
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdx, r15
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	mov	rcx, r15
	mov	r14, rax
	lea	r13, [r14 + 1]
	test	r14, r14
	mov	qword ptr [rsp + 0x58], r13
	cmove	r13, rcx
	sub	r13, rbp
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_381
	cmp	rbx, rax
	jne	.label_396
	cmp	byte ptr [byte ptr [rip + unbuffered]],  1
	jne	.label_399
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	je	.label_396
	jmp	.label_383
	.section	.text
	.align	16
	#Procedure 0x405278
	.globl sub_405278
	.type sub_405278, @function
sub_405278:

	nop	dword ptr [rax + rax]
.label_399:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_385
.label_396:
	test	r14, r14
	mov	rbp, r15
	je	.label_388
	jmp	.label_391
	.section	.text
	.align	16
	#Procedure 0x4052b2
	.globl sub_4052b2
	.type sub_4052b2, @function
sub_4052b2:

	nop	word ptr cs:[rax + rax]
.label_381:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	call	ofile_open
	mov	byte ptr [rsp + 7], al
	cmp	byte ptr [byte ptr [rip + unbuffered]],  1
	jne	.label_398
	mov	rax, qword ptr [rsp + 0x48]
	mov	edi, dword ptr [rax]
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	jne	.label_378
	jmp	.label_380
.label_398:
	mov	rcx, qword ptr [r12]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_380
.label_378:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable
	test	al, al
	je	.label_389
.label_380:
	mov	rax, qword ptr [rsp + 0x38]
	and	al, 1
	mov	r13b, byte ptr [rsp + 7]
	or	r13b, al
	call	__errno_location
	mov	rbp, rax
	mov	edi, dword ptr [rbp]
	call	ignorable
	test	al, al
	jne	.label_395
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
.label_395:
	test	r13b, r13b
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_404
	mov	rdi, qword ptr [r12]
	call	rpl_fclose
	test	eax, eax
	jne	.label_403
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x48]
	mov	dword ptr [rax], 0xfffffffe
	mov	rcx, qword ptr [rsp + 0x20]
.label_404:
	test	r14, r14
	mov	rbp, r15
	je	.label_377
	mov	rbp, qword ptr [rsp + 0x18]
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x58]
	jne	.label_400
	mov	al, 1
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x28]
	test	dl, 1
	mov	edx, 0
	mov	qword ptr [rsp + 0x28], rdx
	jne	.label_376
	jmp	.label_397
.label_379:
	mov	rcx, qword ptr [rsp + 0x20]
.label_397:
	test	rcx, rcx
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 8]
	jne	.label_402
	test	r15, r15
	je	.label_402
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	cmovne	rbp, r15
	movsxd	r14, ebp
	lea	rbp, [r12 + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_394:
	cmp	rbx, r14
	jb	.label_375
	movzx	eax,  byte ptr [byte ptr [rip + elide_empty_files]]
	test	al, al
	jne	.label_375
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r15
	call	ofile_open
.label_375:
	mov	esi, dword ptr [rbp - 0x10]
	test	esi, esi
	js	.label_386
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp]
	call	closeout
.label_386:
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	inc	rbx
	add	rbp, 0x20
	cmp	r15, rbx
	jne	.label_394
.label_402:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_385:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
.label_383:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
.label_390:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_384:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	jmp	.label_390
.label_403:
	mov	ebp, dword ptr [rbp]
.label_389:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rax + rcx]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_405:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4054e5
	.globl sub_4054e5
	.type sub_4054e5, @function
sub_4054e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054ef

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_405
	call	rpl_calloc
	test	rax, rax
	je	.label_405
	pop	rcx
	ret	
.label_407:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405513
	.globl sub_405513
	.type sub_405513, @function
sub_405513:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405515

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax,  word ptr [word ptr [rip + label_406]]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_407
	mov	al, 1
	ret	
.label_409:
	mov	eax, ebx
.label_408:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40553d
	.globl sub_40553d
	.type sub_40553d, @function
sub_40553d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40554c

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
	ja	.label_409
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
	jmp	.label_408
.label_412:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_410
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4055a0
	.globl sub_4055a0
	.type sub_4055a0, @function
sub_4055a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055af

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_412
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_413
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_413
	mov	esi, OFFSET FLAT:label_414
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_411
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_411:
	mov	rbx, r14
.label_413:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40563a
	.globl sub_40563a
	.type sub_40563a, @function
sub_40563a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405640

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
	#Procedure 0x405689
	.globl sub_405689
	.type sub_405689, @function
sub_405689:

	nop	dword ptr [rax]
.label_417:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_416
	.section	.text
	.align	16
	#Procedure 0x40569d

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
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_417
	cmp	eax, 1
	je	.label_419
	test	eax, eax
	jne	.label_416
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_420
	cmp	rbx, r15
	jbe	.label_421
.label_420:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_418
	mov	dword ptr [rax], 0x4b
	jmp	.label_416
.label_419:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_416
.label_418:
	mov	dword ptr [rax], 0x22
.label_416:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_421:
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
	#Procedure 0x405756
	.globl sub_405756
	.type sub_405756, @function
sub_405756:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405760

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
	#Procedure 0x40578d
	.globl sub_40578d
	.type sub_40578d, @function
sub_40578d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405790

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
	#Procedure 0x4057a3
	.globl sub_4057a3
	.type sub_4057a3, @function
sub_4057a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0

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
	je	.label_424
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_422
	jmp	.label_423
.label_424:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_423
.label_422:
	mov	eax, 1
	test	bpl, bpl
	je	.label_423
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
.label_423:
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
	#Procedure 0x405838
	.globl sub_405838
	.type sub_405838, @function
sub_405838:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405840

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
	je	.label_425
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_427
	jmp	.label_426
.label_425:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_426
.label_427:
	mov	eax, 1
	test	bpl, bpl
	je	.label_426
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
.label_426:
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
	#Procedure 0x4058b9
	.globl sub_4058b9
	.type sub_4058b9, @function
sub_4058b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058c0

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
	je	.label_430
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_429
	jmp	.label_428
.label_430:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_428
.label_429:
	mov	eax, 1
	test	bpl, bpl
	je	.label_428
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
.label_428:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405923
	.globl sub_405923
	.type sub_405923, @function
sub_405923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405930

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
	je	.label_433
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_431
	jmp	.label_432
.label_433:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_432
.label_431:
	mov	eax, 1
	test	bpl, bpl
	je	.label_432
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_432:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40598f
	.globl sub_40598f
	.type sub_40598f, @function
sub_40598f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405990

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
	je	.label_434
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_436
	jmp	.label_435
.label_434:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_435
.label_436:
	mov	eax, 1
	test	bpl, bpl
	je	.label_435
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_435:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059d9
	.globl sub_4059d9
	.type sub_4059d9, @function
sub_4059d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059e0

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
	je	.label_439
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_438
	jmp	.label_437
.label_439:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_437
.label_438:
	mov	eax, 1
	test	bpl, bpl
	je	.label_437
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_437:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a25
	.globl sub_405a25
	.type sub_405a25, @function
sub_405a25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a30

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_440
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_442
	jmp	.label_441
.label_440:
	mov	eax, 1
	test	cl, cl
	je	.label_441
.label_442:
	xor	eax, eax
.label_441:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a5f
	.globl sub_405a5f
	.type sub_405a5f, @function
sub_405a5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405a60
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
	#Procedure 0x405a93
	.globl sub_405a93
	.type sub_405a93, @function
sub_405a93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405aa0

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	r15
	push	r14
	push	rbx
	cmp	qword ptr [word ptr [rip + outfile]],  0
	je	.label_449
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	test	rax, rax
	je	.label_459
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	dl,  byte ptr [byte ptr [rip + suffix_auto]]
	xor	dl, 1
	mov	rsi,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	nop	dword ptr [rax]
.label_455:
	inc	qword ptr [rcx + rax*8 - 8]
	cmp	rax, 1
	sete	bl
	and	bl, dl
	cmp	bl, 1
	jne	.label_444
	mov	rbx, qword ptr [rcx]
	cmp	byte ptr [rsi + rbx + 1], 0
	je	.label_449
.label_444:
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	movzx	ebx, byte ptr [rsi + rbx]
	mov	byte ptr [rdi + rax - 1], bl
	test	bl, bl
	jne	.label_447
	mov	qword ptr [rcx + rax*8 - 8], 0
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [rdi + rax - 1], bl
	dec	rax
	jne	.label_455
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_449:
	mov	rbx,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	test	rbx, rbx
	je	.label_446
	lea	rax, [rbx + 2]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
	inc	qword ptr [word ptr [rip + suffix_length]]
	jmp	.label_450
.label_446:
	mov	rdi,  qword ptr [word ptr [rip + outbase]]
	call	strlen
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rax
	mov	rdi,  qword ptr [word ptr [rip + additional_suffix]]
	xor	eax, eax
	test	rdi, rdi
	je	.label_458
	call	strlen
.label_458:
	mov	qword ptr [word ptr [rip + next_file_name.addsuf_length]],  rax
	add	rax,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	add	rax,  qword ptr [word ptr [rip + suffix_length]]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
.label_450:
	mov	rsi,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	inc	rsi
	cmp	rsi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	jb	.label_456
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	xrealloc
	test	rbx, rbx
	mov	qword ptr [word ptr [rip + outfile]],  rax
	je	.label_448
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	rcx, qword ptr [rcx]
	mov	rdx,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	cl, byte ptr [rdx + rcx]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	byte ptr [rax + rdx], cl
	inc	rdx
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rdx
	jmp	.label_451
.label_448:
	mov	rsi,  qword ptr [word ptr [rip + outbase]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	rdi, rax
	call	memcpy
.label_451:
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	add	rdi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	qword ptr [word ptr [rip + outfile_mid]],  rdi
	mov	rax,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdx,  qword ptr [word ptr [rip + suffix_length]]
	movzx	esi, byte ptr [rax]
	call	memset
	mov	rsi,  qword ptr [word ptr [rip + additional_suffix]]
	test	rsi, rsi
	je	.label_445
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	add	rdi,  qword ptr [word ptr [rip + suffix_length]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.addsuf_length]]
	call	memcpy
.label_445:
	mov	rax,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	mov	byte ptr [rcx + rax], 0
	mov	rdi,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + suffix_length]]
	mov	esi, 8
	call	xcalloc
	mov	qword ptr [word ptr [rip + next_file_name.sufindex]],  rax
	mov	r14,  qword ptr [word ptr [rip + numeric_suffix_start]]
	test	r14, r14
	je	.label_447
	test	rbx, rbx
	jne	.label_457
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	mov	r15,  qword ptr [word ptr [rip + suffix_length]]
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	add	rdi, r15
	sub	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	je	.label_447
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	rax,  qword ptr [word ptr [rip + numeric_suffix_start]]
	lea	rcx, [rcx + r15*8 - 8]
	nop	word ptr [rax + rax]
.label_443:
	movsx	rdx, byte ptr [rax + rbx - 1]
	add	rdx, -0x30
	dec	rbx
	mov	qword ptr [rcx], rdx
	lea	rcx, [rcx - 8]
	jne	.label_443
.label_447:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_456:
	call	xalloc_die
.label_457:
	mov	edi, OFFSET FLAT:label_452
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:label_453
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405d3a
	.globl sub_405d3a
	.type sub_405d3a, @function
sub_405d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_460
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_463:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_463
.label_460:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_464
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_462]], OFFSET FLAT:slot0
.label_464:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_461
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_461:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dd1
	.globl sub_405dd1
	.type sub_405dd1, @function
sub_405dd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dea
	.globl sub_405dea
	.type sub_405dea, @function
sub_405dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, rbx
	shl	rax, 5
	cmp	dword ptr [r14 + rax + 8], 0
	js	.label_476
	xor	ebp, ebp
	jmp	.label_469
.label_476:
	lea	rcx, [r14 + rax + 8]
	mov	qword ptr [rsp + 8], rcx
	test	rbx, rbx
	mov	r13, r15
	cmovne	r13, rbx
	dec	r13
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [r14 + rax]
	mov	qword ptr [rsp], rax
	xor	ebp, ebp
	jmp	.label_471
	.section	.text
	.align	16
	#Procedure 0x405e45
	.globl sub_405e45
	.type sub_405e45, @function
sub_405e45:

	nop	word ptr cs:[rax + rax]
.label_475:
	lea	rax, [r14 + rbp + 8]
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	bpl, 1
.label_471:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], -1
	je	.label_473
	mov	esi, 0xc01
	xor	eax, eax
	call	open_safer
	jmp	.label_466
	.section	.text
	.align	16
	#Procedure 0x405e85
	.globl sub_405e85
	.type sub_405e85, @function
sub_405e85:

	nop	word ptr cs:[rax + rax]
.label_473:
	call	create
.label_466:
	test	eax, eax
	jns	.label_468
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	lea	eax, [rbp - 0x17]
	cmp	eax, 1
	ja	.label_472
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	rbp, r13
	shl	rbp, 5
	cmp	dword ptr [r14 + rbp + 8], 0
	jns	.label_465
	test	r13, r13
	cmove	r13, r15
	dec	r13
	cmp	r13, rbx
	jne	.label_470
	jmp	.label_478
.label_465:
	mov	rdi, qword ptr [r14 + rbp + 0x10]
	call	rpl_fclose
	test	eax, eax
	je	.label_475
	mov	ebx, dword ptr [r12]
	mov	rdx, qword ptr [r14 + rbp]
	jmp	.label_477
.label_468:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	esi, OFFSET FLAT:label_479
	mov	edi, eax
	call	fdopen
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + rcx + 0x10], rax
	test	rax, rax
	je	.label_467
	mov	eax,  dword ptr [dword ptr [rip + filter_pid]]
	mov	dword ptr [r14 + rcx + 0x18], eax
	mov	dword ptr [dword ptr [rip + filter_pid]],  0
.label_469:
	and	bpl, 1
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_478:
	mov	ebx, dword ptr [r12]
.label_474:
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
.label_477:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_472:
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_467:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x405fab
	.globl sub_405fab
	.type sub_405fab, @function
sub_405fab:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fb0

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_489
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_480
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_487
	jmp	.label_480
.label_489:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_491
	nop	dword ptr [rax + rax]
.label_486:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_482
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_486
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_488
	mov	esi, OFFSET FLAT:label_490
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_481
.label_488:
	test	r14d, r14d
	jle	.label_480
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_480
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_480
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_480
	test	rax, rax
	jg	.label_480
	mov	ecx, r14d
	jmp	.label_485
.label_482:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_487
.label_481:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_480
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_480
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_483
.label_480:
	mov	eax, 0xffffffff
.label_487:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_483:
	mov	ecx, ebp
.label_485:
	add	rax, rcx
	jmp	.label_487
	.section	.text
	.align	16
	#Procedure 0x4060e2
	.globl sub_4060e2
	.type sub_4060e2, @function
sub_4060e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060f0

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
	mov	rcx,  qword ptr [word ptr [rip + label_492]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_493]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_494]]
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
	#Procedure 0x40615d
	.globl sub_40615d
	.type sub_40615d, @function
sub_40615d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406160

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40616d
	.globl sub_40616d
	.type sub_40616d, @function
sub_40616d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406170

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x406177
	.globl sub_406177
	.type sub_406177, @function
sub_406177:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180

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
	je	.label_495
	cmp	r15, -2
	jb	.label_495
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_495
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_495:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061d6
	.globl sub_4061d6
	.type sub_4061d6, @function
sub_4061d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	je	.label_496
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
.label_496:
	add	esi, -5
	xor	r14d, r14d
	cmp	esi, 2
	ja	.label_503
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	je	.label_499
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_14
	call	xstrtoumax
	test	eax, eax
	jne	.label_499
	mov	rax, qword ptr [rsp]
	mov	rcx, rbx
	not	rcx
	xor	edx, edx
	cmp	rax, rbx
	mov	esi, 0
	cmovb	rsi, rax
	cmp	rax, rcx
	cmova	rsi, rdx
	add	rbx, rsi
.label_499:
	mov	rdi,  qword ptr [word ptr [rip + suffix_alphabet]]
	call	strlen
	mov	rcx, rax
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	mov	rsi, rdx
	xor	edi, edi
	cmp	rcx, rbx
	ja	.label_497
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_504:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	inc	rdi
	mov	rbx, rax
	cmp	rcx, rbx
	jbe	.label_504
.label_497:
	xor	r14d, r14d
	test	rsi, rsi
	setne	r14b
	add	r14, rdi
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
.label_503:
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	test	rax, rax
	je	.label_498
	cmp	rax, r14
	jb	.label_502
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
	jmp	.label_501
.label_498:
	cmp	r14, 2
	mov	eax, 2
	cmovae	rax, r14
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
.label_501:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406310

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
	je	.label_515
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_507
.label_515:
	mov	edx, OFFSET FLAT:label_509
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_514
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
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_516
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_517]]
.label_858:
	add	rsp, 8
	jmp	.label_508
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
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
	jmp	.label_508
.label_859:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_511
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
.label_860:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_505
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
.label_861:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
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
.label_862:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_518
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
	jmp	.label_508
.label_863:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_513
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
	jmp	.label_508
.label_864:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_519
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
	jmp	.label_508
.label_865:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_522
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
	jmp	.label_508
.label_867:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_506
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
	jmp	.label_508
.label_866:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
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
.label_508:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406668
	.globl sub_406668
	.type sub_406668, @function
sub_406668:

	nop	dword ptr [rax + rax]
.label_524:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406673
	.globl sub_406673
	.type sub_406673, @function
sub_406673:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40667b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_524
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x406690

	.globl lines_split
	.type lines_split, @function
lines_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	xor	r12d, r12d
	mov	qword ptr [rsp + 8], r14
	nop	word ptr [rax + rax]
.label_530:
	xor	edi, edi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x18]
	call	safe_read
	cmp	rax, -1
	je	.label_527
	lea	rbx, [r14 + rax]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	mov	byte ptr [r14 + rax], cl
	mov	qword ptr [rsp + 0x20], rax
	lea	rbp, [r14 + rax + 1]
	jmp	.label_529
	.section	.text
	.align	16
	#Procedure 0x4066f3
	.globl sub_4066f3
	.type sub_4066f3, @function
sub_4066f3:

	nop	word ptr cs:[rax + rax]
.label_528:
	mov	eax, dword ptr [rsp + 4]
	and	al, 1
	mov	rdx, r14
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rdx, rsi
	movzx	edi, al
	call	cwrite
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	xor	r12d, r12d
.label_529:
	mov	r15d,  dword ptr [dword ptr [rip + eolchar]]
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_526:
	mov	rdx, rbp
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	r14, rax
	cmp	r14, rbx
	je	.label_525
	inc	r14
	inc	r12
	cmp	r12, r13
	jb	.label_526
	jmp	.label_528
	.section	.text
	.align	16
	#Procedure 0x406756
	.globl sub_406756
	.type sub_406756, @function
sub_406756:

	nop	word ptr cs:[rax + rax]
.label_525:
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rbx, rsi
	je	.label_531
	mov	eax, dword ptr [rsp + 4]
	and	al, 1
	movzx	edi, al
	mov	rdx, rbx
	call	cwrite
	mov	dword ptr [rsp + 4], 0
.label_531:
	mov	r14, qword ptr [rsp + 8]
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_530
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_527:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

	.globl bytes_chunk_extract
	.type bytes_chunk_extract, @function
bytes_chunk_extract:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r14, rcx
	mov	r15, rdx
	lea	r13, [rdi - 1]
	cmp	r13, rsi
	jae	.label_533
	cmp	rsi, r9
	ja	.label_533
	xor	edx, edx
	mov	rax, r9
	div	rsi
	mov	r12, rax
	imul	r13, r12
	imul	r12, rdi
	cmp	rdi, rsi
	cmove	r12, r9
	cmp	r13, rbx
	jae	.label_536
	lea	rsi, [r15 + r13]
	sub	rbx, r13
	mov	rdi, r15
	mov	rdx, rbx
	call	memmove
	jmp	.label_538
.label_536:
	xor	edi, edi
	mov	edx, 1
	mov	rsi, r13
	call	lseek
	mov	rbx, -1
	test	rax, rax
	jns	.label_538
	jmp	.label_534
	.section	.text
	.align	16
	#Procedure 0x40685d
	.globl sub_40685d
	.type sub_40685d, @function
sub_40685d:

	nop	dword ptr [rax]
.label_532:
	add	r13, rbp
	mov	rbx, -1
.label_538:
	cmp	r12, r13
	jle	.label_537
	cmp	rbx, -1
	jne	.label_541
	xor	edi, edi
	mov	rsi, r15
	mov	rdx, r14
	call	safe_read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_534
.label_541:
	test	rbx, rbx
	je	.label_537
	mov	rbp, r12
	sub	rbp, r13
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, 1
	mov	rsi, r15
	mov	rdx, rbp
	call	full_write
	cmp	rax, rbp
	je	.label_532
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable
	test	al, al
	jne	.label_532
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_251
	jmp	.label_535
.label_537:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_534:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
.label_535:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_533:
	mov	edi, OFFSET FLAT:label_539
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 0x3e0
	mov	ecx, OFFSET FLAT:label_540
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40692a
	.globl sub_40692a
	.type sub_40692a, @function
sub_40692a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406930
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
	#Procedure 0x40693f
	.globl sub_40693f
	.type sub_40693f, @function
sub_40693f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406940

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
	#Procedure 0x40694d
	.globl sub_40694d
	.type sub_40694d, @function
sub_40694d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406950
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
	#Procedure 0x40695f
	.globl sub_40695f
	.type sub_40695f, @function
sub_40695f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	xor	eax, eax
	mov	esi, OFFSET FLAT:label_491
	nop	word ptr cs:[rax + rax]
.label_543:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_542
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_543
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_544
	cmp	eax, ebp
	jl	.label_544
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_545
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_546
.label_542:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_544
.label_545:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_546:
	xor	ebx, ebx
	sub	ebp, r15d
	je	.label_544
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_547
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_544:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a25
	.globl sub_406a25
	.type sub_406a25, @function
sub_406a25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a3a
	.globl sub_406a3a
	.type sub_406a3a, @function
sub_406a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406a70

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_555
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_555:
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
	ja	.label_549
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_559
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_557
	test	esi, esi
	jne	.label_549
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_560
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_552
.label_549:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_550
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_557
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_562
.label_559:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_557:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_553
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_556
.label_553:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_556:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_562:
	cmp	eax, 6
	jne	.label_550
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_551
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_554
.label_550:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_558
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_561
.label_560:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_552:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_551:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_554:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_558:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_561:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c24
	.globl sub_406c24
	.type sub_406c24, @function
sub_406c24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_568
	nop	
.label_567:
	mov	edi, OFFSET FLAT:label_281
	call	strcmp
	test	eax, eax
	je	.label_565
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_567
.label_565:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_281
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_570
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_282
	mov	ecx, OFFSET FLAT:label_325
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_563
	mov	esi, OFFSET FLAT:label_564
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_563
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_281
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_325
	mov	ecx, OFFSET FLAT:label_281
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_572
	mov	ecx, OFFSET FLAT:label_14
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
	#Procedure 0x406d4a
	.globl sub_406d4a
	.type sub_406d4a, @function
sub_406d4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d50
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
	#Procedure 0x406d77
	.globl sub_406d77
	.type sub_406d77, @function
sub_406d77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d8a
	.globl sub_406d8a
	.type sub_406d8a, @function
sub_406d8a:

	nop	word ptr [rax + rax]
.label_574:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_573
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d9b
	.globl sub_406d9b
	.type sub_406d9b, @function
sub_406d9b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406da5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_574
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_574
.label_573:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406dc0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
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
	js	.label_578
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_581
	cmp	r12d, 0x7fffffff
	je	.label_576
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
	jne	.label_579
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_579:
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
.label_581:
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
	jbe	.label_577
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_580
.label_577:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_575
	mov	rdi, r14
	call	free
.label_575:
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
.label_580:
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
.label_578:
	call	abort
.label_576:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406f8d
	.globl sub_406f8d
	.type sub_406f8d, @function
sub_406f8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_582
	test	rsi, rsi
	mov	ecx, 1
	je	.label_583
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_583
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_582:
	mov	ecx, 1
.label_583:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x406fdb
	.globl sub_406fdb
	.type sub_406fdb, @function
sub_406fdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fe0
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
	#Procedure 0x406ff3
	.globl sub_406ff3
	.type sub_406ff3, @function
sub_406ff3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_584
.label_585:
	ret	
.label_584:
	cmp	edi, 0x7f
	je	.label_585
	xor	eax, eax
	jmp	.label_585
	.section	.text
	.align	16
	#Procedure 0x407011
	.globl sub_407011
	.type sub_407011, @function
sub_407011:

	nop	word ptr cs:[rax + rax]
.label_586:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407023
	.globl sub_407023
	.type sub_407023, @function
sub_407023:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407025
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_586
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x407040

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x407049
	.globl sub_407049
	.type sub_407049, @function
sub_407049:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407050

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
	mov	rax,  qword ptr [word ptr [rip + label_492]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_493]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_494]]
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
	#Procedure 0x4070b8
	.globl sub_4070b8
	.type sub_4070b8, @function
sub_4070b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_587
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_588]]
.label_589:
	ret	
.label_587:
	xor	eax, eax
	jmp	.label_589
	.section	.text
	.align	16
	#Procedure 0x4070d6
	.globl sub_4070d6
	.type sub_4070d6, @function
sub_4070d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070e0

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
	#Procedure 0x407117
	.globl sub_407117
	.type sub_407117, @function
sub_407117:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407120
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
	#Procedure 0x40712d
	.globl sub_40712d
	.type sub_40712d, @function
sub_40712d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407130

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x407135
	.globl sub_407135
	.type sub_407135, @function
sub_407135:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140

	.globl create
	.type create, @function
create:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	r15, rdi
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	je	.label_609
	mov	edi, OFFSET FLAT:label_616
	call	getenv
	test	rax, rax
	mov	r14d, OFFSET FLAT:label_622
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:label_623
	mov	edx, 1
	mov	rsi, r15
	call	setenv
	test	eax, eax
	jne	.label_590
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_615
	mov	rbp,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	rdx, rbx
	call	__fprintf_chk
.label_615:
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_618
	call	fork
	mov	ebx, eax
	test	ebx, ebx
	je	.label_601
	cmp	ebx, -1
	je	.label_631
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_594
	mov	dword ptr [dword ptr [rip + filter_pid]],  ebx
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	cmp	rax,  qword ptr [word ptr [rip + open_pipes_alloc]]
	jne	.label_599
	mov	rdi,  qword ptr [word ptr [rip + open_pipes]]
	mov	esi, OFFSET FLAT:open_pipes_alloc
	mov	edx, 4
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + open_pipes]],  rax
.label_599:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx,  qword ptr [word ptr [rip + n_open_pipes]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	dword ptr [rdx + rcx*4], eax
	mov	ebp, dword ptr [rsp + 0xc]
	jmp	.label_595
.label_609:
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_626
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_630
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	__fprintf_chk
.label_626:
	mov	esi, 0x41
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_595
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	jne	.label_614
	mov	rax,  qword ptr [word ptr [rip + label_619]]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_620
	mov	rax,  qword ptr [word ptr [rip + in_stat_buf]]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_627
.label_620:
	xor	esi, esi
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	je	.label_595
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	je	.label_617
.label_595:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_601:
	cmp	qword ptr [word ptr [rip + n_open_pipes]],  0
	je	.label_607
	xor	ebx, ebx
	nop	
.label_612:
	mov	rax,  qword ptr [word ptr [rip + open_pipes]]
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	test	eax, eax
	jne	.label_604
	inc	rbx
	cmp	rbx,  qword ptr [word ptr [rip + n_open_pipes]]
	jb	.label_612
.label_607:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	test	eax, eax
	jne	.label_625
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	je	.label_629
	xor	esi, esi
	call	dup2
	test	eax, eax
	jne	.label_593
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_600
.label_629:
	mov	edi, 2
	mov	esi, OFFSET FLAT:oldblocked
	xor	edx, edx
	call	sigprocmask
	mov	rdi, r14
	call	last_component
	mov	rsi, rax
	mov	rcx,  qword ptr [word ptr [rip + filter_command]]
	mov	edx, OFFSET FLAT:label_608
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r14
	call	execl
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_613
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8,  qword ptr [word ptr [rip + filter_command]]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_604:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_596
	jmp	.label_592
.label_625:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
	jmp	.label_592
.label_593:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
	jmp	.label_592
.label_600:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
.label_592:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_590:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_628
	jmp	.label_592
.label_618:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
	jmp	.label_592
.label_631:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	jmp	.label_592
.label_594:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_598
	jmp	.label_592
.label_614:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	jmp	.label_610
.label_617:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
.label_610:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_627:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_597
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407550

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_632
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_633:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_632
	test	rax, rax
	je	.label_634
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_633
	jmp	.label_632
.label_634:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_632:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075ae
	.globl sub_4075ae
	.type sub_4075ae, @function
sub_4075ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4075b0
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
	#Procedure 0x4075bd
	.globl sub_4075bd
	.type sub_4075bd, @function
sub_4075bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4075c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_635
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_636
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_643
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_638
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_637
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_639
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_640
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_size_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_642
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_635:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_641
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
	#Procedure 0x407719
	.globl sub_407719
	.type sub_407719, @function
sub_407719:

	nop	dword ptr [rax]
.label_644:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40772e
	.globl sub_40772e
	.type sub_40772e, @function
sub_40772e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407737

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_644
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_646
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_644
.label_646:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_644
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_645
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_645:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4077aa
	.globl sub_4077aa
	.type sub_4077aa, @function
sub_4077aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_14
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_647
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077d5
	.globl sub_4077d5
	.type sub_4077d5, @function
sub_4077d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077e0

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077e4
	.globl sub_4077e4
	.type sub_4077e4, @function
sub_4077e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077f0

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
	#Procedure 0x407826
	.globl sub_407826
	.type sub_407826, @function
sub_407826:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407830

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407833
	.globl sub_407833
	.type sub_407833, @function
sub_407833:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407840

	.globl ignorable
	.type ignorable, @function
ignorable:
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	setne	cl
	cmp	edi, 0x20
	sete	al
	and	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x407854
	.globl sub_407854
	.type sub_407854, @function
sub_407854:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407860

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	test	dil, dil
	je	.label_648
	test	r14, r14
	jne	.label_651
	test	rbx, rbx
	jne	.label_651
	mov	al, 1
	mov	cl,  byte ptr [byte ptr [rip + elide_empty_files]]
	test	cl, cl
	jne	.label_650
.label_651:
	mov	esi,  dword ptr [dword ptr [rip + output_desc]]
	mov	edx,  dword ptr [dword ptr [rip + filter_pid]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	call	closeout
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	create
	mov	dword ptr [dword ptr [rip + output_desc]],  eax
	test	eax, eax
	js	.label_652
.label_648:
	mov	edi,  dword ptr [dword ptr [rip + output_desc]]
	mov	rsi, r14
	mov	rdx, rbx
	call	full_write
	mov	rcx, rax
	mov	al, 1
	cmp	rcx, rbx
	je	.label_650
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable
	test	al, al
	je	.label_649
	xor	eax, eax
.label_650:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_652:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_649:
	mov	rdx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407930

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407933
	.globl sub_407933
	.type sub_407933, @function
sub_407933:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407940

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	r14, rcx
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_660
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_660
	call	__errno_location
	mov	r12d, dword ptr [rax]
	mov	edi, r12d
	call	ignorable
	test	al, al
	je	.label_668
.label_660:
	test	ebx, ebx
	js	.label_653
	test	rbp, rbp
	jne	.label_655
	mov	edi, ebx
	call	close
	test	eax, eax
	js	.label_664
.label_655:
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	test	rax, rax
	je	.label_653
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	rsi,  qword ptr [word ptr [rip + n_open_pipes]]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_661:
	cmp	dword ptr [rdx + rcx*4], ebx
	je	.label_654
	inc	rcx
	cmp	rcx, rsi
	mov	rax, rsi
	jb	.label_661
	jmp	.label_653
.label_654:
	lea	rdx, [rax - 1]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	eax, dword ptr [rdx + rax*4 - 4]
	mov	dword ptr [rdx + rcx*4], eax
.label_653:
	test	r15d, r15d
	jle	.label_658
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsp + 0xc]
	xor	edx, edx
	mov	edi, r15d
	call	waitpid
	cmp	eax, -1
	jne	.label_656
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0xa
	jne	.label_657
.label_656:
	mov	ebx, dword ptr [rsp + 0xc]
	mov	ebp, ebx
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	sar	eax, 0x19
	test	eax, eax
	jle	.label_659
	cmp	ebp, 0xd
	je	.label_658
	lea	rsi, [rsp + 0x10]
	mov	edi, ebp
	call	sig2str
	test	eax, eax
	je	.label_662
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 0x13
	mov	ecx, OFFSET FLAT:label_663
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
.label_662:
	or	ebp, 0x80
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_667
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9,  qword ptr [word ptr [rip + filter_command]]
	lea	r8, [rsp + 0x10]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_658
.label_659:
	test	ebp, ebp
	jne	.label_669
	shr	ebx, 8
	and	ebx, 0xff
	je	.label_658
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9,  qword ptr [word ptr [rip + filter_command]]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	rdx, rbp
	mov	r8d, ebx
	call	error
.label_658:
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_668:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_664:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_657:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_670
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bc0
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
	#Procedure 0x407bd9
	.globl sub_407bd9
	.type sub_407bd9, @function
sub_407bd9:

	nop	dword ptr [rax]
.label_672:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407be5

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_674
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_672
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_675
.label_674:
	test	rcx, rcx
	jne	.label_673
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_673:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_671
.label_675:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_671:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407c59
	.globl sub_407c59
	.type sub_407c59, @function
sub_407c59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407c60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_676:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_676
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x407c81
	.globl sub_407c81
	.type sub_407c81, @function
sub_407c81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c90

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x407c9e
	.globl sub_407c9e
	.type sub_407c9e, @function
sub_407c9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407ca0

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
	je	.label_677
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_678
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_678
.label_677:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_678
	test	cl, cl
	jne	.label_678
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_678:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d06
	.globl sub_407d06
	.type sub_407d06, @function
sub_407d06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d10

	.globl input_file_size
	.type input_file_size, @function
input_file_size:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r14, rax
	test	r14, r14
	js	.label_686
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_685:
	lea	rsi, [r12 + rbx]
	mov	rdx, r15
	sub	rdx, rbx
	xor	edi, edi
	call	safe_read
	cmp	rax, -1
	je	.label_681
	test	rax, rax
	je	.label_684
	add	rbx, rax
	cmp	rbx, r15
	jb	.label_685
	mov	r15,  qword ptr [word ptr [rip + label_682]]
	test	r15, r15
	je	.label_683
	add	r14, rbx
	call	usable_st_size
	cmp	r14, r15
	jg	.label_679
	xor	al, 1
	je	.label_680
.label_679:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 2
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_681
	cmp	r15, r14
	je	.label_680
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r14
	call	lseek
	test	rax, rax
	js	.label_681
	cmp	r15, r14
	cmovl	r15, r14
.label_680:
	sub	r15, r14
	add	rbx, r15
	movabs	rax, 0x7fffffffffffffff
	cmp	rbx, rax
	jne	.label_684
.label_683:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
.label_681:
	mov	rbx, -1
	jmp	.label_684
.label_686:
	call	__errno_location
	mov	rbx, -1
	cmp	dword ptr [rax], 0x1d
	jne	.label_684
	mov	dword ptr [rax], 0
.label_684:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e0b
	.globl sub_407e0b
	.type sub_407e0b, @function
sub_407e0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e10
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
	#Procedure 0x407e26
	.globl sub_407e26
	.type sub_407e26, @function
sub_407e26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_687
	or	al, dl
	jne	.label_687
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_687:
	mov	eax, 0x20000
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e81
	.globl sub_407e81
	.type sub_407e81, @function
sub_407e81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_688
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_688:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407eb6
	.globl sub_407eb6
	.type sub_407eb6, @function
sub_407eb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ec0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_689
	test	rbx, rbx
	jne	.label_689
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_689:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_691
	test	rax, rax
	je	.label_690
.label_691:
	pop	rbx
	ret	
.label_690:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407ef0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_692
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_692:
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
	#Procedure 0x407f73
	.globl sub_407f73
	.type sub_407f73, @function
sub_407f73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f88
	.globl sub_407f88
	.type sub_407f88, @function
sub_407f88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f90

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_693
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x407fb2
	.globl sub_407fb2
	.type sub_407fb2, @function
sub_407fb2:

	nop	word ptr cs:[rax + rax]
.label_694:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407fc5
	.globl sub_407fc5
	.type sub_407fc5, @function
sub_407fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fd3

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
	je	.label_694
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
	#Procedure 0x408020

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40802a
	.globl sub_40802a
	.type sub_40802a, @function
sub_40802a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408095
	.globl sub_408095
	.type sub_408095, @function
sub_408095:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080a2
	.globl sub_4080a2
	.type sub_4080a2, @function
sub_4080a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080c6
	.globl sub_4080c6
	.type sub_4080c6, @function
sub_4080c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080d9
	.globl sub_4080d9
	.type sub_4080d9, @function
sub_4080d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4080e0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
