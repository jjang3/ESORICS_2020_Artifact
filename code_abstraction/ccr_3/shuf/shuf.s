	.section	.text
	.align	32
	#Procedure 0x401ba0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_9
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
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_22:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dd0

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
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_94
	call	setlocale
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_121
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_35
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 0x18], -1
	mov	byte ptr [rsp + 7], 0xa
	xor	ecx, ecx
	mov	r14d, 0
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x30], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
.label_902:
	mov	qword ptr [rsp + 0x28], rcx
	mov	al, byte ptr [rsp + 7]
	mov	bl, al
.label_903:
	mov	eax, ebx
	mov	byte ptr [rsp + 7], al
	mov	rbx, r14
.label_39:
	mov	r14, rbx
	mov	rbx, r13
.label_32:
	mov	r13, rbx
	jmp	.label_51
.label_118:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, rax
	cmovae	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	nop	dword ptr [rax]
.label_51:
	mov	cl, r12b
.label_898:
	mov	r12b, cl
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_59
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_66
	add	eax, -0x65
	cmp	eax, 0x1b
	ja	.label_68
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_71]
.label_899:
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], rbp
	mov	r15, r14
	mov	r14, r12
	mov	rbp, qword ptr [rip + optarg]
	mov	esi, 0x2d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	jne	.label_79
	test	rbx, rbx
	je	.label_87
	mov	byte ptr [rbx], 0
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_94
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rbx], 0x2d
	lea	rbp, [rbx + 1]
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_94
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	rcx, rax
	mov	qword ptr [rsp + 0x38], rcx
	sub	rcx, qword ptr [rsp + 0x30]
	setae	al
	cmp	rcx, -1
	sete	cl
	test	rbx, rbx
	mov	r12, r14
	mov	r14, r15
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r15d, dword ptr [rsp + 8]
	je	.label_107
	xor	al, cl
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jne	.label_51
	jmp	.label_107
.label_900:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	lea	rcx, [rsp + 0x58]
	call	xstrtoul
	cmp	eax, 1
	je	.label_51
	test	eax, eax
	je	.label_118
	jmp	.label_120
.label_901:
	test	r13, r13
	mov	rbx, qword ptr [rip + optarg]
	je	.label_32
	mov	rdi, r13
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_32
	jmp	.label_36
	nop	word ptr cs:[rax + rax]
.label_904:
	test	r14, r14
	mov	rbx, qword ptr [rip + optarg]
	je	.label_39
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_39
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	jmp	.label_38
.label_66:
	cmp	eax, -1
	jne	.label_44
	mov	qword ptr [rsp + 0x50], r13
	movsxd	rcx, dword ptr [rip + optind]
	test	r12b, r12b
	sete	al
	mov	rbx, qword ptr [rsp + 0x20]
	test	bl, bl
	je	.label_101
	test	al, al
	je	.label_52
.label_101:
	movsxd	r13, r15d
	sub	r13, rcx
	lea	rdx, [rbp + rcx*8]
	test	bl, bl
	je	.label_54
	test	r13d, r13d
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15b, byte ptr [rsp + 7]
	jle	.label_57
	jmp	.label_60
.label_54:
	cmp	r13d, 1
	setg	cl
	and	cl, al
	cmp	cl, 1
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15b, byte ptr [rsp + 7]
	je	.label_60
.label_57:
	test	r12b, r12b
	mov	qword ptr [rsp + 0x48], r12
	je	.label_69
	mov	qword ptr [rsp + 8], r14
	test	r13d, r13d
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_70
	mov	rbp, rdx
	mov	ebx, r13d
	mov	r14, r13
	nop	dword ptr [rax]
.label_75:
	mov	rdi, qword ptr [rbp]
	call	strlen
	add	r14, rax
	add	rbp, 8
	dec	ebx
	jne	.label_75
	mov	rdi, r14
	call	xmalloc
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	ebx, r13d
	nop	word ptr [rax + rax]
.label_92:
	mov	rsi, qword ptr [rbp]
	mov	rdi, r14
	call	stpcpy
	mov	qword ptr [rbp], r14
	mov	byte ptr [rax], r15b
	inc	rax
	add	rbp, 8
	dec	ebx
	mov	r14, rax
	jne	.label_92
	jmp	.label_96
.label_69:
	test	bl, bl
	je	.label_89
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r13, [rcx + 1]
	sub	r13, rax
	xor	ecx, ecx
	jmp	.label_97
.label_70:
	mov	rdi, r13
	call	xmalloc
.label_96:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + r13*8], rax
.label_90:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 8]
.label_97:
	mov	qword ptr [rsp + 0x10], rcx
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	mov	rax, r13
	cmovb	rax, rcx
	mov	rdx, qword ptr [rsp + 0x28]
	test	dl, dl
	mov	r12, rcx
	cmove	r12, rax
	je	.label_103
	xor	ebp, ebp
	mov	rsi, -1
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_109
.label_103:
	mov	rdi, r12
	mov	rsi, r13
	call	randperm_bound
	mov	rsi, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
.label_109:
	mov	rdi, r14
	call	randint_all_new
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_82
	xor	r14d, r14d
	test	bpl, bpl
	je	.label_115
	mov	dword ptr [rsp + 0x44], ebp
	mov	rax, qword ptr [rip + stdin]
	mov	qword ptr [rsp + 0x28], rax
	cmp	r12, 0x400
	mov	ebx, 0x400
	mov	rbp, r12
	cmovb	rbx, r12
	mov	esi, 0x18
	mov	rdi, rbx
	call	xcalloc
	mov	r14, rax
	xor	r12d, r12d
	xor	r13d, r13d
	jmp	.label_31
.label_55:
	lea	rax, [rbx*8]
	lea	rsi, [rax + rax*2]
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	add	r15, r14
	xor	esi, esi
	mov	edx, 0x6000
	mov	rdi, r15
	call	memset
.label_31:
	lea	rax, [r13*8]
	lea	r15, [rax + rax*2]
	nop	word ptr cs:[rax + rax]
.label_53:
	cmp	r13, rbp
	jae	.label_45
	lea	rdi, [r14 + r15]
	movsx	edx, byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x28]
	call	readlinebuffer_delim
	mov	r12, rax
	test	r12, r12
	je	.label_49
	inc	r13
	add	r15, 0x18
	cmp	r13, rbx
	jb	.label_53
	add	rbx, 0x400
	movabs	rax, 0x555555555555556
	cmp	rbx, rax
	jb	.label_55
.label_83:
	call	xalloc_die
.label_45:
	test	r12, r12
	je	.label_49
	lea	r15, [rsp + 0x58]
	mov	rdi, r15
	call	initbuffer
	movsx	ebx, byte ptr [rsp + 7]
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	randint_genmax
	cmp	rax, rbp
	lea	rax, [rax + rax*2]
	lea	rdi, [r14 + rax*8]
	cmovae	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, ebx
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_74
	inc	r13
	cmp	r13, 1
	jne	.label_77
.label_74:
	test	r13, r13
	je	.label_81
	lea	rdi, [rsp + 0x58]
	call	freebuffer
.label_49:
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax], 0x20
	jne	.label_41
	cmp	r13, rbp
	cmova	r13, rbp
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	mov	ebp, dword ptr [rsp + 0x44]
.label_115:
	mov	rax, qword ptr [rsp + 0x48]
	or	al, bl
	jne	.label_95
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	jne	.label_41
.label_95:
	mov	ebx, ebp
	xor	r15d, r15d
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	jne	.label_98
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, r13
	call	randperm_new
	mov	r15, rax
