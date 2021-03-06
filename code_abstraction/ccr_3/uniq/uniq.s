	.section	.text
	.align	32
	#Procedure 0x4017e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_27:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	.align	32
	#Procedure 0x401ac0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r14, rsi
	mov	ebp, edi
	mov	edi, OFFSET FLAT:label_86
	call	getenv
	mov	r13, rax
	mov	eax, OFFSET FLAT:label_113
	movq	xmm0, rax
	pshufd	xmm0, xmm0, 0x44
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_40
	call	setlocale
	mov	edi, OFFSET FLAT:label_76
	mov	esi, OFFSET FLAT:label_77
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_76
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + skip_chars],  0
	mov	qword ptr [rip + skip_fields],  0
	mov	qword ptr [rip + check_chars],  -1
	mov	byte ptr [rip + output_first_repeated],  1
	mov	byte ptr [rip + output_unique],  1
	mov	byte ptr [rip + output_later_repeated],  0
	mov	byte ptr [rip + countmode],  1
	mov	dword ptr [rip + delimit_groups],  0
	mov	bl, 0xa
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x28], 0
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_59:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [r14 + rax*8]
	mov	ecx, r15d
	inc	r15d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
	mov	ecx, edx
	mov	bl, r12b
.label_52:
	mov	r12d, ebx
	test	r13, r13
	setne	al
	test	r15d, r15d
	setne	dl
	cmp	ecx, -1
	je	.label_151
	and	al, dl
	mov	edx, ecx
	jne	.label_155
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_156
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	lea	esi, [rax + 1]
	cmp	esi, 0x81
	ja	.label_35
	mov	ecx, 0x7a
	mov	edx, 0xffffffff
	jmp	qword ptr [(rsi * 8) + label_41]
.label_584:
	cmp	dword ptr [rsp + 0x28], 2
	jne	.label_43
	mov	qword ptr [rip + skip_fields],  0
	xor	ecx, ecx
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_151:
	mov	edx, ecx
.label_155:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_54
	cmp	r15d, 2
	jne	.label_59
	jmp	.label_62
.label_43:
	mov	rcx, qword ptr [rip + skip_fields]
	movabs	rdx, 0x1999999999999999
	cmp	rcx, rdx
	ja	.label_64
.label_46:
	lea	rdx, [rcx + rcx*4]
	movsxd	rsi, eax
	lea	rdx, [rsi + rdx*2 - 0x30]
	cmp	rdx, rcx
	jae	.label_66
.label_64:
	mov	qword ptr [rip + skip_fields],  -1
	jmp	.label_73
.label_66:
	mov	qword ptr [rip + skip_fields],  rdx
.label_73:
	mov	dword ptr [rsp + 0x28], 1
	mov	ecx, eax
	mov	bl, r12b
	jmp	.label_52
.label_583:
	mov	rax, qword ptr [rip + optarg]
	cmp	byte ptr [rax], 0x2b
	jne	.label_79
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b9
	jb	.label_79
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	test	eax, eax
	je	.label_98
.label_79:
	cmp	r15d, 2
	je	.label_146
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, r15d
	inc	r15d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
.label_36:
	mov	ecx, 1
	mov	bl, r12b
	jmp	.label_52
.label_585:
	mov	byte ptr [rip + output_unique],  0
	mov	byte ptr [rip + output_later_repeated],  1
	mov	rsi, qword ptr [rip + optarg]
	xor	eax, eax
	test	rsi, rsi
	je	.label_110
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_119
	mov	edx, OFFSET FLAT:delimit_method_string
	mov	ecx, OFFSET FLAT:delimit_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + delimit_method_map]
.label_110:
	mov	dword ptr [rip + delimit_groups],  eax
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x44
	mov	bl, r12b
	jmp	.label_52
.label_586:
	mov	byte ptr [rip + countmode],  0
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x63
	mov	bl, r12b
	jmp	.label_52
.label_587:
	mov	byte ptr [rip + output_unique],  0
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x64
	mov	bl, r12b
	jmp	.label_52
.label_588:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_93
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_fields],  rax
	mov	dword ptr [rsp + 0x28], 2
	mov	ecx, 0x66
	mov	bl, r12b
	jmp	.label_52
.label_589:
	mov	byte ptr [rip + ignore_case],  1
	mov	ecx, 0x69
	mov	bl, r12b
	jmp	.label_52
.label_590:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_49
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	mov	ecx, 0x73
	mov	bl, r12b
	jmp	.label_52
.label_591:
	mov	byte ptr [rip + output_first_repeated],  0
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x75
	mov	bl, r12b
	jmp	.label_52
.label_592:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_74
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + check_chars],  rax
	mov	ecx, 0x77
	mov	bl, r12b
	jmp	.label_52
.label_593:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_58
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_82
	mov	edx, OFFSET FLAT:grouping_method_string
	mov	ecx, OFFSET FLAT:grouping_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + grouping_method_map]
	mov	dword ptr [rip + grouping],  eax
	jmp	.label_94
