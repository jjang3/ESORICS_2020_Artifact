	.section	.text
	.align	32
	#Procedure 0x401980

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	jmp	.label_27
.label_27:
	movabs	rdi, OFFSET FLAT:label_20
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_13
.label_9:
	movabs	rdi, OFFSET FLAT:label_15
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:label_23
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_16
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_25
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_26
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_21
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x4c], eax
	call	emit_ancillary_info
.label_13:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401bf0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_28
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_29
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_44:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_43
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_43:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_37
	jmp	.label_34
.label_37:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_44
.label_34:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_31
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_31:
	movabs	rdi, OFFSET FLAT:label_36
	call	gettext
	movabs	rsi, OFFSET FLAT:label_41
	movabs	rdx, OFFSET FLAT:label_30
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_32
	movabs	rsi, OFFSET FLAT:label_40
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_32
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_32:
	movabs	rdi, OFFSET FLAT:label_42
	call	gettext
	movabs	rsi, OFFSET FLAT:label_30
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_35
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_38
	movabs	rsi, OFFSET FLAT:label_39
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x32], 0
	mov	byte ptr [rbp - 0x33], 1
	mov	qword ptr [rbp - 0x40], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_38
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_63
	movabs	rsi, OFFSET FLAT:label_64
	mov	qword ptr [rbp - 0x90], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_63
	mov	qword ptr [rbp - 0x98], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0xa0], rax
	call	atexit
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0xa4], eax
.label_81:
	cmp	qword ptr [rbp - 0x20], 8
	ja	.label_78
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_81
.label_78:
	mov	dword ptr [dword ptr [label_85]],  1
	mov	dword ptr [dword ptr [label_86]],  2
	mov	dword ptr [dword ptr [label_87]],  3
	mov	dword ptr [dword ptr [label_88]],  4
	mov	dword ptr [dword ptr [label_88]],  5
	mov	qword ptr [rbp - 0x20], 0
.label_102:
	cmp	qword ptr [rbp - 0x20], 0x10
	ja	.label_98
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_102
.label_98:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	dword ptr [dword ptr [label_109]],  6
	mov	dword ptr [dword ptr [label_110]],  8
	mov	dword ptr [dword ptr [label_111]],  7
	mov	qword ptr [word ptr [n_specs]],  0
	mov	qword ptr [word ptr [n_specs_allocated]],  0
	mov	qword ptr [word ptr [spec]],  0
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	byte ptr [byte ptr [flag_dump_strings]],  0
.label_119:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x58]
	mov	dword ptr [rbp - 0x58], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], -1
	jne	.label_144
	jmp	.label_147
.label_144:
	mov	eax, dword ptr [rbp - 0x5c]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x104
	mov	qword ptr [rbp - 0xb0], rcx
	mov	dword ptr [rbp - 0xb4], eax
	ja	.label_149
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_45]]
	jmp	rcx
.label_998:
	mov	byte ptr [rbp - 0x31], 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x64
	mov	eax, ecx
	sub	ecx, 0x14
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_51
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_62]]
	jmp	rcx
.label_1037:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0xa
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_67
.label_1039:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_67
.label_1040:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0x10
	mov	dword ptr [dword ptr [address_pad_len]],  6
	jmp	.label_67
.label_1038:
	movabs	rax, OFFSET FLAT:format_address_none
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_pad_len]],  0
	jmp	.label_67
.label_51:
	movabs	rdi, OFFSET FLAT:label_94
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rcx]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_67:
	jmp	.label_46
.label_1014:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:n_bytes_to_skip
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_122
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_122:
	jmp	.label_46
.label_1004:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:max_bytes_to_format
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_139
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_139:
	jmp	.label_46
.label_1006:
	mov	byte ptr [rbp - 0x31], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_113
	mov	qword ptr [word ptr [string_min]],  3
	jmp	.label_47
.label_113:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	lea	rcx, [rbp - 0x50]
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_60
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_60:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_72
	movabs	rdi, OFFSET FLAT:label_83
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xd0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_72:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [string_min]],  rax
.label_47:
	mov	byte ptr [byte ptr [flag_dump_strings]],  1
	jmp	.label_46
.label_1016:
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1017:
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  0
	jmp	.label_46
.label_1019:
	mov	byte ptr [byte ptr [traditional]],  1
	jmp	.label_46
.label_1020:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	eax, OFFSET FLAT:label_105
	mov	edi, eax
	mov	eax, OFFSET FLAT:endian_args
	mov	edx, eax
	mov	eax, OFFSET FLAT:endian_types
	mov	ecx, eax
	mov	eax, 4
	mov	r8d, eax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + endian_types]]
	test	r10d, r10d
	mov	dword ptr [rbp - 0xd4], r10d
	je	.label_121
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0xd4]
	sub	eax, 1
	mov	dword ptr [rbp - 0xd8], eax
	jne	.label_99
	jmp	.label_92
.label_92:
	mov	byte ptr [byte ptr [input_swap]],  1
	jmp	.label_99
.label_121:
	mov	byte ptr [byte ptr [input_swap]],  0
.label_99:
	jmp	.label_46
.label_1007:
	movabs	rdi, OFFSET FLAT:label_134
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1008:
	movabs	rdi, OFFSET FLAT:label_143
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1009:
	movabs	rdi, OFFSET FLAT:label_157
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1000:
	movabs	rdi, OFFSET FLAT:label_58
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1010:
	movabs	rdi, OFFSET FLAT:label_68
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1001:
	movabs	rdi, OFFSET FLAT:label_66
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1011:
	movabs	rdi, OFFSET FLAT:label_84
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1002:
	movabs	rdi, OFFSET FLAT:label_90
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1013:
	movabs	rdi, OFFSET FLAT:label_101
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1003:
	movabs	rdi, OFFSET FLAT:label_114
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1005:
	movabs	rdi, OFFSET FLAT:label_118
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_999:
	movabs	rdi, OFFSET FLAT:label_133
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1015:
	movabs	rdi, OFFSET FLAT:label_142
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1012:
	movabs	rdi, OFFSET FLAT:label_153
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_46
.label_1018:
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_54
	mov	qword ptr [rbp - 0x30], 0x20
	jmp	.label_61
.label_54:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x68]
	movabs	r8, OFFSET FLAT:label_38
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_73
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_73:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_79
	movabs	rdi, OFFSET FLAT:label_83
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xe0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_79:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x30], rax
.label_61:
	jmp	.label_46
.label_997:
	xor	edi, edi
	call	usage
.label_996:
	movabs	rsi, OFFSET FLAT:label_12
	movabs	rdx, OFFSET FLAT:label_41
	movabs	r8, OFFSET FLAT:label_146
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_149:
	mov	edi, 1
	call	usage
.label_46:
	jmp	.label_119
.label_147:
	test	byte ptr [rbp - 0x33], 1
	jne	.label_120
	mov	dword ptr [rbp - 4], 1
	jmp	.label_123
.label_120:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_125
	cmp	qword ptr [word ptr [n_specs]],  0
	jbe	.label_125
	movabs	rdi, OFFSET FLAT:label_129
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_125:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x14], eax
	test	byte ptr [rbp - 0x31], 1
	je	.label_135
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_104
.label_135:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 1
	mov	dword ptr [rbp - 0xe4], eax
	mov	dword ptr [rbp - 0xe8], ecx
	je	.label_141
	jmp	.label_148
.label_148:
	mov	eax, dword ptr [rbp - 0xe4]
	sub	eax, 2
	mov	dword ptr [rbp - 0xec], eax
	je	.label_117
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0xe4]
	sub	eax, 3
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_158
	jmp	.label_49
.label_141:
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_75
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2b
	jne	.label_56
.label_75:
	lea	rsi, [rbp - 0x70]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_70
	jmp	.label_56
.label_70:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
.label_56:
	jmp	.label_49
.label_117:
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_77
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2b
	je	.label_77
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_52
.label_77:
	lea	rsi, [rbp - 0x78]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_96
	jmp	.label_52
.label_96:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_100
	lea	rsi, [rbp - 0x70]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_112
	jmp	.label_100
.label_112:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 2
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_115
.label_100:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdx + rax*8]
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
.label_115:
	jmp	.label_52
.label_52:
	jmp	.label_49
.label_158:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_55
	lea	rsi, [rbp - 0x70]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_152
	jmp	.label_55
.label_152:
	lea	rsi, [rbp - 0x78]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_53
	jmp	.label_55
.label_53:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [optind]]
	add	edx, 2
	movsxd	rcx, edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	sub	edx, 2
	mov	dword ptr [rbp - 0x14], edx
.label_55:
	jmp	.label_49
.label_49:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_76
	mov	eax, 1
	cmp	eax, dword ptr [rbp - 0x14]
	jge	.label_76
	movabs	rdi, OFFSET FLAT:label_138
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0xf8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_91
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_93
	mov	edi, esi
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_76:
	jmp	.label_104
.label_104:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	je	.label_80
	movabs	rax, OFFSET FLAT:format_address_none
	cmp	qword ptr [word ptr [format_address]],  rax
	jne	.label_107
	movabs	rax, OFFSET FLAT:format_address_paren
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	qword ptr [word ptr [format_address]],  rax
	jmp	.label_116
.label_107:
	movabs	rax, OFFSET FLAT:format_address_label
	mov	qword ptr [word ptr [format_address]],  rax
.label_116:
	jmp	.label_80
