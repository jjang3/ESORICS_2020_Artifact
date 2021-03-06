	.section	.text
	.align	16
	#Procedure 0x401930

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_78
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
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
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	cmp	dword ptr [rip + tcsetattr_options],  1
	jne	.label_79
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	jmp	.label_111
.label_78:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
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
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
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
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
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
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_71
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_100
	mov	ecx, OFFSET FLAT:label_101
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	mov	r8d, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_34
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_34
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_63
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_73
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402540

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_224
	call	setlocale
	mov	edi, OFFSET FLAT:label_171
	mov	esi, OFFSET FLAT:label_172
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_171
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + opterr],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	ebp, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_183
.label_232:
	mov	ebp, r12d
	mov	eax, dword ptr [rsp + 0x34]
	mov	r12, rbx
	mov	ebx, eax
	jmp	.label_183
	nop	
.label_205:
	test	rax, rax
	je	.label_232
	neg	rax
	nop	dword ptr [rax + rax]
.label_252:
	inc	r12
	inc	rax
	jne	.label_252
	jmp	.label_232
	nop	word ptr [rax + rax]
.label_183:
	mov	edi, dword ptr [rsp + 0x1c]
	sub	edi, r15d
	movsxd	rax, r15d
	lea	rsi, [r12 + rax*8]
	mov	edx, OFFSET FLAT:label_256
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_124
	cmp	eax, -1
	je	.label_126
	cmp	eax, 0xffffff7d
	je	.label_181
	cmp	eax, 0xffffff7e
	jne	.label_130
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_124:
	cmp	eax, 0x46
	je	.label_137
	cmp	eax, 0x61
	je	.label_138
	cmp	eax, 0x67
	jne	.label_130
	mov	ebx, 2
	mov	r13b, 1
	jmp	.label_145
	nop	dword ptr [rax]
.label_130:
	add	r15d, ebp
	movsxd	rax, r15d
	mov	rbp, qword ptr [r12 + rax*8]
	mov	esi, OFFSET FLAT:label_154
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_165
	mov	esi, OFFSET FLAT:label_166
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_165
	mov	dword ptr [rsp + 0x18], 0
.label_165:
	mov	dword ptr [rip + optind],  0
	mov	ebp, 1
	jmp	.label_145
.label_137:
	cmp	qword ptr [rsp + 0x28], 0
	jne	.label_175
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_145
.label_138:
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	ebx, 1
.label_145:
	movsxd	r14, dword ptr [rip + optind]
	cmp	ebp, r14d
	jge	.label_183
	mov	rcx, r12
	mov	dword ptr [rsp + 0x34], ebx
	movsxd	r12, ebp
	movsxd	rax, r15d
	add	rax, r12
	mov	rbx, rcx
	lea	rdi, [rcx + rax*8]
	lea	rdx, [r12 + 1]
	cmp	rdx, r14
	cmovl	rdx, r14
	sub	rdx, r12
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	eax, r14d
	sub	eax, ebp
	lea	rcx, [r14 - 1]
	sub	rcx, r12
	and	eax, 7
	cmp	rcx, 7
	jb	.label_205
	sub	r14, rax
	nop	dword ptr [rax + rax]
.label_216:
	add	r12, 8
	cmp	r14, r12
	jne	.label_216
	jmp	.label_205
.label_126:
	mov	r14d, ebx
	mov	eax, r13d
	mov	rbx, qword ptr [rsp + 0x38]
	and	al, bl
	test	al, 1
	jne	.label_220
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_226
	mov	eax, ebx
	or	al, r13b
	and	al, 1
	jne	.label_228
.label_226:
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_121
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_121:
	mov	eax, dword ptr [rsp + 0x18]
	or	r13b, al
	or	r13b, bl
	and	r13b, 1
	jne	.label_239
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
.label_239:
	test	rbp, rbp
	mov	ebx, r14d
	je	.label_245
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rsi, r15
	call	fd_reopen
	test	eax, eax
	js	.label_129
	xor	edi, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_125
	and	ecx, 0xfffff7ff
	xor	edi, edi
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_125
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	jne	.label_129
	test	r13b, r13b
	jne	.label_133
	mov	byte ptr [rsp + 0x16], 0
	mov	byte ptr [rsp + 0x17], 0
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_122
	mov	esi, dword ptr [rip + tcsetattr_options]
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	call	tcsetattr
	test	eax, eax
	jne	.label_129
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	jne	.label_129
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_122
	and	dword ptr [rip + label_211],  0xeff0ffff
	cmp	byte ptr [rsp + 0x16], 0
	jne	.label_212
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_122
.label_212:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_133:
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_229
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_218
.label_229:
	mov	edi, OFFSET FLAT:label_221
	call	getenv
	test	rax, rax
	je	.label_158
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_224
	mov	rdi, rax
	call	xstrtol
	test	eax, eax
	jne	.label_158
	mov	rax, qword ptr [rsp + 0x40]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_218
.label_158:
	mov	qword ptr [rsp + 0x40], 0x50
	mov	eax, 0x50
.label_218:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	cmp	ebx, 2
	je	.label_240
	cmp	ebx, 1
	je	.label_241
	test	ebx, ebx
	jne	.label_122
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	movzx	esi, byte ptr [rip + label_141]
	mov	edi, OFFSET FLAT:label_142
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_251
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_123:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
	mov	ebp, OFFSET FLAT:label_257
	jmp	.label_259
	nop	dword ptr [rax + rax]
.label_151:
	add	rbp, 0x18
.label_259:
	mov	r15, qword ptr [rbp - 0x10]
	cmp	byte ptr [r15], 0x6d
	jne	.label_128
	cmp	byte ptr [r15 + 1], 0x69
	jne	.label_128
	cmp	byte ptr [r15 + 2], 0x6e
	jne	.label_128
	cmp	byte ptr [r15 + 3], 0
	je	.label_132
	nop	word ptr [rax + rax]
.label_128:
	mov	rax, qword ptr [rbp]
	movzx	ebx, byte ptr [rax + label_188]
	cmp	bl, byte ptr [rbp - 8]
	je	.label_151
	mov	esi, OFFSET FLAT:label_146
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_151
	test	bl, bl
	mov	edx, OFFSET FLAT:label_155
	je	.label_156
	cmp	bl, 0x20
	jb	.label_157
	cmp	bl, 0x7e
	ja	.label_159
	mov	byte ptr [rip + visible.buf],  bl
	mov	eax, OFFSET FLAT:label_160
	jmp	.label_161
.label_157:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	bl, 0x40
	mov	byte ptr [rip + label_160],  bl
	jmp	.label_167
.label_159:
	cmp	bl, 0x7f
	jne	.label_173
	mov	word ptr [rip + visible.buf],  0x3f5e
.label_167:
	mov	eax, OFFSET FLAT:label_168
.label_161:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_156:
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_177
	xor	eax, eax
	mov	rsi, r15
	call	wrapf
	jmp	.label_151
.label_173:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	bl, 0xa0
	jb	.label_184
	cmp	bl, 0xff
	je	.label_191
	xor	bl, 0x80
	mov	byte ptr [rip + label_168],  bl
	mov	eax, OFFSET FLAT:label_169
	jmp	.label_161
.label_184:
	mov	byte ptr [rip + label_168],  0x5e
	add	bl, 0xc0
	mov	byte ptr [rip + label_169],  bl
	mov	eax, OFFSET FLAT:label_170
	jmp	.label_161
.label_191:
	mov	word ptr [rip + label_168],  0x3f5e
	mov	eax, OFFSET FLAT:label_170
	jmp	.label_161
.label_240:
	mov	edx, dword ptr [rip + main.mode]
	mov	ecx, dword ptr [rip + label_207]
	mov	r8d, dword ptr [rip + label_208]
	mov	r9d, dword ptr [rip + label_209]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_210
	xor	eax, eax
	call	__printf_chk
	mov	rbx, -0x20
	nop	word ptr cs:[rax + rax]
.label_230:
	movzx	edx, byte ptr [rbx + label_253]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_254
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_230
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_231
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_122
.label_241:
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	lea	rdx, [rsp + 0x20]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_243
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_244
	jmp	.label_248
