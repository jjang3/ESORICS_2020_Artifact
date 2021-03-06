	.section	.text
	.align	16
	#Procedure 0x401670

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_26:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	#Procedure 0x401890

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_38
	call	setlocale
	mov	edi, OFFSET FLAT:label_42
	mov	esi, OFFSET FLAT:label_51
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_42
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + uniform],  0
	mov	byte ptr [rip + split],  0
	mov	byte ptr [rip + tagged],  0
	mov	byte ptr [rip + crown],  0
	mov	dword ptr [rip + max_width],  0x4b
	mov	qword ptr [rip + prefix], OFFSET FLAT:label_38
	mov	dword ptr [rip + prefix_full_length],  0
	mov	dword ptr [rip + prefix_lead_space],  0
	mov	dword ptr [rip + prefix_length],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_43
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	cmp	byte ptr [rax], 0x2d
	jne	.label_43
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_43
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_43:
	xor	r15d, r15d
	jmp	.label_39
.label_32:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [rip + prefix_length],  eax
	nop	word ptr [rax + rax]
.label_39:
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_34
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x14
	ja	.label_45
	jmp	qword ptr [(rax * 8) + label_41]
.label_602:
	mov	byte ptr [rip + crown],  1
	jmp	.label_39
.label_603:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_39
.label_604:
	mov	rbx, qword ptr [rip + optarg]
	mov	dword ptr [rip + prefix_lead_space],  0
	cmp	byte ptr [rbx], 0x20
	jne	.label_48
	xor	eax, eax
.label_57:
	cmp	byte ptr [rbx + rax + 1], 0x20
	lea	rax, [rax + 1]
	je	.label_57
	mov	dword ptr [rip + prefix_lead_space],  eax
	add	rbx, rax
.label_48:
	mov	qword ptr [rip + prefix],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [rip + prefix_full_length],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
.label_35:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_32
	lea	rcx, [rax - 1]
	cmp	byte ptr [rax - 1], 0x20
	je	.label_35
	jmp	.label_32
.label_605:
	mov	byte ptr [rip + split],  1
	jmp	.label_39
.label_606:
	mov	byte ptr [rip + tagged],  1
	jmp	.label_39
.label_607:
	mov	byte ptr [rip + uniform],  1
	jmp	.label_39
.label_608:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_39
.label_34:
	cmp	ebx, -1
	jne	.label_55
	test	r14, r14
	je	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_33
.label_59:
	mov	eax, dword ptr [rip + max_width]
.label_33:
	test	r15, r15
	je	.label_36
	movsxd	rbx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + goal_width],  eax
	test	r14, r14
	jne	.label_47
	add	eax, 0xa
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_47
.label_36:
	imul	eax, eax, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [rip + goal_width],  eax
.label_47:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r13d
	jne	.label_31
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	mov	r15b, 1
	jmp	.label_40
.label_31:
	mov	r15b, 1
	jge	.label_40
	mov	r15b, 1
	nop	dword ptr [rax]
.label_30:
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_46
	cmp	byte ptr [rbx + 1], 0
	je	.label_49
.label_46:
	mov	esi, OFFSET FLAT:label_50
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_58
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_56
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_54
	nop	dword ptr [rax]
.label_58:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_54:
	call	error
	jmp	.label_56
.label_49:
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	nop	dword ptr [rax]
.label_56:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_30
.label_40:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_55:
	cmp	ebx, 0xffffff7d
	je	.label_37
	cmp	ebx, 0xffffff7e
	jne	.label_45
	xor	edi, edi
	call	usage
.label_37:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_19
	mov	r8d, OFFSET FLAT:label_52
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_45:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_61:
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	esi, 2
	call	fadvise
	mov	byte ptr [rip + tabs],  0
	mov	dword ptr [rip + other_indent],  0
	mov	dword ptr [rip + in_column],  0
	jmp	.label_95
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_95:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_108
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_119:
	cmp	ebp, 9
	je	.label_111
	cmp	ebp, 0x20
	je	.label_112
	jmp	.label_113
	nop	
.label_111:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_95
.label_108:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_119
.label_113:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_120
	mov	eax, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  eax
	mov	rbx, qword ptr [rip + prefix]
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_72
	inc	rbx
	jmp	.label_98
.label_120:
	mov	eax, dword ptr [rip + prefix_lead_space]
	mov	ecx, dword ptr [rip + in_column]
	cmp	eax, ecx
	cmovle	ecx, eax
	mov	dword ptr [rip + next_prefix_indent],  ecx
	jmp	.label_124
.label_139:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_135
.label_98:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_124
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_139
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_135:
	movzx	eax, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_98
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_66:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_72:
	cmp	ebp, 9
	je	.label_147
	cmp	ebp, 0x20
	jne	.label_124
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_143
	nop	
.label_147:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_143:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_66
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_72
.label_124:
	mov	dword ptr [rip + next_char],  ebp
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	r12d, OFFSET FLAT:in_column
	jmp	.label_74
.label_145:
	mov	ebp, dword ptr [rip + next_char]
	nop	word ptr cs:[rax + rax]
.label_74:
	mov	dword ptr [rip + last_line_length],  0
	jmp	.label_68
.label_109:
	mov	eax, dword ptr [rip + prefix_lead_space]
	mov	ecx, dword ptr [rip + in_column]
	cmp	eax, ecx
	cmovle	ecx, eax
	mov	dword ptr [rip + next_prefix_indent],  ecx
	nop	word ptr cs:[rax + rax]
.label_68:
	cmp	ebp, -1
	je	.label_88
	cmp	ebp, 0xa
	je	.label_88
	mov	eax, dword ptr [rip + next_prefix_indent]
	cmp	eax, dword ptr [rip + prefix_lead_space]
	jl	.label_88
	mov	ecx, dword ptr [rip + in_column]
	mov	edx, dword ptr [rip + prefix_full_length]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_92
	nop	
.label_88:
	mov	dword ptr [rip + out_column],  0
	mov	ebx, dword ptr [rip + next_prefix_indent]
	cmp	dword ptr [rip + in_column],  ebx
	jg	.label_94
	cmp	ebp, -1
	je	.label_101
	cmp	ebp, 0xa
	jne	.label_94
	mov	ebx, ebp
	jmp	.label_77
	nop	dword ptr [rax]