.label_98:
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	je	.label_50
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_106
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_108
.label_50:
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	mov	rax, qword ptr [rsp + 0x20]
	je	.label_110
	test	r12, r12
	mov	r14, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_30
	test	r13, r13
	je	.label_114
	test	al, al
	mov	al, byte ptr [rsp + 7]
	je	.label_47
	sub	r15, r14
	movzx	ebx, al
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_64:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r15
	call	randint_genmax
	lea	rdx, [rax + r14]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	mov	ecx, ebx
	call	__printf_chk
	test	eax, eax
	js	.label_29
	inc	rbp
	cmp	rbp, r12
	jb	.label_64
	jmp	.label_30
.label_110:
	test	bl, bl
	je	.label_33
	test	r13, r13
	je	.label_30
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_43:
	mov	rax, qword ptr [r15 + rbp*8]
	lea	rbx, [rax + rax*2]
	mov	rdi, qword ptr [r14 + rbx*8 + 0x10]
	mov	rdx, qword ptr [r14 + rbx*8 + 8]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [r14 + rbx*8 + 8]
	jne	.label_29
	inc	rbp
	cmp	rbp, r13
	jb	.label_43
	jmp	.label_30
.label_33:
	test	al, al
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_48
	test	r12, r12
	je	.label_30
	movzx	ebx, byte ptr [rsp + 7]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_62:
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, r14
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	mov	ecx, ebx
	call	__printf_chk
	test	eax, eax
	js	.label_29
	inc	rbp
	cmp	rbp, r12
	jb	.label_62
	jmp	.label_30
.label_89:
	cmp	r13d, 1
	jne	.label_65
	mov	rdi, qword ptr [rdx]
	movzx	ecx, byte ptr [rdi]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_67
	movzx	eax, byte ptr [rdi + 1]
	neg	eax
.label_67:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_65
	test	eax, eax
	je	.label_65
	mov	rbx, rdx
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_73
	call	freopen_safer
	test	rax, rax
	je	.label_76
.label_65:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	jne	.label_88
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_88
	mov	r13, -1
	mov	bpl, 1
	mov	r12, qword ptr [rsp + 0x18]
	test	r12, r12
	je	.label_93
	lea	rdx, [rsp + 0x58]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_80
	movzx	eax, word ptr [rsp + 0x70]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_80
	mov	rbx, qword ptr [rsp + 0x88]
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	js	.label_80
	sub	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	cmp	rbx, 0x800000
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	jle	.label_88
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsi, -1
	mov	r12, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_109
.label_47:
	dec	r13
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_34:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	randint_genmax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 + 8]
	mov	rdi, qword ptr [rcx + rax*8]
	sub	rbx, rdi
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jne	.label_29
	inc	rbp
	cmp	rbp, r12
	jb	.label_34
	jmp	.label_30
.label_48:
	test	r12, r12
	je	.label_30
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_46:
	mov	rax, qword ptr [r15 + rbp*8]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 + 8]
	mov	rdi, qword ptr [rcx + rax*8]
	sub	rbx, rdi
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jne	.label_29
	inc	rbp
	cmp	rbp, r12
	jb	.label_46
.label_30:
	xor	eax, eax
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_88:
	mov	qword ptr [rsp + 8], r14
	mov	rdi, qword ptr [rip + stdin]
	lea	rsi, [rsp + 0x58]
	call	fread_file
	mov	rbp, rax
	test	rbp, rbp
	je	.label_41
	mov	rbx, rbp
	mov	rax, qword ptr [rsp + 0x58]
	xor	r13d, r13d
	mov	edi, 1
	test	rax, rax
	je	.label_58
	cmp	byte ptr [rbx + rax - 1], r15b
	je	.label_63
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rbx + rax], r15b
	mov	rax, qword ptr [rsp + 0x58]
.label_63:
	add	rbp, rax
	xor	r13d, r13d
	mov	edi, 1
	test	rax, rax
	jle	.label_58
	movzx	r14d, r15b
	xor	r13d, r13d
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_78:
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r14d
	call	memchr
	inc	rax
	inc	r13
	cmp	rax, rbp
	jb	.label_78
	lea	rdi, [r13 + 1]
	mov	rax, rdi
	shr	rax, 0x3c
	jne	.label_83
.label_58:
	shl	rdi, 3
	call	xmalloc
	mov	rcx, rax
	mov	qword ptr [rcx], rbx
	test	r13, r13
	mov	r15, rbp
	je	.label_90
	movzx	eax, byte ptr [rsp + 7]
	mov	dword ptr [rsp + 0x10], eax
	mov	ebp, 1
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	r14, rcx
	mov	rdx, r15
	sub	rdx, rbx
	mov	rdi, rbx
	mov	esi, dword ptr [rsp + 0x10]
	call	memchr
	mov	rcx, r14
	mov	rbx, rax
	inc	rbx
	mov	qword ptr [rcx + rbp*8], rbx
	inc	rbp
	cmp	rbp, r13
	jbe	.label_100
	jmp	.label_90
.label_80:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_105
.label_93:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_105:
	mov	rsi, -1
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_109
.label_29:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
.label_85:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_44:
	cmp	eax, 0xffffff7d
	je	.label_116
	cmp	eax, 0xffffff7e
	jne	.label_68
	xor	edi, edi
	call	usage
.label_116:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_23
	mov	edx, OFFSET FLAT:label_18
	mov	r8d, OFFSET FLAT:label_119
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_68:
	mov	edi, 1
	call	usage
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	jmp	.label_38
.label_107:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_117
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rbx
	mov	rbx, rax
	movzx	eax, cl
	xor	rax, 1
	mov	rdi, qword ptr [rbp + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_82:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	jmp	.label_91
.label_41:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	jmp	.label_85
.label_108:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
.label_91:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	jmp	.label_38
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
.label_38:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
.label_112:
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x4b
	jmp	.label_112
.label_76:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4029e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a00

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_125
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_122
	cmp	dword ptr [rbp], 0x20
	jne	.label_122
.label_125:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_124
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_123
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_124:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_123:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_117
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
	#Procedure 0x402ac0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_126
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_126:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402af0

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
	je	.label_131
	cmp	eax, 1
	je	.label_134
	cmp	eax, 2
	je	.label_136
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_136:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_129
.label_131:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_133
.label_134:
	xor	r15d, r15d
.label_129:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_137
	mov	edi, OFFSET FLAT:label_130
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_137
	mov	r13b, 1
	jmp	.label_139
.label_137:
	test	r12b, r12b
	je	.label_128
	mov	edi, OFFSET FLAT:label_130
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_140
.label_128:
	test	r15b, r15b
	je	.label_133
	mov	edi, OFFSET FLAT:label_130
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_139
.label_133:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_127
.label_140:
	mov	r12b, 1
.label_139:
	xor	r14d, r14d
	test	eax, eax
	js	.label_127
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_127:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_138
	mov	edi, 2
	call	close
.label_138:
	test	r12b, r12b
	je	.label_141
	mov	edi, 1
	call	close
.label_141:
	test	r13b, r13b
	je	.label_132
	xor	edi, edi
	call	close
.label_132:
	test	r14, r14
	jne	.label_135
	mov	dword ptr [rbx], ebp
.label_135:
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
	#Procedure 0x402c40

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
	#Procedure 0x402c50
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
	jne	.label_145
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_147:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_142
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_144:
	cmp	rbx, r12
	jne	.label_146
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_146:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_147
	jmp	.label_143
.label_142:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_144
	cmp	rbx, r15
	mov	eax, 0
	je	.label_145
	test	byte ptr [r13], 0x20
	jne	.label_145
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_144
.label_143:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_145:
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
	#Procedure 0x402d10

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
	jne	.label_149
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_151:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_153
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_148:
	cmp	r13, r14
	jne	.label_150
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
.label_150:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_151
	jmp	.label_152
.label_153:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_148
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_149
	test	byte ptr [rbp], 0x20
	jne	.label_149
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_148
.label_152:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_149:
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
	#Procedure 0x402de0

	.globl freebuffer
	.type freebuffer, @function
freebuffer:
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402df0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_157
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_159
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_159
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_155
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_155:
	mov	rbx, r14
.label_159:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_157:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_158
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0
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
	#Procedure 0x402ee0
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
	#Procedure 0x402ef0
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
	#Procedure 0x402f00
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
	#Procedure 0x402f40
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
	#Procedure 0x402f60
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_160
	test	rdx, rdx
	je	.label_160
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_160:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90
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
	#Procedure 0x403010

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
	jmp	.label_189
	nop	
.label_229:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_199
	or	al, dl
	jne	.label_199
	test	dil, 1
	jne	.label_228
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_199
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_189
	jmp	.label_199
.label_845:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_235
	test	rbp, rbp
	je	.label_239
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_239:
	mov	r14d, 1
	jmp	.label_242
.label_846:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_244
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_183
.label_235:
	xor	r14d, r14d
.label_242:
	mov	eax, OFFSET FLAT:label_244
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_254
	nop	
.label_189:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_262
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_269]
.label_847:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_274
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_175
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_848:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_255
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_255
	xor	r14d, r14d
	nop	