.label_132:
	test	byte ptr [rip + label_209],  2
	jne	.label_249
	movzx	esi, byte ptr [rip + label_236]
	movzx	edx, byte ptr [rip + label_237]
	mov	edi, OFFSET FLAT:label_250
	xor	eax, eax
	call	wrapf
	jmp	.label_140
.label_249:
	test	r14b, 1
	jne	.label_140
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_260
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_140:
	mov	dword ptr [rip + current_col],  0
	xor	eax, eax
	mov	r14b, 1
	mov	rbx, -0xb20
	jmp	.label_127
.label_243:
	movzx	esi, word ptr [rsp + 0x20]
	movzx	edx, word ptr [rsp + 0x22]
	mov	edi, OFFSET FLAT:label_135
	xor	eax, eax
	call	wrapf
.label_244:
	movzx	esi, byte ptr [rip + label_141]
	mov	edi, OFFSET FLAT:label_142
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_150
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_131:
	mov	dword ptr [rip + current_col],  0
	mov	ebp, OFFSET FLAT:label_257
	jmp	.label_258
	nop	dword ptr [rax]
.label_185:
	add	rbp, 0x18
.label_258:
	mov	rbx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rbx], 0x6d
	jne	.label_174
	cmp	byte ptr [rbx + 1], 0x69
	jne	.label_174
	cmp	byte ptr [rbx + 2], 0x6e
	jne	.label_174
	cmp	byte ptr [rbx + 3], 0
	je	.label_176
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	esi, OFFSET FLAT:label_146
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_185
	mov	rax, qword ptr [rbp]
	movzx	eax, byte ptr [rax + label_188]
	test	al, al
	mov	edx, OFFSET FLAT:label_155
	je	.label_189
	cmp	al, 0x20
	jb	.label_195
	cmp	al, 0x7e
	ja	.label_198
	mov	byte ptr [rip + visible.buf],  al
	mov	eax, OFFSET FLAT:label_160
	jmp	.label_199
.label_195:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	al, 0x40
	mov	byte ptr [rip + label_160],  al
	jmp	.label_201
.label_198:
	cmp	al, 0x7f
	jne	.label_204
	mov	word ptr [rip + visible.buf],  0x3f5e
	nop	dword ptr [rax + rax]
.label_201:
	mov	eax, OFFSET FLAT:label_168
.label_199:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_189:
	mov	edi, OFFSET FLAT:label_177
	xor	eax, eax
	mov	rsi, rbx
	call	wrapf
	jmp	.label_185
.label_204:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	al, 0xa0
	jb	.label_206
	cmp	al, 0xff
	je	.label_261
	xor	al, 0x80
	mov	byte ptr [rip + label_168],  al
	mov	eax, OFFSET FLAT:label_169
	jmp	.label_199
.label_206:
	mov	byte ptr [rip + label_168],  0x5e
	add	al, 0xc0
	mov	byte ptr [rip + label_169],  al
	mov	eax, OFFSET FLAT:label_170
	jmp	.label_199
.label_261:
	mov	word ptr [rip + label_168],  0x3f5e
	mov	eax, OFFSET FLAT:label_170
	jmp	.label_199
.label_176:
	movzx	esi, byte ptr [rip + label_236]
	movzx	edx, byte ptr [rip + label_237]
	mov	edi, OFFSET FLAT:label_238
	xor	eax, eax
	call	wrapf
	cmp	dword ptr [rip + current_col],  0
	je	.label_136
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_242
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_136:
	mov	dword ptr [rip + current_col],  0
	mov	rbx, -0xb20
	xor	r15d, r15d
	jmp	.label_223
.label_202:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_255
	nop	dword ptr [rax]
.label_223:
	movzx	r14d, byte ptr [rbx + label_186]
	test	r14b, 8
	jne	.label_149
	mov	ebp, dword ptr [rbx + label_118]
	cmp	ebp, r15d
	je	.label_119
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_202
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_255:
	mov	dword ptr [rip + current_col],  0
	mov	r15d, ebp
.label_119:
	cmp	r15d, 5
	jae	.label_222
	mov	rax, qword ptr [rbx + label_193]
	test	rax, rax
	jne	.label_194
	mov	rax, qword ptr [rbx + label_143]
.label_194:
	cmp	r15d, 4
	je	.label_147
	movsxd	rcx, r15d
	mov	rcx, qword ptr [(rcx * 8) + label_152]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_143]
	jne	.label_153
	mov	rsi, qword ptr [rbx + label_162]
	mov	edi, OFFSET FLAT:label_163
	jmp	.label_164
	nop	word ptr cs:[rax + rax]
.label_153:
	test	r14b, 4
	je	.label_149
	mov	rsi, qword ptr [rbx + label_162]
	mov	edi, OFFSET FLAT:label_235
.label_164:
	xor	eax, eax
	call	wrapf
.label_149:
	add	rbx, 0x20
	jne	.label_223
	jmp	.label_148
.label_203:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_127:
	movsx	r15d, byte ptr [rbx + label_186]
	test	r15b, 8
	jne	.label_187
	mov	ebp, dword ptr [rbx + label_118]
	cmp	ebp, eax
	jne	.label_192
	mov	ebp, eax
	jmp	.label_197
	nop	dword ptr [rax]
.label_187:
	mov	ebp, eax
	jmp	.label_139
	nop	word ptr [rax + rax]
.label_192:
	test	r14b, 1
	jne	.label_197
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_203
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_182:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
.label_197:
	cmp	ebp, 5
	jae	.label_215
	mov	rax, qword ptr [rbx + label_193]
	test	rax, rax
	jne	.label_225
	mov	rax, qword ptr [rbx + label_143]
.label_225:
	cmp	ebp, 4
	je	.label_247
	movsxd	rcx, ebp
	mov	rcx, qword ptr [(rcx * 8) + label_152]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_143]
	jne	.label_227
	test	r15b, 2
	je	.label_139
	mov	rsi, qword ptr [rbx + label_162]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_163
	jmp	.label_233
	nop	word ptr cs:[rax + rax]
.label_227:
	and	r15d, 5
	cmp	r15d, 5
	jne	.label_139
	mov	rsi, qword ptr [rbx + label_162]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_235
.label_233:
	xor	eax, eax
	call	wrapf
.label_139:
	add	rbx, 0x20
	mov	eax, ebp
	jne	.label_127
	test	r14b, 1
	jne	.label_120
.label_148:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_246
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_120:
	mov	dword ptr [rip + current_col],  0
.label_122:
	xor	eax, eax
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_246:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_120
.label_251:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_123
.label_231:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_122
.label_150:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_131
.label_242:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_136
.label_260:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_140
.label_181:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_63
	mov	edx, OFFSET FLAT:label_37
	mov	r8d, OFFSET FLAT:label_144
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_134:
	xor	edi, edi
	call	usage
.label_129:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_248:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_222:
	call	abort
.label_147:
	mov	edi, OFFSET FLAT:label_178
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:label_180
	call	__assert_fail
.label_215:
	call	abort
.label_247:
	mov	edi, OFFSET FLAT:label_178
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 0x7a2
	mov	ecx, OFFSET FLAT:label_190
	call	__assert_fail
.label_125:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_220:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	jmp	.label_214
.label_228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	jmp	.label_214
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
.label_214:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x60], r9
	mov	r13, r8
	mov	ebx, ecx
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x1c], edi
	cmp	ebx, 2
	jl	.label_320
	lea	rax, [r13 + 8]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x48], rax
	lea	rax, [r13 + 0xc]
	mov	qword ptr [rsp + 0x38], rax
	lea	eax, [rbx - 1]
	mov	dword ptr [rsp + 0x2c], eax
	mov	r15d, 1
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_324
.label_275:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	je	.label_328
	and	eax, 0xfffffccf
	or	eax, 0x120
	mov	dword ptr [rcx], eax
	jmp	.label_308
.label_283:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_331
.label_328:
	and	eax, 0xfffffecf
	or	eax, 0x30
	mov	dword ptr [rcx], eax
	jmp	.label_308
