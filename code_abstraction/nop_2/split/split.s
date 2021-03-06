	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
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
	je	.label_7
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.8
	mov	ecx, OFFSET FLAT:.str.61
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x68], rbp
	mov	dword ptr [rsp + 0x70], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	qword ptr [rsp + 0x50], rbx
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + infile], OFFSET FLAT:.str.12
	mov	qword ptr [rip + outbase], OFFSET FLAT:.str.13
	not	rbx
	mov	qword ptr [rsp + 0x40], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rsp + 0x48], rax
	xor	r12d, r12d
	mov	dword ptr [rsp + 0x78], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	r15d, r15d
	jmp	.label_25
.label_620:
	mov	byte ptr [rip + verbose],  1
	nop	word ptr [rax + rax]
.label_25:
	mov	ebx, dword ptr [rip + optind]
	test	ebx, ebx
	mov	eax, 1
	cmove	ebx, eax
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x68]
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, 0x42
	jle	.label_174
	lea	eax, [r13 - 0x74]
	cmp	eax, 0xf
	jbe	.label_11
	lea	eax, [r13 - 0x61]
	cmp	eax, 0xd
	ja	.label_13
	jmp	qword ptr [(rax * 8) + label_15]
.label_694:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x1fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rip + suffix_length],  rax
	jmp	.label_25
	nop	dword ptr [rax + rax]
.label_174:
	cmp	r13d, 0x2f
	jle	.label_124
	lea	eax, [r13 - 0x30]
	cmp	eax, 0xa
	jae	.label_33
	test	r15d, r15d
	mov	ebp, 0
	je	.label_36
	cmp	r15d, 4
	mov	rbp, r12
	jne	.label_22
.label_36:
	cmp	dword ptr [rsp + 0x78], 0
	je	.label_159
	cmp	dword ptr [rsp + 0x78], ebx
	mov	eax, 0
	jne	.label_41
.label_159:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	mov	rax, rbp
	ja	.label_43
.label_41:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r13d
	lea	r12, [rdx + rcx*2 - 0x30]
	mov	r15d, 4
	cmp	r12, rax
	mov	dword ptr [rsp + 0x78], ebx
	mov	rbp, rax
	jae	.label_25
	jmp	.label_43
	nop	dword ptr [rax]
.label_11:
	jmp	qword ptr [(rax * 8) + label_55]
.label_617:
	mov	rax, qword ptr [rip + optarg]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_58
	mov	dl, byte ptr [rax + 1]
	test	dl, dl
	je	.label_62
	movzx	ecx, cl
	cmp	ecx, 0x5c
	jne	.label_69
	movzx	ecx, dl
	cmp	ecx, 0x30
	jne	.label_69
	cmp	byte ptr [rax + 2], 0
	jne	.label_69
	xor	ecx, ecx
.label_62:
	mov	edx, dword ptr [rip + eolchar]
	test	edx, edx
	movsx	eax, cl
	js	.label_141
	cmp	eax, edx
	jne	.label_74
.label_141:
	mov	dword ptr [rip + eolchar],  eax
	jmp	.label_25
.label_619:
	cmp	r13d, 0x64
	mov	r14d, OFFSET FLAT:.str.29
	mov	eax, OFFSET FLAT:.str.28
	cmove	r14, rax
	mov	qword ptr [rip + suffix_alphabet],  r14
	mov	rbp, qword ptr [rip + optarg]
	test	rbp, rbp
	je	.label_25
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, rbp
	mov	rsi, r14
	call	strspn
	cmp	rbx, rax
	jne	.label_90
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x30
	jne	.label_91
	inc	rbp
	nop	dword ptr [rax + rax]
.label_96:
	cmp	byte ptr [rbp], 0
	je	.label_94
	mov	qword ptr [rip + optarg],  rbp
	movzx	eax, byte ptr [rbp]
	inc	rbp
	cmp	eax, 0x30
	je	.label_96
.label_94:
	dec	rbp
.label_91:
	mov	qword ptr [rip + numeric_suffix_start],  rbp
	jmp	.label_25
.label_13:
	cmp	r13d, 0x43
	jne	.label_33
	test	r15d, r15d
	jne	.label_22
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x7fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 2
	jmp	.label_25
.label_618:
	mov	byte ptr [rip + unbuffered],  1
	jmp	.label_25
.label_621:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + filter_command],  rax
	jmp	.label_25
.label_622:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_25
.label_623:
	mov	rbx, qword ptr [rip + optarg]
	mov	rdi, rbx
	call	last_component
	cmp	rax, rbx
	jne	.label_162
	mov	qword ptr [rip + additional_suffix],  rbx
	jmp	.label_25
.label_695:
	test	r15d, r15d
	jne	.label_22
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x7fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 1
	jmp	.label_25
.label_696:
	mov	byte ptr [rip + elide_empty_files],  1
	jmp	.label_25
.label_697:
	test	r15d, r15d
	jne	.label_22
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 3
	jmp	.label_25
.label_698:
	test	r15d, r15d
	jne	.label_22
	mov	rbx, qword ptr [rip + optarg]
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	je	.label_151
	inc	rbx
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_152:
	mov	qword ptr [rip + optarg],  rcx
	movzx	edx, byte ptr [rcx]
	mov	rsi, qword ptr [rax]
	mov	rbx, rcx
	inc	rcx
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	jne	.label_152
.label_151:
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.label_161
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	mov	r15d, 5
	test	eax, eax
	jne	.label_168
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	mov	r15d, 6
	jmp	.label_168
.label_161:
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	mov	r15d, 7
.label_168:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_12
	lea	rbx, [rbp + 1]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	cmp	qword ptr [rip + optarg],  rbp
	je	.label_25
	mov	byte ptr [rbp], 0
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r12
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_25
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	jmp	.label_25
.label_124:
	cmp	r13d, -1
	jne	.label_48
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, rcx
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x60]
	je	.label_51
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	jne	.label_56
.label_51:
	mov	eax, 3
	mov	r13d, 0x3e8
	test	r15d, r15d
	je	.label_148
	test	r12, r12
	mov	eax, r15d
	mov	r13, r12
	je	.label_65
.label_148:
	cmp	dword ptr [rip + eolchar],  0
	jns	.label_68
	mov	dword ptr [rip + eolchar],  0xa
.label_68:
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	test	rdi, rdi
	je	.label_73
	mov	byte ptr [rip + suffix_auto],  1
.label_73:
	lea	r15d, [rax - 5]
	mov	r12, rax
	xor	ebp, ebp
	cmp	r15d, 2
	ja	.label_76
	test	rdi, rdi
	mov	rbx, r13
	je	.label_78
	lea	rcx, [rsp + 0x80]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	call	xstrtoumax
	test	eax, eax
	mov	rbx, r13
	jne	.label_78
	mov	rax, qword ptr [rsp + 0x80]
	mov	rcx, r13
	not	rcx
	xor	edx, edx
	cmp	rax, r13
	mov	ebx, 0
	cmovb	rbx, rax
	cmp	rax, rcx
	cmova	rbx, rdx
	add	rbx, r13
.label_78:
	mov	rdi, qword ptr [rip + suffix_alphabet]
	call	strlen
	mov	rcx, rax
	mov	rbp, -1
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_101:
	xor	edx, edx
	div	rcx
	inc	rbp
	test	rax, rax
	jne	.label_101
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	setne	al
	movzx	eax, al
	add	rbp, rax
	mov	byte ptr [rip + suffix_auto],  1
.label_76:
	mov	rbx, qword ptr [rip + suffix_length]
	test	rbx, rbx
	je	.label_106
	cmp	rbx, rbp
	jb	.label_107
	mov	byte ptr [rip + suffix_auto],  1
	jmp	.label_109
.label_106:
	cmp	rbp, 2
	mov	ebx, 2
	cmovae	rbx, rbp
	mov	qword ptr [rip + suffix_length],  rbx
.label_109:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 0x70]
	jge	.label_112
	movsxd	rcx, eax
	inc	eax
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rip + infile],  rcx
.label_112:
	cmp	eax, dword ptr [rsp + 0x70]
	jge	.label_114
	movsxd	rcx, eax
	lea	eax, [rax + 1]
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rip + outbase],  rcx
.label_114:
	cmp	eax, dword ptr [rsp + 0x70]
	jl	.label_116
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	test	rdi, rdi
	je	.label_118
	call	strlen
	cmp	rax, rbx
	ja	.label_121
.label_118:
	mov	rsi, qword ptr [rip + infile]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_122
	cmp	byte ptr [rsi + 1], 0
	je	.label_125
.label_122:
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	js	.label_127
.label_125:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:in_stat_buf
	call	__fxstat
	test	eax, eax
	jne	.label_61
	mov	qword ptr [rsp + 0x78], r13
	test	r14, r14
	jne	.label_134
	mov	rax, qword ptr [rip + label_135]
	movabs	rcx, 0x1fffffffffffffff
	mov	rdx, rcx
	add	rdx, 2
	cmp	rax, rdx
	mov	ecx, 0x200
	mov	r14d, 0x200
	cmovb	r14, rax
	test	rax, rax
	cmovle	r14, rcx
	cmp	rax, rdx
	mov	ecx, 0x20000
	cmovae	r14, rcx
	test	rax, rax
	cmovle	r14, rcx
	cmp	rax, 0x20000
	cmovl	r14, rcx
