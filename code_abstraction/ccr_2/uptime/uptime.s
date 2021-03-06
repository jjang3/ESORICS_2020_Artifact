	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_14
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_23:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_35
	call	setlocale
	mov	edi, OFFSET FLAT:label_34
	mov	esi, OFFSET FLAT:label_38
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_34
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_21
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_29
	push	OFFSET FLAT:label_30
	push	OFFSET FLAT:label_31
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x30
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	cmp	ebp, 1
	je	.label_33
	test	ebp, ebp
	jne	.label_37
	mov	edi, OFFSET FLAT:label_27
	mov	esi, 1
	jmp	.label_32
.label_33:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_32:
	call	uptime
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2038
	mov	eax, esi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_62
	mov	r15, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, OFFSET FLAT:label_63
	mov	esi, OFFSET FLAT:label_64
	call	fopen
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_67
	lea	r14, [rsp + 0x30]
	mov	esi, 0x2000
	mov	rdi, r14
	mov	rdx, rbx
	call	fgets_unlocked
	xor	r13d, r13d
	cmp	rax, r14
	jne	.label_41
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	c_strtod
	xor	r13d, r13d
	cmp	r14, qword ptr [rsp + 8]
	je	.label_41
	movsd	xmm1, qword ptr [rip + label_49]
	ucomisd	xmm1, xmm0
	cvttsd2si	r13, xmm0
	mov	rax, -1
	cmovbe	r13, rax
	xorpd	xmm1, xmm1
	ucomisd	xmm0, xmm1
	cmovb	r13, rax
.label_41:
	mov	rdi, rbx
	call	rpl_fclose
.label_67:
	xor	r14d, r14d
	test	r15, r15
	mov	ebx, 0
	je	.label_66
	mov	eax, r15d
	and	eax, 1
	xor	ebx, ebx
	cmp	r15, 1
	jne	.label_52
	xor	r14d, r14d
	jmp	.label_73
.label_52:
	mov	rcx, rax
	sub	rcx, r15
	xor	ebx, ebx
	xor	r14d, r14d
	nop	
.label_65:
	movzx	esi, word ptr [rbp]
	xor	edi, edi
	cmp	esi, 7
	sete	dil
	cmp	byte ptr [rbp + 0x2c], 0
	mov	edx, 0
	cmovne	rdx, rdi
	cmp	esi, 2
	jne	.label_40
	movsxd	r14, dword ptr [rbp + 0x154]
.label_40:
	add	rdx, rbx
	movzx	esi, word ptr [rbp + 0x180]
	xor	edi, edi
	cmp	esi, 7
	sete	dil
	cmp	byte ptr [rbp + 0x1ac], 0
	mov	ebx, 0
	cmovne	rbx, rdi
	cmp	esi, 2
	jne	.label_51
	movsxd	r14, dword ptr [rbp + 0x2d4]
.label_51:
	add	rbx, rdx
	add	rbp, 0x300
	add	rcx, 2
	jne	.label_65
.label_73:
	test	rax, rax
	je	.label_66
	movzx	ecx, word ptr [rbp]
	xor	edx, edx
	cmp	ecx, 7
	sete	dl
	xor	eax, eax
	cmp	byte ptr [rbp + 0x2c], 0
	cmovne	rax, rdx
	cmp	ecx, 2
	jne	.label_69
	movsxd	r14, dword ptr [rbp + 0x154]
.label_69:
	add	rbx, rax
.label_66:
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 8], rax
	test	r13, r13
	jne	.label_46
	test	r14, r14
	je	.label_45
	sub	rax, r14
	mov	r13, rax
.label_46:
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r13
	imul	rcx
	mov	r12, rdx
	mov	rax, r12
	shr	rax, 0x3f
	sar	r12, 0xd
	add	r12, rax
	imul	rbp, r12, -0x15180
	mov	qword ptr [rsp + 0x20], r13
	add	rbp, r13
	movabs	rcx, 0x48d159e26af37c05
	mov	rax, rbp
	imul	rcx
	mov	r15, rdx
	mov	rax, r15
	shr	rax, 0x3f
	sar	r15, 0xa
	add	r15, rax
	movabs	rax, 0xe1000000000
	imul	rax, r15
	sar	rax, 0x20
	sub	rbp, rax
	movabs	rcx, 0x8888888888888889
	mov	rax, rbp
	imul	rcx
	mov	r13, rdx
	lea	rdi, [rsp + 8]
	call	localtime
	mov	r14, rax
	test	r14, r14
	je	.label_55
	mov	rax, qword ptr [rip + stdout]
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rax
	mov	rdx, r14
	call	fprintftime
	jmp	.label_70
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
.label_70:
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, -1
	je	.label_43
	add	r13, rbp
	mov	rax, r13
	shr	rax, 0x3f
	shr	r13, 5
	add	r13d, eax
	xor	edi, edi
	cmp	rcx, 0x15180
	jl	.label_48
	mov	esi, OFFSET FLAT:label_57
	mov	edx, OFFSET FLAT:label_58
	mov	r8d, 5
	mov	rcx, r12
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r12
	mov	ecx, r15d
	mov	r8d, r13d
	call	__printf_chk
	jmp	.label_54
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_54
.label_48:
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	edx, r15d
	mov	ecx, r13d
	call	__printf_chk
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, OFFSET FLAT:label_60
	mov	r8d, 5
	mov	rcx, rbx
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, rbx
	call	__printf_chk
	lea	rdi, [rsp + 0x30]
	mov	esi, 3
	call	getloadavg
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_39
	test	ebx, ebx
	jle	.label_47
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	movsd	xmm0, qword ptr [rsp + 0x30]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rcx
	call	__printf_chk
	cmp	ebx, 1
	je	.label_39
	movsd	xmm0, qword ptr [rsp + 0x38]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_53
	mov	al, 1
	call	__printf_chk
	cmp	ebx, 3
	jl	.label_39
	movsd	xmm0, qword ptr [rsp + 0x40]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_53
	mov	al, 1
	call	__printf_chk
.label_39:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_68
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_47:
	add	rsp, 0x2038
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_68:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_47
.label_62:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_45:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402290

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_74
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_75
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_74:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_77
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_77:
	test	rbx, rbx
	je	.label_76
	mov	qword ptr [rbx], r14
.label_76:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402300
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402310

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_83
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_80
	cmp	dword ptr [rbp], 0x20
	jne	.label_80