.label_80:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_130
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	add	rax,  qword ptr [word ptr [max_bytes_to_format]]
	mov	qword ptr [word ptr [end_offset]],  rax
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	jae	.label_132
	movabs	rdi, OFFSET FLAT:label_150
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_132:
	jmp	.label_130
.label_130:
	cmp	qword ptr [word ptr [n_specs]],  0
	jne	.label_151
	movabs	rdi, OFFSET FLAT:label_155
	call	decode_format_string
	mov	byte ptr [rbp - 0xf9], al
.label_151:
	cmp	dword ptr [rbp - 0x14], 0
	jle	.label_48
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [file_list]],  rax
	jmp	.label_136
.label_48:
	movabs	rax, OFFSET FLAT:default_file_list
	mov	qword ptr [word ptr [file_list]],  rax
.label_136:
	call	open_next_file
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_65
	jmp	.label_71
.label_65:
	mov	rdi,  qword ptr [word ptr [n_bytes_to_skip]]
	call	skip
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_74
	jmp	.label_71
.label_74:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	je	.label_137
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_82
.label_137:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x108], rcx
	jmp	.label_82
.label_82:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [word ptr [pseudo_offset]],  rax
	call	get_lcm
	mov	dword ptr [rbp - 0x24], eax
	test	byte ptr [rbp - 0x32], 1
	je	.label_124
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_97
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x24]
	xor	edx, edx
	div	rcx
	cmp	rdx, 0
	jne	.label_97
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
	jmp	.label_103
.label_97:
	movabs	rdi, OFFSET FLAT:label_106
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x110], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x110]
	mov	al, 0
	call	error
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rcx
.label_103:
	jmp	.label_59
.label_124:
	cmp	dword ptr [rbp - 0x24], 0x10
	jge	.label_127
	mov	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x24]
	cdq	
	idiv	dword ptr [rbp - 0x24]
	imul	ecx, eax
	movsxd	rsi, ecx
	mov	qword ptr [word ptr [bytes_per_block]],  rsi
	jmp	.label_128
.label_127:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
.label_128:
	jmp	.label_59
.label_59:
	mov	qword ptr [rbp - 0x20], 0
.label_95:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_145
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	edx, dword ptr [rcx + 4]
	mov	ecx, edx
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x7c], esi
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	add	esi, 1
	imul	esi, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x80], esi
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x80]
	cmp	rax, rcx
	jae	.label_140
	movsxd	rax, dword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x40], rax
.label_140:
	jmp	.label_57
.label_57:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_95
.label_145:
	mov	qword ptr [rbp - 0x20], 0
.label_69:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_50
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	edx, dword ptr [rcx + 4]
	mov	ecx, edx
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x84], esi
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	imul	esi, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x88], esi
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x88]
	sub	rax, rcx
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	dword ptr [rax + 0x20], esi
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_69
.label_50:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_89
	call	dump_strings
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x114], ecx
	jmp	.label_131
.label_89:
	call	dump
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x114], ecx
.label_131:
	mov	eax, dword ptr [rbp - 0x114]
	mov	cl, byte ptr [rbp - 0x33]
	and	cl, 1
	movzx	edx, cl
	and	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x33], cl
.label_71:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_108
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_108
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_154
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x118], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_108:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x33]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_123:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fa0

	.globl format_address_std
	.type format_address_std, @function
format_address_std:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rdi
	mov	byte ptr [rbp - 0x18], 0
	mov	al, byte ptr [rbp - 9]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, rdi
	dec	rcx
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rdi - 1], al
	mov	rcx, qword ptr [rbp - 0x38]
	movsxd	rdi,  dword ptr [dword ptr [rip + address_pad_len]]
	sub	rcx, rdi
	mov	qword ptr [rbp - 0x40], rcx
	mov	esi,  dword ptr [dword ptr [rip + address_base]]
	mov	edx, esi
	sub	edx, 8
	mov	dword ptr [rbp - 0x44], esi
	mov	dword ptr [rbp - 0x48], edx
	je	.label_159
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_164
	jmp	.label_168
.label_168:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x10
	mov	dword ptr [rbp - 0x50], eax
	je	.label_169
	jmp	.label_165
.label_159:
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 7
	add	rax, 0x30
	mov	cl, al
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 3
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_166
	jmp	.label_165
.label_164:
	jmp	.label_160
.label_160:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_160
	jmp	.label_165
.label_169:
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0xf
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + label_163]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 4
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_161
	jmp	.label_165
.label_165:
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_170
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax - 1], 0x30
	jmp	.label_167
.label_170:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x54], eax
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403150

	.globl format_address_none
	.type format_address_none, @function
format_address_none:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403160

	.globl decode_format_string
	.type decode_format_string, @function
decode_format_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_171
	jmp	.label_183
.label_171:
	movabs	rdi, OFFSET FLAT:label_172
	movabs	rsi, OFFSET FLAT:label_173
	mov	edx, 0x3d8
	movabs	rcx, OFFSET FLAT:label_174
	call	__assert_fail
.label_183:
	jmp	.label_180
.label_180:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_182
	mov	rax,  qword ptr [word ptr [n_specs_allocated]]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	ja	.label_176
	movabs	rsi, OFFSET FLAT:n_specs_allocated
	mov	eax, 0x28
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [spec]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [spec]],  rax
.label_176:
	lea	rdx, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax,  qword ptr [word ptr [n_specs]]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rcx, rax
	call	decode_one_format
	test	al, 1
	jne	.label_177
	mov	byte ptr [rbp - 1], 0
	jmp	.label_181
.label_177:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_175
	jmp	.label_179
.label_175:
	movabs	rdi, OFFSET FLAT:label_178
	movabs	rsi, OFFSET FLAT:label_173
	mov	edx, 0x3e4
	movabs	rcx, OFFSET FLAT:label_174
	call	__assert_fail
.label_179:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [n_specs]]
	add	rax, 1
	mov	qword ptr [word ptr [n_specs]],  rax
	jmp	.label_180
.label_182:
	mov	byte ptr [rbp - 1], 1
.label_181:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032b0

	.globl parse_old_offset
	.type parse_old_offset, @function
parse_old_offset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0
	jne	.label_190
	mov	byte ptr [rbp - 1], 0
	jmp	.label_184
.label_190:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_192
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_192:
	mov	esi, 0x2e
	mov	rdi, qword ptr [rbp - 0x10]
	call	strchr
	cmp	rax, 0
	je	.label_185
	mov	dword ptr [rbp - 0x1c], 0xa
	jmp	.label_188
.label_185:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x78
	je	.label_189
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x58
	jne	.label_187
.label_189:
	mov	dword ptr [rbp - 0x1c], 0x10
	jmp	.label_186
.label_187:
	mov	dword ptr [rbp - 0x1c], 8
.label_186:
	jmp	.label_188
.label_188:
	xor	eax, eax
	mov	esi, eax
	movabs	r8, OFFSET FLAT:label_191
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	cmp	eax, 0
	sete	r9b
	and	r9b, 1
	mov	byte ptr [rbp - 1], r9b
.label_184:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl format_address_paren
	.type format_address_paren, @function
format_address_paren:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x28
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	edi, esi
	call	putchar_unlocked
	mov	esi, 0x29
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	call	format_address_std
	cmp	byte ptr [rbp - 9], 0
	je	.label_193
	movsx	edi, byte ptr [rbp - 9]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_193:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033f0

	.globl format_address_label
	.type format_address_label, @function
format_address_label:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	esi, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	format_address_std
	mov	rdi, qword ptr [rbp - 8]
	add	rdi,  qword ptr [word ptr [pseudo_offset]]
	movsx	esi, byte ptr [rbp - 9]
	call	format_address_paren
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403430

	.globl open_next_file
	.type open_next_file, @function
open_next_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 2], 1
.label_198:
	mov	rax,  qword ptr [word ptr [file_list]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [word ptr [input_filename]],  rax
	cmp	qword ptr [word ptr [input_filename]],  0
	jne	.label_203
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_200
.label_203:
	mov	rax,  qword ptr [word ptr [file_list]]
	add	rax, 8
	mov	qword ptr [word ptr [file_list]],  rax
	mov	rdi,  qword ptr [word ptr [input_filename]]
	mov	ecx, OFFSET FLAT:label_201
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_197
	movabs	rdi, OFFSET FLAT:label_154
	call	gettext
	xor	ecx, ecx
	mov	qword ptr [word ptr [input_filename]],  rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [word ptr [in_stream]],  rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	edi, ecx
	mov	esi, ecx
	call	xset_binary_mode
	jmp	.label_195
.label_197:
	movabs	rsi, OFFSET FLAT:label_199
	mov	rdi,  qword ptr [word ptr [input_filename]]
	call	fopen
	mov	qword ptr [word ptr [in_stream]],  rax
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_202
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 8], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_93
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 2], 0
.label_202:
	jmp	.label_195
.label_195:
	jmp	.label_196
.label_196:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_198
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_194
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	jne	.label_194
	xor	eax, eax
	mov	ecx, eax
	mov	edx, 2
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, rcx
	call	setvbuf
	mov	dword ptr [rbp - 0xc], eax
.label_194:
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_200:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl skip
	.type skip, @function
skip:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20d0
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_214
	mov	byte ptr [rbp - 1], 1
	jmp	.label_222
.label_214:
	jmp	.label_224