.label_94:
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_100
	cmp	ebx, 8
	jl	.label_100
	mov	r13d, ebx
	sar	r13d, 0x1f
	shr	r13d, 0x1d
	add	r13d, ebx
	and	r13d, 0xfffffff8
	cmp	r13d, 2
	jl	.label_100
	xor	ecx, ecx
	jmp	.label_70
.label_101:
	mov	ebx, ebp
	jmp	.label_77
.label_117:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_115
	nop	dword ptr [rax]
.label_70:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_117
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_115:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, eax
	jl	.label_70
	jmp	.label_100
	nop	dword ptr [rax + rax]
.label_140:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_100:
	cmp	eax, ebx
	jge	.label_128
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_130
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_140
.label_130:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_140
	nop	dword ptr [rax]
.label_128:
	mov	r13d, dword ptr [rip + in_column]
	cmp	eax, r13d
	jne	.label_84
	mov	ecx, eax
	mov	r13d, eax
	jmp	.label_73
	nop	word ptr cs:[rax + rax]
.label_84:
	mov	rbx, qword ptr [rip + prefix]
	jmp	.label_69
.label_64:
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	mov	r13d, dword ptr [rip + in_column]
	jmp	.label_133
	nop	dword ptr [rax]
.label_69:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_63
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_64
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], sil
.label_133:
	inc	rbx
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, r13d
	jne	.label_69
	jmp	.label_73
.label_63:
	mov	ecx, eax
.label_73:
	cmp	ebp, -1
	je	.label_75
	mov	ebx, 0xa
	cmp	ebp, 0xa
	je	.label_77
	cmp	byte ptr [rip + tabs],  1
	jne	.label_79
	mov	ebx, r13d
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, r13d
	and	ebx, 0xfffffff8
	lea	eax, [rcx + 1]
	cmp	eax, ebx
	jge	.label_79
	cmp	ecx, ebx
	jl	.label_80
	mov	eax, ecx
	jmp	.label_82
	nop	word ptr [rax + rax]
.label_75:
	mov	eax, dword ptr [rip + prefix_length]
	add	eax, dword ptr [rip + next_prefix_indent]
	mov	ebx, 0xffffffff
	cmp	r13d, eax
	jl	.label_77
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_136
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_77
.label_79:
	mov	eax, ecx
	jmp	.label_82
.label_103:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_103
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_97:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_80
.label_82:
	cmp	eax, r13d
	jl	.label_122
	mov	ebx, ebp
	jmp	.label_77
.label_127:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_114
	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_127
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_114:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	jl	.label_122
	mov	ebx, ebp
	jmp	.label_77
.label_136:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_77
	nop	dword ptr [rax]
.label_104:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_77:
	cmp	ebx, -1
	je	.label_118
	cmp	ebx, 0xa
	je	.label_132
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_134
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_144:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_104
	mov	rdi, r14
	call	__uflow
	mov	ebx, eax
	jmp	.label_77
.label_134:
	movzx	esi, bl
	call	__overflow
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_121
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_123:
	mov	dword ptr [rip + in_column],  0
	jmp	.label_78
	nop	dword ptr [rax]
.label_138:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_78:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_67
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_81:
	cmp	ebp, 9
	je	.label_71
	cmp	ebp, 0x20
	je	.label_138
	jmp	.label_76
	nop	
.label_71:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_78
.label_67:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_76:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_109
	mov	eax, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  eax
	mov	rbx, qword ptr [rip + prefix]
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_87
	inc	rbx
	nop	dword ptr [rax]
.label_99:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_68
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_93
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_105:
	movzx	eax, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_99
	jmp	.label_87
.label_93:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_105
	nop	
.label_116:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_87:
	cmp	ebp, 9
	je	.label_107
	cmp	ebp, 0x20
	jne	.label_68
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_107:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_110:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_116
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_87
.label_121:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_123
.label_92:
	mov	dword ptr [rip + prefix_indent],  eax
	mov	dword ptr [rip + first_indent],  ecx
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	mov	qword ptr [rip + word_limit], OFFSET FLAT:unused_word_type
	mov	rdi, r14
	mov	esi, ebp
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	mov	ebp, dword ptr [rip + prefix_indent]
	cmp	ecx, ebp
	jne	.label_125
	mov	esi, dword ptr [rip + prefix_full_length]
	add	esi, ecx
	cmp	dword ptr [rip + in_column],  esi
	setge	bl
	cmp	eax, 0xa
	setne	dl
	cmp	eax, -1
	setne	sil
	and	sil, dl
	and	sil, bl
	jmp	.label_137
.label_125:
	xor	esi, esi
.label_137:
	cmp	byte ptr [rip + split],  1
	jne	.label_96
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  ecx
	jmp	.label_65
.label_96:
	mov	dl, byte ptr [rip + crown]
	test	dl, dl
	je	.label_146
	test	sil, sil
	mov	edx, OFFSET FLAT:first_indent
	cmovne	rdx, r12
	mov	edx, dword ptr [rdx]
	mov	dword ptr [rip + other_indent],  edx
	cmp	ecx, ebp
	jne	.label_65
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	dword ptr [rip + in_column],  ecx
	jl	.label_65
	cmp	eax, -1
	je	.label_65
	cmp	eax, 0xa
	je	.label_65
.label_83:
	mov	rdi, r14
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_65
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_65
	cmp	eax, -1
	je	.label_65
	cmp	eax, 0xa
	je	.label_65
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_83
	jmp	.label_65
.label_146:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_85
	test	sil, sil
	je	.label_86
	mov	edi, dword ptr [rip + in_column]
	mov	esi, dword ptr [rip + first_indent]
	cmp	edi, esi
	jne	.label_89
	mov	esi, edi
	jmp	.label_90
.label_85:
	mov	esi, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  esi
	jmp	.label_91
.label_86:
	mov	esi, dword ptr [rip + first_indent]
.label_90:
	cmp	dword ptr [rip + other_indent],  esi
	jne	.label_91
	xor	edx, edx
	test	esi, esi
	sete	dl
	lea	edx, [rdx + rdx*2]
	mov	dword ptr [rip + other_indent],  edx
	jmp	.label_91