.label_83:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_79
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_78
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_79:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_78:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
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
	#Procedure 0x4023d0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	r13d, r9d
	mov	dword ptr [rsp + 0x70], r8d
	mov	dword ptr [rsp + 0x74], ecx
	mov	rbx, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	eax, dword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_35
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x60], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x6c], edx
	mov	cl, byte ptr [r12]
	test	cl, cl
	mov	eax, 0
	je	.label_84
	lea	rax, [rsp + 0x80]
	mov	rdx, -0x17
	sub	rdx, rax
	mov	qword ptr [rsp + 0x78], rdx
	xor	r11d, r11d
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_109
.label_104:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_94
.label_116:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_116
.label_94:
	movsx	edi, byte ptr [r12]
.label_248:
	mov	rsi, rbx
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
.label_91:
	add	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_124
.label_88:
	mov	eax, 3
	jmp	.label_128
	nop	word ptr cs:[rax + rax]
.label_109:
	cmp	cl, 0x25
	jne	.label_134
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	dil, cl
	xor	r14d, r14d
.label_690:
	mov	ebx, eax
	mov	al, dil
.label_152:
	mov	dil, al
	inc	r12
	jmp	.label_138
	nop	word ptr cs:[rax + rax]
.label_151:
	inc	r12
	mov	r14d, edx
.label_138:
	mov	cl, byte ptr [r12]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_145
	jmp	qword ptr [(rsi * 8) + label_148]
	nop	
.label_145:
	cmp	edx, 0x5f
	je	.label_151
	cmp	edx, 0x5e
	je	.label_152
.label_691:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_153
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	r13d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_158
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_163
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_158
.label_163:
	lea	eax, [rax + rax*4]
	lea	r13d, [rcx + rax*2 - 0x30]
.label_158:
	movsx	ecx, byte ptr [r12 + 1]
	inc	r12
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r13d
	jb	.label_170
.label_153:
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_174
	cmp	r10d, 0x45
	jne	.label_175
.label_174:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	jmp	.label_177
	nop	
.label_134:
	test	r13d, r13d
	mov	eax, r13d
	mov	edx, 0
	cmovs	eax, edx
	movsxd	r14, eax
	cmp	r14d, 1
	mov	edx, 1
	cmovbe	r14, rdx
	mov	rdx, r11
	not	rdx
	mov	edi, 1
	cmp	r14, rdx
	jae	.label_180
	cmp	qword ptr [rsp + 8], 0
	je	.label_191
	cmp	eax, 2
	mov	qword ptr [rsp + 0x30], r8
	mov	dword ptr [rsp + 0x14], r9d
	mov	r15, r11
	jb	.label_195
	movsxd	rbp, r13d
	dec	rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_199
	nop	word ptr cs:[rax + rax]
.label_207:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_207
	mov	cl, byte ptr [r12]
	jmp	.label_199
.label_175:
	xor	r10d, r10d
.label_177:
	mov	qword ptr [rsp + 0x48], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	esi, 0x7a
	ja	.label_92
	mov	ebp, OFFSET FLAT:label_214
	mov	dl, 0x72
	mov	r15d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_215]
.label_612:
	cmp	r10d, 0x45
	je	.label_92
	mov	rax, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rax + 0x14]
	mov	r9d, dword ptr [rax + 0x18]
	mov	edx, r8d
	sar	edx, 0x1f
	and	edx, 0x190
	mov	rdi, rax
	lea	eax, [r8 + rdx - 0x64]
	mov	edi, dword ptr [rdi + 0x1c]
	lea	ebp, [rdi + 0x17e]
	sub	ebp, r9d
	movsxd	rbp, ebp
	imul	rbx, rbp, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, ebp
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	ebp, edx
	lea	r15d, [rdi + 3]
	sub	r15d, ebp
	js	.label_219
	mov	ebp, 0x16d
	test	al, 3
	jne	.label_229
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, r11
	mov	r11, rdx
	shr	r11, 0x3f
	add	ebp, r11d
	imul	ebp, ebp, 0x64
	mov	dword ptr [rsp + 0x14], ebp
	sar	rdx, 0x27
	add	edx, r11d
	mov	r11, rbx
	imul	ebp, edx, 0x190
	xor	edx, edx
	cmp	eax, ebp
	sete	dl
	add	edx, 0x16d
	cmp	eax, dword ptr [rsp + 0x14]
	mov	ebp, 0x16e
	cmove	ebp, edx
.label_229:
	sub	edi, ebp
	lea	edx, [rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	add	edi, 3
	sub	edi, edx
	cmovns	r15d, edi
	shr	edi, 0x1f
	xor	edi, 1
	jmp	.label_238
.label_195:
	mov	rbx, qword ptr [rsp + 8]
.label_199:
	movsx	edi, cl
	mov	rsi, rbx
	call	fputc
	mov	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_191:
	add	r11, r14
	xor	edi, edi
.label_180:
	test	edi, edi
	mov	eax, 4
	cmove	edi, eax
.label_105:
	or	edi, 4
	cmp	edi, 4
	mov	eax, 0
	je	.label_124
	jmp	.label_84
.label_626:
	test	bl, bl
	je	.label_208
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_208:
	cmp	r10d, 0x45
	jne	.label_254
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_92
.label_604:
	dec	r12
	jmp	.label_92
.label_605:
	test	r10d, r10d
	jne	.label_92
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_91
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_94
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_101
	cmp	r14d, 0x2b
	jne	.label_104
.label_101:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_94
.label_110:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_110
	jmp	.label_94
.label_606:
	mov	edx, 1
	jmp	.label_113
	nop	
.label_114:
	inc	rdx
.label_113:
	movzx	ebx, byte ptr [r12 + rdx]
	cmp	bl, 0x3a
	je	.label_114
	cmp	bl, 0x7a
	jne	.label_92
	add	r12, rdx
	mov	qword ptr [rsp + 0x18], rdx
.label_643:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	dword ptr [rbx + 0x20], 0
	js	.label_124
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x20], r11
	mov	eax, dword ptr [rbx + 0x28]
	mov	sil, 1
	test	eax, eax
	js	.label_119
	test	eax, eax
	je	.label_126
	xor	esi, esi
	jmp	.label_119
.label_607:
	test	r10d, r10d
	jne	.label_92
	test	bl, bl
	je	.label_133
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_133:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_122
.label_608:
	cmp	r10d, 0x45
	je	.label_92
	test	bl, bl
	je	.label_139
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_139:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_122
.label_609:
	cmp	r10d, 0x45
	jne	.label_143
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_122
.label_610:
	test	r10d, r10d
	jne	.label_92
	mov	ebp, OFFSET FLAT:label_149
	mov	r15d, 0xffffffff
	jmp	.label_150