.label_58:
	mov	dword ptr [rip + grouping],  3
.label_94:
	mov	ecx, 0x80
	mov	bl, r12b
	jmp	.label_52
.label_98:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	jmp	.label_36
.label_54:
	mov	ecx, dword ptr [rip + grouping]
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	je	.label_108
	test	ecx, ecx
	jne	.label_87
.label_108:
	mov	al, byte ptr [rip + countmode]
	test	ecx, ecx
	je	.label_117
	mov	ecx, eax
	xor	cl, 1
	test	cl, 1
	jne	.label_95
.label_117:
	test	al, 1
	jne	.label_122
	cmp	byte ptr [rip + output_later_repeated],  1
	je	.label_124
.label_122:
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_127
	cmp	byte ptr [rbp + 1], 0
	je	.label_132
.label_127:
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_133
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_135
.label_132:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_138
	cmp	byte ptr [rbx + 1], 0
	je	.label_140
.label_138:
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_141
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_147
.label_140:
	mov	qword ptr [rsp + 0x68], rbp
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	lea	r14, [rsp + 0x38]
	mov	rdi, r14
	call	initbuffer
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	initbuffer
	cmp	byte ptr [rip + output_unique],  1
	jne	.label_154
	cmp	byte ptr [rip + output_first_repeated],  1
	jne	.label_154
	test	byte ptr [rip + countmode],  1
	je	.label_154
	movzx	eax, r12b
	mov	dword ptr [rsp + 0x18], eax
	lea	r13, [rsp + 0x38]
	mov	al, 1
	movsx	ecx, r12b
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_157
.label_154:
	mov	rsi, qword ptr [rip + stdin]
	movsx	r13d, r12b
	lea	rbp, [rsp + 0x70]
	mov	rdi, rbp
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_38
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rdi, r14
	mov	rsi, rbx
	call	find_field
	lea	rcx, [r14 + rbx - 1]
	mov	rbx, r15
	mov	qword ptr [rsp + 0x10], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	movzx	eax, r12b
	mov	dword ptr [rsp + 0x34], eax
	mov	r14b, 1
	xor	r15d, r15d
	jmp	.label_63
	nop	word ptr cs:[rax + rax]
.label_99:
	test	bpl, bpl
	mov	eax, 0
	cmovne	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
.label_63:
	mov	dword ptr [rsp + 0x20], r14d
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x18], rbp
	test	r14b, 1
	jne	.label_71
	jmp	.label_83
.label_126:
	mov	rbp, rsi
	mov	esi, dword ptr [rsp + 0x34]
	call	__overflow
	mov	rsi, rbp
	jmp	.label_89
.label_83:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_61
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, rbx
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_69
	mov	r14d, r13d
	mov	rbp, qword ptr [rbx + 8]
	mov	r13, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	rsi, r13
	call	find_field
	mov	rsi, rax
	sub	r13, rsi
	lea	rbx, [rbp + r13 - 1]
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbx
	mov	rdx, rbx
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 8]
	cmp	rcx, rax
	cmovae	rcx, rax
	movzx	eax, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_106
	mov	al, 1
	cmp	rdx, rcx
	mov	r13d, r14d
	jne	.label_120
	mov	rdi, rsi
	mov	rbp, rsi
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcasecmp
	jmp	.label_130
	nop	
.label_106:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_144
	mov	rdi, rsi
	mov	rbp, rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x10]
	call	xmemcoll
	mov	rsi, rbp
	test	eax, eax
	setne	al
	mov	r13d, r14d
	jmp	.label_120
.label_144:
	mov	al, 1
	cmp	rdx, rcx
	mov	r13d, r14d
	jne	.label_120
	mov	rdi, rsi
	mov	rbp, rsi
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcmp
.label_130:
	mov	rsi, rbp
	test	eax, eax
	setne	al
.label_120:
	movzx	ecx, al
	xor	rcx, 1
	add	r15, rcx
	xor	ecx, ecx
	cmp	r15, -1
	sete	cl
	sub	r15, rcx
	mov	ecx, dword ptr [rip + delimit_groups]
	test	ecx, ecx
	mov	r14d, dword ptr [rsp + 0x20]
	je	.label_148
	test	al, al
	jne	.label_134
	dec	ecx
	cmp	ecx, 1
	ja	.label_89
	cmp	r15, 1
	jne	.label_89
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_126
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_148:
	mov	bpl, 1
	test	al, al
	jne	.label_42
.label_89:
	movzx	eax, byte ptr [rip + output_later_repeated]
	test	al, al
	je	.label_83
	xor	ebp, ebp
.label_42:
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 8], rbx
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_47
.label_134:
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_53
.label_129:
	mov	esi, dword ptr [rsp + 0x34]
	call	__overflow
	jmp	.label_60
	nop	dword ptr [rax]