.label_89:
	mov	dword ptr [rip + other_indent],  edi
.label_91:
	mov	dl, byte ptr [rip + tagged]
	test	dl, dl
	je	.label_102
	cmp	ecx, ebp
	jne	.label_65
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_65
	cmp	eax, -1
	je	.label_65
	cmp	eax, 0xa
	je	.label_65
	cmp	edx, esi
	je	.label_65
.label_131:
	mov	rdi, r14
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_65
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_65
	cmp	eax, -1
	je	.label_65
	cmp	eax, 0xa
	je	.label_65
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_131
	jmp	.label_65
.label_102:
	cmp	ecx, ebp
	jne	.label_65
.label_126:
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_65
	cmp	eax, -1
	je	.label_65
	cmp	eax, 0xa
	je	.label_65
	cmp	edx, dword ptr [rip + other_indent]
	jne	.label_65
	mov	rdi, r14
	mov	esi, eax
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	cmp	ecx, dword ptr [rip + prefix_indent]
	je	.label_126
.label_65:
	mov	rbp, qword ptr [rip + word_limit]
	cmp	rbp, r15
	jbe	.label_129
	or	byte ptr [rbp - 0x18], 0xa
	mov	dword ptr [rip + next_char],  eax
	call	fmt_paragraph
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx, qword ptr [rip + label_141]
	jmp	.label_142
	nop	
.label_106:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_142:
	cmp	rbx, rbp
	jne	.label_106
	jmp	.label_145
.label_118:
	mov	dword ptr [rip + next_char],  0xffffffff
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_129:
	mov	edi, OFFSET FLAT:label_148
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:label_150
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x402610

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsi, qword ptr [rip + word_limit]
	mov	qword ptr [rsi + 0x18], 0
	mov	eax, dword ptr [rsi + 8]
	mov	dword ptr [rsp - 0xc], eax
	mov	edi, dword ptr [rip + max_width]
	mov	dword ptr [rsi + 8], edi
	lea	rax, [rsi - 0x28]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jb	.label_157
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rsp - 4], ecx
	mov	ecx, dword ptr [rip + other_indent]
	mov	dword ptr [rsp - 8], ecx
	mov	r11d, dword ptr [rip + last_line_length]
	mov	r12d, dword ptr [rip + goal_width]
	xor	r15d, r15d
	mov	edx, OFFSET FLAT:unused_word_type
	mov	r8, rsi
	nop	dword ptr [rax + rax]
.label_163:
	mov	r13, r8
	mov	r8, rax
	cmp	r8, rdx
	mov	eax, dword ptr [rsp - 8]
	cmove	eax, dword ptr [rsp - 4]
	movsxd	r10, dword ptr [r13 - 0x20]
	lea	eax, [r10 + rax]
	cmp	r8, rdx
	jne	.label_151
	test	r11d, r11d
	jle	.label_151
	mov	ecx, OFFSET FLAT:label_161
	movabs	r9, 0x7fffffffffffffff
	nop	dword ptr [rax + rax]
.label_162:
	cmp	rsi, rcx
	mov	edx, 0
	je	.label_152
	mov	edx, r12d
	sub	edx, eax
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	movsxd	rdx, edx
	imul	rdx, rdx
	cmp	qword ptr [rcx + 0x20], rsi
	je	.label_152
	movsxd	rbp, dword ptr [rcx + 0x14]
	movsxd	rbx, eax
	sub	rbx, rbp
	add	rbx, rbx
	lea	rbx, [rbx + rbx*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rdx, rbx
.label_152:
	add	rdx, qword ptr [rcx + 0x18]
	mov	ebx, eax
	sub	ebx, r11d
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	movsxd	r14, ebx
	imul	r14, r14
	shr	r14, 1
	add	r14, rdx
	cmp	r14, r9
	jge	.label_164
	mov	qword ptr [r13 - 8], rcx
	mov	dword ptr [r13 - 0x14], eax
	mov	r9, r14
.label_164:
	cmp	rsi, rcx
	je	.label_160
	add	eax, dword ptr [rcx - 0x1c]
	add	eax, dword ptr [rcx + 8]
	add	rcx, 0x28
	cmp	eax, edi
	jl	.label_162
	jmp	.label_160
	nop	word ptr cs:[rax + rax]
.label_151:
	mov	rcx, r15
	movabs	r9, 0x7fffffffffffffff
	nop	dword ptr [rax]
.label_165:
	test	rcx, rcx
	mov	edx, 0
	je	.label_159
	mov	edx, r12d
	sub	edx, eax
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	movsxd	rdx, edx
	imul	rdx, rdx
	cmp	qword ptr [rsi + rcx + 0x20], rsi
	je	.label_159
	movsxd	rbx, dword ptr [rsi + rcx + 0x14]
	movsxd	rbp, eax
	sub	rbp, rbx
	add	rbp, rbp
	lea	rbx, [rbp + rbp*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rdx, rbx
.label_159:
	add	rdx, qword ptr [rsi + rcx + 0x18]
	cmp	rdx, r9
	jge	.label_158
	lea	rbp, [rsi + rcx]
	mov	qword ptr [r13 - 8], rbp
	mov	dword ptr [r13 - 0x14], eax
	mov	r9, rdx
.label_158:
	test	rcx, rcx
	je	.label_160
	add	eax, dword ptr [rsi + rcx - 0x1c]
	add	eax, dword ptr [rsi + rcx + 8]
	add	rcx, 0x28
	cmp	eax, edi
	jl	.label_165
.label_160:
	mov	edx, OFFSET FLAT:unused_word_type
	cmp	r8, rdx
	mov	ecx, 0x1324
	jbe	.label_156
	mov	al, byte ptr [r13 - 0x40]
	test	al, 2
	jne	.label_155
	test	al, 4
	mov	ecx, 0xce4
	jne	.label_156
	mov	eax, OFFSET FLAT:label_161
	cmp	r8, rax
	mov	ecx, 0x1324
	jbe	.label_156
	test	byte ptr [r13 - 0x68], 8
	mov	ecx, 0x1324
	je	.label_156
	movsxd	rcx, dword ptr [r13 - 0x48]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	edx, OFFSET FLAT:unused_word_type
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_156
	nop	dword ptr [rax + rax]
.label_155:
	test	al, 8
	mov	ecx, 0x960
	mov	eax, 0x59164
	cmove	rcx, rax
.label_156:
	mov	al, byte ptr [r13 - 0x18]
	test	al, 1
	jne	.label_153
	test	al, 8
	je	.label_154
	add	r10, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	r10
	mov	edx, OFFSET FLAT:unused_word_type
	add	rcx, rax
	jmp	.label_154
	nop	word ptr cs:[rax + rax]
.label_153:
	add	rcx, -0x640
.label_154:
	add	rcx, r9
	mov	qword ptr [r13 - 0x10], rcx
	lea	rax, [r8 - 0x28]
	add	r15, -0x28
	cmp	rax, rdx
	jae	.label_163
.label_157:
	mov	eax, dword ptr [rsp - 0xc]
	mov	dword ptr [rsi + 8], eax
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
	#Procedure 0x4028b0

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, esi
	mov	r14, rdi
	mov	rax, qword ptr [rip + word_limit]
	mov	r15d, OFFSET FLAT:wptr
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	rcx, qword ptr [rip + wptr]
	mov	qword ptr [rax], rcx
	nop	word ptr [rax + rax]
.label_197:
	mov	rax, qword ptr [rip + wptr]
	cmp	rax, r15
	jne	.label_210
	cmp	byte ptr [rip + split],  1
	je	.label_174
	cmp	byte ptr [rip + crown],  1
	jne	.label_167
	mov	eax, dword ptr [rip + in_column]
	jmp	.label_171
.label_167:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_174
	mov	eax, dword ptr [rip + in_column]
	cmp	eax, dword ptr [rip + first_indent]
	jne	.label_171
	cmp	dword ptr [rip + other_indent],  eax
	jne	.label_176
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx*2]
	jmp	.label_171
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	eax, dword ptr [rip + first_indent]
.label_171:
	mov	dword ptr [rip + other_indent],  eax
.label_176:
	call	flush_paragraph
	mov	rax, qword ptr [rip + wptr]
.label_210:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + wptr],  rcx
	mov	byte ptr [rax], r13b
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_189
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_201:
	movsxd	rbp, r13d
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	je	.label_197
	jmp	.label_199