.label_134:
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [r14 + rbx]
	call	xmalloc
	lea	rcx, [rax + rbx - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rbx
	sub	rcx, rdx
	mov	r13, -1
	cmp	r15d, 1
	ja	.label_142
	mov	qword ptr [rsp + 0x50], rcx
	xor	ebx, ebx
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r13, rax
	test	r13, r13
	js	.label_150
	mov	rbp, qword ptr [rsp + 0x78]
.label_157:
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rax + rbx]
	mov	rdx, r14
	sub	rdx, rbx
	xor	edi, edi
	call	safe_read
	test	rax, rax
	je	.label_92
	cmp	rax, -1
	je	.label_14
	add	rbx, rax
	cmp	rbx, r14
	jb	.label_157
	mov	rax, qword ptr [rip + label_160]
	test	rax, rax
	je	.label_19
	add	r13, rbx
	mov	ecx, 0x2000
	or	ecx, dword ptr [rip + label_164]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_165
	cmp	r13, rax
	jle	.label_9
.label_165:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 2
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_14
	cmp	r15, r13
	mov	rax, r13
	je	.label_9
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r13
	call	lseek
	test	rax, rax
	js	.label_14
	cmp	r15, r13
	cmovl	r15, r13
	mov	rax, r15
.label_9:
	sub	rax, r13
	add	rbx, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	rbx, rax
	je	.label_19
.label_92:
	test	rbx, rbx
	js	.label_14
	test	rbp, rbp
	js	.label_23
	cmp	rbx, r14
	mov	r13, r14
	cmovb	r13, rbx
	cmp	rbx, rbp
	cmovbe	rbx, rbp
	mov	qword ptr [rsp + 0x48], rbx
	jmp	.label_26
.label_142:
	mov	qword ptr [rsp + 0x50], rcx
.label_26:
	mov	qword ptr [rsp + 0x60], r14
	cmp	qword ptr [rip + filter_command],  0
	je	.label_31
	mov	edi, OFFSET FLAT:newblocked
	call	sigemptyset
	lea	rdx, [rsp + 0x80]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x80], 1
	je	.label_39
	mov	edi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:newblocked
	mov	edx, OFFSET FLAT:oldblocked
	call	sigprocmask
.label_31:
	xor	r14d, r14d
	dec	r12d
	cmp	r12d, 6
	ja	.label_46
	mov	al, 1
	mov	dword ptr [rsp + 0x70], eax
	mov	rcx, qword ptr [rsp + 0x58]
	jmp	qword ptr [(r12 * 8) + label_49]
	nop	dword ptr [rax + rax]
.label_95:
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x50]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x60]
	call	safe_read
	cmp	rax, -1
	je	.label_61
	lea	r13, [rbx + rax]
	mov	ebp, dword ptr [rip + eolchar]
	mov	byte ptr [rbx + rax], bpl
	mov	qword ptr [rsp + 0x68], rax
	lea	r15, [rbx + rax + 1]
	jmp	.label_63
	nop	dword ptr [rax + rax]
.label_66:
	mov	eax, dword ptr [rsp + 0x70]
	and	al, 1
	mov	rdx, rbx
	sub	rdx, r12
	movzx	edi, al
	mov	rsi, r12
	call	cwrite
	mov	al, 1
	mov	dword ptr [rsp + 0x70], eax
	xor	r14d, r14d
	mov	ebp, dword ptr [rip + eolchar]
.label_63:
	mov	r12, rbx
	nop	dword ptr [rax]
.label_83:
	mov	rdx, r15
	sub	rdx, rbx
	mov	rdi, rbx
	mov	esi, ebp
	call	memchr
	mov	rbx, rax
	cmp	rbx, r13
	je	.label_98
	inc	rbx
	inc	r14
	cmp	r14, qword ptr [rsp + 0x78]
	jb	.label_83
	jmp	.label_66
	nop	word ptr [rax + rax]
.label_98:
	sub	r13, r12
	je	.label_88
	mov	eax, dword ptr [rsp + 0x70]
	and	al, 1
	movzx	edi, al
	mov	rsi, r12
	mov	rdx, r13
	call	cwrite
	mov	dword ptr [rsp + 0x70], 0
.label_88:
	mov	rax, qword ptr [rsp + 0x68]
	test	rax, rax
	jne	.label_95
	jmp	.label_60
.label_673:
	mov	rcx, -1
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x60]
	jmp	.label_99
.label_674:
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rax, rdx
	not	rax
	mov	qword ptr [rsp + 0x28], rax
	xor	esi, esi
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	r14d, r14d
	mov	r13, qword ptr [rsp + 0x78]
.label_52:
	mov	r12, rsi
	xor	edi, edi
	mov	r15, qword ptr [rsp + 0x50]
	mov	rsi, r15
	call	safe_read
	test	rax, rax
	je	.label_111
	cmp	rax, -1
	mov	qword ptr [rsp + 0x70], r15
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, r12
	jne	.label_47
	jmp	.label_61
.label_123:
	mov	qword ptr [rsp + 0x58], rbx
	jmp	.label_113
.label_21:
	mov	qword ptr [rsp + 0x58], rbx
	jmp	.label_113
	nop	word ptr cs:[rax + rax]
.label_47:
	mov	qword ptr [rsp + 0x68], rsi
	sub	r13, r14
	mov	rbx, qword ptr [rsp + 0x58]
	sub	r13, rbx
	cmp	r13, r15
	jbe	.label_115
	mov	esi, dword ptr [rip + eolchar]
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	call	memrchr
	mov	r12, rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_120
	nop	word ptr [rax + rax]
.label_115:
	mov	rdi, qword ptr [rsp + 0x70]
	lea	rax, [rdi + r13 - 1]
	mov	qword ptr [rsp + 0x38], rax
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, r13
	call	memrchr
	mov	r12, rax
.label_120:
	test	rbx, rbx
	je	.label_129
	test	r14, r14
	je	.label_131
	test	r12, r12
	jne	.label_131
	mov	qword ptr [rsp + 0x40], r15
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	qword ptr [rsp + 0x40], r15
	xor	ebx, ebx
	jmp	.label_132
	nop	dword ptr [rax]
.label_131:
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x40], r15
	test	r14, r14
	sete	al
	movzx	edi, al
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rsi, rbp
	mov	rdx, rbx
	call	cwrite
	add	r14, rbx
	mov	rax, rbx
	mov	rbx, qword ptr [rsp + 0x60]
	cmp	rax, rbx
	jbe	.label_139
	mov	rdi, rbp
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rsp + 0x48], rax
.label_139:
	mov	qword ptr [rsp + 0x68], rbx
	xor	ebx, ebx
	mov	rbp, qword ptr [rsp + 0x30]
.label_132:
	test	r12, r12
	je	.label_143
	mov	r15, rbx
	mov	rbx, r12
	mov	rsi, qword ptr [rsp + 0x70]
	sub	rbx, rsi
	lea	rbp, [rbx + 1]
	test	r14, r14
	sete	al
	movzx	edi, al
	mov	rdx, rbp
	call	cwrite
	lea	r14, [r14 + rbx + 1]
	mov	rbx, r15
	mov	r15, qword ptr [rsp + 0x40]
	sub	r15, rbp
	inc	r12
	mov	rcx, qword ptr [rsp + 0x38]
	test	rcx, rcx
	cmove	rbp, rcx
	sub	r13, rbp
	mov	dl, 1
	mov	qword ptr [rsp + 0x70], r12
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	qword ptr [rsp + 0x58], rbx
	test	bpl, 1
	jne	.label_156
	test	r14, r14
	sete	al
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x30], rbp
	mov	rbp, r15
	cmovne	rbp, r13
	movzx	edi, al
	mov	rax, r13
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x20], rax
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, r12
	mov	rdx, rbp
	call	cwrite
	mov	rcx, rbx
	add	r14, rbp
	sub	r15, rbp
	add	r12, rbp
	mov	qword ptr [rsp + 0x70], r12
	sub	r13, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x30]
	mov	dl, al
	mov	rbx, qword ptr [rsp + 0x58]
	jmp	.label_147
.label_156:
	mov	dl, bpl
	mov	rbx, qword ptr [rsp + 0x58]
	mov	r15, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	nop	
.label_147:
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x68]
	je	.label_16
	test	r13, r13
	jne	.label_20
.label_16:
	test	rcx, rcx
	jne	.label_123
	test	r15, r15
	je	.label_21
.label_20:
	mov	qword ptr [rsp + 0x40], r14
	test	rcx, rcx
	cmove	r13, r15
	mov	rax, rsi
	sub	rax, rbx
	mov	r14b, dl
	mov	rbp, rcx
	cmp	rax, r13
	jae	.label_86
	cmp	rsi, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 0x48]
	ja	.label_28
	add	rsi, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x68], rsi
	call	xrealloc
	jmp	.label_34
	nop	
.label_86:
	mov	rax, qword ptr [rsp + 0x48]
.label_34:
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rax + rbx]
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	mov	qword ptr [rsp + 0x58], rbx
	sub	r15, r13
	add	r12, r13
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	dl, r14b
	mov	r14, qword ptr [rsp + 0x40]
.label_113:
	xor	eax, eax
	test	rcx, rcx
	mov	ebp, 0
	mov	r13, qword ptr [rsp + 0x78]
	jne	.label_45
	mov	bpl, dl