.label_71:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_61
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, rbx
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_69
	mov	rbp, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	rsi, rbx
	call	find_field
	mov	r14, rax
	sub	rbx, r14
	lea	rbx, [rbp + rbx - 1]
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbx
	mov	rdx, rbx
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 8]
	cmp	rcx, rax
	cmovae	rcx, rax
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_75
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_92
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcasecmp
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_75:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_121
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x10]
	call	xmemcoll
	jmp	.label_97
.label_121:
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_92
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcmp
	nop	
.label_97:
	test	eax, eax
	setne	al
.label_92:
	movzx	ecx, al
	xor	rcx, 1
	add	r15, rcx
	xor	ecx, ecx
	cmp	r15, -1
	sete	cl
	sub	r15, rcx
	mov	ecx, dword ptr [rip + delimit_groups]
	test	ecx, ecx
	je	.label_116
	test	al, al
	jne	.label_145
	cmp	ecx, 1
	jne	.label_60
	cmp	r15, 1
	jne	.label_60
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_129
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_116:
	mov	bpl, 1
	test	al, al
	jne	.label_80
.label_60:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_71
	xor	ebp, ebp
.label_80:
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], rbx
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14d, dword ptr [rsp + 0x20]
	jmp	.label_47
.label_145:
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], rbx
	mov	r14d, dword ptr [rsp + 0x20]
.label_53:
	test	r15, r15
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_149
	xor	r14d, r14d
.label_149:
	mov	bpl, 1
.label_47:
	test	r15, r15
	je	.label_150
	test	bpl, bpl
	je	.label_143
	mov	al, byte ptr [rip + output_first_repeated]
	jmp	.label_153
.label_150:
	mov	al, byte ptr [rip + output_unique]
.label_153:
	test	al, al
	je	.label_99
	jmp	.label_137
.label_143:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_99
.label_137:
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_158
	lea	rdx, [r15 + 1]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_37
	xor	eax, eax
	call	__printf_chk
.label_158:
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_99
	nop	word ptr [rax + rax]
.label_100:
	mov	rdx, qword ptr [r13 + 8]
	mov	rdi, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x20], r14
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x28]
.label_157:
	mov	qword ptr [rsp + 0x28], rbx
	test	al, 1
	je	.label_65
.label_136:
	mov	rsi, qword ptr [rip + stdin]
	mov	bl, 1
	test	byte ptr [rsi], 0x10
	jne	.label_68
	mov	rdi, r13
	mov	edx, dword ptr [rsp + 8]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_68
	mov	rbx, qword ptr [r13 + 8]
	mov	rbp, qword ptr [r13 + 0x10]
	mov	rdi, rbx
	mov	rsi, rbp
	call	find_field
	mov	r14, rax
	sub	rbp, r14
	lea	rbp, [rbx + rbp - 1]
	mov	bl, 1
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_81
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbp
	mov	rdx, rbp
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rcx, rax
	cmovae	rcx, rax
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_90
	cmp	rdx, rcx
	jne	.label_81
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcasecmp
	jmp	.label_103
	nop	word ptr [rax + rax]
.label_90:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_107
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x20]
	call	xmemcoll
	jmp	.label_103
.label_107:
	cmp	rdx, rcx
	jne	.label_81
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcmp
	nop	dword ptr [rax]
.label_103:
	test	eax, eax
	setne	bl
.label_81:
	mov	eax, dword ptr [rip + grouping]
	test	bl, bl
	je	.label_125
	test	eax, eax
	je	.label_125
	cmp	eax, 4
	je	.label_128
	cmp	eax, 1
	jne	.label_125
.label_128:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_50
	mov	esi, dword ptr [rsp + 0x18]
	call	__overflow
	mov	eax, dword ptr [rip + grouping]
	nop	dword ptr [rax]
.label_125:
	test	eax, eax
	setne	al
	or	bl, al
	cmp	bl, 1
	jne	.label_136
	jmp	.label_100
	nop	word ptr cs:[rax + rax]
.label_50:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_100
.label_70:
	mov	esi, dword ptr [rsp + 0x18]
	call	__overflow
	mov	eax, dword ptr [rip + grouping]
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_152
	mov	rdi, r13
	mov	edx, dword ptr [rsp + 8]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_152
	mov	rbx, qword ptr [r13 + 8]
	mov	r15, qword ptr [r13 + 0x10]
	mov	rdi, rbx
	mov	rsi, r15
	call	find_field
	mov	r14, rax
	sub	r15, r14
	lea	rbp, [rbx + r15 - 1]
	mov	bl, 1
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_39
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbp
	mov	rdx, rbp
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rcx, rax
	cmovae	rcx, rax
	movzx	eax, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_44
	cmp	rdx, rcx
	jne	.label_39
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcasecmp
	jmp	.label_45
	nop	dword ptr [rax]
.label_44:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_67
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x20]
	call	xmemcoll
	jmp	.label_45
.label_67:
	cmp	rdx, rcx
	jne	.label_39
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcmp
	nop	dword ptr [rax]