.label_285:
	cmp	byte ptr [r13 + 1], 0x6b
	jne	.label_288
	cmp	byte ptr [r13 + 2], 0
	je	.label_335
.label_288:
	mov	esi, OFFSET FLAT:label_336
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_311
	mov	esi, OFFSET FLAT:label_340
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_343
	mov	esi, OFFSET FLAT:label_346
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_348
	mov	esi, OFFSET FLAT:label_351
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_355
	cmp	bl, 0x72
	jne	.label_357
	cmp	byte ptr [r13 + 1], 0x61
	jne	.label_357
	cmp	byte ptr [r13 + 2], 0x77
	jne	.label_357
	cmp	byte ptr [r13 + 3], 0
	je	.label_359
.label_357:
	mov	esi, OFFSET FLAT:label_361
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_359
	mov	esi, OFFSET FLAT:label_364
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_367
	mov	esi, OFFSET FLAT:label_368
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_370
	mov	esi, OFFSET FLAT:label_303
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_315
	mov	esi, OFFSET FLAT:label_371
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_315
	mov	al, 1
	cmp	bl, 0x64
	je	.label_372
	cmp	bl, 0x63
	jne	.label_374
	cmp	byte ptr [r13 + 1], 0x72
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_375
	cmp	byte ptr [r13 + 2], 0x74
	jne	.label_376
	cmp	byte ptr [r13 + 3], 0
	je	.label_380
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_284
.label_311:
	mov	r13, qword ptr [rsp + 0x10]
	test	r13, r13
	mov	byte ptr [r13 + 0x1c], 0
	mov	byte ptr [r13 + 0x21], 0
	mov	word ptr [r13 + 0x19], 0x1311
	mov	byte ptr [r13 + 0x1b], 0x1a
	mov	byte ptr [r13 + 0x1d], 0x12
	mov	byte ptr [r13 + 0x1f], 0x17
	mov	byte ptr [r13 + 0x20], 0x16
	mov	byte ptr [r13 + 0x1e], 0xf
	movabs	rax, 0x10004157f1c03
	mov	qword ptr [r13 + 0x11], rax
	mov	rbx, qword ptr [rsp + 8]
	mov	rcx, -0xb20
	je	.label_349
	nop	word ptr [rax + rax]
.label_280:
	movsx	eax, byte ptr [rcx + label_186]
	test	al, 0x10
	jne	.label_266
	test	al, 1
	jne	.label_397
	test	al, 2
	je	.label_266
	mov	edx, dword ptr [rcx + label_118]
	cmp	rdx, 4
	ja	.label_290
	mov	rax, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rdx * 8) + label_403]
.label_920:
	mov	rax, r13
	jmp	.label_272
	nop	dword ptr [rax]
.label_397:
	mov	edx, dword ptr [rcx + label_118]
	cmp	rdx, 4
	ja	.label_295
	mov	rax, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rdx * 8) + label_410]
.label_915:
	mov	rax, r13
	jmp	.label_262
.label_916:
	mov	rax, qword ptr [rsp + 0x48]
	jmp	.label_262
.label_917:
	mov	rax, qword ptr [rsp + 0x38]
.label_262:
	mov	edx, dword ptr [rcx + label_193]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rax]
	or	edx, dword ptr [rcx + label_143]
	mov	dword ptr [rax], edx
	jmp	.label_266
.label_921:
	mov	rax, qword ptr [rsp + 0x48]
	jmp	.label_272
.label_922:
	mov	rax, qword ptr [rsp + 0x38]
.label_272:
	mov	edx, dword ptr [rcx + label_193]
	mov	edi, 0xffffffff
	xor	edx, edi
	and	edx, dword ptr [rax]
	mov	esi, dword ptr [rcx + label_143]
	xor	esi, edi
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	dword ptr [rax]
.label_266:
	add	rcx, 0x20
	mov	al, 1
	jne	.label_280
	jmp	.label_284
	nop	word ptr cs:[rax + rax]
.label_349:
	movsx	eax, byte ptr [rcx + label_186]
	test	al, 0x10
	jne	.label_286
	test	al, 1
	jne	.label_289
	test	al, 2
	je	.label_286
	mov	edx, dword ptr [rcx + label_118]
	cmp	rdx, 4
	ja	.label_290
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_293]
.label_930:
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_294
.label_289:
	mov	edx, dword ptr [rcx + label_118]
	cmp	rdx, 4
	ja	.label_295
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_287]
.label_926:
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_297
.label_927:
	mov	rax, qword ptr [rsp + 0x48]
.label_297:
	mov	edx, dword ptr [rcx + label_193]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rax]
	or	edx, dword ptr [rcx + label_143]
	mov	dword ptr [rax], edx
	jmp	.label_286
.label_931:
	mov	rax, qword ptr [rsp + 0x48]
.label_294:
	mov	edx, dword ptr [rcx + label_193]
	mov	edi, 0xffffffff
	xor	edx, edi
	and	edx, dword ptr [rax]
	mov	esi, dword ptr [rcx + label_143]
	xor	esi, edi
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	
.label_286:
	add	rcx, 0x20
	mov	al, 1
	jne	.label_349
	jmp	.label_284
.label_331:
	and	eax, 0xfffffccf
	or	eax, 0x320
	mov	dword ptr [rcx], eax
	jmp	.label_308
.label_343:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_323
	or	eax, 2
	mov	dword ptr [rcx], eax
	jmp	.label_308
.label_348:
	mov	rax, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_314
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	mov	al, 1
	jmp	.label_274
.label_323:
	and	eax, 0xfffffffd
	mov	dword ptr [rcx], eax
	jmp	.label_308
.label_355:
	mov	rax, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_322
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	or	byte ptr [r13 + 4], 1
	mov	al, 1
	jmp	.label_274
.label_314:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	mov	al, 1
	jmp	.label_274
.label_335:
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [r13 + 0x13], 0x157f
	mov	al, 1
	jmp	.label_274
.label_359:
	cmp	bl, 0x72
	setne	cl
	cmp	r12b, 0x2d
	sete	al
	setne	dl
	or	dl, cl
	cmp	bl, 0x63
	setne	cl
	cmp	dl, 1
	jne	.label_333
	or	al, cl
	je	.label_333
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13], 0
	and	byte ptr [r13 + 4], 0xfe
	and	byte ptr [r13 + 0xc], 0xf8
	mov	word ptr [r13 + 0x16], 0x100
	mov	al, 1
	jmp	.label_274
.label_322:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	and	byte ptr [r13 + 4], 0xfe
	mov	al, 1
	jmp	.label_274
.label_292:
	and	eax, 0xfffffeff
	mov	dword ptr [r13], eax
	and	byte ptr [r13 + 4], 0xfb
	mov	al, 1
	jmp	.label_274
.label_367:
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_347
	or	eax, 0x800
	jmp	.label_352
.label_333:
	mov	r13, qword ptr [rsp + 0x10]
	or	dword ptr [r13], 0x526
	or	byte ptr [r13 + 4], 1
	or	byte ptr [r13 + 0xc], 3
	mov	al, 1
	jmp	.label_274
.label_315:
	mov	rax, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rax]
	cmp	r12b, 0x2d
	jne	.label_360
	and	eax, 0xfffffffb
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	and	byte ptr [r13 + 1], 0xfd
	and	byte ptr [r13 + 4], 0xfd
	mov	al, 1
	jmp	.label_274
.label_370:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_366
	or	eax, 0x1800
	mov	dword ptr [rcx], eax
	jmp	.label_308
.label_347:
	and	eax, 0xfffff7ff
.label_352:
	mov	dword ptr [r13], eax
	mov	al, 1
	jmp	.label_274
.label_360:
	or	eax, 4
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	or	byte ptr [r13 + 1], 2
	or	byte ptr [r13 + 4], 2
	mov	al, 1
	jmp	.label_274
.label_366:
	and	eax, 0xffffe7ff
	mov	dword ptr [rcx], eax
	jmp	.label_308
.label_372:
	cmp	byte ptr [r13 + 1], 0x65
	jne	.label_374
	cmp	byte ptr [r13 + 2], 0x63
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_376
	cmp	byte ptr [r13 + 3], 0
	je	.label_377