.label_224:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_220
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fileno
	lea	rsi, [rbp - 0xa8]
	mov	edi, eax
	call	fstat
	cmp	eax, 0
	jne	.label_206
	lea	rdi, [rbp - 0xa8]
	call	usable_st_size
	test	al, 1
	jne	.label_208
	jmp	.label_211
.label_208:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x70]
	jge	.label_213
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x70], rax
	ja	.label_213
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20c8], rax
	jmp	.label_219
.label_213:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20c8], rcx
	jmp	.label_219
.label_219:
	mov	rax, qword ptr [rbp - 0x20c8]
	cmp	rax, qword ptr [rbp - 0x78]
	jge	.label_211
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_205
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_207
.label_205:
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rpl_fseeko
	cmp	eax, 0
	je	.label_217
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	byte ptr [rbp - 0x11], 0
.label_217:
	mov	qword ptr [rbp - 0x10], 0
.label_207:
	jmp	.label_210
.label_211:
	mov	qword ptr [rbp - 0x20c0], 0x2000
.label_216:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_204
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20c0]
	jae	.label_226
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20c0], rax
.label_226:
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x20b0]
	mov	rdx, qword ptr [rbp - 0x20c0]
	mov	rcx,  qword ptr [word ptr [in_stream]]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20b8], rax
	mov	rax, qword ptr [rbp - 0x20b8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x20b8]
	cmp	rax, qword ptr [rbp - 0x20c0]
	je	.label_215
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_212
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	byte ptr [rbp - 0x11], 0
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_204
.label_212:
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_209
	jmp	.label_204
.label_209:
	jmp	.label_215
.label_215:
	jmp	.label_216
.label_204:
	jmp	.label_210
.label_210:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_218
	jmp	.label_220
.label_218:
	jmp	.label_221
.label_206:
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20cc], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_93
	mov	esi, dword ptr [rbp - 0x20cc]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
.label_221:
	mov	edi, dword ptr [rbp - 0x18]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_224
.label_220:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_223
	movabs	rdi, OFFSET FLAT:label_225
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_223:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_222:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl get_lcm
	.type get_lcm, @function
get_lcm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], 1
	mov	qword ptr [rbp - 0x10], 0
.label_227:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_228
	movsxd	rdi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	eax, ecx
	movsxd	rsi,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	call	lcm
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_227
.label_228:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403910

	.globl dump_strings
	.type dump_strings, @function
dump_strings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	eax, 0x64
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [string_min]]
	jbe	.label_233
	mov	eax, 0x64
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_243
.label_233:
	mov	rax,  qword ptr [word ptr [string_min]]
	mov	qword ptr [rbp - 0x40], rax
.label_243:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x20], rax
	mov	byte ptr [rbp - 0x21], 1
.label_240:
	jmp	.label_251
.label_251:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_236
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [string_min]]
	jb	.label_231
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax,  qword ptr [word ptr [string_min]]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_236
.label_231:
	jmp	.label_246
.label_236:
	mov	qword ptr [rbp - 0x30], 0
.label_252:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [string_min]]
	jae	.label_250
	lea	rdi, [rbp - 0x34]
	call	read_char
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0x20], rdi
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_256
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_232
.label_256:
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_242
	jmp	.label_251
.label_242:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_252
.label_250:
	jmp	.label_254
.label_254:
	mov	al, 1
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	byte ptr [rbp - 0x49], al
	je	.label_260
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	setb	cl
	mov	byte ptr [rbp - 0x49], cl
.label_260:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_235
	jmp	.label_238
.label_235:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_241
	lea	rsi, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2realloc
	mov	qword ptr [rbp - 0x18], rax
.label_241:
	lea	rdi, [rbp - 0x34]
	call	read_char
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0x20], rdi
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_253
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_232
.label_253:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_234
	jmp	.label_238
.label_234:
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_245
	jmp	.label_251
.label_245:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	jmp	.label_254
.label_238:
	mov	esi, 0x20
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 1
	mov	rdi, rcx
	call	rax
	mov	qword ptr [rbp - 0x30], 0
.label_229:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x34], edx
	cmp	edx, 0
	je	.label_239
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, -7
	mov	ecx, eax
	sub	eax, 6
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x64], eax
	ja	.label_248
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_255]]
	jmp	rcx
.label_1135:
	movabs	rdi, OFFSET FLAT:label_258
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_230
.label_1136:
	movabs	rdi, OFFSET FLAT:label_247
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_230
.label_1140:
	movabs	rdi, OFFSET FLAT:label_237
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x70], eax
	jmp	.label_230
.label_1138:
	movabs	rdi, OFFSET FLAT:label_249
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_230
.label_1141:
	movabs	rdi, OFFSET FLAT:label_257
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x78], eax
	jmp	.label_230
.label_1137:
	movabs	rdi, OFFSET FLAT:label_261
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_230
.label_1139:
	movabs	rdi, OFFSET FLAT:label_244
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_230
.label_248:
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x84], eax
.label_230:
	jmp	.label_259
.label_259:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_229
.label_239:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_240
.label_246:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	xor	edi, edi
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_232:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d40

	.globl dump
	.type dump, @function
dump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 2
	mov	edi, eax
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 1
	mov	rsi,  qword ptr [word ptr [bytes_per_block]]
	call	xnmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_276
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_273
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_265
.label_273:
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_279
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_268
.label_279:
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 0x48], rax
.label_268:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdx, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0x19]
	and	cl, 1
	movzx	esi, cl
	mov	eax, esi
	mov	rsi, qword ptr [rbp + rax*8 - 0x10]
	call	read_block
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	r9d, al
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_272
	jmp	.label_265
.label_272:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_263
	jmp	.label_275
.label_263:
	movabs	rdi, OFFSET FLAT:label_266
	movabs	rsi, OFFSET FLAT:label_173
	mov	edx, 0x576
	movabs	rcx, OFFSET FLAT:label_267
	call	__assert_fail
.label_275:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_270
.label_265:
	jmp	.label_271
.label_276:
	jmp	.label_274
.label_274:
	lea	rdx, [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [bytes_per_block]]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	esi, ecx
	mov	rsi, qword ptr [rbp + rsi*8 - 0x10]
	call	read_block
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	r8d, al
	and	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_280
	jmp	.label_277
.label_280:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_278
	jmp	.label_264
.label_278:
	movabs	rdi, OFFSET FLAT:label_266
	movabs	rsi, OFFSET FLAT:label_173
	mov	edx, 0x584
	movabs	rcx, OFFSET FLAT:label_267
	call	__assert_fail
.label_264:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_274
.label_277:
	jmp	.label_271
.label_271:
	cmp	qword ptr [rbp - 0x28], 0
	jbe	.label_262
	call	get_lcm
	xor	esi, esi
	mov	dword ptr [rbp - 0x34], eax
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x34]
	add	rdx, rdi
	sub	rdx, 1
	movsxd	rdi, dword ptr [rbp - 0x34]
	mov	rax, rdx
	xor	r8d, r8d
	mov	edx, r8d
	div	rdi
	imul	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	r9b, byte ptr [rbp - 0x19]
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	r9b, byte ptr [rbp - 0x19]
	xor	r9b, 0xff
	and	r9b, 1
	movzx	r8d, r9b
	movsxd	rax, r8d
	mov	rdx, qword ptr [rbp + rax*8 - 0x10]
	mov	r9b, byte ptr [rbp - 0x19]
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rcx, qword ptr [rbp + rax*8 - 0x10]
	call	write_block
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_262:
	mov	esi, 0xa
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_269
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_269
	xor	edi, edi
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
.label_269:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl decode_one_format
	.type decode_one_format, @function
decode_one_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_344
	jmp	.label_283
.label_344:
	movabs	rdi, OFFSET FLAT:label_285
	movabs	rsi, OFFSET FLAT:label_173
	mov	edx, 0x286
	movabs	rcx, OFFSET FLAT:label_286
	call	__assert_fail
.label_283:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x61
	mov	eax, ecx
	sub	ecx, 0x17
	mov	qword ptr [rbp - 0x70], rax
	mov	dword ptr [rbp - 0x74], ecx
	ja	.label_299
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_303]]
	jmp	rcx
.label_1158:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x51], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x18], rdx
	movsx	esi, byte ptr [rax + 1]
	add	esi, -0x43
	mov	eax, esi
	sub	esi, 0x10
	mov	qword ptr [rbp - 0x80], rax
	mov	dword ptr [rbp - 0x84], esi
	ja	.label_308
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_319]]
	jmp	rcx
.label_1189:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 1
	jmp	.label_322
.label_1192:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 2
	jmp	.label_322
.label_1190:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_322
.label_1191:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_322
.label_308:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	simple_strtoul
	test	al, 1
	jne	.label_288
	movabs	rdi, OFFSET FLAT:label_293
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_287
.label_288:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_325
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_310
.label_325:
	mov	eax, 8
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	jb	.label_334
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	jne	.label_315
.label_334:
	movabs	rdi, OFFSET FLAT:label_321
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_287
.label_315:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_310:
	jmp	.label_322
.label_322:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + integral_type_size]]
	mov	dword ptr [rbp - 0x2c], ecx
	movsx	ecx, byte ptr [rbp - 0x51]
	add	ecx, -0x64
	mov	eax, ecx
	sub	ecx, 0x14
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_346
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_289]]
	jmp	rcx