.label_45:
	test	eax, eax
	setne	bl
.label_39:
	mov	eax, dword ptr [rip + grouping]
	test	bl, bl
	je	.label_57
	test	eax, eax
	je	.label_57
	cmp	eax, 1
	je	.label_78
	cmp	eax, 4
	je	.label_78
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_57
	nop	word ptr [rax + rax]
.label_78:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_70
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], r12b
.label_57:
	test	eax, eax
	setne	al
	or	bl, al
	je	.label_65
	jmp	.label_100
.label_61:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_101
.label_69:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rip + stdin]
	test	byte ptr [rax], 0x20
	jne	.label_38
.label_101:
	test	r15, r15
	je	.label_105
	cmp	byte ptr [rip + output_first_repeated],  1
	je	.label_109
	jmp	.label_38
.label_152:
	xor	ebx, ebx
.label_68:
	mov	eax, dword ptr [rip + grouping]
	cmp	eax, 4
	je	.label_114
	cmp	eax, 2
	jne	.label_38
.label_114:
	test	bl, bl
	jne	.label_38
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_118
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_38
.label_105:
	mov	al, byte ptr [rip + output_unique]
	test	al, al
	je	.label_38
.label_109:
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_131
	inc	r15
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_37
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_131:
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
.label_38:
	mov	rdi, qword ptr [rip + stdin]
	test	byte ptr [rdi], 0x20
	jne	.label_142
	call	rpl_fclose
	test	eax, eax
	jne	.label_142
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	xor	eax, eax
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_118:
	mov	esi, dword ptr [rsp + 0x18]
	call	__overflow
	jmp	.label_38
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
.label_104:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_35:
	cmp	eax, 0xffffff7d
	je	.label_48
	cmp	eax, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_51:
	mov	edi, 1
	call	usage
.label_48:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_18
	mov	edx, OFFSET FLAT:label_22
	mov	r8d, OFFSET FLAT:label_55
	mov	r9d, OFFSET FLAT:label_56
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_142:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x68]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	jmp	.label_85
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	jmp	.label_85
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
.label_85:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_104
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	jmp	.label_112
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	jmp	.label_112
.label_135:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_147:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
.label_112:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029c0

	.globl find_field
	.type find_field, @function
find_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	xor	ebx, ebx
	dec	r15
	je	.label_159
	mov	r12, qword ptr [rip + skip_fields]
	test	r12, r12
	je	.label_159
	xor	ebx, ebx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_164:
	cmp	rbx, r15
	jae	.label_161
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax]
.label_163:
	movzx	ecx, byte ptr [r14 + rbx]
	cmp	rcx, 0xa
	je	.label_160
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_161
.label_160:
	inc	rbx
	cmp	rbx, r15
	jb	.label_163
.label_161:
	cmp	rbx, r15
	jae	.label_165
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax]
.label_162:
	movzx	ecx, byte ptr [r14 + rbx]
	cmp	rcx, 0xa
	je	.label_165
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	jne	.label_165
	inc	rbx
	cmp	rbx, r15
	jb	.label_162
.label_165:
	cmp	r15, rbx
	jbe	.label_159
	inc	r13
	cmp	r13, r12
	jb	.label_164
.label_159:
	mov	rax, qword ptr [rip + skip_chars]
	sub	r15, rbx
	cmp	rax, r15
	cmovb	r15, rax
	add	r15, rbx
	add	r14, r15
	mov	rax, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_174
	test	r14, r14
	je	.label_166
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_170
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_167
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_169
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_170
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_170
.label_169:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_170:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_168
	jmp	.label_173
.label_174:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_173
.label_166:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_172:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_171
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_167
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_171
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_171:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_172
.label_173:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_167:
	mov	rax, rbx
	add	rsp, 0x28
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
	#Procedure 0x402c10
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
	je	.label_175
	mov	esi, OFFSET FLAT:label_176
	jmp	.label_177
.label_175:
	mov	esi, OFFSET FLAT:label_178
.label_177:
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
	.align	32
	#Procedure 0x402c80

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
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_184
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_181:
	test	r15, r15
	je	.label_183
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_180
.label_183:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_180:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_182:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_181
.label_184:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_187
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_187:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_188
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_189
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	jmp	.label_190
.label_189:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
.label_190:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_188:
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
	.align	32
	#Procedure 0x402e80
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
	je	.label_191
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_192:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_191
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_192
.label_191:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_197
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_195
	cmp	dword ptr [rbp], 0x20
	jne	.label_195
.label_197:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_194
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_193
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_194:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_193:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_198
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_198:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403000

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_205
	cmp	eax, 1
	je	.label_208
	cmp	eax, 2
	je	.label_210
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_210:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_203
.label_205:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_207
.label_208:
	xor	r15d, r15d
.label_203:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_199
	mov	edi, OFFSET FLAT:label_204
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_199
	mov	r13b, 1
	jmp	.label_211