.label_375:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_284
.label_376:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_284
.label_387:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_263
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_263
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_278
	mov	rbx, -0x330
.label_390:
	mov	rsi, qword ptr [rbx + label_269]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_389
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_390
	jmp	.label_394
.label_391:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_263
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_263
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_267
	mov	rbx, -0x330
.label_408:
	mov	rsi, qword ptr [rbx + label_269]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_405
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_408
	jmp	.label_411
.label_400:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_263
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_263
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_267
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_276
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	edi, 0xffffffff
	mov	esi, eax
	jmp	.label_281
.label_395:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_263
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_263
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_267
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_276
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	esi, 0xffffffff
	mov	edi, eax
.label_281:
	mov	rdx, qword ptr [rsp + 0x58]
	call	set_window_size
	jmp	.label_267
.label_380:
	mov	rcx, qword ptr [rsp + 0x38]
	or	dword ptr [rcx], 0xa10
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_284
.label_377:
	mov	r13, qword ptr [rsp + 0x10]
	mov	byte ptr [r13 + 0x11], 3
	mov	byte ptr [r13 + 0x13], 0x7f
	mov	byte ptr [r13 + 0x14], 0x15
	or	dword ptr [r13 + 0xc], 0xa10
	and	byte ptr [r13 + 1], 0xf7
	jmp	.label_284
.label_389:
	mov	esi, dword ptr [rbx + label_304]
.label_394:
	mov	rdi, r13
	call	cfsetispeed
	jmp	.label_307
.label_405:
	mov	esi, dword ptr [rbx + label_304]
.label_411:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
.label_385:
	call	cfsetospeed
.label_307:
	mov	rax, qword ptr [rsp + 0x60]
	mov	byte ptr [rax], 1
	jmp	.label_270
.label_406:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_267
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_316
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_318
.label_316:
	mov	edi, OFFSET FLAT:label_221
	call	getenv
	test	rax, rax
	je	.label_321
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_224
	mov	rdi, rax
	lea	rcx, [rsp + 0x50]
	call	xstrtol
	test	eax, eax
	jne	.label_321
	mov	rax, qword ptr [rsp + 0x50]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_318
.label_321:
	mov	qword ptr [rsp + 0x50], 0x50
	mov	eax, 0x50
.label_318:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x58]
	call	display_window_size
	jmp	.label_267
.label_412:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_263
	mov	rax, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rax + rbp*8 + 8]
	test	r13, r13
	je	.label_263
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_276
	mov	rdi, r13
	mov	r9, rax
	call	xnumtoumax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + 0x10], al
	movzx	ecx, al
	cmp	rcx, rax
	je	.label_302
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rax + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_302:
	inc	r15d
	jmp	.label_270
.label_265:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_267
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_362
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_300
.label_362:
	mov	edi, OFFSET FLAT:label_221
	call	getenv
	test	rax, rax
	je	.label_365
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_224
	mov	rdi, rax
	lea	rcx, [rsp + 0x50]
	call	xstrtol
	test	eax, eax
	jne	.label_365
	mov	rax, qword ptr [rsp + 0x50]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_300
.label_365:
	mov	qword ptr [rsp + 0x50], 0x50
	mov	eax, 0x50
.label_300:
	mov	dword ptr [rip + max_col],  eax
	xor	esi, esi
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	call	display_speed
	jmp	.label_267
.label_273:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_267
	mov	rbx, -0x330
.label_381:
	mov	rsi, qword ptr [rbx + label_269]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_379
	add	rbx, 0x18
	mov	ebp, 0xffffffff
	jne	.label_381
	jmp	.label_383
.label_379:
	mov	ebp, dword ptr [rbx + label_304]
.label_383:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	call	cfsetispeed
	mov	rdi, r13
	mov	esi, ebp
	jmp	.label_385
	nop	
.label_324:
	movsxd	rbp, r15d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	je	.label_278
	mov	r12b, byte ptr [rax]
	lea	r14, [rax + 1]
	cmp	r12b, 0x2d
	cmovne	r14, rax
	mov	esi, OFFSET FLAT:label_166
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_392
	mov	rbx, -0xb20
	nop	dword ptr [rax]
.label_399:
	mov	r13, qword ptr [rbx + label_162]
	mov	rdi, r14
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	je	.label_398
	add	rbx, 0x20
	jne	.label_399
	xor	eax, eax
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_329
	nop	dword ptr [rax]
.label_392:
	xor	eax, eax
	cmp	r12b, 0x2d
	setne	al
	mov	dword ptr [rip + tcsetattr_options],  eax
	jmp	.label_278
.label_398:
	cmp	r12b, 0x2d
	jne	.label_407
	test	byte ptr [rbx + label_186],  4
	jne	.label_407
	xor	eax, eax
	jmp	.label_374
.label_407:
	mov	ecx, dword ptr [rbx + label_118]
	cmp	rcx, 4
	ja	.label_413
	mov	rax, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_264]
.label_908:
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_268
.label_911:
	mov	esi, OFFSET FLAT:label_271
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_275
	mov	esi, OFFSET FLAT:label_277
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_275
	mov	esi, OFFSET FLAT:label_279
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_283
	mov	bl, byte ptr [r13]
	cmp	bl, 0x65
	je	.label_285
	cmp	bl, 0x6e
	jne	.label_288
	cmp	byte ptr [r13 + 1], 0x6c
	jne	.label_288
	cmp	byte ptr [r13 + 2], 0
	jne	.label_288
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_292
	and	eax, 0xfffffe3f
	or	eax, 0x100
	mov	dword ptr [r13], eax
	mov	eax, dword ptr [r13 + 4]
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r13 + 4], eax
	mov	al, 1
	jmp	.label_274
.label_910:
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_268
.label_909:
	mov	rax, qword ptr [rsp + 0x48]
.label_268:
	mov	edx, dword ptr [rax]
	mov	rcx, qword ptr [rbx + label_193]
	not	rcx
	and	rcx, rdx
	mov	rdx, qword ptr [rbx + label_143]
	cmp	r12b, 0x2d
	jne	.label_298
	mov	esi, 0xffffffff
	xor	edx, esi
	and	ecx, edx
	jmp	.label_299
.label_298:
	or	ecx, edx
.label_299:
	mov	dword ptr [rax], ecx
.label_308:
	mov	al, 1
.label_374:
	mov	r13, qword ptr [rsp + 0x10]
.label_274:
	mov	rbx, qword ptr [rsp + 8]
.label_284:
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 1
.label_329:
	cmp	r12b, 0x2d
	setne	cl
	test	al, al
	jne	.label_305
	test	cl, cl
	je	.label_306
.label_305:
	test	al, al
	jne	.label_278
	mov	esi, OFFSET FLAT:label_310
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_310
	mov	r12d, 0
	je	.label_312
	mov	esi, OFFSET FLAT:label_296
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_296
	mov	r12d, 1
	je	.label_312
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_319
	mov	r12d, 2
	je	.label_312
	mov	esi, OFFSET FLAT:label_313
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_313
	mov	r12d, 3
	je	.label_312
	mov	esi, OFFSET FLAT:label_325
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_325
	mov	r12d, 4
	je	.label_312
	mov	esi, OFFSET FLAT:label_327
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_327
	mov	r12d, 5
	je	.label_312
	mov	esi, OFFSET FLAT:label_332
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_332
	mov	r12d, 6
	je	.label_312
	mov	esi, OFFSET FLAT:label_334
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_334
	mov	r12d, 7
	je	.label_312
	mov	esi, OFFSET FLAT:label_338
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_338
	mov	r12d, 8
	je	.label_312
	mov	esi, OFFSET FLAT:label_344
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_344
	mov	r12d, 9
	je	.label_312
	mov	esi, OFFSET FLAT:label_353
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_353
	mov	r12d, 0xa
	je	.label_312
	mov	esi, OFFSET FLAT:label_358
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_358
	mov	r12d, 0xb
	je	.label_312
	mov	esi, OFFSET FLAT:label_363
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_363
	mov	r12d, 0xc
	je	.label_312
	mov	esi, OFFSET FLAT:label_369
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_369
	mov	r12d, 0xd
	je	.label_312
	mov	esi, OFFSET FLAT:label_146
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_146
	mov	r12d, 0xe
	je	.label_312
	mov	esi, OFFSET FLAT:label_342
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_342
	mov	r12d, 0xf
	je	.label_312
	mov	esi, OFFSET FLAT:label_378
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_378
	mov	r12d, 0x10
	je	.label_312
	mov	esi, OFFSET FLAT:label_341
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_341
	mov	r12d, 0x11
	je	.label_312
	mov	esi, OFFSET FLAT:label_386
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_387
	mov	esi, OFFSET FLAT:label_388
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_391
	mov	esi, OFFSET FLAT:label_393
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_395
	mov	esi, OFFSET FLAT:label_396
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_400
	mov	esi, OFFSET FLAT:label_402
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_400
	mov	esi, OFFSET FLAT:label_404
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_406
	mov	esi, OFFSET FLAT:label_409
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_412
	mov	esi, OFFSET FLAT:label_414
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_265
	mov	rbx, -0x330
