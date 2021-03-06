	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	.align	32
	#Procedure 0x401c60

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.38
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.15
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.15
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.15
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.52
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401db0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x24], edi
	mov	qword ptr [rsp + 0x18], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.17_0
	mov	esi, OFFSET FLAT:.str.18_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.17_0
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	initialize_signals
	xor	r12d, r12d
	lea	r14, [rsp + 0x24]
	lea	r15, [rsp + 0x18]
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_14
.label_35:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	nop	word ptr cs:[rax + rax]
.label_14:
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x52
	jle	.label_24
	lea	eax, [rbx - 0x75]
	cmp	eax, 0xe
	ja	.label_39
	jmp	qword ptr [word ptr [+ (rax * 8) + label_37]]
.label_492:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	append_unset_var
	jmp	.label_14
	nop	
.label_24:
	cmp	ebx, 0x1f
	jle	.label_33
	cmp	ebx, 0x30
	je	.label_49
	cmp	ebx, 0x43
	je	.label_35
	jmp	.label_36
.label_49:
	mov	r13b, 1
	jmp	.label_14
.label_39:
	cmp	ebx, 0x53
	je	.label_38
	mov	bpl, 1
	cmp	ebx, 0x69
	je	.label_14
	jmp	.label_42
.label_493:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	jmp	.label_14
.label_494:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	call	parse_block_signal_params
	jmp	.label_14
.label_495:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	call	parse_signal_action_params
	jmp	.label_14
.label_496:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	parse_block_signal_params
	jmp	.label_14
.label_497:
	mov	byte ptr [byte ptr [rip + report_signal_handling]],  1
	jmp	.label_14
.label_38:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r14
	mov	rdx, r15
	call	parse_split_string
	jmp	.label_14
.label_33:
	cmp	ebx, -2
	jle	.label_16
	cmp	ebx, -1
	jne	.label_50
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x24]
	jge	.label_18
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_18
	cmp	byte ptr [rax + 1], 0
	je	.label_22
.label_18:
	test	bpl, bpl
	jne	.label_25
	call	unset_envvars
	jmp	.label_27
.label_22:
	inc	dword ptr [dword ptr [rip + optind]]
.label_25:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_28
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.26
	xor	eax, eax
	call	__fprintf_chk
.label_28:
	mov	qword ptr [word ptr [rip + __environ]], OFFSET FLAT:main.dummy_environ
.label_27:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x24]
	jge	.label_32
	mov	r14, qword ptr [rsp + 0x18]
	mov	r15d, dword ptr [rsp + 0x24]
	nop	dword ptr [rax]
.label_15:
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_32
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_47
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.27
	xor	eax, eax
	mov	rcx, rbp
	call	__fprintf_chk
.label_47:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	call	putenv
	test	eax, eax
	jne	.label_11
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_15
.label_32:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, dword ptr [rsp + 0x24]
	test	r13b, r13b
	je	.label_17
	cmp	eax, ecx
	jl	.label_19
.label_17:
	test	r12, r12
	sete	dl
	cmp	eax, ecx
	jl	.label_34
	test	dl, dl
	je	.label_20
.label_34:
	cmp	eax, ecx
	jge	.label_40
	call	reset_signal_handlers
	movzx	eax,  byte ptr [byte ptr [rip + sig_mask_changed]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_26
	call	set_signal_proc_mask
.label_26:
	movzx	eax,  byte ptr [byte ptr [rip + report_signal_handling]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_31
	call	list_signal_handling
.label_31:
	test	r12, r12
	je	.label_48
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_30
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.32
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_30:
	mov	rdi, r12
	call	chdir
	test	eax, eax
	jne	.label_46
.label_48:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_12
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__fprintf_chk
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	cmp	ebx, dword ptr [rsp + 0x24]
	jge	.label_12
	mov	r15, qword ptr [rsp + 0x18]
	movsxd	r12, dword ptr [rsp + 0x24]
	nop	
.label_29:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_44
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbx*8]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, ebx
	sub	ebp, eax
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.35
	xor	eax, eax
	mov	rdi, r14
	mov	ecx, ebp
	call	__fprintf_chk
.label_44:
	inc	rbx
	cmp	rbx, r12
	jl	.label_29
.label_12:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rcx + rax*8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	cmp	ebp, 2
	jne	.label_13
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	esi, 0x20
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	je	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_13
.label_40:
	mov	rbx,  qword ptr [word ptr [rip + __environ]]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	test	rdx, rdx
	je	.label_13
	xor	r14d, r14d
	test	r13b, r13b
	mov	ebp, 0xa
	cmovne	ebp, r14d
	add	rbx, 8
	nop	
.label_21:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.31
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	mov	rdx, qword ptr [rbx]
	add	rbx, 8
	test	rdx, rdx
	jne	.label_21
.label_13:
	mov	eax, r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_11:
	mov	byte ptr [rbx], 0
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
.label_41:
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_16:
	cmp	ebx, 0xffffff7d
	je	.label_43
	cmp	ebx, 0xffffff7e
	jne	.label_42
	xor	edi, edi
	call	usage
.label_36:
	cmp	ebx, 0x20
	je	.label_45
	jmp	.label_42
.label_50:
	cmp	ebx, 9
	jne	.label_42
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_23
.label_43:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.22
	mov	r9d, OFFSET FLAT:.str.23
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_42:
	mov	edi, 0x7d
	call	usage
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	jmp	.label_23
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
.label_23:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_46:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	jmp	.label_41
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0

	.globl initialize_signals
	.type initialize_signals, @function
initialize_signals:
	push	rax
	mov	edi, 0x104
	call	xmalloc
	mov	qword ptr [word ptr [rip + signals]],  rax
	xor	esi, esi
	mov	edx, 0x104
	mov	rdi, rax
	call	memset
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023f0

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbx
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	cmp	rax,  qword ptr [word ptr [rip + usvars_alloc]]
	jne	.label_51
	mov	rdi,  qword ptr [word ptr [rip + usvars]]
	mov	esi, OFFSET FLAT:usvars_alloc
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + usvars]],  rax
.label_51:
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + usvars_used]],  rcx
	mov	rcx,  qword ptr [word ptr [rip + usvars]]
	mov	qword ptr [rcx + rax*8], rbx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402440

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	je	.label_52
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r14
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	je	.label_55
	test	bpl, bpl
	sete	al
	movzx	eax, al
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	
.label_57:
	mov	rdi, rbx
	mov	rsi, r15
	call	operand2sig
	test	eax, eax
	je	.label_53
	jle	.label_54
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + signals]]
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_57
.label_55:
	mov	rdi, r14
	call	free
	jmp	.label_59