.label_1163:
	mov	dword ptr [rbp - 0x3c], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_signed_dec_digits]]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xb0], rax
	jne	.label_297
	movabs	rax, OFFSET FLAT:label_304
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_305
.label_297:
	movabs	rax, OFFSET FLAT:label_311
	movabs	rcx, OFFSET FLAT:label_304
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xb8], rax
.label_305:
	mov	rax, qword ptr [rbp - 0xb8]
	movabs	rsi, OFFSET FLAT:label_318
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_302
.label_1164:
	mov	dword ptr [rbp - 0x3c], 2
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_oct_digits]]
	mov	dword ptr [rbp - 0x58], edx
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xc8], rax
	mov	dword ptr [rbp - 0xcc], edx
	jne	.label_331
	movabs	rax, OFFSET FLAT:label_282
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_348
.label_331:
	movabs	rax, OFFSET FLAT:label_281
	movabs	rcx, OFFSET FLAT:label_282
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xd8], rax
.label_348:
	mov	rax, qword ptr [rbp - 0xd8]
	movabs	rsi, OFFSET FLAT:label_298
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	edx, dword ptr [rbp - 0xcc]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_302
.label_1165:
	mov	dword ptr [rbp - 0x3c], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_unsigned_dec_digits]]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xe8], rax
	jne	.label_307
	movabs	rax, OFFSET FLAT:label_316
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_317
.label_307:
	movabs	rax, OFFSET FLAT:label_330
	movabs	rcx, OFFSET FLAT:label_316
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xf0], rax
.label_317:
	mov	rax, qword ptr [rbp - 0xf0]
	movabs	rsi, OFFSET FLAT:label_318
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_302
.label_1166:
	mov	dword ptr [rbp - 0x3c], 3
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_hex_digits]]
	mov	dword ptr [rbp - 0x58], edx
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0x100], rax
	mov	dword ptr [rbp - 0x104], edx
	jne	.label_320
	movabs	rax, OFFSET FLAT:label_295
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_296
.label_320:
	movabs	rax, OFFSET FLAT:label_300
	movabs	rcx, OFFSET FLAT:label_295
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
.label_296:
	mov	rax, qword ptr [rbp - 0x110]
	movabs	rsi, OFFSET FLAT:label_298
	mov	rdi, qword ptr [rbp - 0x100]
	mov	edx, dword ptr [rbp - 0x104]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_302
.label_346:
	call	abort
.label_302:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rdi, rax
	call	strlen
	cmp	rax, 8
	jae	.label_339
	jmp	.label_328
.label_339:
	movabs	rdi, OFFSET FLAT:label_329
	movabs	rsi, OFFSET FLAT:label_173
	mov	edx, 0x2e9
	movabs	rcx, OFFSET FLAT:label_286
	call	__assert_fail
.label_328:
	mov	eax, dword ptr [rbp - 0x2c]
	dec	eax
	mov	ecx, eax
	sub	eax, 4
	mov	qword ptr [rbp - 0x120], rcx
	mov	dword ptr [rbp - 0x124], eax
	ja	.label_342
	mov	rax, qword ptr [rbp - 0x120]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_349]]
	jmp	rcx
.label_1031:
	movabs	rax, OFFSET FLAT:print_char
	movabs	rcx, OFFSET FLAT:print_s_char
	cmp	dword ptr [rbp - 0x3c], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_284
.label_1032:
	movabs	rax, OFFSET FLAT:print_short
	movabs	rcx, OFFSET FLAT:print_s_short
	cmp	dword ptr [rbp - 0x3c], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_284
.label_1033:
	movabs	rax, OFFSET FLAT:print_int
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_284
.label_1034:
	movabs	rax, OFFSET FLAT:print_long
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_284
.label_1035:
	movabs	rax, OFFSET FLAT:print_long_long
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_284
.label_342:
	call	abort
.label_284:
	jmp	.label_306
.label_1159:
	mov	dword ptr [rbp - 0x3c], 4
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x44
	mov	dword ptr [rbp - 0x128], edx
	mov	dword ptr [rbp - 0x12c], esi
	je	.label_314
	jmp	.label_336
.label_336:
	mov	eax, dword ptr [rbp - 0x128]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x130], eax
	je	.label_338
	jmp	.label_343
.label_343:
	mov	eax, dword ptr [rbp - 0x128]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x134], eax
	je	.label_345
	jmp	.label_350
.label_338:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_290
.label_314:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_290
.label_345:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 0x10
	jmp	.label_290
.label_350:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	simple_strtoul
	test	al, 1
	jne	.label_294
	movabs	rdi, OFFSET FLAT:label_293
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x140], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_287
.label_294:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_323
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_347
.label_323:
	cmp	qword ptr [rbp - 0x38], 0x10
	ja	.label_332
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	jne	.label_327
.label_332:
	movabs	rdi, OFFSET FLAT:label_341
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rax
	call	quote
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_287
.label_327:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_347:
	jmp	.label_290
.label_290:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + fp_type_size]]
	mov	dword ptr [rbp - 0x2c], ecx
	call	localeconv
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_301
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_309
.label_301:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x150], rcx
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x154], ecx
	mov	dword ptr [rbp - 0x158], edx
	je	.label_313
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 7
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_326
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 8
	mov	dword ptr [rbp - 0x160], eax
	je	.label_335
	jmp	.label_340
.label_313:
	movabs	rax, OFFSET FLAT:print_float
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0xa
	add	rax, 1
	add	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_292
.label_326:
	movabs	rax, OFFSET FLAT:print_double
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x12
	add	rax, 1
	add	rax, 4
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_292
.label_335:
	movabs	rax, OFFSET FLAT:print_long_double
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x16
	add	rax, 1
	add	rax, 5
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_292
.label_340:
	call	abort
.label_292:
	jmp	.label_306
.label_1156:
	movabs	rax, OFFSET FLAT:print_named_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x3c], 5
	mov	dword ptr [rbp - 0x2c], 1
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_306
.label_1157:
	movabs	rax, OFFSET FLAT:print_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x3c], 6
	mov	dword ptr [rbp - 0x2c], 1
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_306
.label_299:
	movabs	rdi, OFFSET FLAT:label_337
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x168], rax
	mov	dword ptr [rbp - 0x16c], ecx
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x168]
	mov	ecx, dword ptr [rbp - 0x16c]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_287
.label_306:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rcx
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x7a
	sete	sil
	mov	rcx, qword ptr [rbp - 0x28]
	and	sil, 1
	mov	byte ptr [rcx + 0x18], sil
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x18], 1
	je	.label_291
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_291:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_312
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_312:
	mov	byte ptr [rbp - 1], 1
.label_287:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404aa0

	.globl simple_strtoul
	.type simple_strtoul, @function
simple_strtoul:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
.label_353:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_352
	mov	eax, 0xa
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 0x10], rdi
	movsx	eax, byte ptr [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	sub	rdx, rdi
	mov	rax, rdx
	xor	r8d, r8d
	mov	edx, r8d
	div	rcx
	cmp	rsi, rax
	jbe	.label_354
	mov	byte ptr [rbp - 1], 0
	jmp	.label_351
.label_354:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_353
.label_352:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_351:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl print_s_char
	.type print_s_char, @function
print_s_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_361:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_359
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_356
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_360
	jmp	.label_356
.label_360:
	mov	qword ptr [rbp - 0x50], 0
.label_355:
	cmp	qword ptr [rbp - 0x50], 1
	jae	.label_358
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_355
.label_358:
	mov	al, byte ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_357
.label_356:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], cl
.label_357:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, byte ptr [rbp - 0x45]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_361
.label_359:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c80

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_368:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_366
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_363
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_367
	jmp	.label_363
.label_367:
	mov	qword ptr [rbp - 0x50], 0
.label_362:
	cmp	qword ptr [rbp - 0x50], 1
	jae	.label_365
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_362
.label_365:
	mov	al, byte ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_364
.label_363:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], cl
.label_364:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, byte ptr [rbp - 0x45]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_368
.label_366:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl print_s_short
	.type print_s_short, @function
print_s_short:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_371:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_372
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_370
	mov	qword ptr [rbp - 0x50], 0
.label_374:
	cmp	qword ptr [rbp - 0x50], 2
	jae	.label_373
	mov	eax, 1
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_374
.label_373:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	jmp	.label_369
.label_370:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x46], cx
.label_369:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, word ptr [rbp - 0x46]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_371
.label_372:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ec0

	.globl print_short
	.type print_short, @function
print_short:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_376:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_377
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_375
	mov	qword ptr [rbp - 0x50], 0
.label_380:
	cmp	qword ptr [rbp - 0x50], 2
	jae	.label_378
	mov	eax, 1
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_380
.label_378:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	jmp	.label_379
.label_375:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x46], cx
.label_379:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, word ptr [rbp - 0x46]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_376
.label_377:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fe0

	.globl print_int
	.type print_int, @function
print_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_385:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_384
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_383
	mov	qword ptr [rbp - 0x50], 0
.label_386:
	cmp	qword ptr [rbp - 0x50], 4
	jae	.label_381
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_386
.label_381:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_382
.label_383:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
.label_382:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 4
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	edx, dword ptr [rbp - 0x48]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_385
.label_384:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl print_long
	.type print_long, @function
print_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_389:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_390
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_388
	mov	qword ptr [rbp - 0x58], 0
.label_387:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_391
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_387
.label_391:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_392
.label_388:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_392:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_389
.label_390:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl print_long_long
	.type print_long_long, @function