.label_309:
	mov	rsi, qword ptr [rbx + label_269]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_273
	add	rbx, 0x18
	jne	.label_309
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x70], rax
	cmp	dword ptr [r13], 0
	jne	.label_282
	mov	rcx, qword ptr [rsp + 0x70]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_282
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, r14
	je	.label_282
	cmp	byte ptr [rbx], 0x3a
	jne	.label_282
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x68], rax
	cmp	dword ptr [r13], 0
	jne	.label_282
	mov	rcx, qword ptr [rsp + 0x68]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_282
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	je	.label_282
	cmp	byte ptr [rbp], 0x3a
	jne	.label_282
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	r12, rax
	cmp	dword ptr [r13], 0
	jne	.label_282
	mov	rcx, r12
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_282
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	je	.label_282
	cmp	byte ptr [rbx], 0x3a
	jne	.label_282
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_282
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_282
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbx
	je	.label_282
	cmp	byte ptr [rcx], 0x3a
	jne	.label_282
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	dword ptr [rdx], esi
	mov	rsi, qword ptr [rsp + 0x68]
	mov	dword ptr [rdx + 4], esi
	mov	dword ptr [rdx + 8], r12d
	mov	dword ptr [rdx + 0xc], eax
	xor	ebx, ebx
.label_330:
	mov	rbp, rcx
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_282
	cmp	rbx, 0x1f
	mov	dl, 0x3a
	jne	.label_326
	xor	edx, edx
.label_326:
	movzx	ecx, al
	cmp	rcx, rax
	jne	.label_282
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbp
	je	.label_282
	cmp	byte ptr [rcx], dl
	jne	.label_282
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rbx + 0x11], al
	inc	rbx
	cmp	rbx, 0x20
	jb	.label_330
	jmp	.label_270
.label_312:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_263
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_263
	cmp	byte ptr [rdi], 0x6d
	jne	.label_337
	cmp	byte ptr [rdi + 1], 0x69
	jne	.label_337
	cmp	byte ptr [rdi + 2], 0x6e
	jne	.label_337
	cmp	byte ptr [rdi + 3], 0
	je	.label_339
.label_337:
	mov	esi, OFFSET FLAT:label_341
	call	strcmp
	test	eax, eax
	je	.label_339
	movzx	ebx, byte ptr [rbp]
	test	rbx, rbx
	je	.label_345
	movzx	r14d, byte ptr [rbp + 1]
	test	r14, r14
	je	.label_345
	cmp	bl, 0x5e
	jne	.label_350
	cmp	r14b, 0x2d
	jne	.label_350
	cmp	byte ptr [rbp + 2], 0
	mov	eax, 0
	je	.label_354
.label_350:
	mov	esi, OFFSET FLAT:label_356
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_354
	cmp	bl, 0x5e
	jne	.label_339
	cmp	r14b, 0x3f
	mov	eax, 0x7f
	je	.label_354
	and	r14d, 0x9f
	mov	rax, r14
	jmp	.label_354
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0xff
	mov	r8d, OFFSET FLAT:label_276
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	jmp	.label_354
.label_345:
	mov	rax, rbx
.label_354:
	inc	r15d
	lea	rcx, [r12 + r12*2]
	mov	rcx, qword ptr [(rcx * 8) + label_257]
	mov	byte ptr [r13 + rcx + 0x11], al
.label_270:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 1
.label_267:
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_278:
	inc	r15d
	cmp	r15d, ebx
	jl	.label_324
.label_320:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	dec	r14
	jmp	.label_382
.label_263:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
.label_401:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_382:
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_413:
	call	abort
.label_918:
	mov	edi, OFFSET FLAT:label_178
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:label_301
	call	__assert_fail
.label_295:
	call	abort
.label_923:
	mov	edi, OFFSET FLAT:label_178
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 0x8d1
	mov	ecx, OFFSET FLAT:label_301
	call	__assert_fail
.label_290:
	call	abort
.label_282:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	jmp	.label_401
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_415
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_419
	mov	qword ptr [rsp], 0
.label_415:
	test	ebx, ebx
	js	.label_416
	mov	word ptr [rsp], bx
.label_416:
	test	ebp, ebp
	js	.label_418
	mov	word ptr [rsp + 2], bp
.label_418:
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5414
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_417
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_417:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_419:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	esi, r15d
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x404490

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebp, edi
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_421
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	jne	.label_422
	test	bpl, bpl
	jne	.label_420
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_421:
	mov	eax, OFFSET FLAT:label_135
	mov	edi, OFFSET FLAT:label_423
	test	bpl, bpl
	cmovne	rdi, rax
	movzx	esi, word ptr [rsp + 8]
	movzx	edx, word ptr [rsp + 0xa]
	xor	eax, eax
	call	wrapf
	test	bpl, bpl
	jne	.label_420
	mov	dword ptr [rip + current_col],  0
.label_420:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_422:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404560

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_442
	mov	rdi, rbx
	call	cfgetispeed
	mov	ebp, eax
	mov	rdi, rbx
	call	cfgetospeed
	cmp	ebp, eax
	jne	.label_445
.label_442:
	mov	eax, OFFSET FLAT:label_432
	mov	ebp, OFFSET FLAT:label_433
	test	r12b, r12b
	cmovne	rbp, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_427
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_430:
	cmp	dword ptr [rdx], eax
	je	.label_425
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_428
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_430
	jmp	.label_436
.label_445:
	mov	eax, OFFSET FLAT:label_439
	mov	r14d, OFFSET FLAT:label_440
	test	r12b, r12b
	cmovne	r14, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_427
	xor	r15d, r15d
.label_429:
	cmp	dword ptr [rdx], eax
	je	.label_426
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_437
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_429
	jmp	.label_438
.label_425:
	dec	rcx
.label_428:
	lea	rax, [rcx + rcx*2]
	mov	rsi, qword ptr [(rax * 8) + label_431]
.label_436:
	xor	eax, eax
	mov	rdi, rbp
	call	wrapf
	jmp	.label_444
.label_426:
	dec	rcx
.label_437:
	lea	rax, [rcx + rcx*2]
	mov	r15, qword ptr [(rax * 8) + label_431]
.label_438:
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	esi, OFFSET FLAT:label_427
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_441:
	cmp	dword ptr [rsi], eax
	je	.label_446
	cmp	dword ptr [rsi + 0x18], eax
	je	.label_443
	add	rcx, 2
	add	rsi, 0x30
	cmp	rcx, 0x23
	jne	.label_441
	jmp	.label_434
.label_446:
	dec	rcx
.label_443:
	lea	rax, [rcx + rcx*2]
	mov	rdx, qword ptr [(rax * 8) + label_431]
.label_434:
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	call	wrapf
.label_444:
	test	r12b, r12b
	jne	.label_435
	mov	dword ptr [rip + current_col],  0
.label_435:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbx
	sub	rsp, 0xe0
	mov	rbx, rdi
	test	al, al
	je	.label_451
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0xa0], xmm4
	movaps	xmmword ptr [rsp + 0xb0], xmm5
	movaps	xmmword ptr [rsp + 0xc0], xmm6
	movaps	xmmword ptr [rsp + 0xd0], xmm7