.label_52:
	test	bpl, bpl
	sete	al
	movzx	eax, al
	lea	r14d, [rax + rax + 2]
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_56
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	dword ptr [rax + rbx*4], r14d
.label_56:
	inc	rbx
	cmp	rbx, 0x41
	jne	.label_58
.label_59:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
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
	call	error
.label_54:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402550

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_60
	mov	al,  byte ptr [byte ptr [rip + sig_mask_changed]]
	and	al, 1
	jne	.label_65
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_65:
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
	mov	rdi, rbx
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r14
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	je	.label_63
	mov	r12d, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	cmovne	r13, r12
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_62:
	mov	rdi, rbp
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_64
	jle	.label_66
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	rdi, r12
	mov	esi, ebx
	call	sigdelset
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_62
.label_63:
	mov	rdi, r14
	call	free
	jmp	.label_61
.label_60:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rdi, rbx
	call	sigemptyset
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
.label_61:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
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
.label_66:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl parse_split_string
	.type parse_split_string, @function
parse_split_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	
.label_67:
	movsx	rcx, byte ptr [rbx + 1]
	inc	rbx
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_67
	test	cl, cl
	je	.label_72
	mov	esi, dword ptr [r14]
	sub	esi,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, rbx
	call	build_argv
	mov	r12, rax
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax]
	mov	qword ptr [r12], rax
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rax, r12
	jne	.label_68
	lea	rbp, [r12 + 8]
	cmp	qword ptr [rbp], 0
	mov	rax, r12
	je	.label_68
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.67
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, r12
	add	rbp, 0x10
	mov	rdi, qword ptr [r12 + 8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.68
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_68:
	cmp	qword ptr [rax + 8], 0
	lea	rax, [rax + 8]
	jne	.label_68
	jmp	.label_71
.label_70:
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	bl,  byte ptr [byte ptr [rip + dev_debug]]
.label_78:
	mov	rdi, qword ptr [rbp]
	nop	word ptr cs:[rax + rax]
.label_77:
	test	rdi, rdi
	je	.label_74
	test	bl, 1
	je	.label_77
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	add	rbp, 8
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.69
	jmp	.label_70
.label_74:
	mov	rax, rbp
.label_71:
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, dword ptr [r14]
	jge	.label_73
	movsxd	rdx, dword ptr [r14]
	nop	dword ptr [rax + rax]
.label_76:
	mov	rsi, qword ptr [r15]
	mov	rsi, qword ptr [rsi + rcx*8]
	mov	qword ptr [rax], rsi
	add	rax, 8
	inc	rcx
	cmp	rcx, rdx
	jl	.label_76
.label_73:
	mov	qword ptr [rax], 0
	xor	eax, eax
	cmp	qword ptr [r12], 0
	je	.label_69
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_75:
	cmp	qword ptr [r12 + rax*8 + 8], 0
	lea	rax, [rax + 1]
	jne	.label_75
.label_69:
	mov	dword ptr [r14], eax
	mov	qword ptr [r15], r12
	mov	dword ptr [dword ptr [rip + optind]],  0
.label_72:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402850

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	push	r14
	push	rbx
	xor	ebp, ebp
	cmp	qword ptr [word ptr [rip + usvars_used]],  0
	je	.label_82
.label_81:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_79
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rcx, qword ptr [rax + rbp*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.84
	xor	eax, eax
	call	__fprintf_chk
.label_79:
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	call	unsetenv
	test	eax, eax
	jne	.label_80
	inc	rbp
	cmp	rbp,  qword ptr [word ptr [rip + usvars_used]]
	jb	.label_81
.label_82:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_80:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, 1
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x10]
.label_84:
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	eax, dword ptr [rax + rbx*4]
	test	eax, eax
	je	.label_86
	mov	r13b, 1
	cmp	eax, 2
	je	.label_89
	cmp	eax, 4
	je	.label_89
	xor	r13d, r13d
.label_89:
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	r12d, dword ptr [rax + rbx*4]
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r14
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	test	r13b, r13b
	jne	.label_85
	test	al, al
	je	.label_87
.label_85:
	dec	r12d
	test	ebp, ebp
	jne	.label_88
	cmp	r12d, 1
	seta	al
	movzx	eax, al
	mov	qword ptr [rsp + 0x30], rax
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	or	r13b, al
	je	.label_83
.label_88:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_86
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_86
	cmp	r12d, 2
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	r9d, OFFSET FLAT:.str.90
	mov	eax, OFFSET FLAT:.str.89
	cmovb	r9, rax
	test	ebp, ebp
	mov	eax, OFFSET FLAT:.str_0
	mov	ecx, OFFSET FLAT:.str.91
	cmovne	rax, rcx
	mov	qword ptr [rsp], rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.88
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	call	__fprintf_chk
	nop	dword ptr [rax]
.label_86:
	inc	rbx
	cmp	rbx, 0x41
	jl	.label_84
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_87:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	jmp	.label_90
.label_83:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
.label_90:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a70

	.globl set_signal_proc_mask
	.type set_signal_proc_mask, @function
set_signal_proc_mask:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_93
	mov	ebx, 1
	lea	r14, [rsp + 0x18]
	lea	r15, [rsp]
	nop	dword ptr [rax]
.label_91:
	mov	edi, OFFSET FLAT:block_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_96
	mov	rdi, r14
	mov	esi, ebx
	call	sigaddset
	mov	r12d, OFFSET FLAT:.str.93
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_94
	mov	rdi, r14
	mov	esi, ebx
	call	sigdelset
	mov	r12d, OFFSET FLAT:.str.94
.label_92:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_94
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_94
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.95
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	mov	r9, r12
	call	__fprintf_chk
.label_94:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_91
	lea	rsi, [rsp + 0x18]
	mov	edi, 2
	xor	edx, edx
	call	sigprocmask
	test	eax, eax
	jne	.label_95
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_93:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	jmp	.label_97
.label_95:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
.label_97:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bc0

	.globl list_signal_handling
	.type list_signal_handling, @function
list_signal_handling:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	lea	rbx, [rsp + 0xc8]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_101
	mov	ebx, 1
	lea	r14, [rsp + 0x18]
	lea	r12, [rsp + 0xb0]
	nop	word ptr [rax + rax]
.label_103:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r14
	call	sigaction
	test	eax, eax
	jne	.label_102
	cmp	qword ptr [rsp + 0x18], 1
	mov	ebp, OFFSET FLAT:.str.90
	je	.label_98
	mov	ebp, OFFSET FLAT:.str_0
.label_98:
	lea	rdi, [rsp + 0xc8]
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	r13d, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.93
	cmovne	r13, rax
	cmp	byte ptr [rbp], 0
	mov	al, byte ptr [r13]
	mov	r15d, OFFSET FLAT:.str_0
	je	.label_99
	test	al, al
	mov	r15d, OFFSET FLAT:.str_0
	mov	ecx, OFFSET FLAT:.str.65
	cmovne	r15, rcx
	cmp	byte ptr [rbp], 0
	jne	.label_100
.label_99:
	test	al, al
	je	.label_102
.label_100:
	mov	edi, ebx
	mov	rsi, r12
	call	sig2str
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r15
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.97
	xor	eax, eax
	mov	rcx, r12
	mov	r8d, ebx
	mov	r9, r13
	call	__fprintf_chk
.label_102:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_103
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402d00

	.globl build_argv
	.type build_argv, @function
build_argv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	ebx, esi
	mov	r12, rdi
	mov	dword ptr [rsp + 0x44], 0
	mov	qword ptr [rsp + 0x38], 0
	test	r12, r12
	je	.label_104
	movsx	rbp, byte ptr [r12]
	test	rbp, rbp
	je	.label_104
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_104
	lea	rsi, [rsp + 0x38]
	lea	rdx, [rsp + 0x44]
	mov	rdi, r12
	call	validate_split_str
	mov	rdi, qword ptr [rsp + 0x38]
	add	rdi, 7
	call	xmalloc
	mov	r15, rax
	mov	eax, dword ptr [rsp + 0x44]
	lea	eax, [rbx + rax + 2]
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	mov	word ptr [r15 + 4], 0x59
	mov	dword ptr [r15], 0x4d4d5544
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x28], rax
	add	r15, 6
	mov	al, byte ptr [r12]
	test	al, al
	je	.label_106
	mov	r13b, 1
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
.label_119:
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	bpl, cl
	and	bpl, 1