.label_173:
	cmp	r14, rbp
	jae	.label_169
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_169:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_173
.label_255:
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
	jmp	.label_183
.label_840:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_183
.label_843:
	mov	al, 1
.label_841:
	mov	r12b, 1
.label_844:
	test	r12b, 1
	mov	cl, 1
	je	.label_200
	mov	ecx, eax
.label_200:
	mov	al, cl
.label_842:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_202
	test	rbp, rbp
	je	.label_208
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_208:
	mov	r14d, 1
	jmp	.label_210
.label_202:
	xor	r14d, r14d
.label_210:
	mov	ecx, OFFSET FLAT:label_175
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_254:
	mov	sil, r12b
.label_183:
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
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_246:
	inc	r12
.label_220:
	cmp	r11, -1
	je	.label_248
	cmp	r12, r11
	jne	.label_249
	jmp	.label_253
	nop	word ptr cs:[rax + rax]
.label_248:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_258
.label_249:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_263
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_268
	cmp	r11, -1
	jne	.label_268
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_268:
	cmp	rbx, r11
	jbe	.label_279
.label_263:
	xor	esi, esi
.label_176:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_281
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_284]
.label_786:
	test	r12, r12
	jne	.label_168
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_279:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_171
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_176
	jmp	.label_181
.label_171:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_176
.label_790:
	xor	eax, eax
	cmp	r11, -1
	je	.label_193
	test	r12, r12
	jne	.label_197
	cmp	r11, 1
	je	.label_161
	xor	r13d, r13d
	jmp	.label_162
.label_779:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_204
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_181
	cmp	r8d, 2
	jne	.label_214
	mov	eax, r9d
	and	al, 1
	jne	.label_214
	cmp	r14, rbp
	jae	.label_217
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_217:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_218
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_218:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_221
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	r14, 3
	mov	r9b, 1
.label_214:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_227
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_227:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_196
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_196
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_196
	cmp	r14, rbp
	jae	.label_252
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_252:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_238
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_238:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_162
.label_780:
	mov	bl, 0x62
	jmp	.label_216
.label_781:
	mov	cl, 0x74
	jmp	.label_201
.label_782:
	mov	bl, 0x76
	jmp	.label_216
.label_783:
	mov	bl, 0x66
	jmp	.label_216
.label_784:
	mov	cl, 0x72
	jmp	.label_201
.label_787:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_260
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_182
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
	jae	.label_270
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_282
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_286
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_286:
	add	r14, 3
	xor	r9d, r9d
.label_260:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_162
.label_788:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_164
	cmp	r8d, 2
	jne	.label_168
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_168
	jmp	.label_182
.label_789:
	cmp	r8d, 2
	jne	.label_178
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_182
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_186
.label_281:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_188
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_241
.label_193:
	test	r12, r12
	jne	.label_211
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_211
.label_161:
	mov	dl, 1
.label_785:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_182
	xor	eax, eax
	mov	r13b, dl
.label_162:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_224
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_222
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_224:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_225
.label_222:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_215
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_233
	nop	dword ptr [rax]
.label_225:
	test	sil, sil
.label_233:
	mov	ebx, r15d
	je	.label_163
	jmp	.label_237
.label_215:
	mov	ebx, r15d
	jmp	.label_237
.label_204:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_246
	xor	r15d, r15d
	jmp	.label_168
.label_178:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_201
	xor	eax, eax
	mov	r15b, 0x5c
.label_186:
	xor	r13d, r13d
	jmp	.label_163
.label_201:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_182
.label_216:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_162
	nop	
.label_237:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_181
	cmp	r8d, 2
	jne	.label_261
	mov	eax, r9d
	and	al, 1
	jne	.label_261
	cmp	r14, rbp
	jae	.label_267
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_267:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_271
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_271:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_187
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_187:
	add	r14, 3
	mov	r9b, 1
.label_261:
	cmp	r14, rbp
	jae	.label_190
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_190:
	inc	r14
	jmp	.label_243
.label_188:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_285
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_285:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_174
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_165:
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
	je	.label_179
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_194
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_213
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_273
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_223:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_185
	bt	rsi, rdx
	jb	.label_182
.label_185:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_223
.label_273:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_226
	xor	r13d, r13d
.label_226:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_165
	jmp	.label_198
.label_196:
	xor	r13d, r13d
	jmp	.label_162
.label_211:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_162
.label_164:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_168
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_168
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_168
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_247
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_212
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_257
	cmp	r14, rbp
	jae	.label_259
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_265
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_265:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_232
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_232:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_264
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_264:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_212:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_162
.label_168:
	xor	eax, eax
.label_197:
	xor	r13d, r13d
	jmp	.label_162
.label_174:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_192:
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
	je	.label_234
	cmp	rbp, -1
	je	.label_177
	cmp	rbp, -2
	je	.label_179
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_184
	xor	r13d, r13d
.label_184:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_192
	jmp	.label_198
.label_179:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_205
	lea	rax, [r10 + r12]
.label_277:
	cmp	byte ptr [rax + rsi], 0
	je	.label_205
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_277
.label_205:
	mov	qword ptr [rsp + 0x40], rsi
.label_194:
	xor	r13d, r13d
	jmp	.label_213
.label_177:
	xor	r13d, r13d
.label_234:
	mov	r10, qword ptr [rsp + 0x28]
.label_213:
	mov	r12, qword ptr [rsp + 0x40]
.label_198:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_241:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_219
	test	al, al
	je	.label_219
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_162
.label_219:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_231
	nop	word ptr [rax + rax]
.label_195:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_231:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_236
	test	sil, 1
	je	.label_245
	cmp	r14, rbp
	jae	.label_240
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_240:
	inc	r14
	xor	esi, esi
	jmp	.label_245
	nop	word ptr cs:[rax + rax]
.label_236:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_181
	cmp	r8d, 2
	jne	.label_251
	mov	eax, r9d
	and	al, 1
	jne	.label_251
	cmp	r14, rbp
	jae	.label_256
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_256:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_272
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_272:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_280
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_280:
	add	r14, 3
	mov	r9b, 1
.label_251:
	cmp	r14, rbp
	jae	.label_172
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_172:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_276
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_283
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_283:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_245:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_163
	test	r9b, 1
	je	.label_166
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_250
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_170
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_170:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_180
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_180:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_166
	nop	word ptr cs:[rax + rax]