.label_611:
	test	r10d, r10d
	jne	.label_92
	test	r14d, r14d
	jne	.label_155
	test	r13d, r13d
	jns	.label_155
	mov	ebp, OFFSET FLAT:label_160
	mov	r14d, 0x2b
	mov	r15d, 4
	jmp	.label_150
.label_613:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 8]
	mov	edi, 2
	jmp	.label_99
.label_614:
	mov	edi, 2
	cmp	r10d, 0x45
	je	.label_92
	mov	edx, dword ptr [rsp + 0x6c]
	mov	r8d, edx
	jmp	.label_99
.label_615:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 4]
	mov	edi, 2
	jmp	.label_99
.label_616:
	cmp	r10d, 0x45
	je	.label_92
	mov	edi, 9
	cmp	r13d, -1
	je	.label_186
	cmp	r13d, 8
	jg	.label_190
	mov	edx, 9
	sub	edx, r13d
	mov	esi, 8
	sub	esi, r13d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x4e8]
	mov	r8d, esi
	jb	.label_192
	lea	esi, [r13 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x4e8]
	mov	r8d, edi
	nop	word ptr cs:[rax + rax]
.label_173:
	movsxd	rdi, r8d
	imul	r8, rdi, 0x68db8bad
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x2c
	add	r8d, edi
	add	esi, 4
	jne	.label_173
.label_192:
	test	edx, edx
	je	.label_209
	neg	edx
	nop	word ptr [rax + rax]
.label_211:
	movsxd	rsi, r8d
	imul	r8, rsi, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	inc	edx
	jne	.label_211
	jmp	.label_209
.label_617:
	mov	dil, 1
.label_635:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	bl, bl
	je	.label_218
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
.label_218:
	je	.label_220
	mov	dil, 1
.label_220:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_125
.label_618:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx]
	mov	edi, 2
	jmp	.label_99
.label_619:
	mov	ebp, OFFSET FLAT:label_226
.label_150:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, r14d
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 0x30], r11
	call	__strftime_internal
	mov	r11, qword ptr [rsp + 0x30]
	add	rsp, 0x10
	test	r13d, r13d
	cmovns	ebx, r13d
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	rsi, rax
	cmovb	rsi, rcx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_237
	mov	qword ptr [rsp + 0x40], rsi
	mov	dword ptr [rsp + 0x18], r15d
	cmp	rax, rcx
	mov	r15, qword ptr [rsp + 8]
	jae	.label_225
	movsxd	rbx, r13d
	sub	rbx, rax
	cmp	r14d, 0x30
	je	.label_243
	cmp	r14d, 0x2b
	jne	.label_245
.label_243:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_225
	nop	word ptr cs:[rax + rax]
.label_251:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_251
	jmp	.label_225
.label_620:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [rbx + 0x18]
	movsxd	r8, edx
	jmp	.label_252
.label_621:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	mov	esi, dword ptr [rbx + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	lea	edx, [rbp + rdx + 6]
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 2
	add	edx, ebp
	lea	ebp, [rdx*8]
	sub	ebp, edx
	sub	edi, ebp
	add	esi, 7
	sub	esi, edi
	movsxd	r8, esi
.label_252:
	imul	rdx, r8, -0x6db6db6d
	shr	rdx, 0x20
	add	r8d, edx
	mov	edx, r8d
	shr	edx, 0x1f
	sar	r8d, 2
	add	r8d, edx
	mov	edi, 2
	jmp	.label_99
.label_622:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_92
	mov	dl, 0x58
	jmp	.label_97
.label_623:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x45
	je	.label_100
	cmp	r10d, 0x4f
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x14]
	cmp	r8d, 0xfffff894
	setl	sil
	add	r8d, 0x76c
	jmp	.label_106
.label_624:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rdi, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x20], r11
	call	strlen
	mov	r15, rax
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	r15, rax
	mov	rdx, r15
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	rdx, rcx
	jae	.label_98
	mov	qword ptr [rsp + 0x18], rdx
	cmp	qword ptr [rsp + 8], 0
	je	.label_121
	cmp	r15, rax
	jae	.label_127
	movsxd	rbp, r13d
	sub	rbp, r15
	cmp	r14d, 0x30
	je	.label_130
	cmp	r14d, 0x2b
	jne	.label_132
.label_130:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_127
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_142
	jmp	.label_127
.label_625:
	test	r10d, r10d
	jne	.label_92
	test	bl, bl
	je	.label_147
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_147:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_122
.label_627:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_92
	mov	dl, 0x63
	jmp	.label_97
.label_628:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	edi, 2
	jmp	.label_99
.label_629:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0xc]
	jmp	.label_169
.label_630:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x1c]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 3
	jmp	.label_242
.label_631:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 8]
	jmp	.label_169
.label_632:
	cmp	r10d, 0x45
	mov	edx, dword ptr [rsp + 0x6c]
	je	.label_92
.label_169:
	test	r14d, r14d
	mov	esi, 0x5f
	cmove	r14d, esi
	mov	edi, 2
	mov	r8d, edx
	jmp	.label_99
.label_633:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x10]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 2
.label_242:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	jmp	.label_85
.label_634:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_91
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_212
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_216
	cmp	r14d, 0x2b
	jne	.label_227
.label_216:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_212
	nop	dword ptr [rax]
.label_222:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_222
	jmp	.label_212
.label_636:
	mov	rbx, qword ptr [rsp + 0x28]
	imul	r8d, dword ptr [rbx + 0x10], 0xb
	sar	r8d, 5
	inc	r8d
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	xor	esi, esi
	jmp	.label_85
.label_637:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rbx, r11
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r15, [rsp + 0x97]
	nop	word ptr cs:[rax + rax]
.label_240:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_240
	mov	edi, 1
	xor	edx, edx
	mov	r11, rbx
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rsp + 0x14]
	jmp	.label_250
.label_638:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_91
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_89
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_258
	cmp	r14d, 0x2b
	jne	.label_86
.label_258:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_89
	nop	dword ptr [rax]
.label_96:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_96
	jmp	.label_89
.label_639:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r8, esi
	imul	rsi, r8, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r8d, esi
	inc	r8d
	mov	edi, 1
	jmp	.label_99
.label_640:
	cmp	r10d, 0x45
	je	.label_92
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x18]
	mov	edi, 1
	jmp	.label_99