.label_132:
	mov	ecx, dword ptr [rsp + 0x18]
	mov	r14b, cl
	mov	edx, dword ptr [rsp + 0x1c]
	or	r14b, dl
	and	r14b, 1
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	mov	rbx, r12
.label_133:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_117:
	movsx	ecx, al
	lea	edx, [rcx - 0x20]
	cmp	edx, 7
	jbe	.label_105
	cmp	ecx, 9
	je	.label_108
	cmp	ecx, 0x5c
	jne	.label_111
	test	bpl, bpl
	je	.label_114
	movzx	ecx, byte ptr [r12 + 1]
	cmp	ecx, 0x5c
	je	.label_114
	movzx	ecx, cl
	cmp	ecx, 0x27
	jne	.label_116
.label_114:
	lea	rbx, [r12 + 1]
	movzx	eax, byte ptr [r12 + 1]
	cmp	eax, 0x27
	je	.label_115
	movzx	ecx, al
	cmp	ecx, 0x5c
	je	.label_115
	test	bpl, bpl
	je	.label_118
	cmp	ecx, 0x5f
	je	.label_127
	jmp	.label_128
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rbx, r12
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_131]]
.label_108:
	test	r14b, r14b
	jne	.label_121
	mov	esi, 0x20
	mov	edx, 9
	mov	rdi, r12
	call	__strspn_c2
	add	r12, rax
	jmp	.label_112