.label_199:
	test	r12b, r12b
	je	.label_202
	mov	edi, OFFSET FLAT:label_204
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_209
.label_202:
	test	r15b, r15b
	je	.label_207
	mov	edi, OFFSET FLAT:label_204
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_211
.label_207:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_201
.label_209:
	mov	r12b, 1
.label_211:
	xor	r14d, r14d
	test	eax, eax
	js	.label_201
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_201:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_213
	mov	edi, 2
	call	close
.label_213:
	test	r12b, r12b
	je	.label_200
	mov	edi, 1
	call	close
.label_200:
	test	r13b, r13b
	je	.label_206
	xor	edi, edi
	call	close
.label_206:
	test	r14, r14
	jne	.label_212
	mov	dword ptr [rbx], ebp
.label_212:
	mov	rax, r14
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
	#Procedure 0x403150

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_215
	cmp	byte ptr [rax], 0x43
	jne	.label_217
	cmp	byte ptr [rax + 1], 0
	je	.label_214
.label_217:
	mov	esi, OFFSET FLAT:label_216
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_215
.label_214:
	xor	ebx, ebx
.label_215:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403190

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4031a0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_218
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_220:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_222
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_221:
	cmp	rbx, r12
	jne	.label_219
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_219:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_220
	jmp	.label_223
.label_222:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_221
	cmp	rbx, r15
	mov	eax, 0
	je	.label_218
	test	byte ptr [r13], 0x20
	jne	.label_218
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_221
.label_223:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_218:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403260

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_224
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_229:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_227
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_225:
	cmp	r13, r14
	jne	.label_228
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_228:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_229
	jmp	.label_226
.label_227:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_225
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_224
	test	byte ptr [rbp], 0x20
	jne	.label_224
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_225
.label_226:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_224:
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
	#Procedure 0x403330
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403340

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	xor	eax, eax
	test	rbx, rbx
	je	.label_230
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_231:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_230
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_231
.label_230:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403390

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_232
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_233
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_233
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_233:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_236
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_235
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_235
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_238
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_238:
	mov	rbx, r14
.label_235:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_236:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_237
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034a0
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
	#Procedure 0x4034e0
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
	#Procedure 0x4034f0
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
	#Procedure 0x403500
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
	.align	32
	#Procedure 0x403540
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
	#Procedure 0x403560
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_240
	test	rdx, rdx
	je	.label_240
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_240:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403590
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
	.align	32
	#Procedure 0x403610

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
	jmp	.label_270
	nop	
.label_309:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_292
	or	al, dl
	jne	.label_292
	test	dil, 1
	jne	.label_308
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_292
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_270
	jmp	.label_292
.label_600:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_316
	test	rbp, rbp
	je	.label_319
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_319:
	mov	r14d, 1
	jmp	.label_322
.label_601:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_324
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_265
.label_316:
	xor	r14d, r14d
.label_322:
	mov	eax, OFFSET FLAT:label_324
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_332
	nop	
.label_270:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_340
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_347]
.label_602:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_354
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_255
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_603:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_271
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_271
	xor	r14d, r14d
	nop	
.label_253:
	cmp	r14, rbp
	jae	.label_250
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_250:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_253
.label_271:
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
	jmp	.label_265
.label_595:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_265
.label_598:
	mov	al, 1
.label_596:
	mov	r12b, 1
.label_599:
	test	r12b, 1
	mov	cl, 1
	je	.label_279
	mov	ecx, eax
.label_279:
	mov	al, cl
.label_597:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_280
	test	rbp, rbp
	je	.label_286
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_286:
	mov	r14d, 1
	jmp	.label_365
.label_280:
	xor	r14d, r14d
.label_365:
	mov	ecx, OFFSET FLAT:label_255
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_332:
	mov	sil, r12b
.label_265:
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
	jmp	.label_297
	nop	word ptr cs:[rax + rax]
.label_307:
	inc	r12
.label_297:
	cmp	r11, -1
	je	.label_327
	cmp	r12, r11
	jne	.label_329
	jmp	.label_331
	nop	word ptr cs:[rax + rax]
.label_327:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_336
.label_329:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_341
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_343
	cmp	r11, -1
	jne	.label_343
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_343:
	cmp	rbx, r11
	jbe	.label_358
.label_341:
	xor	esi, esi
.label_256:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_359
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_363]
.label_615:
	test	r12, r12
	jne	.label_249
	jmp	.label_241
	nop	word ptr cs:[rax + rax]
.label_358:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_252
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_256
	jmp	.label_262
.label_252:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_256
.label_619:
	xor	eax, eax
	cmp	r11, -1
	je	.label_273
	test	r12, r12
	jne	.label_277
	cmp	r11, 1
	je	.label_241
	xor	r13d, r13d
	jmp	.label_242
.label_608:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_282
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	cmp	r8d, 2
	jne	.label_287
	mov	eax, r9d
	and	al, 1
	jne	.label_287
	cmp	r14, rbp
	jae	.label_291
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_291:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_293:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_300
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_300:
	add	r14, 3
	mov	r9b, 1