.label_189:
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	cmp	r13d, -1
	jne	.label_201
	mov	r13d, 0xffffffff
	call	__ctype_b_loc
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rcx, qword ptr [rip + wptr]
	mov	rax, qword ptr [rip + word_limit]
	mov	rbp, qword ptr [rax]
	sub	rcx, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rax + 8], ecx
	mov	r15, rax
	mov	eax, dword ptr [rip + in_column]
	add	eax, ecx
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [rip + in_column],  eax
	mov	rax, rcx
	shl	rax, 0x20
	movabs	rcx, 0xffffffff00000000
	add	rax, rcx
	sar	rax, 0x20
	lea	r12, [rbp + rax]
	movsx	esi, byte ptr [rbp]
	movzx	eax, byte ptr [rbp + rax]
	mov	qword ptr [rsp + 8], rax
	mov	edi, OFFSET FLAT:label_207
	mov	edx, 6
	call	memchr
	test	rax, rax
	setne	al
	mov	rcx, r15
	mov	r15b, byte ptr [rcx + 0x10]
	and	r15b, 0xfe
	or	r15b, al
	mov	byte ptr [rcx + 0x10], r15b
	mov	rax, qword ptr [rbx]
	mov	rbx, rcx
	mov	rcx, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + rcx*2]
	and	al, 4
	and	r15b, 0xfb
	or	r15b, al
	mov	byte ptr [rbx + 0x10], r15b
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	jl	.label_179
	nop	dword ptr [rax + rax]
.label_198:
	movsx	esi, byte ptr [r12]
	mov	edi, OFFSET FLAT:label_166
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_179
	dec	r12
	cmp	rbp, r12
	jb	.label_198
.label_179:
	movsx	rax, byte ptr [r12]
	mov	eax, eax
	cmp	rax, 0x40
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	add	al, al
	and	r15b, 0xfd
	or	r15b, al
	mov	byte ptr [rbx + 0x10], r15b
	mov	r15d, OFFSET FLAT:wptr
	jmp	.label_182
	nop	word ptr [rax + rax]
.label_172:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_182:
	cmp	r13d, 9
	je	.label_209
	cmp	r13d, 0x20
	jne	.label_211
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_212:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_172
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	jmp	.label_182
	nop	word ptr [rax + rax]
.label_211:
	mov	ecx, dword ptr [rip + in_column]
	mov	esi, ecx
	sub	esi, dword ptr [rsp + 4]
	mov	rax, qword ptr [rip + word_limit]
	mov	dword ptr [rax + 0xc], esi
	cmp	r13d, -1
	mov	dl, byte ptr [rax + 0x10]
	je	.label_204
	test	dl, 2
	jne	.label_191
	xor	esi, esi
	jmp	.label_192
	nop	dword ptr [rax + rax]
.label_191:
	cmp	r13d, 0xa
	jne	.label_187
.label_204:
	or	dl, 8
	mov	byte ptr [rax + 0x10], dl
	jmp	.label_194
.label_187:
	cmp	esi, 1
	setg	sil
.label_192:
	shl	sil, 3
	and	dl, 0xf7
	or	dl, sil
	mov	byte ptr [rax + 0x10], dl
	cmp	r13d, 0xa
	je	.label_194
	cmp	byte ptr [rip + uniform],  1
	jne	.label_200
	nop	word ptr cs:[rax + rax]
.label_194:
	and	dl, 8
	movzx	edx, dl
	shr	edx, 3
	inc	edx
	mov	dword ptr [rax + 0xc], edx
.label_200:
	mov	edx, OFFSET FLAT:label_205
	cmp	rax, rdx
	jne	.label_206
	cmp	byte ptr [rip + split],  1
	jne	.label_208
	mov	eax, dword ptr [rip + first_indent]
.label_173:
	mov	dword ptr [rip + other_indent],  eax
	jmp	.label_170