.label_250:
	mov	rbx, rcx
.label_166:
	cmp	r14, rbp
	jae	.label_195
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_195
	nop	
.label_163:
	test	r9b, 1
	je	.label_203
	and	al, 1
	jne	.label_203
	cmp	r14, rbp
	jae	.label_207
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_287
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_287:
	add	r14, 2
	xor	r9d, r9d
.label_203:
	mov	ebx, r15d
.label_243:
	cmp	r14, rbp
	jae	.label_209
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_209:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_246
.label_247:
	xor	r13d, r13d
	jmp	.label_162
	nop	word ptr cs:[rax + rax]
.label_253:
	mov	rcx, r12
.label_258:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_229
	or	al, dl
	jne	.label_229
	mov	r11, rcx
	jmp	.label_181
.label_182:
	mov	eax, 2
.label_206:
	mov	qword ptr [rsp + 0x38], rax
.label_181:
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
.label_191:
	mov	r14, rax
.label_167:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_199:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_266
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_230
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_230
	inc	rdx
	nop	dword ptr [rax + rax]
.label_278:
	cmp	r14, rbp
	jae	.label_275
	mov	byte ptr [rcx + r14], al
.label_275:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_278
	jmp	.label_230
.label_228:
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
	jmp	.label_191
.label_266:
	mov	rcx, qword ptr [rsp + 0x10]
.label_230:
	cmp	r14, rbp
	jae	.label_167
	mov	byte ptr [rcx + r14], 0
	jmp	.label_167
.label_257:
	mov	eax, 5
	jmp	.label_206
.label_262:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403e40
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
	#Procedure 0x403f10
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
	je	.label_288
	mov	qword ptr [rax], rbx
.label_288:
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
	#Procedure 0x404000
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_289
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_291:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_291
.label_289:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_292
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_293], OFFSET FLAT:slot0
.label_292:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_290
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_290:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4040b0

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
	js	.label_297
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_300
	cmp	r12d, 0x7fffffff
	je	.label_295
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
	jne	.label_298
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_298:
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
.label_300:
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
	jbe	.label_296
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_299
.label_296:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_294
	mov	rdi, r14
	call	free
.label_294:
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
.label_299:
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
.label_297:
	call	abort
.label_295:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404270
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404280
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
	#Procedure 0x4042a0
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
	#Procedure 0x4042c0
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
	je	.label_301
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
.label_301:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404330
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
	je	.label_302
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
.label_302:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0
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
	je	.label_303
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
.label_303:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
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
	je	.label_304
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
.label_304:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
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
	#Procedure 0x4044f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
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
	#Procedure 0x404560

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
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
	#Procedure 0x4045c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
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
	#Procedure 0x404620

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
	je	.label_308
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
.label_308:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_309
	test	rdx, rdx
	je	.label_309
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_309:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404730
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_310
	test	rdx, rdx
	je	.label_310
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_310:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_311
	test	rsi, rsi
	je	.label_311
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_311:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404810
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_305]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_306]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_312
	test	rsi, rsi
	je	.label_312
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
.label_312:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404880
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890
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
	#Procedure 0x4048b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0

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
	#Procedure 0x4048f0

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
	jne	.label_314
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_319
	cmp	ecx, 0x55
	jne	.label_313
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_313
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_313
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_313
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_313
	cmp	byte ptr [rax + 5], 0
	jne	.label_313
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_316
	mov	eax, OFFSET FLAT:label_317
	jmp	.label_318
.label_319:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_313
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_313
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_313
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_313
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_313
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_313
	cmp	byte ptr [rax + 7], 0
	je	.label_315
.label_313:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_244
	mov	eax, OFFSET FLAT:label_175
.label_318:
	cmove	rax, rcx
.label_314:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_315:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_320
	mov	eax, OFFSET FLAT:label_321
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_322
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_322:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_327:
	cmp	r14, r13
	jae	.label_323
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_324:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_324
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_325:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_325
.label_323:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_326
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	r14, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rbx, rdx
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_327
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_328
.label_326:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_328:
	mov	rax, rcx
	add	rsp, 0x18
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
	#Procedure 0x404b20
	.globl randint_free
	.type randint_free, @function
randint_free:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	mov	rdi, rbx
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b90

	.globl randperm_bound
	.type randperm_bound, @function
randperm_bound:
	xor	eax, eax
	dec	rsi
	je	.label_329
	xor	eax, eax
	nop	dword ptr [rax]
.label_330:
	inc	rax
	shr	rsi, 1
	jne	.label_330
.label_329:
	imul	rax, rdi
	add	rax, 7
	shr	rax, 3
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl randperm_new
	.type randperm_new, @function
randperm_new:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r13, rsi
	mov	qword ptr [rsp], rdi
	xor	ebp, ebp
	test	r13, r13
	je	.label_332
	cmp	r13, 1
	jne	.label_356
	mov	edi, 8
	call	xmalloc
	mov	rbp, rax
	dec	r12
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	call	randint_genmax
	mov	qword ptr [rbp], rax
	jmp	.label_332
.label_356:
	movabs	r14, 0xfffffffffffffff
	cmp	r12, 0x20000
	jb	.label_334
	xor	edx, edx
	mov	rax, r12
	div	r13
	cmp	rax, 0x20
	jb	.label_348
	lea	rdi, [r13 + r13]
	xor	esi, esi
	mov	edx, OFFSET FLAT:sparse_hash_
	mov	ecx, OFFSET FLAT:sparse_cmp_
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	test	rbx, rbx
	je	.label_349
	cmp	r13, r14
	ja	.label_354
	mov	qword ptr [rsp + 0x10], r13
	lea	rdi, [r13*8]
	call	xmalloc
	mov	rbp, rax
	dec	r12
	xor	r13d, r13d
	mov	qword ptr [rsp + 8], rbp
	nop	dword ptr [rax + rax]
.label_351:
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	call	randint_genmax
	mov	r14, rax
	add	r14, r13
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x30], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x28]
	call	hash_delete
	mov	rbp, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x20], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x18]
	call	hash_delete
	mov	r15, rax
	test	rbp, rbp
	jne	.label_353
	mov	edi, 0x10
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rbp + 8], r13
	mov	qword ptr [rbp], r13
.label_353:
	test	r15, r15
	je	.label_360
	mov	r14, qword ptr [r15 + 8]
	jmp	.label_361
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	edi, 0x10
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15 + 8], r14
	mov	qword ptr [r15], r14
.label_361:
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rbp + 8], r14
	mov	qword ptr [r15 + 8], rax
	mov	rdi, rbx
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_349
	mov	rdi, rbx
	mov	rsi, r15
	call	hash_insert
	test	rax, rax
	je	.label_349
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rbp + r13*8], rax
	inc	r13
	dec	r12
	cmp	r13, qword ptr [rsp + 0x10]
	jb	.label_351
	mov	rdi, rbx
	call	hash_free
	jmp	.label_332
.label_334:
	lea	rdi, [r12*8]
	call	xmalloc
	mov	r15, rax
	mov	rbp, -1
	test	r12, r12
	jne	.label_335
	jmp	.label_345
.label_348:
	cmp	r12, r14
	ja	.label_344
	lea	rdi, [r12*8]
	call	xmalloc
	mov	r15, rax
.label_335:
	xor	ecx, ecx
	cmp	r12, 4
	jb	.label_331
	xor	ecx, ecx
	mov	rax, r12
	and	rax, 0xfffffffffffffffc
	je	.label_331
	lea	rdi, [rax - 4]
	mov	rsi, rdi
	shr	rsi, 2
	lea	ecx, [rsi + 1]
	and	ecx, 3
	mov	edx, 1
	cmp	rdi, 0xc
	jae	.label_352
	movq	xmm0, rdx
	pslldq	xmm0, 8
	jmp	.label_359