.label_45:
	cmovne	r14, rax
	test	r15, r15
	jne	.label_47
	cmp	qword ptr [rsp + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_52
.label_111:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	mov	rbx, qword ptr [rsp + 0x48]
	je	.label_57
	test	r14, r14
	sete	al
	movzx	edi, al
	mov	rsi, rbx
	call	cwrite
.label_57:
	mov	rdi, rbx
	call	free
	jmp	.label_60
.label_675:
	test	rcx, rcx
	je	.label_67
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rbp, rsi
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x48]
	jae	.label_71
	cmp	rsi, rbx
	ja	.label_71
	xor	edx, edx
	mov	rax, rbx
	div	rsi
	mov	r15, rax
	imul	rbp, r15
	imul	r15, rcx
	cmp	rcx, rsi
	cmove	r15, rbx
	sub	r13, rbp
	jbe	.label_77
	lea	rsi, [rdi + rbp]
	mov	r12, rdi
	mov	rdx, r13
	call	memmove
	jmp	.label_85
.label_676:
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rcx, rsi
	mov	rbp, qword ptr [rsp + 0x48]
	ja	.label_75
	lea	rax, [rsi - 1]
	cmp	rax, rbp
	jae	.label_75
	xor	edx, edx
	mov	rax, rbp
	div	rsi
	mov	r12d, 1
	xor	r15d, r15d
	cmp	rcx, 2
	mov	rdx, qword ptr [rsp + 0x60]
	jb	.label_104
	lea	r12, [rcx - 1]
	mov	r15, rax
	mov	qword ptr [rsp + 0x28], r15
	mov	r14, rcx
	imul	r15, r12
	dec	r15
	mov	rsi, r15
	sub	rsi, r13
	jae	.label_100
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rdi + r15]
	sub	r13, r15
	mov	rdx, r13
	call	memmove
	mov	rbx, r15
	mov	rcx, r14
	mov	rdx, qword ptr [rsp + 0x60]
	jmp	.label_97
.label_677:
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_108
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rax, rbp
	shr	rax, 0x3a
	jne	.label_110
	mov	rdi, rbp
	shl	rdi, 5
	call	xmalloc
	mov	r12, rax
	mov	rbx, r12
	add	rbx, 0x18
	nop	dword ptr [rax + rax]
.label_105:
	call	next_file_name
	mov	rdi, qword ptr [rip + outfile]
	call	xstrdup
	mov	qword ptr [rbx - 0x18], rax
	mov	dword ptr [rbx - 0x10], 0xffffffff
	mov	qword ptr [rbx - 8], 0
	mov	dword ptr [rbx], 0
	add	rbx, 0x20
	dec	rbp
	jne	.label_105
.label_108:
	mov	qword ptr [rsp + 0x38], r12
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x70], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	rdx, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x50]
	jmp	.label_126
.label_144:
	mov	r12, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x48]
.label_126:
	xor	edi, edi
	mov	rsi, r15
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	je	.label_128
	cmp	rbx, -1
	je	.label_61
	add	rbx, r15
	mov	rbp, r15
	jmp	.label_133
.label_171:
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rax, qword ptr [rsp + 0x78]
	lea	rax, [rax + 1]
	mov	ecx, 1
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x70], rcx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r13, qword ptr [rsp + 0x48]
.label_133:
	mov	dl, r13b
.label_54:
	mov	rax, qword ptr [rsp + 0x40]
	shl	rax, 5
	mov	qword ptr [rsp + 0x18], rax
	lea	rcx, [r12 + rax + 8]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rax, [r12 + rax + 0x10]
	mov	qword ptr [rsp + 0x30], rax
.label_50:
	mov	al, dl
	mov	qword ptr [rsp + 0x48], rax
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	rbp, rbx
	je	.label_144
	mov	r12, r15
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, rbx
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	mov	r13, rbx
	mov	r15, rax
	lea	rbx, [r15 + 1]
	mov	qword ptr [rsp + 0x68], rbx
	test	r15, r15
	cmove	rbx, r13
	sub	rbx, rbp
	test	r14, r14
	je	.label_130
	cmp	qword ptr [rsp + 0x70], r14
	jne	.label_103
	movzx	eax, byte ptr [rip + unbuffered]
	and	eax, 1
	cmp	eax, 1
	jne	.label_140
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_103
	jmp	.label_44
	nop	
.label_140:
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_166
.label_103:
	test	r15, r15
	mov	rbx, r13
	mov	rbp, rbx
	mov	r15, r12
	je	.label_167
	jmp	.label_171
.label_130:
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x78]
	call	ofile_open
	mov	byte ptr [rsp + 0x17], al
	movzx	eax, byte ptr [rip + unbuffered]
	and	eax, 1
	cmp	eax, 1
	jne	.label_175
	mov	rax, qword ptr [rsp + 0x28]
	mov	edi, dword ptr [rax]
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_17
	jmp	.label_18
.label_175:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_17
.label_18:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x20
	jne	.label_24
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_24
.label_17:
	mov	rax, qword ptr [rsp + 0x48]
	and	al, 1
	mov	qword ptr [rsp + 0x48], rax
	call	__errno_location
	mov	rsi, rax
	mov	eax, dword ptr [rsi]
	cmp	qword ptr [rip + filter_command],  0
	jne	.label_32
	mov	cl, 1
	mov	qword ptr [rsp + 0x20], rcx
.label_32:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	dl, byte ptr [rsp + 0x17]
	or	dl, cl
	cmp	eax, 0x20
	mov	rbp, qword ptr [rsp + 0x30]
	je	.label_37
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_37:
	test	dl, dl
	je	.label_173
	mov	qword ptr [rsp + 0x48], rsi
	mov	bl, dl
	mov	rdi, qword ptr [rbp]
	call	rpl_fclose
	test	eax, eax
	jne	.label_30
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xfffffffe
	mov	dl, bl
.label_173:
	test	r15, r15
	mov	rbx, r13
	mov	rbp, rbx
	mov	r15, r12
	je	.label_50
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, qword ptr [rsp + 0x78]
	mov	r12, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x68]
	jne	.label_54
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	jne	.label_54
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x40], rax
.label_128:
	test	r14, r14
	jne	.label_60
	mov	rax, qword ptr [rsp + 8]
	test	al, 1
	mov	rax, qword ptr [rsp + 0x40]
	cmovne	rax, qword ptr [rsp + 0x78]
	movsxd	r14, eax
	lea	rbp, [r12 + 0x18]
	xor	ebx, ebx
	mov	r15, qword ptr [rsp + 0x78]
	nop	word ptr [rax + rax]
.label_93:
	cmp	rbx, r14
	jb	.label_81
	mov	al, byte ptr [rip + elide_empty_files]
	and	al, 1
	jne	.label_81
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r15
	call	ofile_open
.label_81:
	mov	esi, dword ptr [rbp - 0x10]
	test	esi, esi
	js	.label_87
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp]
	call	closeout
.label_87:
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	inc	rbx
	add	rbp, 0x20
	cmp	r15, rbx
	jne	.label_93
	jmp	.label_60
.label_104:
	lea	rbx, [rax - 1]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_97
.label_67:
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x78]
	div	r8
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rcx, r13
.label_99:
	call	bytes_split
	jmp	.label_60
.label_77:
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	mov	r13, -1
	test	rax, rax
	jns	.label_85
	jmp	.label_61
	nop	word ptr cs:[rax + rax]
.label_117:
	add	rbp, rbx
	mov	r13, -1
.label_85:
	cmp	r15, rbp
	jle	.label_60
	cmp	r13, -1
	jne	.label_153
	xor	edi, edi
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x60]
	call	safe_read
	mov	r13, rax
	cmp	r13, -1
	je	.label_61
.label_153:
	test	r13, r13
	je	.label_60
	mov	rbx, r15
	sub	rbx, rbp
	cmp	r13, rbx
	cmovb	rbx, r13
	mov	edi, 1
	mov	rsi, r12
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_117
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x20
	jne	.label_119
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	jne	.label_117
.label_119:
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:.str.12
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_100:
	xor	edi, edi
	mov	edx, 1
	call	lseek
	mov	r13, -1
	test	rax, rax
	mov	rbx, r15
	mov	rcx, r14
	mov	rdx, qword ptr [rsp + 0x60]
	js	.label_61
.label_97:
	cmp	r15, rbp
	jge	.label_136
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x68], 1
	xor	r8d, r8d
	jmp	.label_137
.label_79:
	mov	rbp, qword ptr [rsp + 0x48]
	sub	rbp, r15
	cmp	r13, rbp
	cmovb	rbp, r13
	test	rbp, rbp
	je	.label_38
	mov	dword ptr [rsp + 0x30], 0
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rax + rbp]
	mov	qword ptr [rsp + 0x18], rsi
	mov	rdi, rax
	jmp	.label_64
.label_38:
	xor	r8d, r8d
.label_70:
	mov	r13, -1
	cmp	r15, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x58]
	jl	.label_137
	jmp	.label_80