.label_208:
	cmp	byte ptr [rip + crown],  1
	je	.label_168
	mov	eax, dword ptr [rip + first_indent]
	cmp	byte ptr [rip + tagged],  1
	jne	.label_173
	cmp	ecx, eax
	jne	.label_168
	cmp	dword ptr [rip + other_indent],  ecx
	jne	.label_170
	xor	eax, eax
	test	ecx, ecx
	sete	al
	lea	eax, [rax + rax*2]
	jmp	.label_173
.label_168:
	mov	dword ptr [rip + other_indent],  ecx
.label_170:
	call	flush_paragraph
	mov	rax, qword ptr [rip + word_limit]
.label_206:
	add	rax, 0x28
	mov	qword ptr [rip + word_limit],  rax
	cmp	r13d, 0xa
	je	.label_177
	cmp	r13d, -1
	jne	.label_181
.label_177:
	mov	dword ptr [rip + in_column],  0
	jmp	.label_183
	nop	dword ptr [rax + rax]
.label_195:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_183:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_190
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	eax, byte ptr [rax]
.label_202:
	cmp	eax, 9
	je	.label_193
	cmp	eax, 0x20
	je	.label_195
	jmp	.label_196
	nop	
.label_193:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_183
.label_190:
	mov	rdi, r14
	call	__uflow
	jmp	.label_202
.label_196:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_203
	mov	ecx, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  ecx
	mov	rbx, qword ptr [rip + prefix]
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_180
	inc	rbx
	jmp	.label_178
.label_203:
	mov	ecx, dword ptr [rip + prefix_lead_space]
	mov	edx, dword ptr [rip + in_column]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [rip + next_prefix_indent],  edx
	jmp	.label_186
.label_175:
	mov	rdi, r14
	call	__uflow
	jmp	.label_169
	nop	dword ptr [rax]
.label_178:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_186
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_175
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	eax, byte ptr [rax]
.label_169:
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_178
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_184:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	eax, byte ptr [rax]
.label_180:
	cmp	eax, 9
	je	.label_185
	cmp	eax, 0x20
	jne	.label_186
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_188
	nop	
.label_185:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_188:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_184
	mov	rdi, r14
	call	__uflow
	jmp	.label_180
.label_186:
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
	#Procedure 0x402dc0

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r15
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + word_limit]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	rbx, rax
	je	.label_213
	call	fmt_paragraph
	mov	rsi, qword ptr [rip + label_141]
	cmp	rsi, rbx
	je	.label_220
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx, qword ptr [rsi + 0x18]
	lea	rdx, [r8 + 8]
	mov	r14, rbx
	nop	dword ptr [rax]
.label_219:
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rdi + 0x18]
	sub	rcx, rax
	cmp	rcx, rdx
	cmovl	r14, rsi
	cmovg	rcx, rdx
	lea	rdx, [rcx + 9]
	cmp	rcx, r8
	cmovge	rdx, rcx
	cmp	rdi, rbx
	mov	rcx, rax
	mov	rsi, rdi
	jne	.label_219
	jmp	.label_216
.label_213:
	mov	rdx, qword ptr [rip + wptr]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	jmp	.label_218
.label_220:
	mov	r14, rbx
.label_216:
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx, qword ptr [rip + label_141]
	jmp	.label_214
	nop	
.label_217:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_214:
	cmp	rbx, r14
	jne	.label_217
	mov	rsi, qword ptr [r14]
	mov	rbx, qword ptr [rip + wptr]
	mov	rdx, rbx
	sub	rdx, rsi
	mov	r15d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [r14]
	sub	eax, r15d
	cdqe	
	sub	rbx, rax
	mov	qword ptr [rip + wptr],  rbx
	mov	rbx, qword ptr [rip + word_limit]
	cmp	r14, rbx
	ja	.label_215
	neg	rax
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_221:
	add	qword ptr [rcx], rax
	add	rcx, 0x28
	mov	rbx, qword ptr [rip + word_limit]
	cmp	rcx, rbx
	jbe	.label_221
.label_215:
	mov	edx, 0x28
	sub	rdx, r14
	add	rdx, rbx
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsi, r14
	call	memmove
	sub	r14, r15
	movabs	rcx, 0x9999999999999999
	mov	rax, r14
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	add	rdx, rax
	lea	rax, [rdx + rdx*4]
	lea	rax, [rbx + rax*8]
	mov	qword ptr [rip + word_limit],  rax
.label_218:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	dword ptr [rip + out_column],  0
	mov	ebp, dword ptr [rip + prefix_indent]
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_222
	cmp	ebp, 8
	jl	.label_222
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	cmp	ebx, 2
	jl	.label_222
	xor	ecx, ecx
	jmp	.label_228
.label_237:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_234
	nop	dword ptr [rax]
.label_228:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_237
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_234:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_228
	jmp	.label_222
	nop	word ptr [rax + rax]
.label_225:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_222:
	cmp	eax, ebp
	jge	.label_253
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_251
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_225
.label_251:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_225
.label_253:
	mov	rdi, qword ptr [rip + prefix]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	ecx, dword ptr [rip + out_column]
	add	ecx, dword ptr [rip + prefix_length]
	mov	dword ptr [rip + out_column],  ecx
	cmp	byte ptr [rip + tabs],  1
	jne	.label_243
	mov	ebp, r14d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r14d
	and	ebp, 0xfffffff8
	cmp	ecx, ebp
	jge	.label_248
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jl	.label_226
	mov	eax, ecx
	jmp	.label_231
.label_243:
	mov	eax, ecx
	jmp	.label_231
.label_248:
	mov	eax, ecx
	jmp	.label_231
.label_233:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_223
	nop	word ptr cs:[rax + rax]
.label_226:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_233
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_223:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_226
	jmp	.label_231
	nop	word ptr [rax + rax]
.label_229:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_231:
	cmp	eax, r14d
	jge	.label_250
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_252
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_229
.label_252:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_229
.label_250:
	mov	r14, qword ptr [r15 + 0x20]
	add	r14, -0x28
	jmp	.label_232
	nop	word ptr [rax + rax]
.label_241:
	add	r15, 0x28
	mov	eax, ecx
.label_232:
	mov	rbp, qword ptr [r15 + 8]
	xor	ecx, ecx
	test	ebp, ebp
	je	.label_240
	mov	rbx, qword ptr [r15]
	neg	ebp
	jmp	.label_244