print_long_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_397:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_396
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_395
	mov	qword ptr [rbp - 0x58], 0
.label_398:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_393
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_398
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_394
.label_395:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_394:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_397
.label_396:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl print_float
	.type print_float, @function
print_float:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_402:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_400
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_405
	mov	qword ptr [rbp - 0x50], 0
.label_399:
	cmp	qword ptr [rbp - 0x50], 4
	jae	.label_404
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_399
.label_404:
	movss	xmm0, dword ptr [rbp - 0x58]
	movss	dword ptr [rbp - 0x48], xmm0
	jmp	.label_401
.label_405:
	mov	rax, qword ptr [rbp - 0x30]
	movss	xmm0, dword ptr [rax]
	movss	dword ptr [rbp - 0x48], xmm0
.label_401:
	mov	eax, 0x1f
	mov	esi, eax
	xor	eax, eax
	lea	rdi, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 4
	mov	qword ptr [rbp - 0x30], rcx
	movss	xmm0, dword ptr [rbp - 0x48]
	mov	edx, eax
	mov	ecx, eax
	call	ftoastr
	movabs	rdi, OFFSET FLAT:label_403
	lea	rdx, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x84], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_402
.label_400:
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405480

	.globl print_double
	.type print_double, @function
print_double:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_406:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_410
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_408
	mov	qword ptr [rbp - 0x58], 0
.label_409:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_407
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_409
.label_407:
	movsd	xmm0, qword ptr [rbp - 0x60]
	movsd	qword ptr [rbp - 0x50], xmm0
	jmp	.label_411
.label_408:
	mov	rax, qword ptr [rbp - 0x30]
	movsd	xmm0, qword ptr [rax]
	movsd	qword ptr [rbp - 0x50], xmm0
.label_411:
	mov	eax, 0x28
	mov	esi, eax
	xor	eax, eax
	lea	rdi, [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 8
	mov	qword ptr [rbp - 0x30], rcx
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	edx, eax
	mov	ecx, eax
	call	dtoastr
	movabs	rdi, OFFSET FLAT:label_403
	lea	rdx, [rbp - 0x90]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x94], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_406
.label_410:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055d0

	.globl print_long_double
	.type print_long_double, @function
print_long_double:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_413:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_414
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_417
	mov	qword ptr [rbp - 0x68], 0
.label_412:
	cmp	qword ptr [rbp - 0x68], 0x10
	jae	.label_416
	mov	eax, 0xf
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp + rcx - 0x80], sil
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_412
.label_416:
	fld	xword ptr [rbp - 0x80]
	fstp	xword ptr [rbp - 0x60]
	jmp	.label_415
.label_417:
	mov	rax, qword ptr [rbp - 0x30]
	fld	xword ptr [rax]
	fstp	xword ptr [rbp - 0x60]
.label_415:
	mov	eax, 0x2d
	mov	ecx, eax
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, 0x10
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rbp - 0xb0]
	fld	xword ptr [rbp - 0x60]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	esi, 0x2d
	xor	r8d, r8d
	mov	edx, r8d
	mov	qword ptr [rbp - 0xb8], rcx
	mov	ecx, r8d
	mov	dword ptr [rbp - 0xbc], eax
	call	ldtoastr
	movabs	rdi, OFFSET FLAT:label_403
	lea	rdx, [rbp - 0xb0]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xc0], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0xc4], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_413
.label_414:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405730

	.globl print_named_ascii
	.type print_named_ascii, @function
print_named_ascii:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_424:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_423
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	movzx	esi, byte ptr [rax]
	and	esi, 0x7f
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 0x7f
	jne	.label_421
	movabs	rax, OFFSET FLAT:label_419
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_418
.label_421:
	cmp	dword ptr [rbp - 0x44], 0x20
	jg	.label_422
	movabs	rax, OFFSET FLAT:charname
	movsxd	rcx, dword ptr [rbp - 0x44]
	shl	rcx, 2
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_420
.label_422:
	lea	rax, [rbp - 0x52]
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dl, cl
	mov	byte ptr [rbp - 0x52], dl
	mov	byte ptr [rbp - 0x51], 0
	mov	qword ptr [rbp - 0x50], rax
.label_420:
	jmp	.label_418
.label_418:
	movabs	rdi, OFFSET FLAT:label_403
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x40]
	add	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_424
.label_423:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405850

	.globl print_ascii
	.type print_ascii, @function
print_ascii:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_432:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_426
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	dec	rcx
	imul	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dil, byte ptr [rax]
	mov	byte ptr [rbp - 0x41], dil
	movzx	esi, byte ptr [rbp - 0x41]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0xd
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], rcx
	ja	.label_431
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_429]]
	jmp	rcx
.label_1044:
	movabs	rax, OFFSET FLAT:label_430
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_1045:
	movabs	rax, OFFSET FLAT:label_258
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_1046:
	movabs	rax, OFFSET FLAT:label_247
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_1050:
	movabs	rax, OFFSET FLAT:label_237
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_1048:
	movabs	rax, OFFSET FLAT:label_249
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_1051:
	movabs	rax, OFFSET FLAT:label_257
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_1047:
	movabs	rax, OFFSET FLAT:label_261
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_1049:
	movabs	rax, OFFSET FLAT:label_244
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_425
.label_431:
	lea	rdi, [rbp - 0x54]
	movzx	eax, byte ptr [rbp - 0x41]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	movabs	rcx, OFFSET FLAT:label_427
	movabs	rdi, OFFSET FLAT:label_428
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x78]
	movzx	esi, word ptr [rax + rdx*2]
	and	esi, 0x4000
	cmp	esi, 0
	cmovne	rcx, rdi
	movzx	edx, byte ptr [rbp - 0x41]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rcx
	mov	al, 0
	call	sprintf
	lea	rcx, [rbp - 0x54]
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x7c], eax
.label_425:
	movabs	rdi, OFFSET FLAT:label_403
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x40]
	add	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x80], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_432
.label_426:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a30

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_433
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_433
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_433
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_433
.label_433:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ab0

	.globl check_and_close
	.type check_and_close, @function
check_and_close:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_439
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_437
	movabs	rdi, OFFSET FLAT:label_436
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx,  qword ptr [word ptr [file_list]]
	mov	rdi, qword ptr [rcx - 8]
	mov	esi, OFFSET FLAT:label_201
	call	strcmp
	cmp	eax, 0
	je	.label_441
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x1c], eax
.label_441:
	mov	byte ptr [rbp - 5], 0
	jmp	.label_435
.label_437:
	mov	rax,  qword ptr [word ptr [file_list]]
	mov	rdi, qword ptr [rax - 8]
	mov	ecx, OFFSET FLAT:label_201
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_434
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_434
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_93
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 5], 0
.label_434:
	jmp	.label_435
.label_435:
	mov	qword ptr [word ptr [in_stream]],  0
.label_439:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_438
	movabs	rdi, OFFSET FLAT:label_440
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 5], 0
.label_438:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl lcm
	.type lcm, @function
lcm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rax
	call	gcd
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, rcx
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 0x28]
	div	rsi
	mov	rdi, qword ptr [rbp - 0x18]
	imul	rdi, rax
	mov	rax, rdi
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c90

	.globl gcd
	.type gcd, @function
gcd:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_442:
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_442
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cd0

	.globl read_char
	.type read_char, @function
read_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0xffffffff
.label_443:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_445
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fgetc
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], -1
	je	.label_444
	jmp	.label_445
.label_444:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 9], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.label_443
.label_445:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d80

	.globl read_block
	.type read_block, @function
read_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 1
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_446
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	ja	.label_446
	jmp	.label_450
.label_446:
	movabs	rdi, OFFSET FLAT:label_451
	movabs	rsi, OFFSET FLAT:label_173
	mov	edx, 0x508
	movabs	rcx, OFFSET FLAT:label_452
	call	__assert_fail
.label_450:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
.label_448:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_449
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_447
	jmp	.label_449
.label_447:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_448
.label_449:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ec0

	.globl write_block
	.type write_block, @function
write_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  1
	je	.label_453
	test	byte ptr [byte ptr [write_block.first]],  1
	jne	.label_453
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_453
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx,  qword ptr [word ptr [bytes_per_block]]
	call	memcmp
	cmp	eax, 0
	jne	.label_453
	test	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	je	.label_456
	jmp	.label_459
.label_456:
	movabs	rdi, OFFSET FLAT:label_460
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	mov	dword ptr [rbp - 0x40], eax
.label_459:
	jmp	.label_454
.label_453:
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  0
	mov	qword ptr [rbp - 0x28], 0
.label_455:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	eax, ecx
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	movsxd	rdx, dword ptr [rbp - 0x2c]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x48], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x48]
	div	rsi
	mov	ecx, eax
	mov	dword ptr [rbp - 0x30], ecx
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	sub	rax, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_462
	xor	esi, esi
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 8]
	call	rax
	jmp	.label_458