.label_118:
	cmp	ecx, 0x5f
	jne	.label_113
.label_127:
	mov	al, 0x20
	cmp	byte ptr [rsp + 0x37], 0
	jne	.label_115
	add	r12, 2
.label_112:
	mov	al, byte ptr [r12]
	mov	r13b, 1
	test	al, al
	jne	.label_117
	jmp	.label_106
.label_121:
	mov	rbx, r12
	jmp	.label_115
.label_512:
	test	bpl, bpl
	je	.label_124
	mov	rbx, r12
	jmp	.label_115
.label_513:
	test	r13b, 1
	mov	rbx, r12
	je	.label_115
	jmp	.label_106
.label_514:
	test	bpl, bpl
	jne	.label_130
	mov	rdi, r12
	call	extract_varname
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_125
	test	r13b, 1
	je	.label_129
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x28], rax
	xor	r13d, r13d
.label_129:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_123
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbx
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	call	__fprintf_chk
.label_123:
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	r15, rax
	jmp	.label_107
.label_515:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_109
	mov	rbx, r12
	jmp	.label_115
.label_111:
	mov	rbx, r12
	jmp	.label_115
.label_116:
	mov	rbx, r12
	jmp	.label_115
.label_113:
	mov	dl, al
	add	dl, 0xde
	movzx	edx, dl
	cmp	edx, 3
	jb	.label_115
.label_128:
	cmp	ecx, 0x63
	je	.label_106
	movsx	edi, al
	call	escape_char
	jmp	.label_115
.label_130:
	mov	rbx, r12
	nop	dword ptr [rax + rax]
.label_115:
	test	r13b, 1
	je	.label_126
	mov	byte ptr [r15], 0
	inc	r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [rcx], r15
	add	rcx, 8
	mov	qword ptr [rsp + 0x28], rcx
	xor	r13d, r13d
.label_126:
	mov	byte ptr [r15], al
	inc	r15
.label_120:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_133
	jmp	.label_106
.label_125:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_107
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.75
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	call	__fprintf_chk
.label_107:
	mov	esi, 0x7d
	mov	rdi, r12
	call	strchr
	mov	rbx, rax
	jmp	.label_120
.label_124:
	mov	eax, dword ptr [rsp + 0x18]
	not	al
	mov	dword ptr [rsp + 0x18], eax
	test	r13b, 1
	je	.label_122
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x28], rax
	xor	r13d, r13d
.label_122:
	mov	eax, dword ptr [rsp + 0x18]
	and	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	al, byte ptr [r12 + 1]
	inc	r12
	test	al, al
	jne	.label_132
	jmp	.label_106
.label_109:
	mov	eax, dword ptr [rsp + 0x1c]
	not	al
	mov	dword ptr [rsp + 0x1c], eax
	test	r13b, 1
	je	.label_110
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x28], rax
	xor	r13d, r13d
.label_110:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	mov	al, byte ptr [r12 + 1]
	inc	r12
	test	al, al
	jne	.label_119
.label_106:
	mov	byte ptr [r15], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rsp + 0x20]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_104:
	mov	edi, OFFSET FLAT:.str.70
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x18b
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.build_argv
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120

	.globl validate_split_str
	.type validate_split_str, @function
validate_split_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r15, r15
	je	.label_143
	movsx	rbp, byte ptr [r15]
	test	rbp, rbp
	je	.label_143
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	r13, rax
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	jne	.label_143
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, r15
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
	mov	cl, byte ptr [r15]
	xor	eax, eax
	mov	r14d, 1
	test	cl, cl
	je	.label_152
	xor	r8d, r8d
	xor	r12d, r12d
	xor	ebp, ebp
	mov	r9, r13
	mov	qword ptr [rsp + 0x20], r9