.label_352:
	lea	rdx, [rcx - 1]
	sub	rdx, rsi
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_336]
	movdqa	xmm9, xmmword ptr [rip + label_337]
	movdqa	xmm10, xmmword ptr [rip + label_338]
	movdqa	xmm11, xmmword ptr [rip + label_339]
	movdqa	xmm5, xmmword ptr [rip + label_340]
	movdqa	xmm6, xmmword ptr [rip + label_341]
	movdqa	xmm7, xmmword ptr [rip + label_342]
	movdqa	xmm1, xmmword ptr [rip + label_343]
	nop	
.label_347:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rsi, xmm0
	movdqu	xmmword ptr [r15 + rsi*8], xmm0
	movdqu	xmmword ptr [r15 + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rsi, xmm3
	movdqu	xmmword ptr [r15 + rsi*8], xmm3
	movdqu	xmmword ptr [r15 + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rsi, xmm4
	movdqu	xmmword ptr [r15 + rsi*8], xmm4
	movdqu	xmmword ptr [r15 + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rsi, xmm3
	movdqu	xmmword ptr [r15 + rsi*8], xmm3
	movdqu	xmmword ptr [r15 + rsi*8 + 0x10], xmm2
	add	rdx, 4
	jne	.label_347
.label_359:
	test	rcx, rcx
	je	.label_358
	neg	rcx
	movdqa	xmm1, xmmword ptr [rip + label_336]
	movdqa	xmm2, xmmword ptr [rip + label_337]
	nop	word ptr [rax + rax]
.label_355:
	movdqa	xmm3, xmm0
	movq	rdx, xmm0
	movdqu	xmmword ptr [r15 + rdx*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [r15 + rdx*8 + 0x10], xmm0
	inc	rcx
	movdqa	xmm0, xmm3
	jne	.label_355
.label_358:
	cmp	rax, r12
	mov	rcx, rax
	je	.label_346
	nop	
.label_331:
	mov	qword ptr [r15 + rcx*8], rcx
	inc	rcx
	cmp	r12, rcx
	jne	.label_331
.label_346:
	test	r13, r13
	je	.label_350
	dec	r12
	mov	rbp, r12
.label_345:
	xor	ebx, ebx
	mov	r12, qword ptr [rsp]
	nop	dword ptr [rax]
.label_357:
	mov	rdi, r12
	mov	rsi, rbp
	call	randint_genmax
	add	rax, rbx
	mov	rcx, qword ptr [r15 + rbx*8]
	mov	rdx, qword ptr [r15 + rax*8]
	mov	qword ptr [r15 + rbx*8], rdx
	mov	qword ptr [r15 + rax*8], rcx
	inc	rbx
	dec	rbp
	cmp	r13, rbx
	jne	.label_357
	cmp	r13, r14
	ja	.label_333
.label_350:
	shl	r13, 3
	mov	rdi, r15
	mov	rsi, r13
	call	xrealloc
	mov	rbp, rax
.label_332:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_349:
	call	xalloc_die
.label_333:
	call	xalloc_die
.label_354:
	call	xalloc_die
.label_344:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl sparse_hash_
	.type sparse_hash_, @function
sparse_hash_:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fe0

	.globl sparse_cmp_
	.type sparse_cmp_, @function
sparse_cmp_:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ff0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_368
	xor	ebx, ebx
	test	r14, r14
	je	.label_362
	mov	esi, OFFSET FLAT:label_363
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_365
.label_362:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_369
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_365
.label_368:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_365
.label_369:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_366
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_367
	cmp	r12, 0x800
	mov	edx, 0x800
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	mov	r12, rax
	mov	edi, ebx
	call	close
	xor	r13d, r13d
	test	r12, r12
	js	.label_367
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_364
.label_367:
	mov	eax, 0x800
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	call	gettimeofday
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_364
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getpid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_364
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + r12]
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_364
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_364
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_364:
	mov	rdi, r14
	call	isaac_seed
.label_365:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl randread
	.type randread, @function
randread:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_376
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_373
	nop	dword ptr [rax]
.label_372:
	add	rbx, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
.label_373:
	sub	r15, rbp
	jne	.label_372
	jmp	.label_374
.label_376:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_375
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_377:
	cmp	r15, 0x800
	jb	.label_370
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_377
	jmp	.label_371
.label_370:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_375:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_371:
	mov	qword ptr [r14 + 0x18], r12
.label_374:
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
	#Procedure 0x405380

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_378
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_378:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_379
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_382
	mov	esi, OFFSET FLAT:label_380
	jmp	.label_381
.label_382:
	mov	esi, OFFSET FLAT:label_383
.label_381:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_379:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405420

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	r14
	push	rbx
	mov	rdx, qword ptr [rdi + 0x800]
	mov	rax, qword ptr [rdi + 0x810]
	inc	rax
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rax
	mov	qword ptr [rdi + 0x810], rax
	lea	r9, [rdi + 0x400]
	lea	r8, [rdi + 0x20]
	cmp	r9, r8
	cmova	r8, r9
	mov	rax, rdi
	not	rax
	add	rax, r8
	shr	rax, 5
	lea	r8, [rax*4]
	shl	rax, 5
	lea	r10, [rsi + rax + 0x20]
	mov	r11, rdi
	nop	dword ptr [rax + rax]
.label_384:
	mov	rax, rdx
	shl	rax, 0x15
	xor	rax, rdx
	not	rax
	add	rax, qword ptr [r11 + 0x400]
	mov	rdx, qword ptr [r11]
	mov	ebx, edx
	and	ebx, 0x7f8
	add	rcx, qword ptr [rdi + rbx]
	add	rcx, rax
	mov	qword ptr [r11], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, rax
	add	rbx, qword ptr [r11 + 0x408]
	mov	rcx, qword ptr [r11 + 8]
	mov	eax, ecx
	and	eax, 0x7f8
	add	rdx, rbx
	add	rdx, qword ptr [rdi + rax]
	mov	qword ptr [r11 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r14, rbx
	shl	r14, 0xc
	xor	r14, rbx
	add	r14, qword ptr [r11 + 0x410]
	mov	rax, qword ptr [r11 + 0x10]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, r14
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r11 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rax
	mov	rdx, r14
	shr	rdx, 0x21
	xor	rdx, r14
	add	rdx, qword ptr [r11 + 0x418]
	mov	rcx, qword ptr [r11 + 0x18]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [r11 + 0x18], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [rsi + 0x18], rcx
	add	r11, 0x20
	add	rsi, 0x20
	cmp	r11, r9
	jb	.label_384
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_385:
	mov	rbx, rdx
	shl	rbx, 0x15
	xor	rbx, rdx
	not	rbx
	add	rbx, qword ptr [rsi - 0x418]
	mov	rax, qword ptr [rsi - 0x18]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	add	rcx, rbx
	mov	qword ptr [rsi - 0x18], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10], rax
	mov	rdx, rbx
	shr	rdx, 5
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x410]
	mov	rcx, qword ptr [rsi - 0x10]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi - 0x10], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 8], rcx
	mov	rbx, rdx
	shl	rbx, 0xc
	xor	rbx, rdx
	add	rbx, qword ptr [rsi - 0x408]
	mov	rax, qword ptr [rsi - 8]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, rbx
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi - 8], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10 + 0x10], rax
	mov	rdx, rbx
	shr	rdx, 0x21
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x400]
	mov	rcx, qword ptr [rsi]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x18], rcx
	lea	rax, [rsi + 0x20]
	add	rsi, 8
	add	r10, 0x20
	cmp	rsi, r9
	mov	rsi, rax
	jb	.label_385
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056a0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	movabs	r8, 0xb9f8b322c73ac862
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_386:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	shl	rdx, 9
	mov	r15, rdx
	xor	r15, r10
	sub	rsi, r15
	mov	r10, r8
	shr	r8, 0x17
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	lea	r12, [rcx + rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	xor	r8, r10
	mov	r10, rcx
	add	r10, rax
	sub	r14, r8
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	xor	rcx, r10
	mov	r11, r14
	add	r11, r15
	sub	r9, rcx
	lea	r10, [r9 + r15]
	shl	r15, 0xe
	mov	rax, r15
	xor	rax, r13
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	add	rbx, 8
	cmp	rbx, 0x100
	jl	.label_386
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_387:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	add	r8, rsi
	sub	rcx, r11
	lea	r9, [rcx + rsi]
	shl	rsi, 0xf
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	xor	rdx, r12
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_387
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405900

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	mov	ebp, 0x2000
	test	eax, eax
	js	.label_393
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebp, 0x2000
	cmp	eax, 0x8000
	jne	.label_393
	mov	rdi, r15
	call	ftello
	mov	ebp, 0x2000
	test	rax, rax
	js	.label_393
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebp, 0x2000
	sub	rcx, rax
	jle	.label_393
	cmp	rcx, -1
	je	.label_394
	inc	rcx
	mov	rbp, rcx
.label_393:
	mov	rdi, rbp
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_388
	mov	qword ptr [rsp], rbx
	xor	r14d, r14d
	mov	r13, -1
	nop	
.label_390:
	mov	r12, rax
	mov	rbx, rbp
	sub	rbx, r14
	lea	rdi, [r12 + r14]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	r14, rax
	cmp	rax, rbx
	jne	.label_396
	cmp	rbp, -1
	je	.label_389
	mov	rbx, rbp
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, rbp
	cmp	rbp, rax
	cmovae	rbx, r13
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	rbp, rbx
	jne	.label_390
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	jmp	.label_391
.label_396:
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	jne	.label_391
	dec	rbp
	cmp	r14, rbp
	jae	.label_392
	lea	rsi, [r14 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_392:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + r14], 0
	mov	qword ptr [rax], r14
	jmp	.label_388
.label_389:
	mov	ebx, 0xc
	call	__errno_location
	mov	r13, rax
.label_391:
	mov	rdi, r12
	call	free
	mov	dword ptr [r13], ebx
.label_395:
	xor	r12d, r12d
.label_388:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_394:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_395
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a90
	.globl read_file
	.type read_file, @function
read_file:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_73
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_397
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_397
	test	r15, r15
	je	.label_398
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_398:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_397:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_363
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_399
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_399
	test	r15, r15
	je	.label_400
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_400:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_399:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b70

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
	je	.label_412
	mov	edx, OFFSET FLAT:label_407
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_414
.label_412:
	mov	edx, OFFSET FLAT:label_415
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
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
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_402
	jmp	qword ptr [(r12 * 8) + label_404]
.label_768:
	add	rsp, 8
	jmp	.label_401
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
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
	jmp	.label_401
.label_769:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
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
.label_770:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
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
.label_771:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
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
.label_772:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
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
	jmp	.label_401
.label_773:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
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
	jmp	.label_401
.label_774:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
	jmp	.label_401
.label_775:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
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
	jmp	.label_401
.label_777:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
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
	jmp	.label_401
.label_776:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
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
.label_401:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ed0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_420:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_420
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_421
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_423
.label_421:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_423:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_433
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_422
.label_433:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_422:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_431
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_432
.label_431:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_432:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_429
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_430
.label_429:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_430:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_427
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_428
.label_427:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_428:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_424
	cmp	r10d, 0x29
	jae	.label_425
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_426
.label_425:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_426:
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
	#Procedure 0x4060f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_434
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_434:
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
	#Procedure 0x406180
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_436
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406200
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_439
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_440
	test	rax, rax
	je	.label_439
.label_440:
	pop	rbx
	ret	
.label_439:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406240

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_441
	test	rax, rax
	je	.label_442
.label_441:
	pop	rbx
	ret	
.label_442:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406260
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_443
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_444
	test	rbx, rbx
	jne	.label_444
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_444:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_445
	test	rax, rax
	je	.label_443
.label_445:
	pop	rbx
	ret	
.label_443:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_446
	test	rbx, rbx
	jne	.label_446
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_446:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_448
	test	rax, rax
	je	.label_447
.label_448:
	pop	rbx
	ret	
.label_447:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4062e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_449
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_452
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_450
.label_449:
	test	rcx, rcx
	jne	.label_454
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_454:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_451
.label_450:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_453
	test	rbx, rbx
	jne	.label_453
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_453:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_455
	test	rax, rax
	je	.label_452
.label_455:
	pop	rbx
	ret	
.label_452:
	call	xalloc_die
.label_451:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_456
	test	rax, rax
	je	.label_457
.label_456:
	pop	rbx
	ret	
.label_457:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063a0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_458
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_461
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_462
	call	free
	xor	eax, eax
	jmp	.label_459
.label_458:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_460
	mov	qword ptr [rsi], rbx
.label_462:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_459
	test	rax, rax
	je	.label_460
.label_459:
	pop	rbx
	ret	
.label_460:
	call	xalloc_die
.label_461:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406410
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
	je	.label_464
	test	r14, r14
	je	.label_463
.label_464:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_463:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406450

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_465
	call	rpl_calloc
	test	rax, rax
	je	.label_465
	pop	rcx
	ret	
.label_465:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406480

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
	je	.label_466
	test	r15, r15
	je	.label_467
.label_466:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_467:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0
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
	je	.label_469
	test	r15, r15
	je	.label_468
.label_469:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406510

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406540

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
	je	.label_472
	cmp	eax, 1
	je	.label_474
	cmp	eax, 3
	jne	.label_476
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_471
.label_474:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_471
.label_472:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_475
	cmp	rbx, r15
	jbe	.label_477
.label_475:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_473
	mov	dword ptr [rax], 0x4b
	jmp	.label_471
.label_476:
	call	__errno_location
	jmp	.label_471
.label_473:
	mov	dword ptr [rax], 0x22
.label_471:
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
	mov	edx, OFFSET FLAT:label_117
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_477:
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
	.align	32
	#Procedure 0x406610

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
	.align	32
	#Procedure 0x406640

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
	jae	.label_489
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_479:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_479
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_478
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_494
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_497
	cmp	eax, 0x22
	jne	.label_478
	mov	ebx, 1
.label_497:
	test	r14, r14
	jne	.label_498
	jmp	.label_483
.label_494:
	test	r14, r14
	je	.label_478
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_478
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_478
.label_498:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_483
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_487
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
	je	.label_485
	cmp	eax, 0x44
	je	.label_485
	cmp	eax, 0x69
	jne	.label_482
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_482
.label_485:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_482:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_487
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_496]
.label_855:
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
.label_487:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_486
.label_856:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_490
.label_857:
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
.label_859:
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
.label_853:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_480
.label_854:
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
	jmp	.label_484