.label_462:
	movabs	rdi, OFFSET FLAT:label_403
	movabs	rdx, OFFSET FLAT:label_38
	mov	esi,  dword ptr [dword ptr [address_pad_len]]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_458:
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rax, qword ptr [rax + 8]
	movsxd	rdi, dword ptr [rbp - 0x30]
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	add	rcx, 0x10
	mov	r8, qword ptr [rbp - 0x28]
	imul	r8, r8, 0x28
	add	r8,  qword ptr [word ptr [spec]]
	mov	r8d, dword ptr [r8 + 0x1c]
	mov	r9, qword ptr [rbp - 0x28]
	imul	r9, r9, 0x28
	add	r9,  qword ptr [word ptr [spec]]
	mov	r9d, dword ptr [r9 + 0x20]
	call	rax
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	test	byte ptr [rax + 0x18], 1
	je	.label_461
	movabs	rdi, OFFSET FLAT:label_403
	movabs	rdx, OFFSET FLAT:label_38
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x1c]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x20]
	imul	ecx, dword ptr [rbp - 0x34]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x58], rdx
	cdq	
	idiv	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x34]
	imul	eax, dword ptr [rbp - 0x38]
	add	eax, dword ptr [rbp - 0x3c]
	mov	esi, eax
	mov	r8, qword ptr [rbp - 0x58]
	mov	rdx, r8
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x5c], eax
	call	dump_hexl_mode_trailer
.label_461:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x60], eax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_455
.label_457:
	jmp	.label_454
.label_454:
	mov	byte ptr [byte ptr [write_block.first]],  0
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406140

	.globl dump_hexl_mode_trailer
	.type dump_hexl_mode_trailer, @function
dump_hexl_mode_trailer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_463
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], eax
.label_466:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_465
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x28], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_464
	movzx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_467
.label_464:
	mov	eax, 0x2e
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	cl, al
	mov	byte ptr [rbp - 0x1a], cl
	movzx	edi, byte ptr [rbp - 0x1a]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_466
.label_465:
	mov	edi, 0x3c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406210

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_478:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_473
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_470
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_475
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_469
.label_475:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_477
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_468
.label_477:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_472
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_471
.label_472:
	mov	byte ptr [rbp - 0x41], 1
.label_471:
	jmp	.label_468
.label_468:
	jmp	.label_474
.label_474:
	jmp	.label_470
.label_470:
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_478
.label_473:
	test	byte ptr [rbp - 0x41], 1
	je	.label_479
	mov	qword ptr [rbp - 8], -2
	jmp	.label_469
.label_479:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_469:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406370

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_480
	movabs	rdi, OFFSET FLAT:label_483
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_482
.label_480:
	movabs	rdi, OFFSET FLAT:label_481
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_482:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406410

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_489
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_486:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_492
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_487
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_490
.label_487:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_484
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_491
.label_490:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_485
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_491:
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_486
.label_492:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_494
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_493
.label_494:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_493:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065f0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_497:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_495
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_496
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_498
.label_496:
	jmp	.label_499
.label_499:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_497
.label_495:
	mov	qword ptr [rbp - 8], 0
.label_498:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406690
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_501
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_503
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_501
.label_503:
	movabs	rdi, OFFSET FLAT:label_440
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_505
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_504
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_500
.label_505:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_93
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_500:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_501:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_502
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_502:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067c0

	.globl dtoastr
	.type dtoastr, @function
dtoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xorps	xmm1, xmm1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomisd	xmm1, qword ptr [rbp - 0x20]
	jbe	.label_506
	movsd	xmm0, qword ptr [rbp - 0x20]
	movq	rax, xmm0
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x60], xmm0
	jmp	.label_512
.label_506:
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x60], xmm0
.label_512:
	movsd	xmm0, qword ptr [rbp - 0x60]
	movsd	xmm1,  qword ptr [word ptr [rip + label_508]]
	mov	eax, 0xf
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rbp - 0x33]
	movsd	qword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 4
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rdi
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	cmp	r9d, 0
	cmovne	edx, esi
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0
	ucomisd	xmm1, qword ptr [rbp - 0x40]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x44], eax
.label_509:
	lea	rdx, [rbp - 0x33]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x44]
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	al, 1
	call	snprintf
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_511
	mov	eax, 0x11
	cmp	eax, dword ptr [rbp - 0x44]
	jle	.label_511
	movsxd	rax, dword ptr [rbp - 0x54]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_510
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strtod
	ucomisd	xmm0, qword ptr [rbp - 0x20]
	jne	.label_510
	jp	.label_510
.label_511:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	ret	
.label_510:
	jmp	.label_507
.label_507:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_509
	.section	.text
	.align	32
	#Procedure 0x406a20

	.globl ftoastr
	.type ftoastr, @function
ftoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xorps	xmm1, xmm1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	movss	dword ptr [rbp - 0x1c], xmm0
	cvtss2sd	xmm0, dword ptr [rbp - 0x1c]
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomiss	xmm1, dword ptr [rbp - 0x1c]
	jbe	.label_513
	movss	xmm0, dword ptr [rbp - 0x1c]
	movd	eax, xmm0
	xor	eax, 0x80000000
	movd	xmm0, eax
	movss	dword ptr [rbp - 0x50], xmm0
	jmp	.label_516
.label_513:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	dword ptr [rbp - 0x50], xmm0
.label_516:
	movss	xmm0, dword ptr [rbp - 0x50]
	movss	xmm1,  dword ptr [dword ptr [rip + label_518]]
	mov	eax, 6
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rbp - 0x33]
	movss	dword ptr [rbp - 0x38], xmm0
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 4
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdi
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	cmp	r9d, 0
	cmovne	edx, esi
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0
	ucomiss	xmm1, dword ptr [rbp - 0x38]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
.label_519:
	lea	rdx, [rbp - 0x33]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x3c]
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	al, 1
	call	snprintf
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jl	.label_515
	mov	eax, 9
	cmp	eax, dword ptr [rbp - 0x3c]
	jle	.label_515
	movsxd	rax, dword ptr [rbp - 0x4c]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_514
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strtof
	ucomiss	xmm0, dword ptr [rbp - 0x1c]
	jne	.label_514
	jp	.label_514
.label_515:
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x50
	pop	rbp
	ret	
.label_514:
	jmp	.label_517
.label_517:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_519
	.section	.text
	.align	32
	#Procedure 0x406c70

	.globl ldtoastr
	.type ldtoastr, @function
ldtoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	fld	xword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	fld	st(0)
	fstp	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x30]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_526
	jmp	.label_521
.label_521:
	fld	xword ptr [rbp - 0x30]
	fchs	
	fstp	xword ptr [rbp - 0x80]
	jmp	.label_524
.label_526:
	fld	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x80]
.label_524:
	fld	xword ptr [rbp - 0x80]
	fstp	xword ptr [rbp - 0x60]
	lea	rax, [rbp - 0x4b]
	mov	qword ptr [rbp - 0x70], rax
	lea	rax, [rbp - 0x4a]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x4b], 0x25
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0x2d
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	ecx, eax
	and	ecx, 1
	mov	eax, ecx
	mov	rsi, rdx
	add	rsi, rax
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rdx + rax], 0x2b
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	shr	ecx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x20
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 4
	shr	ecx, 2
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x30
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 8
	shr	ecx, 3
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2e
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0x4c
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dil, cl
	test	dil, 0x10
	mov	dil, 0x47
	mov	r8b, 0x67
	mov	qword ptr [rbp - 0x88], rax
	mov	byte ptr [rbp - 0x89], r8b
	mov	byte ptr [rbp - 0x8a], dil
	jne	.label_528
	mov	al, byte ptr [rbp - 0x89]
	mov	byte ptr [rbp - 0x8a], al
.label_528:
	mov	al, byte ptr [rbp - 0x8a]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 2
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	byte ptr [rcx + 1], al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rdx], 0
	fld	xword ptr [rbp - 0x60]
	fld	xword ptr [word ptr [rip + label_523]]
	fucomip	st(1)
	fstp	st(0)
	mov	esi, 1
	mov	edi, 0x12
	cmova	edi, esi
	mov	dword ptr [rbp - 0x64], edi
.label_525:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x4b]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x64]
	fld	xword ptr [rbp - 0x40]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	r9d, r9d
	mov	r10b, r9b
	mov	al, r10b
	call	snprintf
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_520
	mov	eax, 0x15
	cmp	eax, dword ptr [rbp - 0x64]
	jle	.label_520
	movsxd	rax, dword ptr [rbp - 0x74]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_522
	mov	rdi, qword ptr [rbp - 8]
	xor	eax, eax
	mov	esi, eax
	call	strtold
	fld	st(0)
	fld	xword ptr [rbp - 0x30]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x94]
	jne	.label_522
	jnp	.label_520
	jmp	.label_522
.label_520:
	mov	eax, dword ptr [rbp - 0x74]
	add	rsp, 0xb0
	pop	rbp
	ret	
.label_522:
	jmp	.label_527
.label_527:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_525
	.section	.text
	.align	32
	#Procedure 0x406eb0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_533
	movabs	rdi, OFFSET FLAT:label_531
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_533:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_535
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_529
.label_535:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_529:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_532
	movabs	rsi, OFFSET FLAT:label_536
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_532
	movabs	rsi, OFFSET FLAT:label_534
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_530
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_530:
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fd0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_537
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_538
.label_537:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407050
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_539
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_540
.label_539:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407090
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_541
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_542
.label_541:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070e0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_543
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_544
.label_543:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407190
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_545
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_545:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071d0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_546
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_546:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_548
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_547
.label_548:
	call	abort
.label_547:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407240
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_549
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_550
.label_549:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_550
.label_550:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407310

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_635:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_736
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_688]]
	jmp	rcx
.label_1176:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1175:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_554
	jmp	.label_751