.label_144:
	mov	esi, r14d
	movsx	rcx, cl
	mov	rdx, qword ptr [r9]
	mov	bl, byte ptr [rdx + rcx*2 + 1]
	and	bl, 0x20
	shr	bl, 5
	mov	cl, bpl
	and	cl, 1
	mov	dil, r12b
	and	dil, 1
	mov	dl, r12b
	or	dl, bpl
	test	dl, 1
	sete	r13b
	and	r13b, bl
	cmovne	eax, r8d
	mov	r14d, eax
	add	r14d, esi
	movsx	eax, byte ptr [r15]
	cmp	eax, 0x26
	jg	.label_140
	cmp	eax, 0x22
	je	.label_148
	cmp	eax, 0x24
	jne	.label_135
	test	dil, dil
	jne	.label_135
	mov	rbx, r9
	mov	rdi, r15
	call	extract_varname
	test	rax, rax
	je	.label_136
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_139
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 0x18], rax
.label_139:
	xor	r8d, r8d
	mov	r9, rbx
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_140:
	cmp	eax, 0x5c
	je	.label_134
	cmp	eax, 0x27
	jne	.label_135
	test	dil, dil
	sete	al
	test	cl, cl
	je	.label_145
	test	al, al
	je	.label_146
.label_145:
	or	cl, dil
	sete	r12b
	jmp	.label_135
	nop	dword ptr [rax]
.label_148:
	test	dil, dil
	sete	al
	test	cl, cl
	je	.label_150
	test	al, al
	je	.label_153
.label_150:
	or	cl, dil
	sete	bpl
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_134:
	movsx	ebx, byte ptr [r15 + 1]
	test	cl, cl
	je	.label_137
	movzx	eax, bl
	cmp	eax, 0x63
	je	.label_138
.label_137:
	test	bl, bl
	je	.label_141
	mov	edi, ebx
	call	valid_escape_sequence
	test	al, al
	je	.label_142
	inc	r15
	movzx	eax, bl
	cmp	eax, 0x5f
	sete	al
	movzx	eax, al
	add	r14d, eax
	mov	r9, qword ptr [rsp + 0x20]
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_135:
	movzx	eax, r13b
	mov	cl, byte ptr [r15 + 1]
	inc	r15
	test	cl, cl
	jne	.label_144
	jmp	.label_151
.label_152:
	xor	r12d, r12d
	xor	ebp, ebp
.label_151:
	or	r12b, bpl
	test	r12b, 1
	jne	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_146:
	mov	edi, OFFSET FLAT:.str.76
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x12f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_153:
	mov	edi, OFFSET FLAT:.str.76
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	jmp	.label_147
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	jmp	.label_147
.label_142:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_143:
	mov	edi, OFFSET FLAT:.str.70
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0x118
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_136:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
.label_149:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
.label_147:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403400

	.globl escape_char
	.type escape_char, @function
escape_char:
	lea	eax, [rdi - 0x6e]
	cmp	eax, 8
	ja	.label_154
	jmp	qword ptr [word ptr [+ (rax * 8) + label_156]]
.label_519:
	mov	al, 0xa
	jmp	.label_157
.label_154:
	mov	al, 0xc
	cmp	edi, 0x66
	jne	.label_155
.label_157:
	movsx	eax, al
	ret	
.label_520:
	mov	al, 0xd
	movsx	eax, al
	ret	
.label_521:
	mov	al, 9
	movsx	eax, al
	ret	
.label_522:
	mov	al, 0xb
	movsx	eax, al
	ret	
.label_155:
	push	rax
	mov	edi, OFFSET FLAT:.str.82
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0xd2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.escape_char
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	scan_varname
	xor	ebx, ebx
	test	rax, rax
	je	.label_159
	sub	rax, r15
	lea	r14, [rax - 2]
	cmp	r14,  qword ptr [word ptr [rip + vnlen]]
	jb	.label_158
	dec	rax
	mov	qword ptr [word ptr [rip + vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + varname]]
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + varname]],  rax
.label_158:
	mov	rbx,  qword ptr [word ptr [rip + varname]]
	add	r15, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rbx + r14], 0
.label_159:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl valid_escape_sequence
	.type valid_escape_sequence, @function
valid_escape_sequence:
	mov	al, 1
	mov	cl, dil
	add	cl, 0xde
	movzx	ecx, cl
	cmp	ecx, 0x3d
	ja	.label_160
	movabs	rdx, 0x2400000000000027
	bt	rdx, rcx
	jb	.label_162
.label_160:
	add	dil, 0x9d
	movzx	ecx, dil
	cmp	ecx, 0x13
	ja	.label_161
	mov	edx, 0xa8809
	bt	rdx, rcx
	jae	.label_161
.label_162:
	ret	
.label_161:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403500

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	test	r14, r14
	je	.label_163
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x24
	jne	.label_163
	movzx	eax, byte ptr [r14 + 1]
	cmp	eax, 0x7b
	jne	.label_165
	mov	bl, byte ptr [r14 + 2]
	movsx	edi, bl
	call	c_isalpha
	test	al, al
	jne	.label_164
	movzx	eax, bl
	cmp	eax, 0x5f
	jne	.label_165