.label_858:
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
	jmp	.label_484
.label_860:
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
	jmp	.label_495
.label_861:
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
.label_495:
	movzx	eax, dl
.label_490:
	and	eax, 1
.label_484:
	mov	rbp, rsi
.label_481:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_483:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_486:
	mov	r13d, ebx
.label_478:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_862:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_480:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_481
.label_863:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_481
.label_489:
	mov	edi, OFFSET FLAT:label_491
	mov	esi, OFFSET FLAT:label_492
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_493
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c60

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
	jae	.label_510
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_507:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_507
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_499
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
	je	.label_513
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_518
	cmp	eax, 0x22
	jne	.label_499
	mov	ebp, 1
.label_518:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_502
	jmp	.label_503
.label_513:
	test	r14, r14
	je	.label_499
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_499
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_499
.label_502:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_503
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_514
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_501
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_501
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_501
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_508
	cmp	eax, 0x44
	je	.label_508
	cmp	eax, 0x69
	jne	.label_501
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_501
.label_508:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_501:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_514
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_500]
.label_828:
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
	jmp	.label_511
.label_514:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_512
.label_829:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_515
.label_830:
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
	jmp	.label_504
.label_832:
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
	jmp	.label_506
.label_826:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_509
.label_827:
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
	jmp	.label_504