.label_641:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_92
	mov	dl, 0x78
	jmp	.label_97
.label_642:
	cmp	r10d, 0x45
	jne	.label_118
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_122
.label_254:
	xor	eax, eax
	mov	edx, ecx
.label_122:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_125
.label_219:
	mov	qword ptr [rsp + 0x20], r11
	dec	eax
	mov	r11d, 0x16d
	test	al, 3
	jne	.label_129
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	ebp, ebx
	imul	r11d, ebp, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebp, ebp
	cmp	eax, edx
	sete	bpl
	add	ebp, 0x16d
	cmp	eax, r11d
	mov	r11d, 0x16e
	cmove	r11d, ebp
.label_129:
	lea	edx, [r11 + rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	lea	r15d, [r11 + rdi + 3]
	sub	r15d, edx
	mov	edi, 0xffffffff
	mov	r11, qword ptr [rsp + 0x20]
.label_238:
	cmp	esi, 0x47
	je	.label_164
	cmp	esi, 0x67
	jne	.label_167
	movsxd	rdx, r8d
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, r8d
	sub	esi, edx
	add	esi, edi
	mov	rax, r8
	movsxd	r8, esi
	imul	rdx, r8, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r8d, edx
	jns	.label_165
	mov	edx, 0xfffff894
	sub	edx, edi
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	eax, edx
	cmovl	r8d, esi
.label_165:
	xor	esi, esi
	jmp	.label_188
.label_143:
	mov	rax, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rax + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r8, rdx, 0x51eb851f
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x25
	add	r8d, edi
	imul	edi, r8d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r8d, edx
	add	r8d, 0x13
.label_188:
	mov	eax, 2
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_202
.label_118:
	mov	rbx, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rbx + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r8d, edx
	mov	eax, 2
	sub	r8d, esi
	js	.label_205
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_213
.label_164:
	mov	edx, 0xfffff894
	sub	edx, edi
	cmp	r8d, edx
	setl	sil
	lea	r8d, [rdi + r8 + 0x76c]
.label_106:
	mov	eax, 4
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_202
.label_167:
	movsxd	rdx, r15d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r8d, [rsi + rdx + 1]
	mov	edi, 2
	jmp	.label_99
.label_100:
	mov	dl, 0x59
.label_97:
	xor	eax, eax
	jmp	.label_125
.label_245:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_225
	nop	dword ptr [rax]
.label_178:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_178
.label_225:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	mov	r8d, r14d
	mov	r9d, dword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	call	__strftime_internal
	add	rsp, 0x10
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 0x40]
.label_237:
	add	r11, rsi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_124
.label_126:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	byte ptr [rsi], 0x2d
	sete	sil
.label_119:
	mov	r11, rdx
	cmp	r11, 3
	ja	.label_239
	movsxd	rdi, eax
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, eax
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	r8, rdi, -0x6e5d4c3b
	shr	r8, 0x20
	add	r8d, eax
	mov	edi, r8d
	shr	edi, 0x1f
	sar	r8d, 0xb
	add	r8d, edi
	movsxd	rdi, ebp
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	ebp, ebp, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, ebp
	sub	eax, ebx
	jmp	qword ptr [(r11 * 8) + label_241]
.label_700:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 5
.label_128:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	jmp	.label_107
.label_155:
	xor	eax, eax
	mov	r15d, r13d
	add	r15d, -6
	cmovs	r15d, eax
	mov	ebp, OFFSET FLAT:label_160
	jmp	.label_150
.label_186:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
	mov	r13d, 9
	jmp	.label_99
.label_205:
	mov	qword ptr [rsp + 0x18], rax
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r8d, esi
.label_213:
	xor	esi, esi
.label_202:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x70]
	xor	r9d, r9d
	cmp	r14d, 0x2b
	mov	edx, 0
	jne	.label_85
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r8d
	setb	bl
	cmp	ebp, r13d
	setl	dl
	or	dl, bl
	jmp	.label_85
.label_239:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 0x18
	jmp	.label_103
.label_703:
	test	eax, eax
	je	.label_194
.label_702:
	imul	r8d, r8d, 0x2710
	imul	edi, edi, 0x64
	add	r8d, eax
	add	r8d, edi
	mov	eax, 9
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 0x14
	jmp	.label_107
.label_190:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
.label_209:
	mov	edi, r13d
.label_99:
	mov	esi, r8d
	shr	esi, 0x1f
	xor	r9d, r9d
	xor	edx, edx
	mov	eax, edi
	mov	qword ptr [rsp + 0x18], rax
.label_85:
	cmp	r10d, 0x4f
	jne	.label_115
	test	sil, sil
	jne	.label_115
	xor	eax, eax
	mov	edx, ecx
.label_125:
	mov	dword ptr [rsp + 0x40], eax
	mov	qword ptr [rsp + 0x30], r8
	mov	rbp, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x20], r11
	mov	word ptr [rsp + 0x5b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x5d]
	je	.label_102
	mov	byte ptr [rsp + 0x5d], r10b
	lea	rcx, [rsp + 0x5e]
.label_102:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x5b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x28]
	call	strftime
	test	rax, rax
	je	.label_141
	lea	rsi, [rax - 1]
	xor	ecx, ecx
	test	r13d, r13d
	cmovns	ecx, r13d
	movsxd	rdx, ecx
	cmp	rsi, rdx
	mov	r15, rsi
	cmovb	r15, rdx
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	r15, rcx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	je	.label_154
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x38], rsi
	cmp	rsi, rdx
	setae	al
	test	ebp, ebp
	jne	.label_156
	test	al, al
	jne	.label_156
	movsxd	rbx, r13d
	sub	rbx, qword ptr [rsp + 0x38]
	cmp	r14d, 0x30
	je	.label_166
	cmp	r14d, 0x2b
	jne	.label_171
.label_166:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_156
.label_176:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_176
	jmp	.label_156
.label_115:
	mov	eax, r8d
	neg	eax
	test	sil, sil
	cmove	eax, r8d
	lea	r15, [rsp + 0x97]
	nop	dword ptr [rax + rax]
.label_187:
	test	r9b, 1
	je	.label_183
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_183:
	sar	r9d, 1
	mov	ecx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rcx
	shr	rbp, 0x23
	lea	ecx, [rbp + rbp]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_187
	test	r9d, r9d
	mov	eax, ebp
	jne	.label_187
	xor	ebx, ebx
	mov	rdi, qword ptr [rsp + 0x18]