.label_247:
	movzx	esi, al
	call	__overflow
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_244:
	movzx	eax, byte ptr [rbx]
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_247
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_246:
	inc	rbx
	inc	ebp
	jne	.label_244
	mov	rbp, qword ptr [r15 + 8]
	mov	eax, dword ptr [rip + out_column]
	mov	ecx, ebp
.label_240:
	add	eax, ecx
	cmp	r15, r14
	mov	dword ptr [rip + out_column],  eax
	je	.label_227
	shr	rbp, 0x20
	add	ebp, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_235
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebx
	jge	.label_238
	cmp	eax, ebx
	jl	.label_224
	mov	ecx, eax
	jmp	.label_236
	nop	dword ptr [rax]
.label_235:
	mov	ecx, eax
	jmp	.label_236
.label_238:
	mov	ecx, eax
	jmp	.label_236
.label_239:
	mov	esi, 9
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_245
	nop	word ptr [rax + rax]
.label_224:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_239
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 9
.label_245:
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [rip + out_column],  ecx
	cmp	ecx, ebx
	mov	eax, ecx
	jl	.label_224
	jmp	.label_236
	nop	word ptr [rax + rax]
.label_249:
	inc	ecx
	mov	dword ptr [rip + out_column],  ecx
.label_236:
	cmp	ecx, ebp
	jge	.label_241
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_230
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 0x20
	jmp	.label_249
.label_230:
	mov	esi, 0x20
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_249
.label_227:
	mov	dword ptr [rip + last_line_length],  eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_242
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_242:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_259
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_255
	cmp	dword ptr [rbp], 0x20
	jne	.label_255
.label_259:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_257
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_255:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_256
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_257:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_256:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_258
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
	#Procedure 0x4033a0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_260
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_260:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_264
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_266
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_266
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_262
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_262:
	mov	rbx, r14
.label_266:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_264:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_265
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403480
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
	#Procedure 0x4034c0
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
	#Procedure 0x4034d0
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
	#Procedure 0x4034e0
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
	#Procedure 0x403520
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
	#Procedure 0x403540
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_267
	test	rdx, rdx
	je	.label_267
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_267:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403570
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
	#Procedure 0x4035f0

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
	jmp	.label_294
	nop	
.label_341:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_275
	or	al, dl
	jne	.label_275
	test	dil, 1
	jne	.label_336
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_275
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_294
	jmp	.label_275
.label_620:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_345
	test	rbp, rbp
	je	.label_347
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_347:
	mov	r14d, 1
	jmp	.label_352
.label_621:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_353
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_287
.label_345:
	xor	r14d, r14d
.label_352:
	mov	eax, OFFSET FLAT:label_353
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_393
	nop	
.label_294:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_369
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_351]
.label_622:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_378
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_318
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_623:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_389
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_389
	xor	r14d, r14d
	nop	
.label_301:
	cmp	r14, rbp
	jae	.label_268
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_268:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_301
.label_389:
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
	jmp	.label_287
.label_615:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_287
.label_618:
	mov	al, 1
.label_616:
	mov	r12b, 1
.label_619:
	test	r12b, 1
	mov	cl, 1
	je	.label_304
	mov	ecx, eax
.label_304:
	mov	al, cl
.label_617:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_307
	test	rbp, rbp
	je	.label_312
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_312:
	mov	r14d, 1
	jmp	.label_315
.label_307:
	xor	r14d, r14d
.label_315:
	mov	ecx, OFFSET FLAT:label_318
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_393:
	mov	sil, r12b
.label_287:
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
	jmp	.label_326
	nop	word ptr cs:[rax + rax]
.label_310:
	inc	r12
.label_326:
	cmp	r11, -1
	je	.label_355
	cmp	r12, r11
	jne	.label_357
	jmp	.label_359
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_363
.label_357:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_370
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_272
	cmp	r11, -1
	jne	.label_272
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_272:
	cmp	rbx, r11
	jbe	.label_381
.label_370:
	xor	esi, esi
.label_279:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_383
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_387]
.label_557:
	test	r12, r12
	jne	.label_271
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_381:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_274
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_279
	jmp	.label_291
.label_274:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_279
.label_561:
	xor	eax, eax
	cmp	r11, -1
	je	.label_298
	test	r12, r12
	jne	.label_302
	cmp	r11, 1
	je	.label_349
	xor	r13d, r13d
	jmp	.label_333
.label_550:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_309
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_291
	cmp	r8d, 2
	jne	.label_317
	mov	eax, r9d
	and	al, 1
	jne	.label_317
	cmp	r14, rbp
	jae	.label_319
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_322
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_322:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_328
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_328:
	add	r14, 3
	mov	r9b, 1
.label_317:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_334
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_334:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_340
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_340
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_340
	cmp	r14, rbp
	jae	.label_305
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_305:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_331
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_331:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_333
.label_551:
	mov	bl, 0x62
	jmp	.label_356
.label_552:
	mov	cl, 0x74
	jmp	.label_297
.label_553:
	mov	bl, 0x76
	jmp	.label_356
.label_554:
	mov	bl, 0x66
	jmp	.label_356
.label_555:
	mov	cl, 0x72
	jmp	.label_297
.label_558:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_366
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_285
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
	jae	.label_374
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_374:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_384
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_384:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_388
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_388:
	add	r14, 3
	xor	r9d, r9d
.label_366:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_333
.label_559:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_392
	cmp	r8d, 2
	jne	.label_271
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_271
	jmp	.label_285
.label_560:
	cmp	r8d, 2
	jne	.label_281
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_285
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_348
.label_383:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_293
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_306
.label_298:
	test	r12, r12
	jne	.label_316
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_316
.label_349:
	mov	dl, 1
.label_556:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_285
	xor	eax, eax
	mov	r13b, dl
.label_333:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_327
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_329
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_327:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_332
.label_329:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_338
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_343
	nop	dword ptr [rax]
.label_332:
	test	sil, sil
.label_343:
	mov	ebx, r15d
	je	.label_278
	jmp	.label_346
.label_338:
	mov	ebx, r15d
	jmp	.label_346
.label_309:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_310
	xor	r15d, r15d
	jmp	.label_271
.label_281:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_297
	xor	eax, eax
	mov	r15b, 0x5c
.label_348:
	xor	r13d, r13d
	jmp	.label_278