.label_831:
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
.label_506:
	or	dl, r10b
.label_511:
	or	dl, bl
.label_504:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_505
.label_833:
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
	jmp	.label_516
.label_834:
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
.label_516:
	movzx	eax, dl
.label_515:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_505
.label_835:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_509:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_505
.label_836:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_505:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_503:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_512:
	mov	r13d, r15d
.label_499:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_510:
	mov	edi, OFFSET FLAT:label_491
	mov	esi, OFFSET FLAT:label_492
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_517
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_519
	test	rsi, rsi
	mov	ecx, 1
	je	.label_520
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_520
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_519:
	mov	ecx, 1
.label_520:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072f0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407300

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_521
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_523
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_521
.label_523:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_521
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_522
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_522:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_521:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407380

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_524
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_524
	test	byte ptr [rbx + 1], 1
	je	.label_524
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_524:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073c0

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
	je	.label_525
	test	rbx, rbx
	je	.label_525
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_525
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_525
	mov	edi, OFFSET FLAT:label_130
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_526
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_525
.label_526:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_525:
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
	#Procedure 0x407460

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
	jne	.label_527
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_527
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_528
.label_527:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_528:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_529
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_529:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4074d0

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
	je	.label_530
	cmp	r15, -2
	jb	.label_530
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_530
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_530:
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
	#Procedure 0x407530

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
	jne	.label_532
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_531
	test	cl, cl
	jne	.label_531
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_531
.label_532:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_531
	call	__errno_location
	mov	dword ptr [rax], 0
.label_531:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407590

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
	je	.label_534
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_536
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_537
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_533
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_534
.label_533:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_535
.label_536:
	mov	rax, rbx
	jmp	.label_534
.label_537:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_535:
	xor	eax, eax
.label_534:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_539
	cmp	byte ptr [rax], 0x43
	jne	.label_541
	cmp	byte ptr [rax + 1], 0
	je	.label_538
.label_541:
	mov	esi, OFFSET FLAT:label_540
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_539
.label_538:
	xor	ebx, ebx
.label_539:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407660
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407680
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407690
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_544
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_543
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_546:
	cmp	qword ptr [rcx], 0
	je	.label_547
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_542:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_542
	cmp	rdi, rax
	cmova	rax, rdi
.label_547:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_545
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_548:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_548
	cmp	rdi, rax
	cmova	rax, rdi
.label_545:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_546
.label_543:
	test	r8, r8
	je	.label_544
	cmp	qword ptr [rcx], 0
	je	.label_544
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_549:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_549
	cmp	rdx, rax
	cmova	rax, rdx
.label_544:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407750
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_555
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_557
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_552:
	cmp	qword ptr [rax], 0
	je	.label_553
	mov	rdx, rax
	nop	dword ptr [rax]
.label_556:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_556
	inc	r10
.label_553:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_558
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_550:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_550
	inc	r10
.label_558:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_552
	jmp	.label_554
.label_557:
	xor	r10d, r10d
.label_554:
	test	r8, r8
	je	.label_555
	cmp	qword ptr [rax], 0
	je	.label_555
	nop	dword ptr [rax]
.label_559:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_559
	inc	r10
.label_555:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_560
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_551
.label_560:
	xor	eax, eax
.label_551:
	ret	
	.section	.text
	.align	32
	#Procedure 0x407810
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
	jae	.label_567
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_570
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_564:
	cmp	qword ptr [rax], 0
	je	.label_561
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_566:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_566
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_561:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_563
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_569:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_569
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_563:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_564
.label_570:
	test	r8, r8
	je	.label_567
	cmp	qword ptr [rax], 0
	je	.label_567
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_562:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_562
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_567:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_568
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_565
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_572]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_573]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_574]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_575
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_571
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	32
	#Procedure 0x407980
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
	jae	.label_580
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_577
	add	rbx, rax
	je	.label_577
	cmp	rsi, r12
	je	.label_579
	xor	r15d, r15d
	nop	
.label_578:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_576
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_577
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_578
.label_579:
	mov	r15, r12
	jmp	.label_577
.label_576:
	mov	r15, qword ptr [rbx]
.label_577:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_580:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a00
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_581
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_584
	nop	word ptr cs:[rax + rax]
.label_583:
	add	rcx, 0x10
.label_584:
	cmp	rcx, rdx
	jae	.label_582
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_583
.label_581:
	ret	
.label_582:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a40
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
	jae	.label_588
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_589:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_587
	test	rdx, rdx
	jne	.label_589
	jmp	.label_585
.label_587:
	test	rdx, rdx
	je	.label_585
	mov	rax, qword ptr [rdx]
	jmp	.label_586
.label_585:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_590:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_586
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_590
.label_586:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_588:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ad0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_591
	xor	eax, eax
.label_593:
	cmp	qword ptr [r9], 0
	je	.label_592
	test	r9, r9
	je	.label_592
	mov	r8, r9
	nop	
.label_594:
	cmp	rax, rdx
	jae	.label_591
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_594
	mov	r8, qword ptr [rdi + 8]
.label_592:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_593
.label_591:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b20
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
	jae	.label_595
	xor	ebx, ebx
.label_599:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_597
	test	r13, r13
	je	.label_597
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_595
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_596:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_598
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_596
	jmp	.label_595
	nop	dword ptr [rax]
.label_598:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_597:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_599
.label_595:
	mov	rax, rbx
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
	#Procedure 0x407bc0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_600
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_601:
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
	jne	.label_601
.label_600:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c00
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_602]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c20

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
	je	.label_608
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_614
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_617]
	jbe	.label_606
	movss	xmm1, dword ptr [rip + label_605]
	ucomiss	xmm1, xmm0
	jbe	.label_606
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_612]
	jbe	.label_606
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_606
	addss	xmm1, dword ptr [rip + label_617]
	ucomiss	xmm0, xmm1
	jbe	.label_606
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_607]
	ucomiss	xmm2, xmm0
	jb	.label_606
	ucomiss	xmm0, xmm1
	jbe	.label_606
.label_614:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_609
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_616
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_603
.label_616:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_603:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_610]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_611]
	jae	.label_606
.label_609:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_613
	nop	
.label_618:
	add	rbx, 2
.label_613:
	cmp	rbx, -1
	je	.label_606
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_604
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_615:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_604
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_615
.label_604:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_618
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_606
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_606
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_606
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
	jmp	.label_608
.label_606:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_608:
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
	#Procedure 0x407e40

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
	.align	32
	#Procedure 0x407e50

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e60
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_619
	nop	word ptr cs:[rax + rax]
.label_622:
	add	r14, 0x10
.label_619:
	cmp	r14, rax
	jae	.label_621
	cmp	qword ptr [r14], 0
	je	.label_622
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_623
	nop	word ptr cs:[rax + rax]
.label_625:
	test	cl, 1
	je	.label_624
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_624:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_625
.label_623:
	test	cl, cl
	je	.label_620
	mov	rdi, qword ptr [r14]
	call	rax