.label_751:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_752
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_752:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_554
.label_554:
	movabs	rax, OFFSET FLAT:label_558
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_559
.label_1177:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_559
.label_1178:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_569
	movabs	rdi, OFFSET FLAT:label_573
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_576
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_569:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_583
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_606:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_587
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_593
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_593:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_606
.label_587:
	jmp	.label_583
.label_583:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_559
.label_1173:
	mov	byte ptr [rbp - 0x79], 1
.label_1172:
	mov	byte ptr [rbp - 0x7b], 1
.label_1174:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_615
	mov	byte ptr [rbp - 0x79], 1
.label_615:
	jmp	.label_618
.label_618:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_628
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_622
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_622:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_628
.label_628:
	movabs	rax, OFFSET FLAT:label_576
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_559
.label_1171:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_559
.label_736:
	call	abort
.label_559:
	mov	qword ptr [rbp - 0x58], 0
.label_600:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_631
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_644
.label_631:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_644:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_656
	jmp	.label_735
.label_656:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_664
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_664
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_664
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_672
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_672
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_682
.label_672:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_682:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_664
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_664
	test	byte ptr [rbp - 0x7b], 1
	je	.label_692
	jmp	.label_562
.label_692:
	mov	byte ptr [rbp - 0x81], 1
.label_664:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_702
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_703]]
	jmp	rcx
.label_1083:
	test	byte ptr [rbp - 0x79], 1
	je	.label_704
	jmp	.label_734
.label_734:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_708
	jmp	.label_562
.label_708:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_713
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_713
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_718
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_718:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_722
.label_722:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_695
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_733
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_733:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_713:
	jmp	.label_741
.label_741:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_743
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_750
.label_750:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_556
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_556
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_556
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_556
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_645
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_645:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_580
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_580:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_556
.label_556:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_592
.label_704:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_595
	jmp	.label_597
.label_595:
	jmp	.label_592
.label_592:
	jmp	.label_579
.label_1094:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_599
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_608
	jmp	.label_609
.label_599:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_610
	jmp	.label_562
.label_610:
	jmp	.label_614
.label_608:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_616
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_616
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_616
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_626
	jmp	.label_633
.label_633:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_626
	jmp	.label_637
.label_637:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_626
	jmp	.label_646
.label_646:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_626
	jmp	.label_650
.label_650:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_651
	jmp	.label_626
.label_626:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_659
	jmp	.label_562
.label_659:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_663
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_663:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_675
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_675:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_674
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_674:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_744
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_744:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_690
.label_651:
	jmp	.label_690
.label_690:
	jmp	.label_616
.label_616:
	jmp	.label_614
.label_609:
	jmp	.label_614
.label_614:
	jmp	.label_579
.label_1084:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_697
.label_1085:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_697
.label_1089:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_697
.label_1087:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_700
.label_1090:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_700
.label_1086:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_700
.label_1088:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_697
.label_1095:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_706
	test	byte ptr [rbp - 0x7b], 1
	je	.label_711
	jmp	.label_562
.label_711:
	jmp	.label_553
.label_706:
	test	byte ptr [rbp - 0x79], 1
	je	.label_714
	test	byte ptr [rbp - 0x7b], 1
	je	.label_714
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_714
	jmp	.label_553
.label_714:
	jmp	.label_700
.label_700:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_721
	test	byte ptr [rbp - 0x7b], 1
	je	.label_721
	jmp	.label_562
.label_721:
	jmp	.label_697
.label_697:
	test	byte ptr [rbp - 0x79], 1
	je	.label_727
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_710
.label_727:
	jmp	.label_579
.label_1096:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_731
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_671
	jmp	.label_738
.label_731:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_671
.label_738:
	jmp	.label_579
.label_671:
	jmp	.label_740
.label_740:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_742
	jmp	.label_579
.label_742:
	jmp	.label_746
.label_746:
	mov	byte ptr [rbp - 0x83], 1
.label_1091:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_749
	test	byte ptr [rbp - 0x7b], 1
	je	.label_749
	jmp	.label_562
.label_749:
	jmp	.label_579
.label_1093:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_551
	test	byte ptr [rbp - 0x7b], 1
	je	.label_557
	jmp	.label_562
.label_557:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_563
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_563:
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_657
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_657:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_578
.label_578:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_582
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_582:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_596
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_596:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_551:
	jmp	.label_579
.label_1092:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_579
.label_702:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_625
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_613
.label_625:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_627
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_627:
	jmp	.label_634
.label_634:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_648
	jmp	.label_653
.label_648:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_654
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_653
.label_654:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_601
	mov	byte ptr [rbp - 0x91], 0
.label_655:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_665
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_665:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_677
	jmp	.label_678
.label_677:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_655
.label_678:
	jmp	.label_653
.label_601:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_684
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_684
	mov	qword ptr [rbp - 0xb8], 1
.label_716:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_687
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_617
	jmp	.label_698
.label_698:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_617
	jmp	.label_560
.label_560:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_617
	jmp	.label_705
.label_705:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_707
	jmp	.label_617
.label_617:
	jmp	.label_562
.label_707:
	jmp	.label_724
.label_724:
	jmp	.label_754
.label_754:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_716
.label_687:
	jmp	.label_684
.label_684:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_723
	mov	byte ptr [rbp - 0x91], 0
.label_723:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_726
.label_726:
	jmp	.label_729
.label_729:
	jmp	.label_730
.label_730:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_634
.label_653:
	jmp	.label_613
.label_613:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_739
	test	byte ptr [rbp - 0x79], 1
	je	.label_709
	test	byte ptr [rbp - 0x91], 1
	jne	.label_709
.label_739:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_701:
	test	byte ptr [rbp - 0x79], 1
	je	.label_552
	test	byte ptr [rbp - 0x91], 1
	jne	.label_552
	jmp	.label_590
.label_590:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_561
	jmp	.label_562
.label_561:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_565
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_565
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_572
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_572:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_581
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_581:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_594
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_594:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_565:
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_603
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_603:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_638
.label_638:
	jmp	.label_611
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_612
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_612:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_620
.label_620:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_624
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_624:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_630
.label_552:
	test	byte ptr [rbp - 0x81], 1
	je	.label_636
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_641
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_636:
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_652
	jmp	.label_658
.label_652:
	jmp	.label_660
.label_660:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_662
	test	byte ptr [rbp - 0x82], 1
	jne	.label_662
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_667
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_667:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_669
.label_669:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_673
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_673:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_662:
	jmp	.label_680
.label_680:
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_683
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_683:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_701
.label_658:
	jmp	.label_553
.label_709:
	jmp	.label_579
.label_579:
	test	byte ptr [rbp - 0x79], 1
	je	.label_693
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_694
.label_693:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_696
.label_694:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_696
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_619
.label_696:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_619
	jmp	.label_553
.label_619:
	jmp	.label_710
.label_710:
	jmp	.label_712
.label_712:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_699
	jmp	.label_562
.label_699:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_715
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_715
	jmp	.label_719
.label_719:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_720
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_725
.label_725:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_728
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_728:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_737
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_737:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_715:
	jmp	.label_745
.label_745:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_747
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_747:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_753
.label_753:
	jmp	.label_553
.label_553:
	jmp	.label_566
.label_566:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_555
	test	byte ptr [rbp - 0x82], 1
	jne	.label_555
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_564
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_564:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_568
.label_568:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_574
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_574:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_555:
	jmp	.label_584
.label_584:
	jmp	.label_585
.label_585:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_586
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_586:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_748
	mov	byte ptr [rbp - 0x7e], 0
.label_748:
	jmp	.label_597
.label_597:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_600
.label_735:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_604
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_604
	test	byte ptr [rbp - 0x7b], 1
	je	.label_604
	jmp	.label_562
.label_604:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_642
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_642
	test	byte ptr [rbp - 0x7d], 1
	je	.label_642
	test	byte ptr [rbp - 0x7e], 1
	je	.label_689
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_629
.label_689:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_632
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_632
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_635
.label_632:
	jmp	.label_640
.label_640:
	jmp	.label_642
.label_642:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_643
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_643
	jmp	.label_647
.label_647:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_649
	jmp	.label_686
.label_686:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_691
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_661
.label_661:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_647
.label_649:
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_668
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_668:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_629
.label_562:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_676
	test	byte ptr [rbp - 0x79], 1
	je	.label_676
	mov	dword ptr [rbp - 0x34], 4
.label_676:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_629:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_755
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_756
.label_755:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_757
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_757:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408850
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_761:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_759
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_761
.label_759:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_762
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_760]],  rax
.label_762:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_758
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_758:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408930

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408970

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_763
	call	abort
.label_763:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_767
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_770
	call	xalloc_die
.label_770:
	test	byte ptr [rbp - 0x31], 1
	je	.label_766
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_769
.label_766:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_769:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_768
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_760]]
	mov	qword ptr [rax + 8], rcx
.label_768:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_767:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_764
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_765
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_765:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_764:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bf0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c30
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c50
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c80

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cc0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_771
	call	abort
.label_771:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d30

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d70
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408da0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408dd0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ea0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ed0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f80

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fc0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409040
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409070
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090f0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409120

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409150

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409170

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_773
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_778
.label_773:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_774
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_772
	movabs	rax, OFFSET FLAT:label_776
	movabs	rcx, OFFSET FLAT:label_777
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_778
.label_772:
	movabs	rsi, OFFSET FLAT:label_781
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_775
	movabs	rax, OFFSET FLAT:label_779
	movabs	rcx, OFFSET FLAT:label_780
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_778
.label_775:
	movabs	rax, OFFSET FLAT:label_576
	movabs	rcx, OFFSET FLAT:label_558
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_778:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409270

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_795
	movabs	rsi, OFFSET FLAT:label_792
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_783
.label_795:
	movabs	rsi, OFFSET FLAT:label_787
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_783:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_799
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_785
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_798
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_788]]
	jmp	rcx