.label_297:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_285
.label_356:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_333
	nop	
.label_346:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_291
	cmp	r8d, 2
	jne	.label_368
	mov	eax, r9d
	and	al, 1
	jne	.label_368
	cmp	r14, rbp
	jae	.label_335
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_335:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_375
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_375:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_377
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_377:
	add	r14, 3
	mov	r9b, 1
.label_368:
	cmp	r14, rbp
	jae	.label_290
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_290:
	inc	r14
	jmp	.label_314
.label_293:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_373
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_373:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_391
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_321:
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
	je	.label_282
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_299
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_313
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_286
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_360:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_330
	bt	rsi, rdx
	jb	.label_285
.label_330:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_360
.label_286:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_320
	xor	r13d, r13d
.label_320:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_321
	jmp	.label_284
.label_340:
	xor	r13d, r13d
	jmp	.label_333
.label_316:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_333
.label_392:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_271
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_271
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_271
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_354
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_337
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_362
	cmp	r14, rbp
	jae	.label_364
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_364:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_382
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_382:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_390
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_390:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_386
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_386:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_337:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_333
.label_271:
	xor	eax, eax
.label_302:
	xor	r13d, r13d
	jmp	.label_333
.label_391:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_303:
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
	je	.label_276
	cmp	rbp, -1
	je	.label_280
	cmp	rbp, -2
	je	.label_282
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_289
	xor	r13d, r13d
.label_289:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_303
	jmp	.label_284
.label_282:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_273
	lea	rax, [r10 + r12]
.label_292:
	cmp	byte ptr [rax + rsi], 0
	je	.label_273
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_292
.label_273:
	mov	qword ptr [rsp + 0x40], rsi
.label_299:
	xor	r13d, r13d
	jmp	.label_313
.label_280:
	xor	r13d, r13d
.label_276:
	mov	r10, qword ptr [rsp + 0x28]
.label_313:
	mov	r12, qword ptr [rsp + 0x40]
.label_284:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_306:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_324
	test	al, al
	je	.label_324
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_333
.label_324:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_342
	nop	word ptr [rax + rax]
.label_300:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_342:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_296
	test	sil, 1
	je	.label_288
	cmp	r14, rbp
	jae	.label_325
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_325:
	inc	r14
	xor	esi, esi
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_296:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_291
	cmp	r8d, 2
	jne	.label_358
	mov	eax, r9d
	and	al, 1
	jne	.label_358
	cmp	r14, rbp
	jae	.label_361
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_361:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_365
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_365:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_295
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_295:
	add	r14, 3
	mov	r9b, 1
.label_358:
	cmp	r14, rbp
	jae	.label_376
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_376:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_344
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_344:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_385
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_385:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_288:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_278
	test	r9b, 1
	je	.label_350
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_394
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_270
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_270:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_283
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_283:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_350
	nop	word ptr cs:[rax + rax]
.label_394:
	mov	rbx, rcx
.label_350:
	cmp	r14, rbp
	jae	.label_300
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_300
	nop	
.label_278:
	test	r9b, 1
	je	.label_308
	and	al, 1
	jne	.label_308
	cmp	r14, rbp
	jae	.label_311
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_311:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_339
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	add	r14, 2
	xor	r9d, r9d
.label_308:
	mov	ebx, r15d
.label_314:
	cmp	r14, rbp
	jae	.label_323
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_323:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_310
.label_354:
	xor	r13d, r13d
	jmp	.label_333
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	rcx, r12
.label_363:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_341
	or	al, dl
	jne	.label_341
	mov	r11, rcx
	jmp	.label_291
.label_285:
	mov	eax, 2
.label_277:
	mov	qword ptr [rsp + 0x38], rax
.label_291:
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
.label_367:
	mov	r14, rax
.label_269:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_372
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_371
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_371
	inc	rdx
	nop	dword ptr [rax + rax]
.label_380:
	cmp	r14, rbp
	jae	.label_379
	mov	byte ptr [rcx + r14], al
.label_379:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_380
	jmp	.label_371
.label_336:
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
	jmp	.label_367
.label_372:
	mov	rcx, qword ptr [rsp + 0x10]
.label_371:
	cmp	r14, rbp
	jae	.label_269
	mov	byte ptr [rcx + r14], 0
	jmp	.label_269
.label_362:
	mov	eax, 5
	jmp	.label_277
.label_369:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404420
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
	#Procedure 0x4044f0
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
	je	.label_395
	mov	qword ptr [rax], rbx
.label_395:
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
	#Procedure 0x4045e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_396
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_398:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_398
.label_396:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_400
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_399], OFFSET FLAT:slot0
.label_400:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_397
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_397:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404690

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
	js	.label_404
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_407
	cmp	r12d, 0x7fffffff
	je	.label_402
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
	jne	.label_405
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_405:
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
.label_407:
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
	jbe	.label_403
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_406
.label_403:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_401
	mov	rdi, r14
	call	free
.label_401:
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
.label_406:
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
.label_404:
	call	abort
.label_402:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404850
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860
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
	#Procedure 0x404880
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
	#Procedure 0x4048a0
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
	je	.label_408
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
.label_408:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404910
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
	je	.label_409
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
.label_409:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980

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
	je	.label_410
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
.label_410:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0
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
	je	.label_411
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
.label_411:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
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
	#Procedure 0x404ad0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
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
	#Procedure 0x404b40

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
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
	#Procedure 0x404ba0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
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
	#Procedure 0x404c00

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
	je	.label_415
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
.label_415:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_416
	test	rdx, rdx
	je	.label_416
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_416:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d10
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_417
	test	rdx, rdx
	je	.label_417
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_417:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_418
	test	rsi, rsi
	je	.label_418
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_418:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404df0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_412]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_413]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_419
	test	rsi, rsi
	je	.label_419
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
.label_419:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70
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
	#Procedure 0x404e90
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0

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
	#Procedure 0x404ed0

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
	jne	.label_424
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_428
	cmp	ecx, 0x55
	jne	.label_420
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_420
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_420
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_420
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_420
	cmp	byte ptr [rax + 5], 0
	jne	.label_420
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_426
	mov	eax, OFFSET FLAT:label_427
	jmp	.label_423