.label_53:
	mov	qword ptr [rsp + 0x20], rdx
	mov	cl, byte ptr [rsp + 0x68]
	mov	r13b, cl
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_146
.label_59:
	mov	qword ptr [rsp + 0x20], rdx
	mov	cl, byte ptr [rsp + 0x68]
	mov	r13b, cl
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r14, qword ptr [rsp + 0x28]
.label_146:
	cmp	rdi, rsi
	jne	.label_40
	xor	al, 1
	mov	r8b, 1
	test	al, 1
	je	.label_40
	jmp	.label_154
	nop	dword ptr [rax]
.label_169:
	mov	rbp, rcx
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	mov	rcx, rbp
.label_40:
	inc	r12
	test	rcx, rcx
	je	.label_158
	cmp	r12, rcx
	ja	.label_60
.label_158:
	add	rbx, r14
	cmp	qword ptr [rsp + 0x78], r12
	cmove	rbx, qword ptr [rsp + 0x70]
	test	rcx, rcx
	jne	.label_163
	cmp	rbx, r15
	jl	.label_169
.label_163:
	cmp	rbx, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x40]
	jl	.label_170
	xor	r13d, r13d
.label_170:
	mov	al, r13b
	and	al, 1
	cmp	rbx, r15
	jl	.label_146
	test	al, al
	jne	.label_146
	mov	qword ptr [rsp + 0x28], r14
	mov	eax, dword ptr [rsp + 0x30]
	mov	r8b, al
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_10
.label_154:
	mov	qword ptr [rsp + 0x28], r14
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_10
.label_64:
	mov	qword ptr [rsp + 0x38], rbp
	mov	al, byte ptr [rsp + 0x68]
	mov	byte ptr [rsp + 0x20], al
	mov	r13, rdi
	mov	rax, rbx
	sub	rax, r15
	mov	ecx, 0
	cmovns	rcx, rax
	cmp	rbp, rcx
	cmovb	rcx, rbp
	lea	rdi, [r13 + rcx]
	mov	r14, rsi
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, rbp
	sub	rdx, rcx
	call	memchr
	mov	rsi, r14
	mov	rbp, rax
	lea	rdi, [rbp + 1]
	test	rbp, rbp
	setne	byte ptr [rsp + 0x68]
	cmove	rdi, rsi
	mov	qword ptr [rsp + 0x40], rdi
	mov	rdx, rdi
	sub	rdx, r13
	mov	rax, qword ptr [rsp + 0x58]
	cmp	r12, rax
	jne	.label_29
	mov	qword ptr [rsp + 0x40], rdi
	mov	edi, 1
	mov	r14, rsi
	mov	rsi, r13
	mov	r13, rdx
	call	full_write
	mov	rdx, r13
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r14
	cmp	rax, rdx
	je	.label_42
	jmp	.label_44
.label_29:
	test	rax, rax
	jne	.label_42
	mov	al, byte ptr [rsp + 0x20]
	and	al, 1
	mov	qword ptr [rsp + 0x40], rdi
	movzx	edi, al
	mov	r14, rsi
	mov	rsi, r13
	mov	r13, rdx
	call	cwrite
	mov	rdx, r13
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r14
.label_42:
	add	r15, rdx
	test	rbp, rbp
	setne	al
	cmp	rbx, r15
	jl	.label_53
	test	al, al
	mov	rbp, qword ptr [rsp + 0x38]
	jne	.label_59
	mov	eax, dword ptr [rsp + 0x30]
	mov	r8b, al
.label_10:
	sub	rbp, rdx
	cmp	rdi, rsi
	mov	al, r8b
	mov	dword ptr [rsp + 0x30], eax
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_64
	jmp	.label_70
.label_137:
	cmp	r13, -1
	jne	.label_72
	mov	r14, rcx
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rbp, rdx
	mov	r13, r8
	call	safe_read
	mov	r8, r13
	mov	rdx, rbp
	mov	rcx, r14
	mov	r13, rax
	cmp	r13, -1
	je	.label_61
.label_72:
	test	r13, r13
	jne	.label_79
	jmp	.label_80
.label_136:
	xor	r8d, r8d
.label_80:
	and	r8b, 1
	movzx	ebx, r8b
	test	rcx, rcx
	jne	.label_60
	add	rbx, r12
	jmp	.label_84
	nop	
.label_89:
	inc	rbx
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
.label_84:
	cmp	rbx, qword ptr [rsp + 0x78]
	jbe	.label_89
.label_60:
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_61
	mov	esi, dword ptr [rip + output_desc]
	mov	edx, dword ptr [rip + filter_pid]
	mov	rcx, qword ptr [rip + outfile]
	xor	edi, edi
	call	closeout
	xor	eax, eax
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_48:
	cmp	r13d, 0xffffff7d
	je	.label_102
	cmp	r13d, 0xffffff7e
	jne	.label_33
	xor	edi, edi
	call	usage
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsp + 0x80]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r8d, r13d
	call	error
.label_61:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
.label_82:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_138:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
.label_27:
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
.label_33:
	mov	edi, 1
	call	usage
.label_102:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.34
	mov	r9d, OFFSET FLAT:.str.35
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_28:
	call	xalloc_die
.label_166:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
.label_44:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	jmp	.label_138
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
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
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_27
.label_116:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdi, qword ptr [rcx + rax*8]
	jmp	.label_145
.label_46:
	call	abort
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_149
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
.label_149:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_90:
	xor	edi, edi
	cmp	r13d, 0x64
	jne	.label_155
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_35
.label_162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_35
.label_127:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + infile]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_172
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.38
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	edi, 1
	call	usage
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_27
.label_150:
	call	__errno_location
	cmp	dword ptr [rax], 0x1d
	jne	.label_14
	mov	dword ptr [rax], 0
.label_14:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_172:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x80]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_155:
	mov	esi, OFFSET FLAT:.str.31
.label_35:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
.label_145:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_75:
	mov	edi, OFFSET FLAT:.str.103
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x362
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.lines_chunk_split
	call	__assert_fail
.label_71:
	mov	edi, OFFSET FLAT:.str.102
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x3e0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.bytes_chunk_extract
	call	__assert_fail
.label_30:
	mov	rax, qword ptr [rsp + 0x48]
	mov	ebx, dword ptr [rax]
.label_24:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx]
	jmp	.label_82
.label_110:
	call	xalloc_die
.label_19:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_14
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039a0

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], rdi
	lea	rsi, [r8 - 1]
	mov	bpl, 1
	xor	r12d, r12d
	mov	r13b, 1
	mov	rcx, rdi
.label_189:
	cmp	r14, -1
	je	.label_191
	cmp	r14, qword ptr [rsp + 0x18]
	setb	byte ptr [rsp + 0x2f]
	jmp	.label_183
	nop	word ptr [rax + rax]
.label_191:
	test	r13b, 1
	jne	.label_187
	mov	r15, rsi
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rcx
	mov	rbx, rcx
	call	lseek
	cmp	rax, -1
	je	.label_178
	mov	bpl, 1
.label_178:
	cmovne	rbx, qword ptr [rsp + 0x30]
	jmp	.label_181
.label_187:
	mov	rbx, rcx
	mov	r15, rsi
.label_181:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_188
	test	r14, r14
	sete	byte ptr [rsp + 0x2f]
	mov	rsi, r15
	mov	rcx, rbx
.label_183:
	cmp	r14, rcx
	mov	r15, qword ptr [rsp + 0x20]
	jb	.label_179
	nop	dword ptr [rax + rax]
.label_186:
	mov	al, r13b
	or	al, bpl
	and	bpl, 1
	test	al, 1
	je	.label_176
	movzx	edi, bpl
	mov	r13, r12
	mov	r12, rsi
	mov	rsi, r15
	mov	rdx, rcx
	mov	rbx, rbp
	mov	rbp, rcx
	call	cwrite
	mov	rcx, rbp
	mov	rbp, rbx
	mov	rsi, r12
	mov	r12, r13
	mov	r13b, al
.label_176:
	movzx	eax, bpl
	add	r12, rax
	cmp	rsi, r12
	jae	.label_185
	mov	al, r13b
	and	al, 1
	je	.label_184
.label_185:
	cmp	rsi, r12
	setae	bpl
	add	r15, rcx
	sub	r14, rcx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	r14, rax
	mov	rcx, rax
	jae	.label_186
	mov	rcx, qword ptr [rsp + 0x30]
.label_179:
	mov	al, 1
	test	r14, r14
	je	.label_182
	mov	qword ptr [rsp + 8], rcx
	mov	al, r13b
	or	al, bpl
	and	bpl, 1
	test	al, 1
	je	.label_180
	movzx	edi, bpl
	mov	rbx, r12
	mov	r12, rsi
	mov	rsi, r15
	mov	rdx, r14
	call	cwrite
	mov	rsi, r12
	mov	r12, rbx
	mov	r13b, al
.label_180:
	movzx	eax, bpl
	add	r12, rax
	xor	ebp, ebp
	mov	bl, r13b
	and	bl, 1
	mov	rdx, r14
	cmove	rdx, rbp
	cmp	r12, qword ptr [rsp + 0x10]
	setne	al
	cmovne	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, rdx
	or	al, bl
.label_182:
	test	al, 1
	je	.label_184
	xor	byte ptr [rsp + 0x2f], 1
	mov	r14, -1
	jne	.label_189
.label_184:
	mov	rbx, qword ptr [rsp + 0x10]
	cmp	r12, rbx
	jae	.label_177
	sub	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_190:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	rbx
	jne	.label_190