.label_287:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_306
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_306:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_314
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_314
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_314
	cmp	r14, rbp
	jae	.label_350
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_350:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_328
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_328:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_242
.label_609:
	mov	bl, 0x62
	jmp	.label_290
.label_610:
	mov	cl, 0x74
	jmp	.label_312
.label_611:
	mov	bl, 0x76
	jmp	.label_290
.label_612:
	mov	bl, 0x66
	jmp	.label_290
.label_613:
	mov	cl, 0x72
	jmp	.label_312
.label_616:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_338
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_264
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
	jae	.label_348
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_348:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_360
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_360:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_364
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_364:
	add	r14, 3
	xor	r9d, r9d
.label_338:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_242
.label_617:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_245
	cmp	r8d, 2
	jne	.label_249
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_249
	jmp	.label_264
.label_618:
	cmp	r8d, 2
	jne	.label_259
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_264
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_267
.label_359:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_269
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_321
.label_273:
	test	r12, r12
	jne	.label_288
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_288
.label_241:
	mov	dl, 1
.label_614:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_264
	xor	eax, eax
	mov	r13b, dl
.label_242:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_298
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_301
	jmp	.label_303
	nop	word ptr cs:[rax + rax]
.label_298:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_303
.label_301:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_302
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_313
	nop	dword ptr [rax]
.label_303:
	test	sil, sil
.label_313:
	mov	ebx, r15d
	je	.label_243
	jmp	.label_318
.label_302:
	mov	ebx, r15d
	jmp	.label_318
.label_282:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_307
	xor	r15d, r15d
	jmp	.label_249
.label_259:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_312
	xor	eax, eax
	mov	r15b, 0x5c
.label_267:
	xor	r13d, r13d
	jmp	.label_243
.label_312:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_264
.label_290:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_242
	nop	
.label_318:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	cmp	r8d, 2
	jne	.label_339
	mov	eax, r9d
	and	al, 1
	jne	.label_339
	cmp	r14, rbp
	jae	.label_344
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_344:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_349
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_349:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_353
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_353:
	add	r14, 3
	mov	r9b, 1
.label_339:
	cmp	r14, rbp
	jae	.label_305
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_305:
	inc	r14
	jmp	.label_323
.label_269:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_333
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_333:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_254
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_246:
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
	je	.label_260
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_274
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_289
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_284
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_326:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_278
	bt	rsi, rdx
	jb	.label_264
.label_278:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_326
.label_284:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_304
	xor	r13d, r13d
.label_304:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_246
	jmp	.label_276
.label_314:
	xor	r13d, r13d
	jmp	.label_242
.label_288:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_242
.label_245:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_249
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_249
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_249
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_325
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_268
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_335
	cmp	r14, rbp
	jae	.label_337
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_337:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_342
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_342:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_367
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_367:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_351
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_351:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_268:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_242
.label_249:
	xor	eax, eax
.label_277:
	xor	r13d, r13d
	jmp	.label_242
.label_254:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_272:
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
	je	.label_315
	cmp	rbp, -1
	je	.label_257
	cmp	rbp, -2
	je	.label_260
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_266
	xor	r13d, r13d
.label_266:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_272
	jmp	.label_276
.label_260:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_283
	lea	rax, [r10 + r12]
.label_334:
	cmp	byte ptr [rax + rsi], 0
	je	.label_283
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_334
.label_283:
	mov	qword ptr [rsp + 0x40], rsi
.label_274:
	xor	r13d, r13d
	jmp	.label_289
.label_257:
	xor	r13d, r13d
.label_315:
	mov	r10, qword ptr [rsp + 0x28]
.label_289:
	mov	r12, qword ptr [rsp + 0x40]
.label_276:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_321:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_295
	test	al, al
	je	.label_295
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_242
.label_295:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_311
	nop	word ptr [rax + rax]
.label_275:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_311:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_317
	test	sil, 1
	je	.label_296
	cmp	r14, rbp
	jae	.label_320
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_320:
	inc	r14
	xor	esi, esi
	jmp	.label_296
	nop	word ptr cs:[rax + rax]
.label_317:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	cmp	r8d, 2
	jne	.label_330
	mov	eax, r9d
	and	al, 1
	jne	.label_330
	cmp	r14, rbp
	jae	.label_299
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_299:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_362
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_362:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_310
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_310:
	add	r14, 3
	mov	r9b, 1
.label_330:
	cmp	r14, rbp
	jae	.label_352
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_352:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_356
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_356:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_361
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_361:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_296:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_243
	test	r9b, 1
	je	.label_247
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_346
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_251
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_251:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_261
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_261:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_247
	nop	word ptr cs:[rax + rax]
.label_346:
	mov	rbx, rcx
.label_247:
	cmp	r14, rbp
	jae	.label_275
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_275
	nop	