.label_164:
	add	r14, 2
	nop	dword ptr [rax + rax]
.label_166:
	mov	bl, byte ptr [r14 + 1]
	inc	r14
	movsx	edi, bl
	call	c_isalnum
	test	al, al
	jne	.label_166
	movzx	eax, bl
	cmp	eax, 0x5f
	je	.label_166
	cmp	eax, 0x7d
	je	.label_167
.label_165:
	xor	r14d, r14d
.label_167:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_163:
	mov	edi, OFFSET FLAT:.str.83
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.scan_varname
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403590

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_173
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rdx, qword ptr [rsp]
	mov	ecx, 0xffffffff
	cmp	rdx, r15
	je	.label_172
	cmp	byte ptr [rdx], 0
	jne	.label_172
	cmp	dword ptr [rbx], 0
	jne	.label_172
	cmp	eax, -1
	je	.label_172
	movsxd	rdx, eax
	cmp	rdx, rax
	jne	.label_172
	cmp	eax, 0xfe
	mov	edx, 0xff
	mov	ecx, 0x7f
	cmovg	ecx, edx
	and	ecx, eax
.label_172:
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_170
.label_173:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_174
	lea	rbx, [r12 + 1]
	nop	dword ptr [rax + rax]
.label_175:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_169
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_169:
	mov	bpl, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_175
.label_174:
	lea	rsi, [rsp + 0xc]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_176
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x53
	jne	.label_168
	movzx	eax, byte ptr [r12 + 1]
	cmp	eax, 0x49
	jne	.label_168
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x47
	jne	.label_168
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 0xc]
	call	str2sig
	test	eax, eax
	je	.label_176
.label_168:
	mov	dword ptr [rsp + 0xc], 0xffffffff
.label_176:
	mov	rdi, r12
	call	free
.label_170:
	mov	edi, dword ptr [rsp + 0xc]
	test	edi, edi
	js	.label_178
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_171
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_177
.label_171:
	mov	eax, dword ptr [rsp + 0xc]
.label_177:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_179
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_179
.label_180:
	ret	
.label_179:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_180
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403740

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_181
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_181:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403760
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403770
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403780
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_182
.label_183:
	ret	
.label_182:
	cmp	edi, 0x7f
	je	.label_183
	xor	eax, eax
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037a0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037b0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037c0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037d0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_184
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_184
.label_185:
	ret	
.label_184:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_185
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_186
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_186:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_187
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_187:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403860
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403880
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403890
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_190
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_188
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_188
.label_190:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_191
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_188:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_189
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_191:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_189:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403960

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_192
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_193
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_193
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_194
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_194:
	mov	rbx, r14
.label_193:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_192:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a10
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
	.align	32
	#Procedure 0x403a50
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
	.align	32
	#Procedure 0x403a60
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
	.align	32
	#Procedure 0x403a70

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	.align	32
	#Procedure 0x403ab0
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
	.align	32
	#Procedure 0x403ad0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_195
	test	rdx, rdx
	je	.label_195
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_195:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b00
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_259:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_268
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_215]]
.label_485:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_486:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_240
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_240
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_265:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_252:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_265
.label_240:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_277
.label_478:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_277
.label_481:
	mov	al, 1
.label_479:
	mov	r15b, 1
.label_482:
	test	r15b, 1
	mov	cl, 1
	je	.label_300
	mov	cl, al
.label_300:
	mov	al, cl
.label_480:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_302
	test	r10, r10
	je	.label_306
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_307
.label_302:
	xor	ecx, ecx
	jmp	.label_307
.label_483:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_309
	test	r10, r10
	je	.label_313
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_222
.label_484:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_277
.label_306:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_307:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_277
.label_309:
	xor	eax, eax
	jmp	.label_222
.label_313:
	mov	eax, 1
.label_222:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_277:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_235
	nop	dword ptr [rax + rax]
.label_197:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_235:
	cmp	rbp, -1
	je	.label_282
	cmp	rsi, rbp
	jne	.label_314
	jmp	.label_286
	nop	dword ptr [rax]
.label_282:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_286
.label_314:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_293
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_294
	cmp	rbp, -1
	jne	.label_294
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_294:
	cmp	rbx, rbp
	jbe	.label_311
.label_293:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_225:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_315
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_304]]
.label_506:
	test	rsi, rsi
	jne	.label_196
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_311:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_220
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_225
	jmp	.label_236
.label_220:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_225
.label_510:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_246
	test	rsi, rsi
	jne	.label_249
	cmp	rbp, 1
	je	.label_200
	xor	r15d, r15d
	jmp	.label_223
.label_499:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_287
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_236
	cmp	edi, 2
	jne	.label_260
	mov	al, r11b
	and	al, 1
	jne	.label_264
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_267
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_267:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_274
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_274:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_284
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_204
.label_500:
	mov	bl, 0x62
	jmp	.label_290