.label_177:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_188:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rcx
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_201
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_201
	call	__errno_location
	mov	r12d, dword ptr [rax]
	cmp	r12d, 0x20
	jne	.label_204
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_204
.label_201:
	test	ebx, ebx
	js	.label_194
	test	rbp, rbp
	jne	.label_196
	mov	edi, ebx
	call	close
	test	eax, eax
	js	.label_198
.label_196:
	mov	rax, qword ptr [rip + n_open_pipes]
	test	rax, rax
	je	.label_194
	mov	rcx, qword ptr [rip + open_pipes]
	xor	esi, esi
	mov	rdx, rcx
	nop	word ptr [rax + rax]
.label_202:
	cmp	dword ptr [rdx], ebx
	je	.label_192
	inc	rsi
	add	rdx, 4
	cmp	rsi, rax
	jb	.label_202
	jmp	.label_194
.label_192:
	lea	rsi, [rax - 1]
	mov	qword ptr [rip + n_open_pipes],  rsi
	mov	eax, dword ptr [rcx + rax*4 - 4]
	mov	dword ptr [rdx], eax
.label_194:
	test	r15d, r15d
	jle	.label_199
	mov	dword ptr [rsp + 0x1c], 0
	lea	rsi, [rsp + 0x1c]
	xor	edx, edx
	mov	edi, r15d
	call	waitpid
	cmp	eax, -1
	jne	.label_193
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0xa
	jne	.label_195
.label_193:
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	ebp, ebx
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	sar	eax, 0x19
	test	eax, eax
	jle	.label_197
	cmp	ebp, 0xd
	je	.label_199
	lea	rsi, [rsp]
	mov	edi, ebp
	call	sig2str
	test	eax, eax
	je	.label_203
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x13
	mov	ecx, OFFSET FLAT:.str.107
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
.label_203:
	or	ebp, 0x80
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9, qword ptr [rip + filter_command]
	lea	r8, [rsp]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_199
.label_197:
	test	ebp, ebp
	jne	.label_200
	shr	ebx, 8
	and	ebx, 0xff
	je	.label_199
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9, qword ptr [rip + filter_command]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	rdx, rbp
	mov	r8d, ebx
	call	error
.label_199:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_204:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_198:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_200:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e30

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	test	dil, dil
	je	.label_209
	test	r14, r14
	jne	.label_206
	test	rbx, rbx
	jne	.label_206
	mov	al, byte ptr [rip + elide_empty_files]
	and	al, 1
	mov	al, 1
	jne	.label_207
.label_206:
	mov	esi, dword ptr [rip + output_desc]
	mov	edx, dword ptr [rip + filter_pid]
	mov	rcx, qword ptr [rip + outfile]
	xor	edi, edi
	call	closeout
	call	next_file_name
	mov	rdi, qword ptr [rip + outfile]
	call	create
	mov	edi, eax
	mov	dword ptr [rip + output_desc],  edi
	test	edi, edi
	jns	.label_205
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_208
.label_209:
	mov	edi, dword ptr [rip + output_desc]
.label_205:
	mov	rsi, r14
	mov	rdx, rbx
	call	full_write
	mov	rcx, rax
	mov	al, 1
	cmp	rcx, rbx
	je	.label_207
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x20
	jne	.label_208
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_208
	xor	eax, eax
.label_207:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_208:
	mov	rdx, qword ptr [rip + outfile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f00

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, qword ptr [rip + outfile]
	test	r14, r14
	je	.label_210
	mov	rax, qword ptr [rip + suffix_length]
	test	rax, rax
	je	.label_216
	mov	rcx, qword ptr [rip + next_file_name.sufindex]
	mov	r8b, byte ptr [rip + suffix_auto]
	xor	r8b, 1
	mov	rsi, qword ptr [rip + suffix_alphabet]
	mov	rdi, qword ptr [rip + outfile_mid]
	nop	word ptr cs:[rax + rax]
.label_213:
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	inc	rbx
	mov	qword ptr [rcx + rax*8 - 8], rbx
	cmp	rax, 1
	sete	dl
	and	dl, r8b
	movzx	edx, dl
	cmp	edx, 1
	jne	.label_224
	mov	rdx, qword ptr [rcx]
	cmp	byte ptr [rdx + rsi + 1], 0
	je	.label_210
.label_224:
	mov	dl, byte ptr [rsi + rbx]
	mov	byte ptr [rdi + rax - 1], dl
	test	dl, dl
	jne	.label_211
	mov	qword ptr [rcx + rax*8 - 8], 0
	mov	dl, byte ptr [rsi]
	mov	byte ptr [rdi + rax - 1], dl
	dec	rax
	jne	.label_213
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_210:
	mov	r12, qword ptr [rip + next_file_name.outfile_length]
	test	r12, r12
	je	.label_222
	lea	rsi, [r12 + 2]
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
	inc	qword ptr [rip + suffix_length]
	mov	rbx, qword ptr [rip + next_file_name.outbase_length]
	jmp	.label_223
.label_222:
	mov	rdi, qword ptr [rip + outbase]
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rip + next_file_name.outbase_length],  rbx
	mov	rdi, qword ptr [rip + additional_suffix]
	xor	eax, eax
	test	rdi, rdi
	je	.label_231
	call	strlen
.label_231:
	mov	qword ptr [rip + next_file_name.addsuf_length],  rax
	mov	rsi, rbx
	add	rsi, rax
	add	rsi, qword ptr [rip + suffix_length]
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
.label_223:
	inc	rsi
	cmp	rsi, rbx
	jb	.label_214
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	test	r12, r12
	mov	r14, rbx
	mov	qword ptr [rip + outfile],  rbx
	je	.label_212
	mov	rax, qword ptr [rip + next_file_name.sufindex]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rip + suffix_alphabet]
	mov	cl, byte ptr [rax + rcx]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	mov	byte ptr [r14 + r15], cl
	inc	r15
	mov	qword ptr [rip + next_file_name.outbase_length],  r15
	jmp	.label_225
.label_212:
	mov	rsi, qword ptr [rip + outbase]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	mov	rdi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rip + suffix_alphabet]
.label_225:
	add	rbx, r15
	mov	qword ptr [rip + outfile_mid],  rbx
	mov	r15, qword ptr [rip + suffix_length]
	movzx	esi, byte ptr [rax]
	mov	rdi, rbx
	mov	rdx, r15
	call	memset
	mov	rsi, qword ptr [rip + additional_suffix]
	test	rsi, rsi
	je	.label_220
	add	rbx, r15
	mov	rdx, qword ptr [rip + next_file_name.addsuf_length]
	mov	rdi, rbx
	call	memcpy
.label_220:
	mov	rax, qword ptr [rip + next_file_name.outfile_length]
	mov	byte ptr [r14 + rax], 0
	mov	rdi, qword ptr [rip + next_file_name.sufindex]
	call	free
	mov	rdi, qword ptr [rip + suffix_length]
	mov	esi, 8
	call	xcalloc
	mov	r15, rax
	mov	qword ptr [rip + next_file_name.sufindex],  r15
	mov	r13, qword ptr [rip + numeric_suffix_start]
	test	r13, r13
	je	.label_211
	test	r12, r12
	jne	.label_219
	mov	rdi, r13
	call	strlen
	mov	r14, rax
	mov	r12, qword ptr [rip + suffix_length]
	mov	rdi, qword ptr [rip + outfile_mid]
	add	rdi, r12
	sub	rdi, r14
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	test	r14, r14
	je	.label_211
	lea	rax, [r15 + r12*8]
	cmp	r14, 4
	jae	.label_226
	mov	rcx, r14
	jmp	.label_218
.label_226:
	mov	r8, r14
	and	r8, 0xfffffffffffffffc
	je	.label_229
	lea	rcx, [r12*8]
	lea	rdx, [r14*8]
	sub	rcx, rdx
	add	rcx, r15
	lea	rdx, [r14 + r13 - 1]
	cmp	rcx, rdx
	ja	.label_215
	lea	rcx, [r15 + r12*8 - 8]
	cmp	r13, rcx
	ja	.label_215
	mov	rcx, r14
	jmp	.label_218
.label_229:
	mov	rcx, r14
	jmp	.label_218
.label_215:
	mov	rcx, r14
	sub	rcx, r8
	lea	rdx, [r8*8]
	sub	rax, rdx
	lea	rsi, [r15 + r12*8 - 0x10]
	lea	rdi, [r14 + r13 - 2]
	pxor	xmm0, xmm0
	movdqa	xmm1, xmmword ptr [rip + label_217]
	mov	rdx, r8
	nop	dword ptr [rax]