.label_451:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x38], rsi
	lea	rax, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x14], 0x30
	mov	dword ptr [rsp + 0x10], 8
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	esi, 1
	mov	rdx, rbx
	call	__vasprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	js	.label_447
	mov	eax, dword ptr [rip + current_col]
	test	eax, eax
	jle	.label_449
	mov	esi, dword ptr [rip + max_col]
	sub	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x30]
	cmp	esi, ebx
	jge	.label_448
	cmp	rcx, rdx
	jae	.label_453
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rax
	mov	byte ptr [rcx], 0xa
	mov	dword ptr [rip + current_col],  0
	jmp	.label_449
.label_448:
	cmp	rcx, rdx
	jae	.label_452
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_450:
	inc	eax
	mov	dword ptr [rip + current_col],  eax
.label_449:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	dword ptr [rip + current_col],  ebx
	add	rsp, 0xe0
	pop	rbx
	ret	
.label_453:
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [rip + current_col],  0
	jmp	.label_449
.label_452:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + current_col]
	jmp	.label_450
.label_447:
	call	xalloc_die
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404810
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404820
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_459
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_456
	cmp	dword ptr [rbp], 0x20
	jne	.label_456
.label_459:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_455
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_454
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_455:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_454:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_458
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
	#Procedure 0x4048f0

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
	je	.label_460
	test	ebx, ebx
	js	.label_460
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
	jmp	.label_461
.label_460:
	mov	eax, ebx
.label_461:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_465
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_464
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_462
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_464
	mov	esi, OFFSET FLAT:label_467
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_463
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_463:
	mov	rbx, r14
.label_464:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_465:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_466
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a00
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
	#Procedure 0x404a40
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
	#Procedure 0x404a50
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
	#Procedure 0x404a60
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
	#Procedure 0x404aa0
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
	#Procedure 0x404ac0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_468
	test	rdx, rdx
	je	.label_468
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_468:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0
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
	#Procedure 0x404b70

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
	jmp	.label_499
	nop	
.label_497:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_476
	or	al, dl
	jne	.label_476
	test	dil, 1
	jne	.label_495
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_476
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_499
	jmp	.label_476
.label_854:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_505
	test	rbp, rbp
	je	.label_565
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_565:
	mov	r14d, 1
	jmp	.label_509
.label_855:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_512
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_513
.label_505:
	xor	r14d, r14d
.label_509:
	mov	eax, OFFSET FLAT:label_512
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_534
	nop	
.label_499:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_532
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_541]
.label_856:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_547
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_473
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_857:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_559
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_559
	xor	r14d, r14d
	nop	
.label_560:
	cmp	r14, rbp
	jae	.label_567
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_567:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_560
.label_559:
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
	jmp	.label_513
.label_849:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_513
.label_852:
	mov	al, 1
.label_850:
	mov	r12b, 1
.label_853:
	test	r12b, 1
	mov	cl, 1
	je	.label_589
	mov	ecx, eax
.label_589:
	mov	al, cl
.label_851:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_590
	test	rbp, rbp
	je	.label_588
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_588:
	mov	r14d, 1
	jmp	.label_469
.label_590:
	xor	r14d, r14d
.label_469:
	mov	ecx, OFFSET FLAT:label_473
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_534:
	mov	sil, r12b
.label_513:
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
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_483:
	inc	r12
.label_481:
	cmp	r11, -1
	je	.label_520
	cmp	r12, r11
	jne	.label_523
	jmp	.label_525
	nop	word ptr cs:[rax + rax]
.label_520:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_519
.label_523:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_533
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_537
	cmp	r11, -1
	jne	.label_537
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_537:
	cmp	rbx, r11
	jbe	.label_552
.label_533:
	xor	esi, esi
.label_572:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_553
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_556]
.label_870:
	test	r12, r12
	jne	.label_472
	jmp	.label_561
	nop	word ptr cs:[rax + rax]
.label_552:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_569
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_572
	jmp	.label_474
.label_569:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_572
.label_874:
	xor	eax, eax
	cmp	r11, -1
	je	.label_583
	test	r12, r12
	jne	.label_587
	cmp	r11, 1
	je	.label_561
	xor	r13d, r13d
	jmp	.label_492
.label_863:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_592
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_474
	cmp	r8d, 2
	jne	.label_471
	mov	eax, r9d
	and	al, 1
	jne	.label_471
	cmp	r14, rbp
	jae	.label_504
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_504:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_477
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_477:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_485
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_485:
	add	r14, 3
	mov	r9b, 1
.label_471:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_493
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_493:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_503
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_503
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_503
	cmp	r14, rbp
	jae	.label_563
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_563:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_582
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_582:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_492
.label_864:
	mov	bl, 0x62
	jmp	.label_521
.label_865:
	mov	cl, 0x74
	jmp	.label_514
.label_866:
	mov	bl, 0x76
	jmp	.label_521
.label_867:
	mov	bl, 0x66
	jmp	.label_521
.label_868:
	mov	cl, 0x72
	jmp	.label_514
.label_871:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_530
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_480
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
	jae	.label_542
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_542:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_554
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_554:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_558
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_558:
	add	r14, 3
	xor	r9d, r9d
.label_530:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_492
.label_872:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_564
	cmp	r8d, 2
	jne	.label_472
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_472
	jmp	.label_480
.label_873:
	cmp	r8d, 2
	jne	.label_574
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_480
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_579
.label_553:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_581
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_566
.label_583:
	test	r12, r12
	jne	.label_470
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_470
.label_561:
	mov	dl, 1
.label_869:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_480
	xor	eax, eax
	mov	r13b, dl
.label_492:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_482
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_486
	jmp	.label_490
	nop	word ptr cs:[rax + rax]
.label_482:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_490
.label_486:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_496
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_501
	nop	dword ptr [rax]
.label_490:
	test	sil, sil
.label_501:
	mov	ebx, r15d
	je	.label_517
	jmp	.label_507
.label_496:
	mov	ebx, r15d
	jmp	.label_507
.label_592:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_483
	xor	r15d, r15d
	jmp	.label_472
.label_574:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_514
	xor	eax, eax
	mov	r15b, 0x5c
.label_579:
	xor	r13d, r13d
	jmp	.label_517
.label_514:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_480
.label_521:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_492
	nop	
.label_507:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_474
	cmp	r8d, 2
	jne	.label_531
	mov	eax, r9d
	and	al, 1
	jne	.label_531
	cmp	r14, rbp
	jae	.label_536
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_536:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_562
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_562:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_546
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_546:
	add	r14, 3
	mov	r9b, 1
.label_531:
	cmp	r14, rbp
	jae	.label_551
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_551:
	inc	r14
	jmp	.label_489
.label_581:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_557
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_557:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_502
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_494:
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
	je	.label_575
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_584
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_491
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_593
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_488:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_475
	bt	rsi, rdx
	jb	.label_480
.label_475:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_488
.label_593:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_538
	xor	r13d, r13d
.label_538:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_494
	jmp	.label_539
.label_503:
	xor	r13d, r13d
	jmp	.label_492
.label_470:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_492
.label_564:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_472
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_472
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_472
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_518
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_487
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_527
	cmp	r14, rbp
	jae	.label_528
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_528:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_535
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_535:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_500
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_500:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_508
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_508:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_487:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_492
.label_472:
	xor	eax, eax
.label_587:
	xor	r13d, r13d
	jmp	.label_492
.label_502:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_484:
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
	je	.label_570
	cmp	rbp, -1
	je	.label_573
	cmp	rbp, -2
	je	.label_575
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_577
	xor	r13d, r13d
.label_577:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_484
	jmp	.label_539
.label_575:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_543
	lea	rax, [r10 + r12]
.label_511:
	cmp	byte ptr [rax + rsi], 0
	je	.label_543
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_511
.label_543:
	mov	qword ptr [rsp + 0x40], rsi
.label_584:
	xor	r13d, r13d
	jmp	.label_491
.label_573:
	xor	r13d, r13d
.label_570:
	mov	r10, qword ptr [rsp + 0x28]
.label_491:
	mov	r12, qword ptr [rsp + 0x40]