.label_501:
	mov	cl, 0x74
	jmp	.label_299
.label_502:
	mov	bl, 0x76
	jmp	.label_290
.label_503:
	mov	bl, 0x66
	jmp	.label_290
.label_504:
	mov	cl, 0x72
	jmp	.label_299
.label_507:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_305
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_229
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_310
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_310:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_202:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_208
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_218
.label_508:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_224
	cmp	r14d, 2
	jne	.label_227
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_229
.label_227:
	mov	rdi, r14
	jmp	.label_196
.label_509:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_232
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_229
	mov	rdi, r14
	jmp	.label_237
.label_315:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_242
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_261:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_255
	test	dl, dl
	je	.label_255
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_223
.label_246:
	test	rsi, rsi
	jne	.label_278
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_278
.label_200:
	mov	dl, 1
.label_505:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_236
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_223
.label_287:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_196
	mov	r14, rdi
	inc	rsi
	jmp	.label_235
.label_305:
	mov	rdi, r14
.label_218:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_223
.label_232:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_299
.label_237:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_226
.label_299:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_236
.label_290:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_223
	jmp	.label_269
.label_242:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_312
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_312:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_257:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_213
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_219
	cmp	rbp, -2
	je	.label_230
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_231
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_238:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_243
	bt	rsi, rdx
	jb	.label_245
.label_243:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_238
.label_231:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_241
	xor	r15d, r15d
.label_241:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_257
	jmp	.label_261
.label_278:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_223
.label_224:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_196
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_196
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_196
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_285
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_214
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_236
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_297
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_297:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_296
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_296:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_273
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_273:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_280
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_280:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_223
.label_196:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_223:
	test	r12b, r12b
	je	.label_316
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_205
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_316:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_212
.label_205:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_216
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_226
	jmp	.label_269
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_269
	jmp	.label_226
.label_216:
	mov	bl, r13b
	mov	rsi, r14
.label_269:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_236
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_244
	mov	al, r11b
	and	al, 1
	jne	.label_244
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_248
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_266
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_266:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_244:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_272
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_272:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_281
.label_249:
	xor	r15d, r15d
	jmp	.label_223
.label_255:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
.label_291:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_289:
	test	dl, dl
	je	.label_298
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_233
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_247
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_247:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_233
	nop	word ptr [rax + rax]
.label_298:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_229
	cmp	r14d, 2
	jne	.label_301
	mov	al, r11b
	and	al, 1
	jne	.label_301
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_317
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_317:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_203
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_203:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_279
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_279:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_301:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_283
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_283:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_251
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_251:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_239
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_239:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_233:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_226
	test	r11b, 1
	je	.label_256
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_258
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_263
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_263:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_253
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_253:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_258
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	r14, rdi
.label_258:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_291
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_291
.label_226:
	test	r11b, 1
	je	.label_201
	and	al, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_303
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_303:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_308
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_281
	nop	dword ptr [rax + rax]
.label_201:
	mov	bl, r13b
	mov	r14, rdi
.label_281:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_197
.label_260:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_204
.label_264:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_204:
	cmp	rcx, r10
	jae	.label_206
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_206:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_211
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_221
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_288
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_234:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_292
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_292:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_223
.label_211:
	xor	r15d, r15d
	jmp	.label_223
.label_221:
	xor	r15d, r15d
	jmp	.label_223
.label_288:
	xor	r15d, r15d
	jmp	.label_223
.label_213:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_210
.label_219:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_254
.label_230:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_262
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_275:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_271
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_275
	xor	r15d, r15d
	jmp	.label_210
.label_262:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_254:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_210:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_261
.label_271:
	xor	r15d, r15d
	jmp	.label_210
.label_285:
	xor	r15d, r15d
	jmp	.label_223
.label_214:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_223
	nop	dword ptr [rax + rax]
.label_286:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_295
	or	dl, al
	je	.label_229
.label_295:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_228
	or	dl, al
	jne	.label_228
	test	r8b, 1
	jne	.label_250
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_228
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_259
.label_228:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_199
	test	cl, cl
	jne	.label_199
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_199
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_217:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_207
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_207:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_217
.label_199:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_209
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_209
.label_236:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_270:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_276:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_209:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_245:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_270
.label_229:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_270
.label_250:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_276
.label_268:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_318
	mov	qword ptr [rax], rbx
.label_318:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_319
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_321
.label_319:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_323
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_322]], OFFSET FLAT:slot0
.label_323:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_320
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_320:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f50

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_324
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_329
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_325
.label_329:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_328
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_327
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_327:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_325:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_330
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_326
	mov	rdi, rbx
	call	free
.label_326:
	mov	rdi, r14
	call	xcharalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_330:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_324:
	call	abort