.label_227:
	movzx	ebx, word ptr [rdi]
	movd	xmm2, ebx
	movzx	ebx, word ptr [rdi - 2]
	movd	xmm3, ebx
	punpcklbw	xmm2, xmm0
	pshuflw	xmm2, xmm2, 0xe1
	packuswb	xmm2, xmm0
	punpcklbw	xmm2, xmm2
	punpcklwd	xmm2, xmm2
	movdqa	xmm4, xmm2
	psrad	xmm4, 0x1f
	psrad	xmm2, 0x18
	punpckldq	xmm2, xmm4
	punpcklbw	xmm3, xmm0
	pshuflw	xmm3, xmm3, 0xe1
	packuswb	xmm3, xmm0
	punpcklbw	xmm3, xmm3
	punpcklwd	xmm3, xmm3
	movdqa	xmm4, xmm3
	psrad	xmm4, 0x1f
	psrad	xmm3, 0x18
	punpckldq	xmm3, xmm4
	paddq	xmm2, xmm1
	paddq	xmm3, xmm1
	pshufd	xmm2, xmm2, 0x4e
	movdqu	xmmword ptr [rsi], xmm2
	pshufd	xmm2, xmm3, 0x4e
	movdqu	xmmword ptr [rsi - 0x10], xmm2
	add	rsi, -0x20
	add	rdi, -4
	add	rdx, -4
	jne	.label_227
	cmp	r14, r8
	je	.label_211
.label_218:
	lea	rdx, [rcx - 1]
	test	cl, 3
	je	.label_230
	mov	esi, ecx
	and	esi, 3
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_228:
	movsx	rdi, byte ptr [r13 + rcx - 1]
	dec	rcx
	add	rdi, -0x30
	mov	qword ptr [rax - 8], rdi
	add	rax, -8
	inc	rsi
	jne	.label_228
.label_230:
	cmp	rdx, 3
	jb	.label_211
	add	rax, -8
	nop	word ptr cs:[rax + rax]
.label_221:
	movsx	rdx, byte ptr [r13 + rcx - 1]
	add	rdx, -0x30
	mov	qword ptr [rax], rdx
	movsx	rdx, byte ptr [r13 + rcx - 2]
	add	rdx, -0x30
	mov	qword ptr [rax - 8], rdx
	movsx	rdx, byte ptr [r13 + rcx - 3]
	add	rdx, -0x30
	mov	qword ptr [rax - 0x10], rdx
	movsx	rdx, byte ptr [r13 + rcx - 4]
	add	rdx, -0x30
	add	rcx, -4
	mov	qword ptr [rax - 0x18], rdx
	lea	rax, [rax - 0x20]
	jne	.label_221
.label_211:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_214:
	call	xalloc_die
.label_219:
	mov	edi, OFFSET FLAT:.str.81
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.next_file_name
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404330

	.globl create
	.type create, @function
create:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	r15, rdi
	cmp	qword ptr [rip + filter_command],  0
	je	.label_236
	mov	edi, OFFSET FLAT:.str.88
	call	getenv
	test	rax, rax
	mov	r14d, OFFSET FLAT:.str.89
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:.str.90
	mov	edx, 1
	mov	rsi, r15
	call	setenv
	test	eax, eax
	jne	.label_251
	movzx	eax, byte ptr [rip + verbose]
	and	eax, 1
	cmp	eax, 1
	jne	.label_247
	mov	rbp, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
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
.label_247:
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_254
	call	fork
	mov	ebx, eax
	test	ebx, ebx
	je	.label_257
	cmp	ebx, -1
	je	.label_259
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_232
	mov	dword ptr [rip + filter_pid],  ebx
	mov	rcx, qword ptr [rip + n_open_pipes]
	cmp	rcx, qword ptr [rip + open_pipes_alloc]
	jne	.label_235
	mov	rdi, qword ptr [rip + open_pipes]
	test	rdi, rdi
	je	.label_252
	movabs	rax, 0x1555555555555555
	cmp	rcx, rax
	jae	.label_237
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_239
.label_236:
	movzx	eax, byte ptr [rip + verbose]
	and	eax, 1
	cmp	eax, 1
	jne	.label_244
	mov	r14, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
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
.label_244:
	mov	esi, 0x41
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_234
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, ebp
	call	__fxstat
	test	eax, eax
	jne	.label_253
	mov	rax, qword ptr [rip + label_255]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_256
	mov	rax, qword ptr [rip + in_stat_buf]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_258
.label_256:
	xor	esi, esi
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	je	.label_234
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_234
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	jmp	.label_240
.label_257:
	xor	ebx, ebx
	cmp	qword ptr [rip + n_open_pipes],  0
	je	.label_242
	nop	dword ptr [rax]
.label_246:
	mov	rax, qword ptr [rip + open_pipes]
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	test	eax, eax
	jne	.label_245
	inc	rbx
	cmp	rbx, qword ptr [rip + n_open_pipes]
	jb	.label_246
.label_242:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	test	eax, eax
	jne	.label_241
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	je	.label_248
	xor	esi, esi
	call	dup2
	test	eax, eax
	jne	.label_249
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_250
.label_248:
	mov	edi, 2
	mov	esi, OFFSET FLAT:oldblocked
	xor	edx, edx
	call	sigprocmask
	mov	rdi, r14
	call	last_component
	mov	rsi, rax
	mov	rcx, qword ptr [rip + filter_command]
	mov	edx, OFFSET FLAT:.str.98
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r14
	call	execl
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.99
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rip + filter_command]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_245:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	jmp	.label_233
.label_235:
	mov	rax, qword ptr [rip + open_pipes]
	jmp	.label_238
.label_241:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	jmp	.label_233
.label_252:
	test	rcx, rcx
	mov	esi, 0x20
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_243
.label_239:
	mov	qword ptr [rip + open_pipes_alloc],  rsi
	shl	rsi, 2
	call	xrealloc
	mov	qword ptr [rip + open_pipes],  rax
	mov	rcx, qword ptr [rip + n_open_pipes]
.label_238:
	mov	edx, dword ptr [rsp + 0xc]
	lea	rsi, [rcx + 1]
	mov	qword ptr [rip + n_open_pipes],  rsi
	mov	dword ptr [rax + rcx*4], edx
	mov	ebp, dword ptr [rsp + 0xc]
.label_234:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	jmp	.label_233
.label_250:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.97
.label_233:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_251:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.91
	jmp	.label_233
.label_254:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	jmp	.label_233
.label_259:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	jmp	.label_233
.label_232:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	jmp	.label_233
.label_253:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
.label_240:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_258:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
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
.label_237:
	call	xalloc_die
.label_243:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0

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
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rcx, rbx
	shl	rcx, 5
	mov	eax, dword ptr [r15 + rcx + 8]
	test	eax, eax
	js	.label_268
	xor	ebp, ebp
	jmp	.label_264
.label_268:
	lea	rdx, [r15 + rcx + 8]
	mov	qword ptr [rsp + 8], rdx
	test	rbx, rbx
	mov	r12, r14
	cmovne	r12, rbx
	dec	r12
	lea	rdx, [r15 + rcx]
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp], rcx
	xor	ebp, ebp
	jmp	.label_266
	nop	word ptr cs:[rax + rax]
.label_270:
	lea	rax, [r15 + r13 + 8]
	lea	rcx, [r15 + r13 + 0x10]
	mov	qword ptr [rcx], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	rax, qword ptr [rsp + 8]
	mov	eax, dword ptr [rax]
	mov	bpl, 1
.label_266:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx]
	cmp	eax, -1
	je	.label_269
	mov	esi, 0xc01
	xor	eax, eax
	call	open_safer
	jmp	.label_261
	nop	dword ptr [rax]
.label_269:
	call	create
.label_261:
	test	eax, eax
	jns	.label_263
	call	__errno_location
	mov	rbp, rax
	mov	ecx, dword ptr [rbp]
	lea	eax, [rcx - 0x17]
	cmp	eax, 2
	jae	.label_265
	nop	word ptr cs:[rax + rax]
.label_262:
	mov	r13, r12
	shl	r13, 5
	cmp	dword ptr [r15 + r13 + 8], 0
	jns	.label_260
	test	r12, r12
	cmove	r12, r14
	dec	r12
	cmp	r12, rbx
	jne	.label_262
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rdi, qword ptr [r15 + r13 + 0x10]
	call	rpl_fclose
	test	eax, eax
	je	.label_270
	mov	ebx, dword ptr [rbp]
	mov	rdx, qword ptr [r15 + r13]
.label_267:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_263:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	esi, OFFSET FLAT:.str.105
	mov	edi, eax
	call	fdopen
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [r15 + rcx + 0x10], rax
	test	rax, rax
	je	.label_271
	mov	eax, dword ptr [rip + filter_pid]
	mov	dword ptr [r15 + rcx + 0x18], eax
	mov	dword ptr [rip + filter_pid],  0
.label_264:
	and	bpl, 1
	mov	al, bpl
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_265:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	rbx, rcx
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_271:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax]
	jmp	.label_267
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404990
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_275
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_272
	cmp	dword ptr [rbp], 0x20
	jne	.label_272
.label_275:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_274
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_272:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_273
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_274:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_273:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_276:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_276
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_280
	nop	word ptr cs:[rax + rax]
.label_277:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_280:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_277
	test	dl, dl
	je	.label_278
	mov	cl, r8b
	and	cl, 1
	je	.label_279
	xor	r8d, r8d
.label_279:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_277
.label_278:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_281:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_282
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_281
.label_282:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_283
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_283:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_286
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_285
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_284
.label_285:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_284:
	mov	edx, dword ptr [rax]
.label_286:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

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
	je	.label_288
	test	ebx, ebx
	js	.label_288
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
	jmp	.label_287
.label_288:
	mov	eax, ebx
.label_287:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40

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
	je	.label_289
	nop	word ptr [rax + rax]
.label_291:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_289
	test	rax, rax
	je	.label_290
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_291
	jmp	.label_289