.label_243:
	test	r9b, 1
	je	.label_281
	and	al, 1
	jne	.label_281
	cmp	r14, rbp
	jae	.label_285
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_285:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_366
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_366:
	add	r14, 2
	xor	r9d, r9d
.label_281:
	mov	ebx, r15d
.label_323:
	cmp	r14, rbp
	jae	.label_294
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_294:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_307
.label_325:
	xor	r13d, r13d
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_331:
	mov	rcx, r12
.label_336:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_309
	or	al, dl
	jne	.label_309
	mov	r11, rcx
	jmp	.label_262
.label_264:
	mov	eax, 2
.label_258:
	mov	qword ptr [rsp + 0x38], rax
.label_262:
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
.label_244:
	mov	r14, rax
.label_248:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_292:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_345
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_263
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_263
	inc	rdx
	nop	dword ptr [rax + rax]
.label_357:
	cmp	r14, rbp
	jae	.label_355
	mov	byte ptr [rcx + r14], al
.label_355:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_357
	jmp	.label_263
.label_308:
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
	jmp	.label_244
.label_345:
	mov	rcx, qword ptr [rsp + 0x10]
.label_263:
	cmp	r14, rbp
	jae	.label_248
	mov	byte ptr [rcx + r14], 0
	jmp	.label_248
.label_335:
	mov	eax, 5
	jmp	.label_258
.label_340:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404440
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
	.align	32
	#Procedure 0x404510
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
	je	.label_368
	mov	qword ptr [rax], rbx
.label_368:
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
	.align	32
	#Procedure 0x404600
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_369
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_371:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_371
.label_369:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_372
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_373], OFFSET FLAT:slot0
.label_372:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_370
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_370:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4046b0

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
	js	.label_377
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_380
	cmp	r12d, 0x7fffffff
	je	.label_375
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
	jne	.label_378
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_378:
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
.label_380:
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
	jbe	.label_376
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_379
.label_376:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_374
	mov	rdi, r14
	call	free
.label_374:
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
.label_379:
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
.label_377:
	call	abort
.label_375:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404870
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404880
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
	.align	32
	#Procedure 0x4048a0
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
	.align	32
	#Procedure 0x4048c0

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
	je	.label_381
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
.label_381:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404930

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
	je	.label_382
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
.label_382:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

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
	je	.label_383
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
.label_383:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10
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
	je	.label_384
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
.label_384:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x404af0
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b60

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20

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
	je	.label_388
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
.label_388:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0
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
	je	.label_389
	test	rdx, rdx
	je	.label_389
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_389:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d30
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
	je	.label_390
	test	rdx, rdx
	je	.label_390
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_390:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0
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
	je	.label_391
	test	rsi, rsi
	je	.label_391
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_391:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404e10
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
	je	.label_392
	test	rsi, rsi
	je	.label_392
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
.label_392:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e80
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90
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
	.align	32
	#Procedure 0x404eb0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

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
	.align	32
	#Procedure 0x404ef0

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
	jne	.label_394
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_399
	cmp	ecx, 0x55
	jne	.label_393
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_393
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_393
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_393
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_393
	cmp	byte ptr [rax + 5], 0
	jne	.label_393
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_396
	mov	eax, OFFSET FLAT:label_397
	jmp	.label_398
.label_399:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_393
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_393
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_393
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_393
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_393
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_393
	cmp	byte ptr [rax + 7], 0
	je	.label_395
.label_393:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_324
	mov	eax, OFFSET FLAT:label_255
.label_398:
	cmove	rax, rcx
.label_394:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_395:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_400
	mov	eax, OFFSET FLAT:label_401
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fc0

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
	je	.label_402
	mov	edx, OFFSET FLAT:label_412
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_418
.label_402:
	mov	edx, OFFSET FLAT:label_419
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
	mov	esi, OFFSET FLAT:label_420
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_407
	jmp	qword ptr [(r12 * 8) + label_408]
.label_643:
	add	rsp, 8
	jmp	.label_405
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
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
	jmp	.label_405
.label_644:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
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
.label_645:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
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
.label_646:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
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
.label_647:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
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
	jmp	.label_405
.label_648:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
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
	jmp	.label_405
.label_649:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
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
	jmp	.label_405
.label_650:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
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
	jmp	.label_405
.label_652:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
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
	jmp	.label_405
.label_651:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
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
.label_405:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_421:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_421
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_427
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_429
.label_427:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_429:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_426
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_428
.label_426:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_428:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_423
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_425
.label_423:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_425:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_434
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_422
.label_434:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_422:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_424
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
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_424
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
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_424
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_424
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_424
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_424
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_424:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_435
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_435:
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
	.align	32
	#Procedure 0x4055d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_437
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405650
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_440
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_441
	test	rax, rax
	je	.label_440
.label_441:
	pop	rbx
	ret	
.label_440:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405690

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_442
	test	rax, rax
	je	.label_443
.label_442:
	pop	rbx
	ret	