.label_539:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_566:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_479
	test	al, al
	je	.label_479
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_492
.label_479:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_498
	nop	word ptr [rax + rax]
.label_585:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_498:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_506
	test	sil, 1
	je	.label_515
	cmp	r14, rbp
	jae	.label_540
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_540:
	inc	r14
	xor	esi, esi
	jmp	.label_515
	nop	word ptr cs:[rax + rax]
.label_506:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_474
	cmp	r8d, 2
	jne	.label_524
	mov	eax, r9d
	and	al, 1
	jne	.label_524
	cmp	r14, rbp
	jae	.label_526
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_526:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_529
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_529:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_578
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_578:
	add	r14, 3
	mov	r9b, 1
.label_524:
	cmp	r14, rbp
	jae	.label_545
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_545:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_522
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_522:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_555
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_555:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_515:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_517
	test	r9b, 1
	je	.label_516
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_580
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_568
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_568:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_576
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_576:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_516
	nop	word ptr cs:[rax + rax]
.label_580:
	mov	rbx, rcx
.label_516:
	cmp	r14, rbp
	jae	.label_585
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_585
	nop	
.label_517:
	test	r9b, 1
	je	.label_591
	and	al, 1
	jne	.label_591
	cmp	r14, rbp
	jae	.label_594
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_594:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_586
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_586:
	add	r14, 2
	xor	r9d, r9d
.label_591:
	mov	ebx, r15d
.label_489:
	cmp	r14, rbp
	jae	.label_478
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_478:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_483
.label_518:
	xor	r13d, r13d
	jmp	.label_492
	nop	word ptr cs:[rax + rax]
.label_525:
	mov	rcx, r12
.label_519:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_497
	or	al, dl
	jne	.label_497
	mov	r11, rcx
	jmp	.label_474
.label_480:
	mov	eax, 2
.label_571:
	mov	qword ptr [rsp + 0x38], rax
.label_474:
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
.label_510:
	mov	r14, rax
.label_550:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_476:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_595
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_544
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_544
	inc	rdx
	nop	dword ptr [rax + rax]
.label_549:
	cmp	r14, rbp
	jae	.label_548
	mov	byte ptr [rcx + r14], al
.label_548:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_549
	jmp	.label_544
.label_495:
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
	jmp	.label_510
.label_595:
	mov	rcx, qword ptr [rsp + 0x10]
.label_544:
	cmp	r14, rbp
	jae	.label_550
	mov	byte ptr [rcx + r14], 0
	jmp	.label_550
.label_527:
	mov	eax, 5
	jmp	.label_571
.label_532:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4059a0
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
	#Procedure 0x405a70
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
	je	.label_596
	mov	qword ptr [rax], rbx
.label_596:
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
	#Procedure 0x405b60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_597
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_599:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_599
.label_597:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_601
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_600], OFFSET FLAT:slot0
.label_601:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_598
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_598:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c10

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
	js	.label_605
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_608
	cmp	r12d, 0x7fffffff
	je	.label_603
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
	jne	.label_606
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_606:
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
.label_608:
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
	jbe	.label_604
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_607
.label_604:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_602
	mov	rdi, r14
	call	free
.label_602:
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
.label_607:
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
.label_605:
	call	abort
.label_603:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0
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
	#Procedure 0x405e00
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
	#Procedure 0x405e20
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
	je	.label_609
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
.label_609:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e90
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
	je	.label_610
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
.label_610:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00
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
	je	.label_611
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
.label_611:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f70
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
	je	.label_612
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
.label_612:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
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
	#Procedure 0x406050
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
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
	#Procedure 0x4060c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
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
	#Procedure 0x406120
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
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
	#Procedure 0x406180

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
	je	.label_616
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
.label_616:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_617
	test	rdx, rdx
	je	.label_617
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_617:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x406290
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_618
	test	rdx, rdx
	je	.label_618
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_618:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406300
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_619
	test	rsi, rsi
	je	.label_619
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_619:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406370
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_613]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_614]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_615]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_620
	test	rsi, rsi
	je	.label_620
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
.label_620:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063f0
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
	#Procedure 0x406410
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406430

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
	#Procedure 0x406450

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
	jne	.label_625
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_629
	cmp	ecx, 0x55
	jne	.label_621
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_621
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_621
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_621
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_621
	cmp	byte ptr [rax + 5], 0
	jne	.label_621
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_627
	mov	eax, OFFSET FLAT:label_628
	jmp	.label_624
.label_629:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_621
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_621
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_621
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_621
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_621
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_621
	cmp	byte ptr [rax + 7], 0
	je	.label_626
.label_621:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_512
	mov	eax, OFFSET FLAT:label_473
.label_624:
	cmove	rax, rcx
.label_625:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_626:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_622
	mov	eax, OFFSET FLAT:label_623
	jmp	.label_624
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520

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
	je	.label_642
	mov	edx, OFFSET FLAT:label_633
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_639
.label_642:
	mov	edx, OFFSET FLAT:label_640
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_639:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_644
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
	mov	esi, OFFSET FLAT:label_641
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_645
	jmp	qword ptr [(r12 * 8) + label_646]
.label_970:
	add	rsp, 8
	jmp	.label_632
.label_645:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_636
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
	jmp	.label_632
.label_971:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_631
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
.label_972:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_637
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
.label_973:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_634
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
.label_974:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_648
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
	jmp	.label_632
.label_975:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_647
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
	jmp	.label_632
.label_976:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_630
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
	jmp	.label_632
.label_977:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_635
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
	jmp	.label_632
.label_979:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_638
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
	jmp	.label_632
.label_978:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_643
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
.label_632:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406880
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_649:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_649
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_660
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_662
.label_660:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_662:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_650
	cmp	r10d, 0x29
	jae	.label_659
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_661
.label_659:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_661:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_650
	cmp	r10d, 0x29
	jae	.label_657
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_658
.label_657:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_658:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_650
	cmp	r10d, 0x29
	jae	.label_655
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_656
.label_655:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_656:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_650
	cmp	r10d, 0x29
	jae	.label_653
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_654
.label_653:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_654:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_650
	cmp	r10d, 0x29
	jae	.label_651
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_652
.label_651:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_652:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_650
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_650
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_650
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_650
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_650:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406aa0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_663
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_663:
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
	#Procedure 0x406b30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_664
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_665
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_667
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bb0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_668
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_669
	test	rax, rax
	je	.label_668
.label_669:
	pop	rbx
	ret	
.label_668:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bf0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_670
	test	rax, rax
	je	.label_671
.label_670:
	pop	rbx
	ret	
.label_671:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_672
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_673
	test	rbx, rbx
	jne	.label_673
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_673:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_674
	test	rax, rax
	je	.label_672
.label_674:
	pop	rbx
	ret	
.label_672:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c60

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_675
	test	rbx, rbx
	jne	.label_675
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_675:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_677
	test	rax, rax
	je	.label_676
.label_677:
	pop	rbx
	ret	
.label_676:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406c90
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_681
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_683
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_678
.label_681:
	test	rcx, rcx
	jne	.label_684
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_684:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_679
.label_678:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_680
	test	rbx, rbx
	jne	.label_680
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_680:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_682
	test	rax, rax
	je	.label_683
.label_682:
	pop	rbx
	ret	
.label_683:
	call	xalloc_die
.label_679:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d30
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_685
	test	rax, rax
	je	.label_686
.label_685:
	pop	rbx
	ret	
.label_686:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d50
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_689
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_691
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_688
	call	free
	xor	eax, eax
	jmp	.label_690
.label_689:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_687
	mov	qword ptr [rsi], rbx
.label_688:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_690
	test	rax, rax
	je	.label_687
.label_690:
	pop	rbx
	ret	
.label_687:
	call	xalloc_die
.label_691:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406dc0
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
	je	.label_693
	test	r14, r14
	je	.label_692
.label_693:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_692:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e00
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_694
	call	rpl_calloc
	test	rax, rax
	je	.label_694
	pop	rcx
	ret	
.label_694:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e30

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
	je	.label_695
	test	r15, r15
	je	.label_696
.label_695:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_696:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e70
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
	je	.label_698
	test	r15, r15
	je	.label_697