.label_250:
	cmp	edi, r13d
	cmovl	edi, r13d
	test	dl, dl
	je	.label_200
	mov	dl, 0x2b
.label_200:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_203
	mov	esi, edx
.label_203:
	cmp	r14d, 0x2d
	mov	qword ptr [rsp + 0x30], rbp
	mov	dword ptr [rsp + 0x14], ebx
	jne	.label_204
	test	sil, sil
	je	.label_95
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	je	.label_90
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_217
	test	al, al
	jne	.label_217
	movsxd	rbp, r13d
	jmp	.label_246
	nop	dword ptr [rax]
.label_224:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
.label_246:
	dec	rbp
	jne	.label_224
.label_217:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbx
	jmp	.label_221
.label_141:
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_124
.label_204:
	movsxd	rax, edi
	mov	rcx, r15
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_228
	cmp	r14d, 0x5f
	jne	.label_233
	movsxd	rcx, edx
	mov	rax, r11
	not	rax
	cmp	rcx, rax
	jae	.label_98
	mov	qword ptr [rsp + 0x50], r13
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	mov	rbx, qword ptr [rsp + 8]
	test	rbx, rbx
	je	.label_236
	test	rcx, rcx
	je	.label_236
	xor	ebp, ebp
	nop	
.label_257:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	r13, rcx
	call	fputc
	mov	rcx, r13
	inc	rbp
	cmp	rbp, rcx
	jb	.label_257
.label_236:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	sub	r13d, ecx
	cmovle	r13d, eax
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_93
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	mov	rdi, qword ptr [rsp + 0x18]
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	je	.label_90
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_210
	test	al, al
	jne	.label_210
	movsxd	rax, r13d
	dec	rax
	je	.label_210
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rax
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	mov	rax, qword ptr [rsp + 0x38]
	inc	rbx
	cmp	rbx, rax
	jb	.label_260
.label_210:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_90
.label_228:
	test	sil, sil
	je	.label_95
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	je	.label_90
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_108
	test	al, al
	jne	.label_108
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_249
	cmp	r14d, 0x2b
	jne	.label_117
.label_249:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_108
	nop	word ptr [rax + rax]
.label_189:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_189
	jmp	.label_108
.label_233:
	mov	rcx, r11
	not	rcx
	cmp	rax, rcx
	jae	.label_98
	test	sil, sil
	je	.label_136
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rbp, eax
	cmp	ebp, 1
	mov	ebx, 1
	cmova	rbx, rbp
	cmp	rbx, rcx
	jae	.label_98
	cmp	qword ptr [rsp + 8], 0
	je	.label_112
	mov	qword ptr [rsp + 0x50], rbx
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_144
	test	al, al
	jne	.label_144
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_197
	cmp	r14d, 0x2b
	jne	.label_162
.label_197:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_144
	nop	word ptr cs:[rax + rax]
.label_157:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_157
	jmp	.label_144
.label_171:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_156
	nop	word ptr cs:[rax + rax]
.label_182:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_182
.label_156:
	mov	eax, dword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_184
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_185
	mov	edx, 1
	lea	rdi, [rsp + 0xa1]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_154
.label_184:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_154
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr [rax + rax]
.label_161:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_161
	jmp	.label_154
.label_185:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_154
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_193:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_193
.label_154:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, r15
	jmp	.label_181
.label_93:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_95
.label_132:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_127
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_172
.label_127:
	test	bl, bl
	je	.label_137
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_121
	mov	rbp, qword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_206:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_206
	jmp	.label_121
.label_137:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_235
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_121
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_244:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_244
	jmp	.label_121
.label_227:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_212
	nop	
.label_247:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_247
.label_212:
	mov	edi, 0xa
	jmp	.label_248
.label_86:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_89
	nop	word ptr cs:[rax + rax]
.label_253:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_253
.label_89:
	mov	edi, 9
	jmp	.label_248
.label_117:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_108
.label_256:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_256
.label_108:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
.label_221:
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
.label_90:
	add	r11, rdx
	jmp	.label_95
.label_235:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, r15
	jmp	.label_259
.label_194:
	test	edi, edi
	je	.label_88
.label_701:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 6
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 4
.label_107:
	mov	edi, 0x4b
.label_103:
	mov	r11, qword ptr [rsp + 0x20]
	mov	ebx, edi
	and	bl, 0x7f
	cmp	bl, 0x18
	je	.label_92
	mov	dl, 1
	cmp	bl, 0x4b
	je	.label_85
	jmp	.label_105
.label_92:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	dword ptr [rax]
.label_111:
	mov	r15, rbp
	add	rbx, rax
	lea	rbp, [r15 - 1]
	cmp	byte ptr [r12 + r15], 0x25
	jne	.label_111
	mov	rax, rbp
	neg	rax
	test	r13d, r13d
	mov	ecx, r13d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	rsi, edx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x18]
	jae	.label_98
	mov	qword ptr [rsp + 0x40], rsi
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_120
	sar	rbx, 0x20
	test	edx, edx
	jne	.label_123
	cmp	eax, ecx
	jae	.label_123
	movsxd	r13, r13d
	mov	rax, r13
	sub	rax, rbx
	cmp	r14d, 0x30
	je	.label_131
	cmp	r14d, 0x2b
	jne	.label_168
.label_131:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_123
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_146
	jmp	.label_123
.label_168:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_123
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	dword ptr [rax + rax]
.label_255:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_255
.label_123:
	lea	rbp, [r12 + rbp + 1]
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_159
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_120
.label_159:
	mov	eax, 1
	sub	eax, r15d
	movsxd	rbx, eax
	neg	rbx
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_179:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r15
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_179
.label_120:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x40]
	jmp	.label_181
.label_162:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_144
.label_234:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_234
.label_144:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x50]
.label_112:
	add	r11, rbx
.label_136:
	mov	r13, qword ptr [rsp + 8]
	test	r13, r13
	movsxd	rbx, edx
	je	.label_196
	xor	eax, eax
	test	rbx, rbx
	je	.label_201
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	xor	ebp, ebp
.label_135:
	mov	edi, 0x30
	mov	rsi, r13
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_135
	mov	rax, rbx
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_201
.label_196:
	mov	rax, rbx
.label_201:
	add	r11, rax
	xor	r13d, r13d
.label_95:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r15
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_98
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_121
	cmp	rbx, rax
	setae	al
	test	edi, edi
	jne	.label_140
	test	al, al
	jne	.label_140
	movsxd	rbp, r13d
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_223
	cmp	r14d, 0x2b
	jne	.label_87