.label_328:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405140
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
	.align	32
	#Procedure 0x405150

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190

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
	je	.label_331
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
.label_331:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405230

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270

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
	mov	rcx,  qword ptr [word ptr [rip + label_332]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405310
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405360

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405370

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
	mov	rax,  qword ptr [word ptr [rip + label_332]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405400
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405420

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430
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
	.align	32
	#Procedure 0x405440

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405450

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_336
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_335
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_336
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_336
.label_335:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_337
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_336
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_336
.label_337:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_336:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405540

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
	je	.label_339
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_340
	jmp	.label_338
.label_339:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_338
.label_340:
	mov	eax, 1
	test	bpl, bpl
	je	.label_338
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
.label_338:
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
	.align	32
	#Procedure 0x4055d0

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
	je	.label_343
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_342
	jmp	.label_341
.label_343:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_341
.label_342:
	mov	eax, 1
	test	bpl, bpl
	je	.label_341
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
.label_341:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405660

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
	je	.label_344
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_346
	jmp	.label_345
.label_344:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_345
.label_346:
	mov	eax, 1
	test	bpl, bpl
	je	.label_345
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
.label_345:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4056e0

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
	je	.label_349
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_348
	jmp	.label_347
.label_349:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_347
.label_348:
	mov	eax, 1
	test	bpl, bpl
	je	.label_347
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
.label_347:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405750

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
	je	.label_352
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_350
	jmp	.label_351
.label_352:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_351
.label_350:
	mov	eax, 1
	test	bpl, bpl
	je	.label_351
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_351:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0

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
	je	.label_353
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_355
	jmp	.label_354
.label_353:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_354
.label_355:
	mov	eax, 1
	test	bpl, bpl
	je	.label_354
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_354:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405810

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
	je	.label_358
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_357
	jmp	.label_356
.label_358:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_356
.label_357:
	mov	eax, 1
	test	bpl, bpl
	je	.label_356
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_356:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_361
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_360
	jmp	.label_359
.label_361:
	mov	eax, 1
	test	cl, cl
	je	.label_359
.label_360:
	xor	eax, eax
.label_359:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405890

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_364
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_363
.label_364:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_368
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_370]]
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_368:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_367
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_369
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_366
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_362
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_362:
	mov	qword ptr [rsp + 0x10], rdi
.label_366:
	mov	qword ptr [rsp + 8], rsi
.label_369:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_371
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_367:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_365
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_365:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_371:
	call	__fprintf_chk
.label_448:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b80
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_372:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_372
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_374:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_373
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_375
	nop	dword ptr [rax]
.label_373:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_376
	inc	r9
	cmp	r9, 0xa
	jb	.label_374
.label_376:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_377
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_377:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_378
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_378:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_379
	test	rax, rax
	je	.label_380
.label_379:
	pop	rbx
	ret	
.label_380:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_381
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_381:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405da0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_382
	test	rbx, rbx
	jne	.label_382
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_382:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_384
	test	rax, rax
	je	.label_383
.label_384:
	pop	rbx
	ret	
.label_383:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405dd0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_385
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_388
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_386
.label_385:
	test	rcx, rcx
	jne	.label_389
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_389:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_387
.label_386:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_388:
	call	xalloc_die
.label_387:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e50

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_390
	call	rpl_calloc
	test	rax, rax
	je	.label_390
	pop	rcx
	ret	
.label_390:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ed0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f00

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405f50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_391
	test	rsi, rsi
	mov	ecx, 1
	je	.label_392
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_392
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_391:
	mov	ecx, 1
.label_392:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fa0

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
	je	.label_393
	cmp	r15, -2
	jb	.label_393
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_393
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_393:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406000

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
	.section	.text
	.align	32
	#Procedure 0x406010

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
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_398
	cmp	eax, 9
	ja	.label_399
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_394
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_395
	jmp	.label_394
	nop	dword ptr [rax + rax]
.label_399:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_401
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_399
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_396
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_400
.label_396:
	test	r14d, r14d
	jle	.label_394
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_394
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_394
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_394
	test	rax, rax
	jg	.label_394
	mov	ecx, r14d
	jmp	.label_402
.label_401:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_395
.label_400:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_394
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_394
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_397
.label_394:
	mov	eax, 0xffffffff
.label_395:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_397:
	mov	ecx, ebp
.label_402:
	add	rax, rcx
	jmp	.label_395
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406150

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
	mov	esi, OFFSET FLAT:label_398
	nop	word ptr cs:[rax + rax]
.label_406:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_403
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_406
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_404
	cmp	eax, ebp
	jl	.label_404
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_407
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_405
.label_403:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_404
.label_407:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_405:
	xor	ebx, ebx
	cmp	r15d, ebp
	je	.label_404
	sub	ebp, r15d
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_2
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_404:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220

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
	je	.label_408
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_409
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_409
.label_408:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_409
	test	cl, cl
	jne	.label_409
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_409:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406290

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_411
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_412
	cmp	byte ptr [rax + 1], 0
	je	.label_410
.label_412:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_411
.label_410:
	xor	ebx, ebx
.label_411:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4062d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_413
	mov	rax, rcx
.label_413:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406300

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_414
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_415
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_414
.label_415:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_414
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_416
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_416:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_414:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_417
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_417
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_417:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_418
	ret	
.label_418:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4063d0

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
	jne	.label_419
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_419
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_420
.label_419:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_420:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_421
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_421:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x406440

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]