.label_698:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_697:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ec0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_699
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406ef0

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
	je	.label_703
	cmp	eax, 1
	je	.label_704
	cmp	eax, 3
	jne	.label_706
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_700
.label_704:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_700
.label_703:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_705
	cmp	rbx, r15
	jbe	.label_702
.label_705:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_701
	mov	dword ptr [rax], 0x4b
	jmp	.label_700
.label_706:
	call	__errno_location
	jmp	.label_700
.label_701:
	mov	dword ptr [rax], 0x22
.label_700:
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
	mov	edx, OFFSET FLAT:label_458
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_702:
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
	#Procedure 0x406fc0
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
	#Procedure 0x406ff0

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_740
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_717
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_718
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_721
	mov	ebp, 1
.label_718:
	test	r14, r14
	je	.label_723
	mov	ebx, ebp
	jmp	.label_758
.label_717:
	mov	ebp, 4
	test	r14, r14
	je	.label_721
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_721
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	r12d, 1
	test	rax, rax
	je	.label_721
.label_758:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_741
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_726
	mov	edi, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_707
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_707
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	edi, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_707
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	edi, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_710
	cmp	eax, 0x44
	je	.label_710
	cmp	eax, 0x69
	jne	.label_707
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rdi, [rax + rax + 1]
	mov	r8d, 0x400
	jmp	.label_707
.label_723:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	jmp	.label_721
.label_710:
	mov	edi, 2
	mov	r8d, 0x3e8
.label_707:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_726
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r14, r12
	jmp	qword ptr [(r13 * 8) + label_730]
.label_945:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_737
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_737:
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_750
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rbp, r9
.label_750:
	or	r11d, ecx
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_757
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_757:
	or	ecx, r11d
	jmp	.label_711
.label_726:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	ebx, 2
	jmp	.label_712
.label_946:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	cmp	r12, rax
	mov	ecx, 1
	jl	.label_711
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, r12
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
	jmp	.label_711
.label_947:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	rbp, rax
	cmp	r12, rbp
	mov	ecx, 1
	mov	rsi, r14
	mov	r10d, 1
	jl	.label_733
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	r10d, r10d
	cmp	rax, r12
	setl	r10b
	cmovl	rsi, r9
.label_733:
	cmp	rsi, rbp
	jl	.label_742
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_742:
	or	ecx, r10d
	jmp	.label_711
.label_949:
	mov	r13, rdi
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_751
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_751:
	cmp	rsi, r10
	mov	rdi, r14
	jl	.label_709
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rdi, r9
.label_709:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_715
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_715:
	or	ebp, r11d
	cmp	rsi, r10
	jl	.label_725
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_725:
	or	ecx, ebp
	mov	rdi, r13
	jmp	.label_711
.label_943:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_731
	mov	r14, r12
	shl	r14, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_738
.label_944:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_746
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_746:
	mov	qword ptr [rsp + 0x18], rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_759
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_759:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_714
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_714:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_722
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_722:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	mov	rdi, r14
	mov	r12d, 1
	jl	.label_734
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rbp
	imul	rdi, r8
	xor	r12d, r12d
	cmp	rax, rbp
	setl	r12b
	cmovl	rdi, r9
.label_734:
	or	r12d, r11d
	cmp	rdi, r10
	jl	.label_744
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_744:
	or	ecx, r12d
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_711
.label_948:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_754
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_754:
	mov	r12, rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_728
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_728:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_719
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_719:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_732
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_732:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_739
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_739:
	or	ecx, r11d
	mov	rdi, r12
	jmp	.label_711
.label_950:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_760
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_760:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_729
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_729:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_716
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_716:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_727
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_727:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_752
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_752:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_735
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_735:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	r11d, 1
	jl	.label_756
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbp
	imul	rsi, r8
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_756:
	or	r11d, r12d
	cmp	rsi, r10
	jl	.label_713
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_713:
	or	ecx, r11d
	jmp	.label_711
.label_951:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_720
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_720:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_736
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_736:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_743
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_743:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_753
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_753:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_708
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_708:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_755
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_755:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_724
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_724:
	or	ecx, r12d
	jmp	.label_711
.label_952:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_731
	mov	r14, r12
	shl	r14, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_738
.label_953:
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_745
.label_731:
	inc	r9
	mov	ecx, 1
	mov	r14, r9
	jmp	.label_711
.label_745:
	lea	r14, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_738:
	xor	ecx, ecx
	cmp	r12, rax
	setg	cl
	cmovg	r14, r9
.label_711:
	or	ecx, ebx
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + rdi]
	mov	qword ptr [r15], rax
	lea	ebx, [rcx + 2]
	cmp	byte ptr [rdx + rdi], 0
	cmove	ebx, ecx
	mov	r12, r14
.label_741:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_712:
	mov	ebp, ebx
.label_721:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_740:
	mov	edi, OFFSET FLAT:label_747
	mov	esi, OFFSET FLAT:label_748
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_749
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407940

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
	jae	.label_770
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_763:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_763
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_761
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
	je	.label_773
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_779
	cmp	eax, 0x22
	jne	.label_761
	mov	ebp, 1
.label_779:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_766
	jmp	.label_767
.label_773:
	test	r14, r14
	je	.label_761
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_761
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_761
.label_766:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_767
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_774
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_762
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_762
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_762
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_764
	cmp	eax, 0x44
	je	.label_764
	cmp	eax, 0x69
	jne	.label_762
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_762
.label_764:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_762:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_774
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_780]
.label_1004:
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
	jmp	.label_781
.label_774:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_771
.label_1005:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_775
.label_1006:
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
	jmp	.label_768
.label_1008:
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
	jmp	.label_769
.label_1002:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_765
.label_1003:
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
	jmp	.label_768
.label_1007:
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
.label_769:
	or	dl, r10b
.label_781:
	or	dl, bl
.label_768:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_772
.label_1009:
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
	jmp	.label_776
.label_1010:
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
.label_776:
	movzx	eax, dl
.label_775:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_772
.label_1011:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_765:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_772
.label_1012:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_772:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_767:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_771:
	mov	r13d, r15d
.label_761:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_770:
	mov	edi, OFFSET FLAT:label_747
	mov	esi, OFFSET FLAT:label_777
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_778
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_782
	test	rsi, rsi
	mov	ecx, 1
	je	.label_783
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_783
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_782:
	mov	ecx, 1
.label_783:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fd0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_798
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_798:
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
	ja	.label_788
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_800
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_789
	test	esi, esi
	jne	.label_788
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_803
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_804
.label_788:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_784
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_789
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_791
.label_800:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_794
.label_789:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_795
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_796
.label_795:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_796:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_797:
	call	fcntl
.label_794:
	mov	ebp, eax
.label_785:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_791:
	cmp	eax, 6
	jne	.label_784
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_787
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_802
.label_784:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_790
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_793
.label_803:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_804:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_797
.label_787:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_802:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_801
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_786
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_786
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_785
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_792
.label_786:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_785
.label_790:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_793:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_794
.label_801:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_792:
	test	al, al
	je	.label_785
	test	ebp, ebp
	js	.label_785
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_799
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_785
.label_799:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_785
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408270

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
	je	.label_805
	cmp	r15, -2
	jb	.label_805
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_805
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_805:
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
	#Procedure 0x4082d0

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
	jne	.label_807
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_806
	test	cl, cl
	jne	.label_806
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_806
.label_807:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_806
	call	__errno_location
	mov	dword ptr [rax], 0
.label_806:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408330

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_809
	cmp	byte ptr [rax], 0x43
	jne	.label_811
	cmp	byte ptr [rax + 1], 0
	je	.label_808
.label_811:
	mov	esi, OFFSET FLAT:label_810
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_809
.label_808:
	xor	ebx, ebx
.label_809:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408370

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_224
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_812
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_813
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_814
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_813
.label_814:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_813
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_815
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_815:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_813:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_816
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_816
	test	byte ptr [rbx + 1], 1
	je	.label_816
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_816:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408460

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
	jne	.label_817
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_817
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_818
.label_817:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_818:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_819
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_819:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4084d0

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