.label_223:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_140
	nop	dword ptr [rax]
.label_198:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_198
	jmp	.label_140
.label_87:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_140
	nop	
.label_231:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_231
.label_140:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_232
	test	rbx, rbx
	mov	r14, qword ptr [rsp + 8]
	je	.label_121
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [rax + r15]
	nop	
.label_230:
	movzx	ebp, byte ptr [r15]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rsi, r14
	call	fputc
	inc	r15
	inc	rbx
	jne	.label_230
	jmp	.label_121
.label_232:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_259:
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
.label_121:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x18]
.label_181:
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_124:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	mov	r13d, 0xffffffff
	test	cl, cl
	mov	rax, r11
	jne	.label_109
	jmp	.label_84
.label_98:
	xor	eax, eax
.label_84:
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_261
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_261:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_263
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_264
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_262
	cmp	eax, 0x76
	jne	.label_263
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_262:
	xor	edi, edi
	call	rbx
.label_263:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_267
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_267:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_35
	mov	edx, OFFSET FLAT:label_264
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_269
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_268
	cmp	eax, 0x76
	je	.label_266
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_265
.label_268:
	xor	edi, edi
.label_265:
	call	rcx
.label_269:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_266:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404190

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_273
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_272
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_272
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_271
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_271:
	mov	rbx, r14
.label_272:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_273:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_274
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404290
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4042a0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_276
	test	rdx, rdx
	je	.label_276
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_276:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404330
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0

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
.label_303:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_300
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_306]
.label_748:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_312
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_320
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_749:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_333
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_333
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_347:
	cmp	r14, r11
	jae	.label_377
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_377:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_347
.label_333:
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
	jmp	.label_352
.label_741:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_352
.label_744:
	mov	al, 1
.label_742:
	mov	r12b, 1
.label_745:
	test	r12b, 1
	mov	cl, 1
	je	.label_363
	mov	ecx, eax
.label_363:
	mov	al, cl
.label_743:
	test	r12b, 1
	jne	.label_365
	test	r11, r11
	je	.label_314
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_314:
	mov	r14d, 1
	jmp	.label_366
.label_365:
	xor	r14d, r14d
.label_366:
	mov	ecx, OFFSET FLAT:label_320
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_352
.label_746:
	test	r12b, 1
	jne	.label_378
	test	r11, r11
	je	.label_380
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_380:
	mov	r14d, 1
	jmp	.label_384
.label_747:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_386
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_352
.label_378:
	xor	r14d, r14d
.label_384:
	mov	eax, OFFSET FLAT:label_386
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_352:
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
	jmp	.label_283
	nop	dword ptr [rax]
.label_348:
	inc	rsi
.label_283:
	cmp	rbp, -1
	je	.label_393
	cmp	rsi, rbp
	jne	.label_326
	jmp	.label_328
	nop	word ptr cs:[rax + rax]
.label_393:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_334
.label_326:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_383
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_341
	cmp	rbp, -1
	jne	.label_341
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
.label_341:
	cmp	rbx, rbp
	jbe	.label_353
.label_383:
	xor	r8d, r8d
.label_302:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_355
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_359]
.label_718:
	test	rsi, rsi
	jne	.label_343
	jmp	.label_362
	nop	word ptr cs:[rax + rax]
.label_353:
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
	jne	.label_370
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_302
	jmp	.label_335
.label_370:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_302
.label_722:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_394
	test	rsi, rsi
	jne	.label_396
	cmp	rbp, 1
	je	.label_362
	xor	r13d, r13d
	jmp	.label_294
.label_711:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_278
	cmp	byte ptr [rsp + 6], 0
	jne	.label_282
	cmp	r12d, 2
	jne	.label_286
	mov	eax, r9d
	and	al, 1
	jne	.label_286
	cmp	r14, r11
	jae	.label_289
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_289:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_292
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_292:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_381
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_381:
	add	r14, 3
	mov	r9b, 1
.label_286:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_297
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_297:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_308
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_308
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_308
	cmp	r14, r11
	jae	.label_356
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_356:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_330
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_330:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_294
.label_712:
	mov	bl, 0x62
	jmp	.label_339
.label_713:
	mov	cl, 0x74
	jmp	.label_324
.label_714:
	mov	bl, 0x76
	jmp	.label_339
.label_715:
	mov	bl, 0x66
	jmp	.label_339
.label_716:
	mov	cl, 0x72
	jmp	.label_324
.label_719:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_345
	cmp	byte ptr [rsp + 6], 0
	jne	.label_309
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
	jae	.label_351
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_351:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_361
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_361:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_364
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_364:
	add	r14, 3
	xor	r9d, r9d
.label_345:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_294
.label_720:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_368
	cmp	r12d, 2
	jne	.label_343
	cmp	byte ptr [rsp + 6], 0
	je	.label_343
	jmp	.label_309
.label_721:
	cmp	r12d, 2
	jne	.label_379
	cmp	byte ptr [rsp + 6], 0
	jne	.label_309
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_325
.label_355:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_389
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
.label_337:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_285
	test	r8b, r8b
	je	.label_285
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_294
.label_394:
	test	rsi, rsi
	jne	.label_305
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_305
.label_362:
	mov	dl, 1
.label_717:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_309
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_294:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_317
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_319
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_317:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_288
.label_319:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_332
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_325
	jmp	.label_344
	nop	dword ptr [rax]
.label_288:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_344
	jmp	.label_325
.label_332:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_344
.label_278:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_348
	xor	r15d, r15d
	jmp	.label_343
.label_379:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_324
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_325
.label_324:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_309
.label_339:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_294
	nop	word ptr cs:[rax + rax]
.label_344:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_282
	cmp	r12d, 2
	jne	.label_316
	mov	eax, r9d
	and	al, 1
	jne	.label_316
	cmp	r14, r11
	jae	.label_307
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_307:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_371
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_371:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_375
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	add	r14, 3
	mov	r9b, 1
.label_316:
	cmp	r14, r11
	jae	.label_382
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_382:
	inc	r14
	jmp	.label_387
.label_389:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_390
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_390:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_346:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_291
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_295
	cmp	rbp, -2
	je	.label_299
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_280
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_395:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_315
	bt	rsi, rdx
	jb	.label_322
.label_315:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_395
.label_280:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_293
	xor	r13d, r13d
.label_293:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_346
	jmp	.label_337
.label_308:
	xor	r13d, r13d
	jmp	.label_294