.label_620:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_622
.label_621:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f10

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_628
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_628
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_634
	nop	
.label_626:
	add	r15, 0x10
.label_634:
	cmp	r15, rax
	jae	.label_628
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_626
	test	r15, r15
	je	.label_626
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_627
.label_632:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_627:
	test	rbx, rbx
	jne	.label_632
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_626
.label_628:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_633
	nop	
.label_631:
	add	r15, 0x10
.label_633:
	cmp	r15, rax
	jae	.label_636
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_631
	nop	word ptr cs:[rax + rax]
.label_630:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_630
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_631
.label_636:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_635
.label_629:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_629
.label_635:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fe0

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
	jne	.label_648
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_653
	cvtsi2ss	xmm0, rsi
	jmp	.label_639
.label_653:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_639:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_610]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_611]
	jae	.label_641
.label_648:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_645
	nop	dword ptr [rax + rax]
.label_655:
	add	rbx, 2
.label_645:
	cmp	rbx, -1
	je	.label_641
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_637
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_651:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_637
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_651
.label_637:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_655
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_641
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_646
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_641
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
	je	.label_642
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_646
.label_642:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_654
	nop	
.label_647:
	add	r12, 0x10
.label_654:
	cmp	r12, r15
	jae	.label_643
	cmp	qword ptr [r12], 0
	je	.label_647
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_649
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_652:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_640
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_644
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_650
	nop	word ptr [rax + rax]
.label_644:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_650:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_652
.label_649:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_647
.label_643:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_638
	mov	rdi, qword ptr [rsp]
	call	free
.label_641:
	xor	ebp, ebp
.label_646:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_640:
	call	abort
.label_638:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408270

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_668
	test	dl, dl
	je	.label_663
	nop	dword ptr [rax]
.label_673:
	cmp	qword ptr [r13], 0
	je	.label_667
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_671
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_674:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_657
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_665
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_660
	nop	word ptr [rax + rax]
.label_665:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_660:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_674
	mov	rax, qword ptr [r15 + 8]
.label_671:
	mov	qword ptr [r13 + 8], 0
.label_667:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_673
	jmp	.label_668
	nop	word ptr cs:[rax + rax]
.label_663:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_662
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_666
	nop	word ptr [rax + rax]
.label_664:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_657
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_659
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_672
	nop	word ptr [rax + rax]
.label_659:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_672:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_664
	mov	r12, qword ptr [r13]
.label_666:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_670
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_675
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_658
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_661
	nop	dword ptr [rax + rax]
.label_675:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_656
.label_658:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_676
.label_661:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_656:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_662:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_663
.label_668:
	mov	al, 1
.label_669:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_676:
	xor	eax, eax
	jmp	.label_669
.label_657:
	call	abort
.label_670:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408490

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
	je	.label_685
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_685
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_683
	cmp	rsi, r14
	je	.label_699
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_702
	mov	rax, qword ptr [r12]
.label_698:
	test	rax, rax
	jne	.label_704
	jmp	.label_683
.label_699:
	mov	rax, r14
.label_704:
	xor	ebp, ebp
	test	r15, r15
	je	.label_680
	mov	qword ptr [r15], rax
	jmp	.label_680
.label_702:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_683
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_695:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_687
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_691
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_695
.label_683:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_696
	cvtsi2ss	xmm1, rax
	jmp	.label_701
.label_696:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_701:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_706
	cvtsi2ss	xmm0, rcx
	jmp	.label_682
.label_706:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_682:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_679
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_692
	ucomiss	xmm2, dword ptr [rip + label_617]
	jbe	.label_694
	movss	xmm3, dword ptr [rip + label_605]
	ucomiss	xmm3, xmm2
	jbe	.label_694
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_612]
	jbe	.label_694
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_694
	addss	xmm3, dword ptr [rip + label_617]
	ucomiss	xmm2, xmm3
	jbe	.label_694
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_607]
	ucomiss	xmm5, xmm4
	jb	.label_694
	ucomiss	xmm4, xmm3
	ja	.label_681
.label_694:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_688]
	jmp	.label_681
.label_692:
	mov	eax, OFFSET FLAT:default_tuning
.label_681:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_679
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_705
	mulss	xmm0, xmm2
.label_705:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_611]
	jae	.label_680
	movss	xmm1, dword ptr [rip + label_610]
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
	je	.label_680
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_685
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_679
	cmp	rsi, r14
	mov	rax, r14
	je	.label_690
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_697
	mov	rax, qword ptr [r12]
.label_690:
	test	rax, rax
	jne	.label_700
.label_679:
	cmp	qword ptr [r12], 0
	je	.label_693
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_703
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_707
.label_693:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_677]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_678
.label_703:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_680
.label_707:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_678:
	mov	ebp, 1
.label_680:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_687:
	mov	rax, r14
	jmp	.label_698
.label_691:
	mov	rax, qword ptr [rbp]
	jmp	.label_698
.label_697:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_679
	lea	rbp, [rbx + rbp + 8]
.label_686:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_689
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_684
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_686
	jmp	.label_679
.label_689:
	mov	rax, r14
	jmp	.label_690
.label_684:
	mov	rax, qword ptr [rbp]
	jmp	.label_690
.label_685:
	call	abort
.label_700:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087d0

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
	je	.label_708
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_708:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408800

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
	jae	.label_714
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_709
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_721
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_724
	mov	r14, qword ptr [r13]
.label_721:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_715
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_723
.label_724:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_709
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_722:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_716
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_719
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_722
	jmp	.label_709
.label_715:
	mov	qword ptr [r13], 0
	jmp	.label_723
.label_716:
	mov	rcx, rax
	jmp	.label_726
.label_719:
	mov	r14, qword ptr [rcx]
.label_726:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_723:
	xor	r12d, r12d
	test	r14, r14
	je	.label_709
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_711
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_713
	cvtsi2ss	xmm1, rax
	jmp	.label_718
.label_713:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_718:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_720
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_725
.label_720:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_725:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_711
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_729
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_617]
	jbe	.label_712
	movss	xmm4, dword ptr [rip + label_605]
	ucomiss	xmm4, xmm3
	jbe	.label_712
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_712
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_612]
	jbe	.label_712
	movss	xmm4, dword ptr [rip + label_617]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_712
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_607]
	ucomiss	xmm5, xmm3
	jb	.label_712
	ucomiss	xmm3, xmm4
	ja	.label_727
.label_712:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_727
.label_729:
	mov	eax, OFFSET FLAT:default_tuning
.label_727:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_711
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_710
	mulss	xmm0, dword ptr [rax + 8]
.label_710:
	movss	xmm1, dword ptr [rip + label_610]
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
	jne	.label_711
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_717
	nop	word ptr cs:[rax + rax]
.label_728:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_728
.label_717:
	mov	qword ptr [r15 + 0x48], 0
.label_711:
	mov	r12, r14
.label_709:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_714:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408aa0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_94
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_730
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ad0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x408ae0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_748
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_748:
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
	ja	.label_737
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_749
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_738
	test	esi, esi
	jne	.label_737
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_751
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_731
.label_737:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_732
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_738
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_740
.label_749:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_744
.label_738:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_745
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_746
.label_745:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_746:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_747:
	call	fcntl
.label_744:
	mov	ebp, eax
.label_733:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_740:
	cmp	eax, 6
	jne	.label_732
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_735
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_743
.label_732:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_739
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_742
.label_751:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_731:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_747
.label_735:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_743:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_750
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_734
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_734
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_733
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_741
.label_734:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_733
.label_739:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_742:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_744
.label_750:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_741:
	test	al, al
	je	.label_733
	test	ebp, ebp
	js	.label_733
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_736
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_733
.label_736:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_733
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x408d80

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