.label_443:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_444
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_445
	test	rbx, rbx
	jne	.label_445
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_445:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_446
	test	rax, rax
	je	.label_444
.label_446:
	pop	rbx
	ret	
.label_444:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405700

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_447
	test	rbx, rbx
	jne	.label_447
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_447:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_449
	test	rax, rax
	je	.label_448
.label_449:
	pop	rbx
	ret	
.label_448:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405730
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_453
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_455
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_450
.label_453:
	test	rcx, rcx
	jne	.label_456
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_456:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_451
.label_450:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_452
	test	rbx, rbx
	jne	.label_452
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_452:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_454
	test	rax, rax
	je	.label_455
.label_454:
	pop	rbx
	ret	
.label_455:
	call	xalloc_die
.label_451:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_457
	test	rax, rax
	je	.label_458
.label_457:
	pop	rbx
	ret	
.label_458:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_461
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_463
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_460
	call	free
	xor	eax, eax
	jmp	.label_462
.label_461:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_459
	mov	qword ptr [rsi], rbx
.label_460:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_462
	test	rax, rax
	je	.label_459
.label_462:
	pop	rbx
	ret	
.label_459:
	call	xalloc_die
.label_463:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860
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
	je	.label_465
	test	r14, r14
	je	.label_464
.label_465:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_464:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_466
	call	rpl_calloc
	test	rax, rax
	je	.label_466
	pop	rcx
	ret	
.label_466:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058d0

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
	je	.label_467
	test	r15, r15
	je	.label_468
.label_467:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_468:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405910
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
	je	.label_470
	test	r15, r15
	je	.label_469
.label_470:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_469:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_471
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405990

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_473
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rbx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	r14, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbx
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_473:
	mov	eax, ebp
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
	#Procedure 0x405a80
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	memcoll0
	mov	r13d, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_476
	dec	rbp
	dec	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	mov	r15d, r13d
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	r13d, r15d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_476:
	mov	eax, r13d
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
	#Procedure 0x405b80

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_477
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_494:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_494
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_489
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_483
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_487
	cmp	eax, 0x22
	jne	.label_489
	mov	ebx, 1
.label_487:
	test	r14, r14
	jne	.label_491
	jmp	.label_493
.label_483:
	test	r14, r14
	je	.label_489
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_489
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_489
.label_491:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_493
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_484
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_482
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_482
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_482
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_492
	cmp	eax, 0x44
	je	.label_492
	cmp	eax, 0x69
	jne	.label_482
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_482
.label_492:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_482:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_484
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_486]
.label_544:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_488
.label_484:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_497
.label_545:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_478
.label_546:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_488
.label_548:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_488
.label_542:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_495
.label_543:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_488:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_490
.label_547:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_490
.label_549:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_485
.label_550:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_485:
	movzx	eax, dl
.label_478:
	and	eax, 1
.label_490:
	mov	rbp, rsi
.label_496:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_493:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_497:
	mov	r13d, ebx
.label_489:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_551:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_495:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_496
.label_552:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_496
.label_477:
	mov	edi, OFFSET FLAT:label_479
	mov	esi, OFFSET FLAT:label_480
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_481
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4061a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_498
	test	rsi, rsi
	mov	ecx, 1
	je	.label_499
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_499
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_498:
	mov	ecx, 1
.label_499:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_500
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_502
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_500
.label_502:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_500
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_501
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_501:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_500:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406270

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_503
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_503
	test	byte ptr [rbx + 1], 1
	je	.label_503
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_503:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_505
	test	rbx, rbx
	je	.label_505
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_505
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_505
	mov	edi, OFFSET FLAT:label_204
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_504
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_505
.label_504:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_505:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406350

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
	jne	.label_506
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_506
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_507
.label_506:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_507:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_508
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_508:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4063c0

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
	je	.label_509
	cmp	r15, -2
	jb	.label_509
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_509
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_509:
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
	#Procedure 0x406420

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
	jne	.label_511
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_510
	test	cl, cl
	jne	.label_510
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_510
.label_511:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_510
	call	__errno_location
	mov	dword ptr [rax], 0
.label_510:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406480

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_40
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_512
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_515
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_518
.label_515:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	mov	qword ptr [rsp + 0x10], rbp
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rbx
	lea	r15, [rbx + 1]
	call	__errno_location
	mov	rbx, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r14
	mov	qword ptr [rsp + 8], r12
	mov	r14, r12
	nop	dword ptr [rax]
.label_516:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_513
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_514
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_516
	jmp	.label_513
.label_514:
	neg	r15
	sbb	eax, eax
.label_513:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_517
.label_518:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_517:
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
	.align	32
	#Procedure 0x4065c0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	r15, r14
	jne	.label_519
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_521
.label_519:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_523:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_520
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_522
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_523
	jmp	.label_520
.label_522:
	neg	r14
	sbb	eax, eax
	jmp	.label_520
.label_521:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_520:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x406670

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