.label_305:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_294
.label_368:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_343
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_343
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_343
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_354
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_367
	cmp	byte ptr [rsp + 6], 0
	jne	.label_279
	cmp	r14, r11
	jae	.label_392
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_392:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_373
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_373:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_369
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_369:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_391
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_391:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_294
.label_343:
	xor	eax, eax
.label_396:
	xor	r13d, r13d
	jmp	.label_294
.label_285:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_388
	nop	word ptr cs:[rax + rax]
.label_349:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_388:
	test	r8b, r8b
	je	.label_397
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_281
	cmp	r14, r11
	jae	.label_398
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_398:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_281
	nop	dword ptr [rax]
.label_397:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_335
	cmp	r12d, 2
	jne	.label_290
	mov	eax, r9d
	and	al, 1
	jne	.label_290
	cmp	r14, r11
	jae	.label_318
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_318:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_336
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_336:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_301
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_301:
	add	r14, 3
	mov	r9b, 1
.label_290:
	cmp	r14, r11
	jae	.label_327
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_327:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_313
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_321
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_321:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_281:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_325
	test	r9b, 1
	je	.label_340
	mov	ebx, eax
	and	bl, 1
	jne	.label_340
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_342
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_342:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_323
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_323:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_340:
	cmp	r14, r11
	jae	.label_349
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_325:
	test	r9b, 1
	je	.label_358
	and	al, 1
	jne	.label_358
	cmp	r14, r11
	jae	.label_360
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_360:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_350
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_350:
	add	r14, 2
	xor	r9d, r9d
.label_358:
	mov	ebx, r15d
.label_387:
	cmp	r14, r11
	jae	.label_304
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_304:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_348
.label_295:
	xor	r13d, r13d
.label_291:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_337
.label_299:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_376
	mov	rsi, qword ptr [rsp + 0x58]
.label_385:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_357
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_385
	xor	r13d, r13d
	jmp	.label_337
.label_376:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_337
.label_357:
	xor	r13d, r13d
	jmp	.label_337
.label_354:
	xor	r13d, r13d
	jmp	.label_294
.label_367:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_294
	nop	dword ptr [rax + rax]
.label_328:
	mov	rcx, rsi
.label_334:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_277
	or	al, dl
	je	.label_284
.label_277:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_287
	or	al, dl
	jne	.label_287
	test	r10b, 1
	jne	.label_298
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_287
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_303
.label_287:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_310
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_296
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_296
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_311:
	cmp	r14, r11
	jae	.label_329
	mov	byte ptr [rcx + r14], al
.label_329:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_311
	jmp	.label_296
.label_282:
	mov	qword ptr [rsp + 0x20], rbp
.label_335:
	mov	rdx, rdi
	jmp	.label_338
.label_309:
	mov	qword ptr [rsp + 0x20], rbp
.label_322:
	mov	rdx, rdi
	mov	eax, 2
.label_331:
	mov	qword ptr [rsp + 0x38], rax
.label_338:
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
.label_372:
	mov	r14, rax
.label_374:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_284:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_338
.label_298:
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
	jmp	.label_372
.label_310:
	mov	rcx, qword ptr [rsp + 8]
.label_296:
	cmp	r14, r11
	jae	.label_374
	mov	byte ptr [rcx + r14], 0
	jmp	.label_374
.label_279:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_331
.label_300:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051c0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405290
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
	je	.label_399
	mov	qword ptr [rax], rbx
.label_399:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_400
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_402:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_402
.label_400:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_403
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_404], OFFSET FLAT:slot0
.label_403:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_401
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_401:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405430

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
	js	.label_408
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_411
	cmp	r12d, 0x7fffffff
	je	.label_406
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
	jne	.label_409
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_409:
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
.label_411:
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
	jbe	.label_407
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_410
.label_407:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_405
	mov	rdi, r14
	call	free
.label_405:
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
.label_410:
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
.label_408:
	call	abort
.label_406:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405620
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405640
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
	je	.label_412
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
.label_412:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0
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
.label_413:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405720
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
	je	.label_414
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
.label_414:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790
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
	je	.label_415
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
.label_415:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405800
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x405870
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059a0

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
	je	.label_419
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
.label_419:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a40
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_420
	test	rdx, rdx
	je	.label_420
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_420:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ab0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_421
	test	rdx, rdx
	je	.label_421
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_421:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b20
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_422
	test	rsi, rsi
	je	.label_422
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_422:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b90
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_416]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_417]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_418]
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
.label_423:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c00
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c10
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c30
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c50

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

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
	jne	.label_425
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_430
	cmp	ecx, 0x55
	jne	.label_424
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_424
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_424
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_424
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_424
	cmp	byte ptr [rax + 5], 0
	jne	.label_424
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_427
	mov	eax, OFFSET FLAT:label_428
	jmp	.label_429
.label_430:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_424
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_424
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_424
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_424
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_424
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_424
	cmp	byte ptr [rax + 7], 0
	je	.label_426
.label_424:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_386
	mov	eax, OFFSET FLAT:label_320
.label_429:
	cmove	rax, rcx
.label_425:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_426:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_431
	mov	eax, OFFSET FLAT:label_432
	jmp	.label_429
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40

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
	je	.label_433
	mov	edx, OFFSET FLAT:label_443
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_449
.label_433:
	mov	edx, OFFSET FLAT:label_450
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
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
	mov	esi, OFFSET FLAT:label_451
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_438
	jmp	qword ptr [(r12 * 8) + label_439]
.label_664:
	add	rsp, 8
	jmp	.label_437
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
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
	jmp	.label_437
.label_665:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
.label_666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
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
.label_667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
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
.label_668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
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
	jmp	.label_437
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
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
	jmp	.label_437
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_442
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
	jmp	.label_437
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
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
	jmp	.label_437
.label_673:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_437
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
.label_437:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_452:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_452
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_458
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_460
.label_458:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_460:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_456
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_459
.label_456:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_459:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_454
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_455
.label_454:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_455:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_457
	cmp	r10d, 0x29
	jae	.label_465
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_453
.label_465:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_453:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
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
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_466
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_466:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_467
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_468
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_471
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_472
	test	rax, rax
	je	.label_471
.label_472:
	pop	rbx
	ret	
.label_471:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406410

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_473
	test	rax, rax
	je	.label_474
.label_473:
	pop	rbx
	ret	
.label_474:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406430
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_475
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_476
	test	rbx, rbx
	jne	.label_476
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_476:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_477
	test	rax, rax
	je	.label_475