.label_290:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_289:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ca0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_292:
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
	ja	.label_292
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_294
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_293
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_293
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_295
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_295:
	mov	rbx, r14
.label_293:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_294:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0
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
	#Procedure 0x404de0
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
	#Procedure 0x404df0
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
	#Procedure 0x404e00
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
	#Procedure 0x404e40
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
	#Procedure 0x404e60
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_296
	test	rdx, rdx
	je	.label_296
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_296:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f10

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_360:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_413
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_416]
.label_723:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_724:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_315
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_315
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_342:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_403
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_403:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_342
.label_315:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_309
.label_716:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_309
.label_719:
	mov	al, 1
.label_717:
	mov	r12b, 1
.label_720:
	test	r12b, 1
	mov	cl, 1
	je	.label_373
	mov	cl, al
.label_373:
	mov	al, cl
.label_718:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_376
	test	r10, r10
	je	.label_379
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_380
.label_376:
	xor	ecx, ecx
	jmp	.label_380
.label_721:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_388
	test	r10, r10
	je	.label_396
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_398
.label_722:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_309
.label_379:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_380:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_309
.label_388:
	xor	eax, eax
	jmp	.label_398
.label_396:
	mov	eax, 1
.label_398:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_309:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_326
.label_362:
	inc	rdi
.label_326:
	cmp	rbp, -1
	je	.label_351
	cmp	rdi, rbp
	jne	.label_354
	jmp	.label_355
	nop	word ptr cs:[rax + rax]
.label_351:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_359
.label_354:
	test	r12b, r12b
	je	.label_363
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_365
	cmp	rbp, -1
	jne	.label_365
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_365:
	cmp	rbx, rbp
	jbe	.label_384
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_386
	nop	word ptr [rax + rax]
.label_363:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_386
.label_384:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_410
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_386
	jmp	.label_330
.label_410:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_386:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_303
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_308]
.label_643:
	test	rdi, rdi
	jne	.label_314
	jmp	.label_318
.label_647:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_320
	test	rdi, rdi
	jne	.label_322
	cmp	rbp, 1
	je	.label_318
	xor	r13d, r13d
	jmp	.label_317
.label_636:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_328
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_330
	cmp	r9d, 2
	jne	.label_334
	mov	al, r14b
	and	al, 1
	jne	.label_337
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_341
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_341:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_421
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_421:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_369
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_369:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_347
.label_637:
	mov	bl, 0x62
	jmp	.label_371
.label_638:
	mov	cl, 0x74
	jmp	.label_358
.label_639:
	mov	bl, 0x76
	jmp	.label_371
.label_640:
	mov	bl, 0x66
	jmp	.label_371
.label_641:
	mov	cl, 0x72
	jmp	.label_358
.label_644:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_377
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_381
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_387
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_387:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_407
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_407:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_393
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_393:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_377:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_317
.label_645:
	cmp	r9d, 5
	je	.label_391
	cmp	r9d, 2
	jne	.label_314
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_314
	jmp	.label_299
.label_646:
	cmp	r9d, 2
	jne	.label_301
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_304
	jmp	.label_310
.label_303:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_311
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_312:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_329
	test	cl, cl
	je	.label_329
	xor	eax, eax
	jmp	.label_317
.label_320:
	test	rdi, rdi
	jne	.label_349
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_349
.label_318:
	mov	dl, 1
.label_642:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_353
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_317
.label_328:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_362
	jmp	.label_314
.label_301:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_358
.label_304:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_366
.label_358:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_367
.label_371:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_317
	jmp	.label_374
.label_311:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_375
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_375:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_316:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_406
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_409
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_412
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_350
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_300:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_418
	bt	rsi, rdx
	jb	.label_420
.label_418:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_300
.label_350:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_414
	xor	r13d, r13d
.label_414:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_316
	jmp	.label_312
.label_349:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_317
.label_391:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_314
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_314
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_314
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_338
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_344
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_419
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_335
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_335:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_361
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_361:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_370
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_370:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_340
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_340:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_317
.label_314:
	xor	eax, eax
	xor	r13d, r13d
.label_317:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_392
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_395
	jmp	.label_346
	nop	word ptr [rax + rax]
.label_392:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_346
.label_395:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_401
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_408
	nop	word ptr cs:[rax + rax]
.label_346:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_408:
	mov	bl, r15b
	je	.label_366
	jmp	.label_374
.label_401:
	mov	bl, r15b
.label_374:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_330
	cmp	r9d, 2
	jne	.label_415
	mov	al, r14b
	and	al, 1
	jne	.label_415
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_389
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_389:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_297
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_297:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_307
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_307:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_415:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_321
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_321:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_324
.label_322:
	xor	r13d, r13d
	jmp	.label_317
.label_329:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_331
	nop	word ptr [rax + rax]
.label_325:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_331:
	test	cl, cl
	je	.label_345
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_348
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_352
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_352:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_348
	nop	word ptr [rax + rax]
.label_345:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_330
	cmp	r9d, 2
	jne	.label_305
	mov	al, r14b
	and	al, 1
	jne	.label_305
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_372
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_372:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_411
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_411:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_385
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_385:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_305:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_400
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_400:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_405
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_405:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_402
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_402:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_348:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_366
	test	r14b, 1
	je	.label_298
	mov	bl, al
	and	bl, 1
	jne	.label_298
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_319
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_319:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_313
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_313:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_298:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_325
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_325
	nop	dword ptr [rax]
.label_366:
	test	r14b, 1
	je	.label_339
	and	al, 1
	jne	.label_339
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_368
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_368:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_332
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_332:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_339:
	mov	bl, r15b
.label_324:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_364
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_364:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_362
.label_334:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_347
.label_337:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_347:
	cmp	rcx, r10
	jae	.label_378
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_378:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_383
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_394
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_397
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_399
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_399:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_404
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_404:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_317
.label_383:
	xor	r13d, r13d
	jmp	.label_317
.label_394:
	xor	r13d, r13d
	jmp	.label_317
.label_397:
	xor	r13d, r13d
	jmp	.label_317
.label_409:
	xor	r13d, r13d
.label_406:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_312
.label_412:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_417
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_343:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_302
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_343
	xor	r13d, r13d
	jmp	.label_312
.label_417:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_312
.label_302:
	xor	r13d, r13d
	jmp	.label_312
.label_338:
	xor	r13d, r13d
	jmp	.label_317
.label_344:
	xor	r13d, r13d
	jmp	.label_317
	nop	dword ptr [rax]
.label_355:
	mov	r13, rdi
.label_359:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_327
	or	al, dl
	je	.label_333
.label_327:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_336
	or	al, dl
	jne	.label_336
	test	r8b, 1
	jne	.label_357
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_336
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_360
.label_336:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_323
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_323
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_323
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_382:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_356
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_356:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_382
.label_323:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_390
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_390
.label_353:
	mov	r9d, 2
	jmp	.label_330
.label_420:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_330
.label_333:
	mov	rbp, r13
	jmp	.label_330
.label_367:
	mov	r9d, 2
.label_330:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_306:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_390:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_357:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_306
.label_381:
	mov	r9d, 2
	jmp	.label_330
.label_310:
	mov	r9d, 2
	jmp	.label_330
.label_299:
	mov	r9d, 2
	jmp	.label_330
.label_419:
	mov	r9d, 5
	jmp	.label_330
.label_413:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4060a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x406170
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
	call	xmalloc
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
	je	.label_422
	mov	qword ptr [rax], rbx
.label_422:
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
	#Procedure 0x406270
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_423
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_425:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_425
.label_423:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_426
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_427], OFFSET FLAT:slot0
.label_426:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_424
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_424:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406310
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406320

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
	js	.label_428
	mov	ecx, dword ptr [rax]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_431
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_434
.label_431:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_430
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_429
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_429:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_434:
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
	ja	.label_432
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_433
	mov	rdi, rbx
	call	free
.label_433:
	mov	rdi, r14
	call	xmalloc
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
.label_432:
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
.label_428:
	call	abort
.label_430:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406500
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
	#Procedure 0x406520
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
	#Procedure 0x406540
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_435
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_435:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4065b0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_436
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_436:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406620

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_437
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_437:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406690
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_438
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_438:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406700
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	#Procedure 0x406770
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	#Procedure 0x4067e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
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
	#Procedure 0x406840
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
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
	#Procedure 0x4068a0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_442
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_442:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x406950
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_443
	test	rdx, rdx
	je	.label_443
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_443:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4069c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_444
	test	rdx, rdx
	je	.label_444
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_444:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_445
	test	rsi, rsi
	je	.label_445
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_445:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406aa0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_446
	test	rsi, rsi
	je	.label_446
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
.label_446:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b20
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
	#Procedure 0x406b40
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60

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
	#Procedure 0x406b80

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
	jne	.label_448
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_449
	cmp	ecx, 0x55
	jne	.label_447
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_447
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_447
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_447
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_447
	cmp	byte ptr [rax + 5], 0
	jne	.label_447
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_448
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_448
.label_449:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_447
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_447
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_447
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_447
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_447
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_447
	cmp	byte ptr [rax + 7], 0
	je	.label_450