.label_1052:
	jmp	.label_786
.label_1053:
	movabs	rdi, OFFSET FLAT:label_784
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_786
.label_1054:
	movabs	rdi, OFFSET FLAT:label_791
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_786
.label_1055:
	movabs	rdi, OFFSET FLAT:label_790
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_786
.label_1056:
	movabs	rdi, OFFSET FLAT:label_794
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_786
.label_1057:
	movabs	rdi, OFFSET FLAT:label_793
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_786
.label_1058:
	movabs	rdi, OFFSET FLAT:label_796
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_786
.label_1059:
	movabs	rdi, OFFSET FLAT:label_800
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_786
.label_1060:
	movabs	rdi, OFFSET FLAT:label_789
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_786
.label_1061:
	movabs	rdi, OFFSET FLAT:label_782
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_786
.label_798:
	movabs	rdi, OFFSET FLAT:label_797
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_786:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409830
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_803:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_801
	jmp	.label_802
.label_802:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_803
.label_801:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_807:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_804
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_810
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_808
.label_810:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_808:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_804:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_809
	jmp	.label_805
.label_809:
	jmp	.label_806
.label_806:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_807
.label_805:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_811
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_811:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_812
	call	gettext
	movabs	rsi, OFFSET FLAT:label_814
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_815
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_41
	movabs	rdx, OFFSET FLAT:label_30
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_813
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bb0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_816
	call	xalloc_die
.label_816:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c00

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_817
	cmp	qword ptr [rbp - 8], 0
	je	.label_817
	call	xalloc_die
.label_817:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c40
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_818
	call	xalloc_die
.label_818:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_819
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_819
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_821
.label_819:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_820
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_820
	call	xalloc_die
.label_820:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_821:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d10

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_822
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_825
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_825:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_823
	call	xalloc_die
.label_823:
	jmp	.label_824
.label_822:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_826
	call	xalloc_die
.label_826:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_824:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e00

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e20

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e50
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e90
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_827
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_828
.label_827:
	call	xalloc_die
.label_828:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ef0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f30
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_829
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_93
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409fb0

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fc0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_830
	call	xset_binary_mode_error
.label_830:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ff0

	.globl xprintf
	.type xprintf, @function
xprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_831
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_831:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x20]
	call	xvprintf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a160

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	vprintf
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_832
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror
	cmp	eax, 0
	jne	.label_832
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x18], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_833
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_832:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1e0
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_834
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_834:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x10
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x30]
	call	xvfprintf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a350

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vfprintf
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_835
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	jne	.label_835
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x20], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_833
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_835:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3d0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a420

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_836
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_837
	jmp	.label_848
.label_848:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_838
	jmp	.label_845
.label_845:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_847
	jmp	.label_842
.label_842:
	call	abort
.label_847:
	movabs	rax, OFFSET FLAT:label_844
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_840
.label_838:
	movabs	rax, OFFSET FLAT:label_839
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_840
.label_837:
	movabs	rax, OFFSET FLAT:label_846
	mov	qword ptr [rbp - 0x38], rax
.label_840:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_841
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_843
.label_841:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_843:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a550

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_866
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_866
	jmp	.label_873
.label_866:
	movabs	rdi, OFFSET FLAT:label_874
	movabs	rsi, OFFSET FLAT:label_875
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_876
	call	__assert_fail
.label_873:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_881
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_884
.label_881:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_884
.label_884:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_856:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_852
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_856
.label_852:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_864
	mov	dword ptr [rbp - 4], 4
	jmp	.label_854
.label_864:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_869
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_872
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_872
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_872
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_883
.label_872:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_854
.label_883:
	jmp	.label_850
.label_869:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_886
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_888
	mov	dword ptr [rbp - 4], 4
	jmp	.label_854
.label_888:
	mov	dword ptr [rbp - 0x4c], 1
.label_886:
	jmp	.label_850
.label_850:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_851
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_854
.label_851:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_859
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_890
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_854
.label_890:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_860
	jmp	.label_878
.label_878:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_860
	jmp	.label_882
.label_882:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_860
	jmp	.label_885
.label_885:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_860
	jmp	.label_868
.label_868:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_860
	jmp	.label_889
.label_889:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_860
	jmp	.label_853
.label_853:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_860
	jmp	.label_858
.label_858:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_860
	jmp	.label_865
.label_865:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_860
	jmp	.label_857
.label_857:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_860
	jmp	.label_871
.label_871:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_862
	jmp	.label_860
.label_860:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_861
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_880
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_880
	jmp	.label_887
.label_887:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_855
	jmp	.label_891
.label_891:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_870
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_870:
	jmp	.label_855
.label_880:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_855:
	jmp	.label_861
.label_861:
	jmp	.label_862
.label_862:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_863
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_867]]
	jmp	rcx
.label_1126:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1117:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1127:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_849
.label_1118:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1119:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1120:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1121:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1122:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1123:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1128:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1124:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_1125:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_849
.label_863:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_854
.label_849:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_879
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_879:
	jmp	.label_859
.label_859:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_854:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab00

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_892
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_893
.label_892:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_893:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab60

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_895:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_894
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_895
.label_894:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abb0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_899
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_896
.label_899:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_900
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_898
.label_900:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_898
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_898:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_897
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_897:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_896:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_901
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_902
.label_901:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_903
.label_902:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_903:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ace0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_904
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_904:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad20

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_905
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_905
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_905
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_907
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_906
.label_907:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_906
.label_905:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_906:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40adf0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_908
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_908:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_909
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_909
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_910
.label_909:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_910:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aea0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aeb0

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aec0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_912
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_911
.label_912:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_911:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af10

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_913
	mov	dword ptr [rbp - 4], 0
	jmp	.label_917
.label_913:
	jmp	.label_914
.label_914:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_916
	jmp	.label_915
.label_916:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_914
.label_915:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_917:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afd0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_918
	test	byte ptr [rbp - 0x13], 1
	je	.label_919
	test	byte ptr [rbp - 0x11], 1
	jne	.label_918
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_919
.label_918:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_920
	call	__errno_location
	mov	dword ptr [rax], 0
.label_920:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_921
.label_919:
	mov	dword ptr [rbp - 4], 0
.label_921:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b080

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_922
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_925
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_926
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_923
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_924
.label_926:
	mov	byte ptr [rbp - 5], 0
.label_924:
	jmp	.label_922
.label_922:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b100

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_927
	movabs	rax, OFFSET FLAT:label_38
	mov	qword ptr [rbp - 8], rax
.label_927:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_928
	movabs	rax, OFFSET FLAT:label_929
	mov	qword ptr [rbp - 8], rax
.label_928:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b160

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_930
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_931
.label_930:
	jmp	.label_931
.label_931:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b1b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_933
	jmp	.label_936
.label_936:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_933
	jmp	.label_934
.label_934:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_935
	jmp	.label_933
.label_933:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_937
.label_935:
	mov	byte ptr [rbp - 1], 0
.label_937:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b220
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_938
	jmp	.label_941
.label_941:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_939
	jmp	.label_938
.label_938:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_940
.label_939:
	mov	byte ptr [rbp - 1], 0
.label_940:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b270
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_942
	jmp	.label_944
.label_944:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_943
.label_942:
	mov	byte ptr [rbp - 1], 0
.label_943:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_945
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_945:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2d0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_946
	jmp	.label_948
.label_948:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_949
	jmp	.label_946
.label_946:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_947
.label_949:
	mov	byte ptr [rbp - 1], 0
.label_947:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b320
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_950
	jmp	.label_952
.label_952:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_951
.label_950:
	mov	byte ptr [rbp - 1], 0
.label_951:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b360
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_953
	jmp	.label_955
.label_955:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_954
.label_953:
	mov	byte ptr [rbp - 1], 0
.label_954:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3a0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_956
	jmp	.label_958
.label_958:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_957
.label_956:
	mov	byte ptr [rbp - 1], 0
.label_957:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_959
	jmp	.label_961
.label_961:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_960
.label_959:
	mov	byte ptr [rbp - 1], 0
.label_960:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b420
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_962
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_964]]
	jmp	rcx
.label_1108:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_963
.label_962:
	mov	byte ptr [rbp - 1], 0
.label_963:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b470
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_965
	jmp	.label_968
.label_968:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_967
	jmp	.label_965
.label_965:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_966
.label_967:
	mov	byte ptr [rbp - 1], 0
.label_966:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4c0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_969
	jmp	.label_971
.label_971:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_970
.label_969:
	mov	byte ptr [rbp - 1], 0
.label_970:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b500
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_972
	jmp	.label_974
.label_974:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_972
	jmp	.label_973
.label_973:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_975
	jmp	.label_972
.label_972:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_976
.label_975:
	mov	byte ptr [rbp - 1], 0
.label_976:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b570

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_977
	jmp	.label_979
.label_979:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_978
.label_977:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_978:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5b0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_980
	jmp	.label_982
.label_982:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_981
.label_980:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_981:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6a0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