.label_477:
	pop	rbx
	ret	
.label_475:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406480

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_478
	test	rbx, rbx
	jne	.label_478
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_478:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_480
	test	rax, rax
	je	.label_479
.label_480:
	pop	rbx
	ret	
.label_479:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4064b0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_484
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_486
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_481
.label_484:
	test	rcx, rcx
	jne	.label_487
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_487:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_482
.label_481:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_483
	test	rbx, rbx
	jne	.label_483
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_483:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_485
	test	rax, rax
	je	.label_486
.label_485:
	pop	rbx
	ret	
.label_486:
	call	xalloc_die
.label_482:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406550
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_488
	test	rax, rax
	je	.label_489
.label_488:
	pop	rbx
	ret	
.label_489:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406570
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_492
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_494
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_491
	call	free
	xor	eax, eax
	jmp	.label_493
.label_492:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_490
	mov	qword ptr [rsi], rbx
.label_491:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_493
	test	rax, rax
	je	.label_490
.label_493:
	pop	rbx
	ret	
.label_490:
	call	xalloc_die
.label_494:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0
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
	je	.label_496
	test	r14, r14
	je	.label_495
.label_496:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_495:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406620
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_497
	call	rpl_calloc
	test	rax, rax
	je	.label_497
	pop	rcx
	ret	
.label_497:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406650

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
	je	.label_498
	test	r15, r15
	je	.label_499
.label_498:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_499:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406690
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
	je	.label_501
	test	r15, r15
	je	.label_500
.label_501:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_500:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_502
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406710

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_503
	test	rsi, rsi
	mov	ecx, 1
	je	.label_504
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_504
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_503:
	mov	ecx, 1
.label_504:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_505
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_506
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_505
.label_506:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_505
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_507
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_507:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_505:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_508
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_508
	test	byte ptr [rbx + 1], 1
	je	.label_508
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_508:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406820

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
	jne	.label_509
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_509
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_510
.label_509:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_510:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_511
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_511:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406890

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
	je	.label_512
	cmp	r15, -2
	jb	.label_512
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_512
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_512:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0
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
	jle	.label_514
	add	rax, rbx
	nop	dword ptr [rax]
.label_513:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_514
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_513
.label_514:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406950

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
	je	.label_526
	mov	r13d, r14d
	and	r13d, 2
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_517
.label_515:
	cmp	rbp, r15
	jne	.label_520
	test	r12, r12
	je	.label_521
	movabs	rax, 0x38e38e38e38e38
	cmp	rbp, rax
	jae	.label_522
	mov	rax, rbp
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_516
.label_521:
	test	rbp, rbp
	mov	r15, rbp
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_523
.label_516:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
.label_520:
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	jmp	.label_518
	nop	word ptr cs:[rax + rax]
.label_517:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_525
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
.label_525:
	xor	eax, eax
.label_524:
	test	r13d, r13d
	je	.label_519
	test	al, al
	je	.label_518
.label_519:
	test	r14d, r14d
	je	.label_515
	xor	al, 1
	jne	.label_515
	mov	edi, dword ptr [rbx + 4]
	test	edi, edi
	jle	.label_515
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_515
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_515
.label_518:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_517
.label_526:
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
.label_522:
	call	xalloc_die
.label_523:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ae0
	.globl tzalloc
	.type tzalloc, @function
tzalloc:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_527
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_527:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_528
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_528
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_528:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b60
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_529
	nop	word ptr [rax + rax]
.label_530:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_530
.label_529:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b90
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_534
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_533
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_531
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_531:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_532
.label_534:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_533:
	xor	eax, eax
.label_532:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:label_538
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_544
	test	bl, bl
	je	.label_535
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_537
.label_535:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_540
.label_544:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_537
.label_540:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_537
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_543
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_543:
	test	bl, bl
	je	.label_539
	add	r14, 9
	mov	edi, OFFSET FLAT:label_538
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_545
.label_539:
	mov	edi, OFFSET FLAT:label_538
	call	unsetenv
.label_545:
	test	eax, eax
	je	.label_542
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_536
	nop	dword ptr [rax]
.label_541:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_541
.label_536:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_537
.label_542:
	call	tzset
	mov	rax, r13
.label_537:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d60

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_547
	cmp	r15, rbx
	ja	.label_546
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_547
.label_546:
	mov	ebp, OFFSET FLAT:label_35
	cmp	byte ptr [rbx], 0
	je	.label_549
	lea	rbp, [r12 + 9]
	jmp	.label_554
.label_558:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_554:
	lea	r13, [r12 + 9]
.label_556:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_549
	cmp	byte ptr [rbp], 0
	jne	.label_551
	cmp	rbp, r13
	jne	.label_552
	cmp	byte ptr [r12 + 8], 0
	je	.label_553
.label_551:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_556
	jmp	.label_558
.label_553:
	mov	rbp, r13
.label_552:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_548
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_550:
	xor	r14d, r14d
	jmp	.label_547
.label_548:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_557
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_549
.label_557:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_555
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_549:
	mov	qword ptr [r15 + 0x30], rbp
.label_547:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_555:
	mov	qword ptr [r12], 0
	jmp	.label_550
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ed0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_561
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_560
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:label_538
	mov	edx, 1
	call	setenv
	jmp	.label_559
.label_560:
	mov	edi, OFFSET FLAT:label_538
	call	unsetenv
.label_559:
	test	eax, eax
	je	.label_563
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_564
.label_563:
	call	tzset
	mov	r12b, 1
.label_564:
	cmp	rbp, 2
	jb	.label_562
	nop	
.label_565:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_565
.label_562:
	mov	dword ptr [r14], r15d
.label_561:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f60

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_566
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_567
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_570
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_568
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x28]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_568
.label_570:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_568
	mov	qword ptr [rsp], -1
.label_568:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_567
	mov	rax, qword ptr [rsp]
	jmp	.label_569
.label_567:
	mov	rax, -1
.label_569:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_566:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407060

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
	jne	.label_572
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_571
	test	cl, cl
	jne	.label_571
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_571
.label_572:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_571
	call	__errno_location
	mov	dword ptr [rax], 0
.label_571:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_574
	cmp	byte ptr [rax], 0x43
	jne	.label_576
	cmp	byte ptr [rax + 1], 0
	je	.label_573
.label_576:
	mov	esi, OFFSET FLAT:label_575
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_574
.label_573:
	xor	ebx, ebx
.label_574:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407100

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_35
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_577
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x407130

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