.label_447:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_448:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_450:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_448
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_448
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c70

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_452:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_451
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_452
	cmp	rbx, 0x7ff00001
	jb	.label_451
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_452
.label_451:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_454:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_453
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_454
	cmp	rbx, 0x7ff00001
	jb	.label_453
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_454
.label_453:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d30

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
	ja	.label_455
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
	jmp	.label_456
.label_455:
	mov	eax, ebx
.label_456:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d80

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
	je	.label_457
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_465
.label_457:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_465:
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
	ja	.label_460
	jmp	qword ptr [(r12 * 8) + label_462]
.label_702:
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
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_459
.label_703:
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
.label_704:
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
.label_705:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_466
.label_706:
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
	jmp	.label_458
.label_707:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_464
.label_708:
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
.label_464:
	mov	qword ptr [rsp + 0x10], rdi
.label_458:
	mov	qword ptr [rsp + 8], rsi
.label_466:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_461
.label_710:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_459:
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
	jmp	.label_463
.label_709:
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
.label_463:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_461:
	call	__fprintf_chk
.label_701:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407070
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_467:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_467
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_470:
	cmp	r10d, 0x28
	ja	.label_468
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_469
	nop	word ptr cs:[rax + rax]
.label_468:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_469:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_471
	inc	r9
	cmp	r9, 0xa
	jb	.label_470
.label_471:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_472
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_472:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_476:
	cmp	r8d, 0x28
	ja	.label_473
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_475
	nop	
.label_473:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_475:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_474
	inc	r9
	cmp	r9, 0xa
	jb	.label_476
.label_474:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407200
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
	mov	esi, OFFSET FLAT:.str.16_0
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407280
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_477
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_478
	test	rax, rax
	je	.label_477
.label_478:
	pop	rbx
	ret	
.label_477:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_479
	test	rax, rax
	je	.label_480
.label_479:
	pop	rbx
	ret	
.label_480:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_481
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_482
	test	rbx, rbx
	jne	.label_482
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_482:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_483
	test	rax, rax
	je	.label_481
.label_483:
	pop	rbx
	ret	
.label_481:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407330

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_484
	test	rbx, rbx
	jne	.label_484
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_484:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_486
	test	rax, rax
	je	.label_485
.label_486:
	pop	rbx
	ret	
.label_485:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407360
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_487
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_489
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_488
.label_487:
	test	rcx, rcx
	jne	.label_492
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_492:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_491
.label_488:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_490
	test	rbx, rbx
	jne	.label_490
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_490:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_493
	test	rax, rax
	je	.label_489
.label_493:
	pop	rbx
	ret	
.label_489:
	call	xalloc_die
.label_491:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407400
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_494
	test	rax, rax
	je	.label_495
.label_494:
	pop	rbx
	ret	
.label_495:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407420
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_496
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_499
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_500
	call	free
	xor	eax, eax
	jmp	.label_497
.label_496:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_498
	mov	qword ptr [rsi], rbx
.label_500:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_497
	test	rax, rax
	je	.label_498
.label_497:
	pop	rbx
	ret	
.label_498:
	call	xalloc_die
.label_499:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407490
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
	je	.label_502
	test	r14, r14
	je	.label_501
.label_502:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_501:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_503
	call	rpl_calloc
	test	rax, rax
	je	.label_503
	pop	rcx
	ret	
.label_503:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407500

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
	je	.label_504
	test	r15, r15
	je	.label_505
.label_504:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_505:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407540

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
	je	.label_507
	test	r15, r15
	je	.label_506
.label_507:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_506:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407590

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4075c0

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
	je	.label_509
	cmp	eax, 1
	je	.label_511
	cmp	eax, 3
	jne	.label_513
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_508
.label_511:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_508
.label_509:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_512
	cmp	rbx, r15
	jbe	.label_514
.label_512:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_510
	mov	dword ptr [rax], 0x4b
	jmp	.label_508
.label_513:
	call	__errno_location
	jmp	.label_508
.label_510:
	mov	dword ptr [rax], 0x22
.label_508:
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
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_514:
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
	#Procedure 0x407690

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_528
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_537:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_537
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_520
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_535
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_531
	cmp	eax, 0x22
	jne	.label_520
	mov	dword ptr [rsp + 4], 1
.label_531:
	test	r14, r14
	jne	.label_540
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_520
.label_535:
	test	r14, r14
	je	.label_520
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_520
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_520
.label_540:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_532
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_527
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_521
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_521
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_521
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_530
	cmp	eax, 0x44
	je	.label_530
	cmp	eax, 0x69
	jne	.label_521
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_533
	mov	ecx, 1
.label_533:
	mov	esi, 0x400
	jmp	.label_521
.label_532:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_538
.label_530:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_521:
	cmp	r13d, 0x59
	jg	.label_517
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_518
	jmp	qword ptr [(rax * 8) + label_539]
.label_608:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_522
.label_517:
	cmp	r13d, 0x73
	jg	.label_523
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_525
	xor	eax, eax
	jmp	qword ptr [(rdx * 8) + label_529]
.label_712:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_522:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_524
.label_518:
	cmp	r13d, 0x54
	je	.label_519
	cmp	r13d, 0x59
	jne	.label_527
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	sbb	r13b, r13b
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
	or	dl, r13b
	or	dl, bpl
	jmp	.label_515
.label_523:
	cmp	r13d, 0x74
	je	.label_519
	cmp	r13d, 0x77
	jne	.label_527
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_524
.label_610:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_516
.label_611:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_534
.label_612:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_541
.label_519:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_526
.label_525:
	cmp	r13d, 0x5a
	jne	.label_527
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_515:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_534
.label_527:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_520
.label_609:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_541
.label_613:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
.label_526:
	or	dl, r10b
.label_516:
	or	dl, bl
.label_541:
	and	dl, 1
	movzx	eax, dl
.label_534:
	mov	rbp, rsi
.label_524:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_536
	or	eax, 2
.label_536:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_538:
	mov	qword ptr [rax], rbp
.label_520:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_528:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407d70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_542
	test	rsi, rsi
	mov	ecx, 1
	je	.label_543
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_543
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_542:
	mov	ecx, 1
.label_543:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_544
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_545
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_544
.label_545:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_544
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_546
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_546:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_544:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_547
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_547
	test	byte ptr [rbx + 1], 1
	je	.label_547
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_547:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e80

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
	jne	.label_548
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_548
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_549
.label_548:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_549:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_550
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_550:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ef0

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
	je	.label_551
	cmp	r15, -2
	jb	.label_551
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_551
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_551:
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
	#Procedure 0x407f50
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_557
	cmp	eax, 9
	ja	.label_553
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_554
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_555
	jmp	.label_554
	nop	word ptr cs:[rax + rax]
.label_553:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_560
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_553
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_556
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_559
.label_556:
	test	r15d, r15d
	jle	.label_554
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_554
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_554
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_554
	test	rax, rax
	jg	.label_554
	mov	ecx, r15d
	jmp	.label_558
.label_560:
	lea	rax, [rbx + rbx*2]
	mov	eax, dword ptr [(rax * 4) + numname_table]
	jmp	.label_555
.label_559:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_554
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_554
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_552
.label_554:
	mov	eax, 0xffffffff
.label_555:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_552:
	mov	ecx, ebp
.label_558:
	add	rax, rcx
	jmp	.label_555
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080b0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	xor	eax, eax
	nop	
.label_563:
	mov	eax, eax
	lea	rcx, [rax + rax*2]
	cmp	dword ptr [(rcx * 4) + numname_table],  ebp
	je	.label_561
	lea	ecx, [rax + 1]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_562
	lea	ecx, [rax + 2]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_562
	lea	ecx, [rax + 3]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_562
	lea	ecx, [rax + 4]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_562
	add	eax, 5
	cmp	eax, 0x23
	jb	.label_563
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_565
	cmp	eax, ebp
	jl	.label_565
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_566
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_564
.label_561:
	mov	rcx, rax
.label_562:
	lea	rax, [rcx + rcx*2]
	lea	rsi, qword ptr [(rax * 4) + label_557]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_565:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_566:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_564:
	xor	ebx, ebx
	cmp	r14d, ebp
	je	.label_565
	sub	ebp, r14d
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_2
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_565
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0

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
	jne	.label_568
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_567
	test	cl, cl
	jne	.label_567
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_567
.label_568:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_567
	call	__errno_location
	mov	dword ptr [rax], 0
.label_567:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408230

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_570
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_571
	cmp	byte ptr [rax + 1], 0
	je	.label_569
.label_571:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_570
.label_569:
	xor	ebx, ebx
.label_570:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408270

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_572
	mov	rax, rcx
.label_572:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082a0

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
	#Procedure 0x4082b0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_584
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_584:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_589
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_585
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_577
	test	esi, esi
	jne	.label_589
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_590
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_591
.label_589:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_573
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_577
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_579
.label_585:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_576
.label_577:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_583
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_593
.label_583:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_593:
	mov	edx, dword ptr [rax]
.label_592:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_576:
	mov	ebp, eax
.label_581:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_579:
	cmp	eax, 6
	jne	.label_573
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_574
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_578
.label_573:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_582
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_586
.label_590:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_591:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_592
.label_574:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_578:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_575
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_580
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_580
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_581
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_588
.label_580:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_581
.label_582:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_586:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_576
.label_575:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_588:
	test	al, al
	je	.label_581
	test	ebp, ebp
	js	.label_581
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_587
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_581
.label_587:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_581
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x408590

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