.label_428:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_420
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_420
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_420
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_420
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_420
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_420
	cmp	byte ptr [rax + 7], 0
	je	.label_425
.label_420:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_353
	mov	eax, OFFSET FLAT:label_318
.label_423:
	cmove	rax, rcx
.label_424:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_425:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_421
	mov	eax, OFFSET FLAT:label_422
	jmp	.label_423
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0

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
	je	.label_441
	mov	edx, OFFSET FLAT:label_432
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_438
.label_441:
	mov	edx, OFFSET FLAT:label_439
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
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
	mov	esi, OFFSET FLAT:label_440
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_444
	jmp	qword ptr [(r12 * 8) + label_445]
.label_656:
	add	rsp, 8
	jmp	.label_431
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
	jmp	.label_431
.label_657:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
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
.label_658:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
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
.label_659:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
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
.label_660:
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
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_431
.label_661:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_431
.label_662:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
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
	jmp	.label_431
.label_663:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
	jmp	.label_431
.label_665:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
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
	jmp	.label_431
.label_664:
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
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_431:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_448:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_448
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_459
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_461
.label_459:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_461:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_449
	cmp	r10d, 0x29
	jae	.label_458
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_460
.label_458:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_460:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_449
	cmp	r10d, 0x29
	jae	.label_456
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_457
.label_456:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_457:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_449
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
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_449
	cmp	r10d, 0x29
	jae	.label_452
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_453
.label_452:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_453:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_449
	cmp	r10d, 0x29
	jae	.label_450
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_451
.label_450:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_451:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_449
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_449
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_449
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_449
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_449:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_462
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_462:
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
	#Procedure 0x4055b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_463
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_464
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_466
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_465
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_467
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_468
	test	rax, rax
	je	.label_467
.label_468:
	pop	rbx
	ret	
.label_467:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_469
	test	rax, rax
	je	.label_470
.label_469:
	pop	rbx
	ret	
.label_470:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_471
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_472
	test	rbx, rbx
	jne	.label_472
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_472:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_473
	test	rax, rax
	je	.label_471
.label_473:
	pop	rbx
	ret	
.label_471:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_474
	test	rbx, rbx
	jne	.label_474
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_474:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_476
	test	rax, rax
	je	.label_475
.label_476:
	pop	rbx
	ret	
.label_475:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405710
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_480
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_482
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_477
.label_480:
	test	rcx, rcx
	jne	.label_483
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_483:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_478
.label_477:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_479
	test	rbx, rbx
	jne	.label_479
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_479:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_481
	test	rax, rax
	je	.label_482
.label_481:
	pop	rbx
	ret	
.label_482:
	call	xalloc_die
.label_478:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_484
	test	rax, rax
	je	.label_485
.label_484:
	pop	rbx
	ret	
.label_485:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_488
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_490
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_487
	call	free
	xor	eax, eax
	jmp	.label_489
.label_488:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_486
	mov	qword ptr [rsi], rbx
.label_487:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_489
	test	rax, rax
	je	.label_486
.label_489:
	pop	rbx
	ret	
.label_486:
	call	xalloc_die
.label_490:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405840
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
	je	.label_492
	test	r14, r14
	je	.label_491
.label_492:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_491:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405880
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_493
	call	rpl_calloc
	test	rax, rax
	je	.label_493
	pop	rcx
	ret	
.label_493:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0

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
	je	.label_494
	test	r15, r15
	je	.label_495
.label_494:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_495:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0
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
	je	.label_497
	test	r15, r15
	je	.label_496
.label_497:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_496:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_498
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405970

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
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_502
	cmp	eax, 1
	je	.label_503
	cmp	eax, 3
	jne	.label_505
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_499
.label_503:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_499
.label_502:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_504
	cmp	rbx, r15
	jbe	.label_501
.label_504:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_500
	mov	dword ptr [rax], 0x4b
	jmp	.label_499
.label_505:
	call	__errno_location
	jmp	.label_499
.label_500:
	mov	dword ptr [rax], 0x22
.label_499:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_258
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_501:
	mov	rax, rbx
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
	.align	16
	#Procedure 0x405a40

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a70

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_524
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_520:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_520
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_514
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_526
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_512
	cmp	eax, 0x22
	jne	.label_514
	mov	ebp, 1
.label_512:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_516
	jmp	.label_518
.label_526:
	test	r14, r14
	je	.label_514
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_514
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_514
.label_516:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_518
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_513
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_508
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_508
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_508
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_521
	cmp	eax, 0x44
	je	.label_521
	cmp	eax, 0x69
	jne	.label_508
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_508
.label_521:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_508:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_513
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_515]
.label_629:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_517
.label_513:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_525
.label_630:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_506
.label_631:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_523
.label_633:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_527
.label_627:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_522
.label_628:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_523
.label_632:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_527:
	or	dl, r10b
.label_517:
	or	dl, bl
.label_523:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_519
.label_634:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_507
.label_635:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_507:
	movzx	eax, dl
.label_506:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_519
.label_636:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_522:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_519
.label_637:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_519:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_518:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_525:
	mov	r13d, r15d
.label_514:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_524:
	mov	edi, OFFSET FLAT:label_509
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_511
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_528
	test	rsi, rsi
	mov	ecx, 1
	je	.label_529
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_529
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_528:
	mov	ecx, 1
.label_529:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_530
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_532
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_530
.label_532:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_530
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_531
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_531:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_530:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_533
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_533
	test	byte ptr [rbx + 1], 1
	je	.label_533
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_533:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0

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
	jne	.label_534
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_534
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_535
.label_534:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_535:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_536
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_536:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406230

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
	je	.label_537
	cmp	r15, -2
	jb	.label_537
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_537
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_537:
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
	#Procedure 0x406290

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
	jne	.label_539
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_538
	test	cl, cl
	jne	.label_538
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_538
.label_539:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_538
	call	__errno_location
	mov	dword ptr [rax], 0
.label_538:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_541
	cmp	byte ptr [rax], 0x43
	jne	.label_543
	cmp	byte ptr [rax + 1], 0
	je	.label_540
.label_543:
	mov	esi, OFFSET FLAT:label_542
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_541
.label_540:
	xor	ebx, ebx
.label_541:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_38
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_544
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x406360

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
