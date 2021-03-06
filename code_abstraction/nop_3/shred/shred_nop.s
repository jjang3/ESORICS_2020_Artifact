	.section	.text
	.align	16
	#Procedure 0x401db0

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	mov	edx, 3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.38
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_8
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.40
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	test	eax, eax
	nop	
	je	.label_8
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.14
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:.str.44
	mov	rsp, rsp
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402190

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rsi
	mov	r13d, edi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.17_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_10]]
	movups	xmmword ptr [rsp + 0x48], xmm0
	nop	
	xor	r14d, r14d
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], 0
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_11
.label_682:
	mov	byte ptr [rsp + 0x5e], 1
	mov	rbp, rbp
	mov	rbx, rbp
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	rbp, rbx
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	nop	
	mov	edi, r13d
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	getopt_long
	cmp	eax, 0x65
	mov	rbp, rbp
	jle	.label_36
	mov	rbp, rbp
	lea	ecx, [rax - 0x73]
	nop	
	cmp	ecx, 0xd
	ja	.label_38
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_40]]
.label_678:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.22
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rcx, r15
	mov	rbp, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	qword ptr [rsp + 0x50], rax
	mov	rsp, rsp
	mov	rbx, rbp
	jmp	.label_11
.label_38:
	cmp	eax, 0x6e
	lea	rsi, [rsi]
	je	.label_52
	nop	
	cmp	eax, 0x66
	nop	
	jne	.label_18
	mov	byte ptr [rsp + 0x40], 1
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbx, rbp
	mov	rsp, rsp
	jmp	.label_11
.label_679:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	nop	
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_56
	lea	rsi, [rsi]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.21
	mov	edx, OFFSET FLAT:remove_args
	nop	
	mov	ecx, OFFSET FLAT:remove_methods
	mov	rsp, rsp
	mov	r8d, 4
	lea	rsi, [rsi]
	call	__xargmatch_internal
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + remove_methods]]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x58], eax
	mov	rbx, rbp
	jmp	.label_11
.label_680:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x5c], 1
	lea	rdi, [rdi]
	mov	r14b, 1
	lea	rsi, [rsi]
	mov	rbx, rbp
	jmp	.label_11
.label_681:
	mov	byte ptr [rsp + 0x5d], 1
	nop	
	mov	rbx, rbp
	jmp	.label_11
.label_683:
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	je	.label_11
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_11
	jmp	.label_9
.label_52:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x3fffffffffffffff
	mov	r8, rax
	nop	
	call	xdectoumax
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	rbx, rbp
	mov	rsp, rsp
	jmp	.label_11
.label_56:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x58], 3
	mov	dword ptr [rsp + 0x94], 3
	nop	
	mov	rbx, rbp
	jmp	.label_11
.label_36:
	mov	rsp, rsp
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_31
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	cmp	ebx, r13d
	lea	rsi, [rsi]
	je	.label_34
	mov	rsi, -1
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	randint_all_new
	mov	qword ptr [word ptr [rip + randint_source]],  rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_14
	sub	r13d, ebx
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:clear_random_data
	call	atexit
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	r13d, r13d
	jle	.label_45
	lea	rax, [r12 + rbx*8]
	mov	qword ptr [rsp + 0x70], rax
	movsxd	rax, r13d
	mov	qword ptr [rsp + 8], rax
	mov	bpl, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r14
	mov	rbp, rbp
	mov	al, r14b
	nop	
	mov	dword ptr [rsp + 0x7c], eax
	mov	al, r14b
	nop	
	mov	dword ptr [rsp + 0xac], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r14
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_66:
	lea	rdi, [rdi]
	mov	r12b, bpl
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x70]
	nop	
	mov	rdx, qword ptr [rbx + r14*8]
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	nop	
	mov	rdi, rax
	call	xstrdup
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rdi, qword ptr [rbx + r14*8]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_57
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + 1], 0
	je	.label_59
.label_57:
	mov	qword ptr [rsp + 0x68], r14
	mov	r13b, r12b
	mov	r14,  qword ptr [word ptr [rip + randint_source]]
	lea	rsi, [rsi]
	mov	esi, 0x101
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rsp, rsp
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_62
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	cmp	dword ptr [r12], 0xd
	jne	.label_25
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	test	al, al
	je	.label_25
	mov	rsp, rsp
	mov	esi, 0x80
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	call	chmod
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_25
	lea	rdi, [rdi]
	mov	esi, 0x101
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x10]
	call	open_safer
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	js	.label_25
	nop	dword ptr [rax]
.label_62:
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rbx, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x40]
	lea	rdi, [rdi]
	call	do_wipefd
	mov	r14b, al
	lea	rdi, [rdi]
	mov	edi, ebp
	call	close
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	mov	r12b, r13b
	je	.label_24
	call	__errno_location
	mov	ebp, dword ptr [rax]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	jmp	.label_46
	nop	
.label_25:
	mov	ebx, dword ptr [r12]
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rbx, r15
	mov	rsp, rsp
	mov	rcx, rbx
	call	error
	lea	rdi, [rdi]
	mov	r12b, r13b
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x68]
	jmp	.label_22
	nop	dword ptr [rax]
.label_24:
	mov	qword ptr [rsp + 0x80], rbx
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_51
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x94], 0
	nop	
	je	.label_49
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xab], r12b
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rbp, rbp
	call	xstrdup
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	last_component
	mov	r12, rax
	mov	rdi, rbx
	call	dir_name
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, rbx
	call	quotearg_n_style_colon
	nop	
	mov	rdi, rax
	nop	
	call	xstrdup
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x94], eax
	cmp	eax, 3
	mov	r14, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jne	.label_61
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rbp
	mov	esi, 0x10900
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	open_safer
	mov	rbp, rbp
	mov	r15d, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_27
.label_59:
	mov	rbp,  qword ptr [word ptr [rip + randint_source]]
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 3
	nop	
	xor	eax, eax
	call	rpl_fcntl
	test	eax, eax
	js	.label_13
	mov	rsp, rsp
	test	ah, 4
	lea	rsi, [rsi]
	mov	rbx, r15
	lea	rsi, [rsi]
	jne	.label_41
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rbp
	lea	rcx, [rsp + 0x40]
	call	do_wipefd
	nop	
	mov	bpl, al
	jmp	.label_22
.label_13:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbx, r15
	lea	rdi, [rdi]
	jmp	.label_30
.label_41:
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
.label_30:
	mov	rsp, rsp
	mov	rcx, rbx
	call	error
	jmp	.label_22
.label_49:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x94], 0
	mov	r15b, r14b
.label_51:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x80]
	mov	r14, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	jmp	.label_46
.label_61:
	mov	rax, rcx
	nop	
	mov	qword ptr [rsp + 0x28], rcx
	shr	rax, 0x20
	nop	
	mov	r15d, 0xffffffff
.label_27:
	test	al, al
	je	.label_12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	call	error
.label_12:
	mov	qword ptr [rsp + 0xb0], rbx
	cmp	dword ptr [rsp + 0x94], 1
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	jne	.label_55
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xa4], r15d
	mov	rbp, rbp
	jmp	.label_67
.label_55:
	mov	rbp, rbp
	mov	rdi, r12
	call	base_len
	mov	r13, rax
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_58
	mov	rax, r12
	sub	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rax
	test	r15d, r15d
	js	.label_54
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xa4], r15d
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_65
.label_20:
	lea	rdi, [rdi]
	mov	rbp, r15
	jmp	.label_21
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, r13
	lea	rsi, [rsi]
	call	memset
	mov	rsp, rsp
	mov	byte ptr [r12 + r13], 0
	mov	rbp, rbp
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	call	renameatu
	test	eax, eax
	mov	rbp, rbp
	je	.label_42
	call	__errno_location
	mov	rbx, rax
.label_43:
	mov	rbp, rbp
	mov	r15, rbp
	cmp	dword ptr [rbx], 0x11
	mov	rsp, rsp
	mov	rbp, r13
	jne	.label_20
	nop	word ptr cs:[rax + rax]
.label_37:
	nop	
	test	rbp, rbp
	je	.label_69
	movsx	esi, byte ptr [r12 + rbp - 1]
	mov	edi, OFFSET FLAT:nameset
	nop	
	mov	edx, 0x41
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_32
	mov	rbp, rbp
	lea	rcx, [rbp - 1]
	lea	rdi, [rdi]
	mov	al, byte ptr [rax + 1]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	dl, 0x30
	nop	
	je	.label_33
	mov	dl, al
.label_33:
	mov	byte ptr [r12 + rbp - 1], dl
	mov	rbp, rcx
	lea	rdi, [rdi]
	je	.label_37
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rbp, r15
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x60]
	call	renameatu
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_43
	nop	word ptr [rax + rax]
.label_42:
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x30]
	call	dosync
	test	eax, eax
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	je	.label_48
	mov	rsp, rsp
	xor	ecx, ecx
.label_48:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x7c]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_16
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rcx
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	mov	rbx, rbp
	lea	rsi, [rsi]
	cmovne	rbx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x60]
	call	error
	lea	rdi, [rdi]
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	jmp	.label_21
.label_16:
	mov	qword ptr [rsp + 0x18], rcx
.label_60:
	lea	rdx, [r13 + 1]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r12
	call	memcpy
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x7c]
	mov	dword ptr [rsp + 0xac], eax
.label_21:
	dec	r13
	lea	rsi, [rsi]
	jne	.label_65
	mov	rbp, rbp
	jmp	.label_67
.label_58:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xa4], r15d
	lea	rdi, [rdi]
	jmp	.label_67
.label_54:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xa4], r15d
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_63
.label_28:
	mov	rbp, rbx
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_63:
	lea	rsi, [rsi]
	mov	esi, 0x30
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rdx, r13
	call	memset
	nop	
	mov	byte ptr [r12 + r13], 0
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	lea	rsi, [rsi]
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	nop	
	call	renameatu
	nop	
	test	eax, eax
	je	.label_26
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
.label_17:
	nop	
	mov	rbx, rbp
	lea	rdi, [rdi]
	cmp	dword ptr [r15], 0x11
	mov	rbp, r13
	jne	.label_28
	nop	word ptr cs:[rax + rax]
.label_44:
	test	rbp, rbp
	je	.label_35
	movsx	esi, byte ptr [r12 + rbp - 1]
	mov	edi, OFFSET FLAT:nameset
	lea	rsi, [rsi]
	mov	edx, 0x41
	mov	rbp, rbp
	call	memchr
	test	rax, rax
	je	.label_32
	lea	rcx, [rbp - 1]
	nop	
	mov	al, byte ptr [rax + 1]
	test	al, al
	mov	rbp, rbp
	mov	dl, 0x30
	je	.label_29
	lea	rsi, [rsi]
	mov	dl, al
.label_29:
	mov	byte ptr [r12 + rbp - 1], dl
	mov	rbp, rcx
	je	.label_44
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	lea	rsi, [rsi]
	mov	r8d, 1
	mov	rbp, rbx
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x60]
	call	renameatu
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_17
	nop	word ptr cs:[rax + rax]
.label_26:
	mov	eax, dword ptr [rsp + 0xac]
	mov	rbp, rbp
	test	al, al
	je	.label_53
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	al, 1
	mov	rbx, rbp
	cmovne	rbx, qword ptr [rsp + 0x80]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.78
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x60]
	call	error
.label_53:
	lea	rdx, [r13 + 1]
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, r12
	call	memcpy
	nop	
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_35:
	nop	
	mov	rbp, rbx
.label_64:
	lea	rsi, [rsi]
	dec	r13
	lea	rsi, [rsi]
	jne	.label_63
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
.label_67:
	mov	rdi, rbp
	call	unlink
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_68
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
	mov	r12b, byte ptr [rsp + 0xab]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x28]
	mov	ebp, dword ptr [rsp + 0xa4]
	mov	rbp, rbp
	jmp	.label_19
.label_68:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	mov	r12b, byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x80]
	mov	ebp, dword ptr [rsp + 0xa4]
	mov	rsp, rsp
	je	.label_23
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.80
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	nop	
	mov	al, r15b
	mov	dword ptr [rsp + 0x7c], eax
	mov	al, r15b
	mov	dword ptr [rsp + 0xac], eax
	mov	rbp, rbp
	jmp	.label_39
.label_23:
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x7c], 0
	nop	
	mov	dword ptr [rsp + 0xac], 0
.label_39:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x18]
.label_19:
	shr	r13, 0x20
	test	ebp, ebp
	js	.label_47
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x30]
	call	dosync
	mov	rsp, rsp
	test	eax, eax
	je	.label_50
	xor	r15d, r15d
.label_50:
	lea	rdi, [rdi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_47
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	call	error
.label_47:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	and	r15b, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r13
	nop	word ptr cs:[rax + rax]
.label_46:
	test	r15b, r15b
	nop	
	setne	bpl
.label_22:
	nop	
	and	bpl, r12b
	mov	rdi, rbx
	call	free
	nop	
	inc	r14
	lea	rdi, [rdi]
	cmp	r14, qword ptr [rsp + 8]
	jl	.label_66
	xor	bpl, 1
	movzx	eax, bpl
.label_45:
	mov	rbp, rbp
	add	rsp, 0xb8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_32:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.81
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x40c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.incname
	call	__assert_fail
.label_31:
	cmp	eax, 0xffffff7d
	je	.label_15
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_18
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_15:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.25
	nop	
	xor	r9d, r9d
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_18:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_34:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.26
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_14:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	nop	
	mov	rdx, rbp
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	call	error
.label_9:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl clear_random_data
	.type clear_random_data, @function
clear_random_data:
	mov	rdi,  qword ptr [word ptr [rip + randint_source]]
	lea	rsi, [rsi]
	jmp	randint_all_free
	nop	
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl do_wipefd
	.type do_wipefd, @function
do_wipefd:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x948
	mov	rbp, rcx
	mov	qword ptr [rsp + 0x2c8], rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	ebx, edi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x1c]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_133
	mov	rsp, rsp
	shr	eax, 0x10
	movzx	ecx, al
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp + 8]
.label_133:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x678], rcx
	lea	rdx, [rsp + 0x5d8]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_163
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_165
.label_163:
	mov	eax, dword ptr [rsp + 0x5f0]
	mov	ecx, eax
	lea	rsi, [rsi]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	lea	rdi, [rdi]
	jne	.label_168
	lea	rdi, [rdi]
	mov	edi, ebx
	lea	rsi, [rsi]
	call	isatty
	test	eax, eax
	jne	.label_74
	nop	
	mov	eax, dword ptr [rsp + 0x5f0]
.label_168:
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_74
	cmp	eax, 0x8000
	je	.label_78
	cmp	eax, 0x1000
	jne	.label_81
.label_74:
	xor	ebp, ebp
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.61
.label_153:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
.label_165:
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_83:
	lea	rdi, [rdi]
	mov	al, bpl
	add	rsp, 0x948
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_78:
	cmp	qword ptr [rsp + 0x608], 0
	nop	
	js	.label_98
.label_81:
	mov	dword ptr [rsp + 0x674], ebx
	movabs	rbx, 0x2000000000000001
	mov	rdi, qword ptr [rbp + 8]
	lea	rax, [rbx - 2]
	cmp	rdi, rax
	nop	
	ja	.label_100
	lea	rsi, [rsi]
	shl	rdi, 2
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2d8], rax
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x5f0]
	lea	rdi, [rdi]
	cmp	rdi, -1
	je	.label_122
	xor	r12d, r12d
	lea	rsi, [rsi]
	cmp	eax, 0x8000
	jne	.label_116
	mov	qword ptr [rsp + 0x2f0], r14
	mov	rax, qword ptr [rsp + 0x608]
	mov	rcx, qword ptr [rsp + 0x610]
	cmp	rcx, rbx
	mov	edx, 0x200
	mov	rsp, rsp
	mov	esi, 0x200
	mov	rbp, rbp
	cmovb	rsi, rcx
	mov	rbp, rbp
	test	rcx, rcx
	cmovle	rsi, rdx
	cmp	rsi, rdi
	cmovg	rsi, rdi
	xor	r12d, r12d
	cmp	rax, rsi
	cmovl	r12, rax
	jmp	.label_80
.label_122:
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	jne	.label_135
	mov	rdi, qword ptr [rsp + 0x608]
	xor	r12d, r12d
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x1d], 0
	je	.label_138
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2f0], r14
	lea	rsi, [rsi]
	jmp	.label_80
.label_116:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2f0], r14
	mov	rbp, rbp
	jmp	.label_80
.label_98:
	xor	ebp, ebp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.62
	jmp	.label_153
.label_135:
	mov	qword ptr [rsp + 0x2f0], r14
	xor	r12d, r12d
	xor	esi, esi
	nop	
	mov	edx, 2
	mov	edi, dword ptr [rsp + 0x674]
	call	lseek
	test	rax, rax
	mov	rdi, -1
	lea	rdi, [rdi]
	cmovg	rdi, rax
	jmp	.label_80
.label_138:
	mov	rax, qword ptr [rsp + 0x610]
	mov	rsp, rsp
	cmp	rax, rbx
	mov	rsp, rsp
	mov	edx, 0x200
	mov	ecx, 0x200
	mov	rbp, rbp
	cmovb	rcx, rax
	test	rax, rax
	cmovle	rcx, rdx
	mov	rax, rdi
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	nop	
	xor	r12d, r12d
	cmp	rdi, rcx
	lea	rsi, [rsi]
	cmovl	r12, rdi
	test	rdi, rdi
	cmove	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_166
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2f0], r14
	sub	rcx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, rdi
	cmp	rcx, rax
	cmovle	rax, rcx
	lea	rsi, [rsi]
	add	rdi, rax
	lea	rsi, [rsi]
	jmp	.label_80
.label_166:
	mov	qword ptr [rsp + 0x2f0], r14
.label_80:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x680], rdi
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x698], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x940], rbp
	mov	ebx, OFFSET FLAT:patterns
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_89
	mov	rcx, qword ptr [rsp + 0x2d8]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x698]
	jmp	.label_103
.label_132:
	nop	
	lea	rdx, [rbp*4]
	lea	rdi, [rdi]
	mov	r14, rcx
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, r14
	mov	rsp, rsp
	lea	rbx, [rbx + rbp*4]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rbp*4]
.label_103:
	mov	r14, r15
	jmp	.label_161
	nop	dword ptr [rax]
.label_129:
	lea	rdi, [rdi]
	add	r13, rbp
	mov	r14, rax
.label_161:
	mov	rsp, rsp
	mov	rax, rbx
	nop	
.label_149:
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	movsxd	rbp, dword ptr [rbx]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:patterns
	je	.label_149
	nop	
	add	rbx, 4
	nop	
	test	ebp, ebp
	jns	.label_126
	mov	rsp, rsp
	neg	rbp
	lea	rsi, [rsi]
	mov	rax, r14
	sub	rax, rbp
	mov	rsp, rsp
	ja	.label_129
	jmp	.label_131
.label_126:
	mov	r15, r14
	lea	rdi, [rdi]
	sub	r15, rbp
	jae	.label_132
	mov	rbp, rbp
	cmp	r14, 2
	jb	.label_134
	nop	
	lea	rax, [r14 + r14*2]
	mov	rbp, rbp
	cmp	rax, rbp
	nop	
	jb	.label_134
.label_160:
	lea	rsi, [rsi]
	mov	r15, rcx
	lea	rsi, [rsi]
	cmp	rbp, r14
	mov	rbp, rbp
	lea	rbp, [rbp - 1]
	je	.label_143
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x2c8]
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	randint_genmax
	lea	rsi, [rsi]
	cmp	rax, r14
	jae	.label_155
.label_143:
	mov	eax, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	dword ptr [rcx], eax
	mov	rbp, rbp
	add	rcx, 4
	nop	
	dec	r14
	jmp	.label_156
.label_155:
	mov	rcx, r15
.label_156:
	mov	rsp, rsp
	add	rbx, 4
	mov	rbp, rbp
	test	r14, r14
	jne	.label_160
	jmp	.label_107
.label_131:
	lea	rsi, [rsi]
	add	r13, r14
.label_107:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x698]
	mov	rbp, rbp
	mov	rbx, r14
	mov	rsp, rsp
	sub	rbx, r13
	nop	
	dec	r13
	nop	
	lea	rcx, [r14 - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x300], rcx
	nop	
	xor	ebp, ebp
	mov	r15, r13
	nop	word ptr cs:[rax + rax]
.label_97:
	mov	rsp, rsp
	cmp	r15, r13
	lea	rsi, [rsi]
	jbe	.label_75
	mov	rsi, rbp
	not	rsi
	mov	rbp, rbp
	add	rsi, rbx
	nop	
	mov	rdi, qword ptr [rsp + 0x2c8]
	call	randint_genmax
	add	rax, rbp
	mov	rsi, qword ptr [rsp + 0x2d8]
	nop	
	mov	ecx, dword ptr [rsi + rbp*4]
	mov	edx, dword ptr [rsi + rax*4]
	mov	dword ptr [rsi + rbp*4], edx
	mov	rsp, rsp
	mov	dword ptr [rsi + rax*4], ecx
	lea	rdi, [rdi]
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_75:
	mov	rbp, rbp
	add	r15, qword ptr [rsp + 0x300]
	mov	rcx, qword ptr [rsp + 0x2d8]
	mov	eax, dword ptr [rcx + rbp*4]
	mov	dword ptr [rcx + rbx*4], eax
	lea	rsi, [rsi]
	inc	rbx
	mov	dword ptr [rcx + rbp*4], 0xffffffff
.label_82:
	sub	r15, r13
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, r14
	nop	
	jne	.label_97
.label_89:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x2c8]
	call	randint_get_source
	mov	qword ptr [rsp + 0x5b8], rax
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x668], rax
	mov	r14, qword ptr [rsp + 0x2f0]
.label_85:
	mov	rsi, qword ptr [rsp + 0x940]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x678]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x680]
	nop	word ptr cs:[rax + rax]
.label_128:
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_71
	nop	
	mov	r15, r12
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
.label_71:
	test	rdx, rdx
	mov	r15, rdx
	mov	edx, 0
	mov	rbp, rcx
	je	.label_123
.label_118:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + 0x1e]
	lea	rsi, [rsi]
	add	rax, rbx
	lea	rsi, [rsi]
	mov	r12d, 0
	nop	
	je	.label_128
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x680], rdx
	mov	rsp, rsp
	call	getpagesize
	lea	rsi, [rsi]
	cdqe	
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2f8], rax
	lea	rsi, [rax - 1]
	mov	qword ptr [rsp + 0x20], rsi
	xor	ecx, ecx
.label_146:
	cmp	rcx, rbx
	jae	.label_145
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x2d8]
	mov	edx, dword ptr [rax + rcx*4]
	lea	rdi, [rdi]
	inc	rcx
	nop	
	test	edx, edx
	jle	.label_148
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x310], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x938], rbp
	lea	rdi, [rdi]
	mov	ecx, edx
	and	ecx, 0xfff
	lea	rsi, [rsi]
	mov	eax, ecx
	shl	eax, 0xc
	or	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, edx
	shr	ecx, 4
	mov	rsp, rsp
	movzx	ecx, cl
	mov	rbp, rbp
	movzx	eax, ah
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x934], edx
	lea	rdi, [rdi]
	movzx	edx, dl
	cmp	ecx, eax
	mov	r12d, 0x10000
	mov	rsp, rsp
	mov	eax, 0xf000
	cmovne	r12, rax
	mov	rbp, rbp
	cmp	ecx, edx
	cmovne	r12, rax
	mov	rsp, rsp
	jmp	.label_73
.label_145:
	mov	qword ptr [rsp + 0x938], rbp
	inc	rcx
	mov	qword ptr [rsp + 0x310], rcx
	mov	dword ptr [rsp + 0x934], 0
	mov	r12d, 0x10000
	nop	
	jmp	.label_73
.label_148:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x934], edx
	mov	qword ptr [rsp + 0x310], rcx
	nop	
	mov	qword ptr [rsp + 0x938], rbp
	mov	r12d, 0x10000
.label_73:
	mov	qword ptr [rsp + 0x5c0], r12
	lea	rdi, [rdi]
	mov	rax, r12
	or	rax, 2
	lea	rdi, [rdi]
	movabs	rcx, 0xaaaaaaaaaaaaaaab
	mul	rcx
	shr	rdx, 1
	lea	rbx, [rdx + rdx*2]
	nop	
	lea	rdi, [rsi + rbx]
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	mov	rcx, qword ptr [rsp + 0x2f8]
	mov	rsp, rsp
	lea	rax, [rbp + rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x698], rax
	mov	rsp, rsp
	xor	edx, edx
	div	rcx
	mov	r14, rdx
	test	r15, r15
	setg	al
	cmp	r15, r12
	setb	r13b
	and	r13b, al
	jne	.label_95
	mov	esi, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, dword ptr [rsp + 0x674]
	call	rpl_fcntl
	mov	rsp, rsp
	test	eax, eax
	jle	.label_95
	mov	edx, eax
	mov	rsp, rsp
	or	edx, 0x4000
	cmp	edx, eax
	je	.label_95
	mov	rsp, rsp
	mov	esi, 4
	xor	eax, eax
	mov	edi, dword ptr [rsp + 0x674]
	call	rpl_fcntl
.label_95:
	mov	eax, dword ptr [rsp + 0x5f0]
	mov	ecx, 0xf000
	lea	rdi, [rdi]
	and	eax, ecx
	cmp	eax, 0x2000
	lea	rsi, [rsi]
	jne	.label_121
	mov	word ptr [rsp + 0x6a0], 6
	nop	
	mov	dword ptr [rsp + 0x6a4], 1
	mov	esi, 0x40086d01
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x674]
	lea	rdx, [rsp + 0x6a0]
	call	ioctl
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_137
.label_121:
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x674]
	call	lseek
	test	rax, rax
	nop	
	jg	.label_144
	jne	.label_147
.label_137:
	mov	qword ptr [rsp + 0x2d0], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x698]
	sub	rax, r14
	nop	
	mov	edx, dword ptr [rsp + 0x934]
	mov	rbp, rbp
	test	edx, edx
	js	.label_150
	mov	byte ptr [rsp + 0x300], r13b
	lea	rdi, [rdi]
	cmp	r15, rbx
	mov	rbp, rbp
	mov	rsi, rax
	mov	qword ptr [rsp + 0x2e8], r15
	mov	r14, rbx
	cmovb	r14, r15
	mov	rsp, rsp
	test	r15, r15
	cmovs	r14, rbx
	mov	rbp, rbp
	mov	ecx, edx
	and	ecx, 0xfff
	mov	eax, ecx
	mov	rbp, rbp
	shl	eax, 0xc
	or	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, edx
	mov	rbp, rbp
	shr	ecx, 4
	mov	byte ptr [rsi], cl
	mov	byte ptr [rsi + 1], ah
	mov	byte ptr [rsi + 2], dl
	nop	
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r15d, edx
	mov	rsp, rsp
	cmp	r14, 6
	jae	.label_157
	mov	ebx, 3
	mov	rsp, rsp
	jmp	.label_102
.label_150:
	mov	qword ptr [rsp + 0x698], rax
	mov	rbp, rbp
	mov	r12d, edx
	mov	byte ptr [rsp + 0x2e6], 0
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x2e4], 0x6d6f
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x2e0], 0x646e6172
	jmp	.label_76
.label_157:
	mov	rbp, r14
	nop	
	shr	rbp, 1
	mov	ebx, 3
	nop	dword ptr [rax]
.label_91:
	mov	rbp, rbp
	lea	rdi, [r12 + rbx]
	nop	
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	mov	rsp, rsp
	add	rbx, rbx
	nop	
	cmp	rbx, rbp
	nop	
	jbe	.label_91
.label_102:
	nop	
	mov	rdx, r14
	sub	rdx, rbx
	mov	rbp, r12
	jbe	.label_94
	mov	rsp, rsp
	add	rbx, rbp
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	memcpy
.label_94:
	lea	rdi, [rdi]
	mov	eax, r15d
	test	ah, 0x10
	lea	rsi, [rsi]
	mov	r12d, eax
	mov	r13b, byte ptr [rsp + 0x300]
	je	.label_105
	test	r14, r14
	je	.label_105
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_112:
	lea	rdi, [rdi]
	xor	byte ptr [rbp + rax], 0x80
	add	rax, 0x200
	mov	rbp, rbp
	cmp	rax, r14
	jb	.label_112
.label_105:
	movzx	r8d, byte ptr [rbp]
	mov	rbp, rbp
	movzx	r9d, byte ptr [rbp + 1]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp + 2]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x698], rbp
	lea	rsi, [rsi]
	mov	dword ptr [rsp], eax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, 7
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.71
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rsp + 0x2e0]
	call	__sprintf_chk
	mov	r15, qword ptr [rsp + 0x2e8]
.label_76:
	mov	rbx, qword ptr [rsp + 0x2f0]
	mov	byte ptr [rsp + 0x300], r13b
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x938]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_158
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rax, [rsp + 0x2e0]
	mov	qword ptr [rsp], rax
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x310]
	mov	rbp, rbp
	mov	r9, rbp
	call	error
	xor	edi, edi
	call	time
	nop	
	add	rax, 5
.label_158:
	mov	qword ptr [rsp + 0x5d0], rax
	mov	qword ptr [rsp + 0x2f0], rbx
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x318], rax
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str_1
	mov	qword ptr [rsp + 0x5c8], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x308], rax
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2e8], r15
	mov	rbp, rbp
	mov	r9d, r12d
	mov	dword ptr [rsp + 0x934], r9d
	mov	rdx, qword ptr [rsp + 0x5c0]
	mov	r8, qword ptr [rsp + 0x940]
	lea	rsi, [rsi]
	jmp	.label_115
.label_136:
	mov	qword ptr [rsp + 0x2f0], rbx
	mov	rsi, qword ptr [rsp + 0x2c8]
	mov	rcx, r13
.label_115:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x674]
	lea	rsi, [rsi]
	mov	r12b, byte ptr [rsp + 0x300]
.label_93:
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	r15, rdx
	js	.label_86
	mov	rax, rcx
	nop	
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	r15, rdx
	jae	.label_86
	cmp	rcx, rsi
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	jle	.label_90
.label_86:
	mov	rbp, rbp
	test	r9d, r9d
	lea	rsi, [rsi]
	jns	.label_92
	mov	byte ptr [rsp + 0x300], r12b
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2c8], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x5b8]
	lea	rdi, [rdi]
	mov	r13, r8
	mov	rsi, qword ptr [rsp + 0x698]
	mov	r14d, r9d
	nop	
	mov	rdx, r15
	mov	r12, rcx
	mov	rbp, rbp
	call	randread
	mov	rcx, r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2c8]
	mov	r8, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x5c0]
	mov	r12b, byte ptr [rsp + 0x300]
	mov	r9d, r14d
.label_92:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x938], rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_114
	mov	qword ptr [rsp + 0x2c8], rsi
	test	rcx, rcx
	mov	qword ptr [rsp + 0x28], rcx
	mov	r14d, 0
	mov	rbp, qword ptr [rsp + 0x698]
	js	.label_120
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_110:
	lea	rsi, [rbp + r14]
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	sub	rdx, r14
	mov	edi, ebx
	nop	
	call	write
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	jg	.label_99
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	test	r12b, 1
	jne	.label_106
	cmp	ebx, 0x16
	jne	.label_106
	mov	esi, 3
	xor	eax, eax
	mov	ebx, dword ptr [rsp + 0x674]
	mov	edi, ebx
	call	rpl_fcntl
	lea	rsi, [rsi]
	mov	r12b, 1
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jle	.label_119
	mov	edx, eax
	and	edx, 0xffffbfff
	cmp	edx, eax
	je	.label_119
	mov	rbp, rbp
	mov	esi, 4
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	lea	rsi, [rsi]
	call	rpl_fcntl
.label_119:
	xor	r13d, r13d
	jmp	.label_99
.label_106:
	mov	qword ptr [rsp + 0x698], rax
	mov	byte ptr [rsp + 0x300], r12b
	lea	rsi, [rsi]
	mov	r12, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.66
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r13, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x2c8]
	mov	rbp, rbp
	lea	rdi, [r14 + rax]
	nop	
	lea	rsi, [rsp + 0x6a0]
	mov	rbp, rbp
	call	umaxtostr
	mov	rbp, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x2f0]
	mov	rsp, rsp
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	cmp	ebx, 5
	jne	.label_84
	mov	r13, r14
	or	r13, 0x1ff
	nop	
	cmp	r13, r15
	lea	rsi, [rsi]
	jae	.label_84
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2c8]
	lea	rsi, [r13 + rax + 1]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 0x674]
	mov	rbp, rbp
	mov	edi, ebx
	lea	rdi, [rdi]
	call	lseek
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	mov	rbp, r12
	nop	
	je	.label_96
	inc	r13
	sub	r13, r14
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x318], rax
	mov	r12b, byte ptr [rsp + 0x300]
	nop	word ptr [rax + rax]
.label_99:
	add	r14, r13
	cmp	r15, r14
	ja	.label_110
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x940]
	mov	r9d, dword ptr [rsp + 0x934]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x5c0]
	mov	rsp, rsp
	jmp	.label_159
	nop	word ptr cs:[rax + rax]
.label_120:
	lea	rsi, [rbp + r14]
	nop	
	mov	rdx, r15
	sub	rdx, r14
	mov	rsp, rsp
	mov	edi, ebx
	lea	rdi, [rdi]
	call	write
	test	rax, rax
	lea	rsi, [rsi]
	jg	.label_113
	mov	rsp, rsp
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_127
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x1c
	je	.label_127
	test	r12b, 1
	mov	rbp, rbp
	jne	.label_117
	cmp	ebp, 0x16
	lea	rsi, [rsi]
	jne	.label_117
	mov	esi, 3
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edi, ebx
	call	rpl_fcntl
	nop	
	test	eax, eax
	mov	rbp, r13
	mov	rsp, rsp
	jle	.label_142
	mov	edx, eax
	and	edx, 0xffffbfff
	cmp	edx, eax
	mov	rbp, rbp
	je	.label_142
	mov	esi, 4
	xor	eax, eax
	nop	
	mov	edi, ebx
	call	rpl_fcntl
.label_142:
	mov	r12b, 1
	xor	eax, eax
.label_113:
	lea	rsi, [rsi]
	add	r14, rax
	cmp	r15, r14
	ja	.label_120
	nop	
	mov	r9d, dword ptr [rsp + 0x934]
	mov	rdx, qword ptr [rsp + 0x5c0]
	nop	
	mov	r8, qword ptr [rsp + 0x940]
.label_159:
	mov	rsi, qword ptr [rsp + 0x2c8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jmp	.label_162
.label_114:
	xor	r14d, r14d
	mov	rbp, qword ptr [rsp + 0x698]
	jmp	.label_162
.label_127:
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x2c8]
	lea	rdi, [rdi]
	sub	rax, rsi
	mov	rbp, rbp
	lea	rdx, [r14 + rsi]
	cmp	r14, rax
	mov	rax, qword ptr [rsp + 0x2e8]
	lea	rsi, [rsi]
	cmovbe	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2e8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmovbe	rcx, rdx
	mov	r9d, dword ptr [rsp + 0x934]
	mov	rdx, qword ptr [rsp + 0x5c0]
	lea	rsi, [rsi]
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x940]
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rsi
	cmp	rax, r14
	jb	.label_125
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x698], rbp
	add	rsi, r14
	mov	rbp, qword ptr [rsp + 0x938]
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_93
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x300], r12b
	mov	dword ptr [rsp + 0x674], ebx
	cmp	rsi, rcx
	sete	bl
	nop	
	jne	.label_101
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x5c8]
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	jne	.label_109
.label_101:
	nop	
	mov	byte ptr [rsp + 0x28], bl
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	xor	edi, edi
	mov	r15d, r9d
	mov	rbx, r8
	mov	r12, rcx
	call	time
	mov	rsp, rsp
	mov	rcx, r12
	mov	rsi, r13
	mov	r8, rbx
	mov	rdx, r14
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x308], rax
	cmp	qword ptr [rsp + 0x5d0], rax
	lea	rsi, [rsi]
	jg	.label_115
	mov	rbp, rbp
	jmp	.label_124
.label_109:
	mov	byte ptr [rsp + 0x28], 1
	lea	rsi, [rsi]
	mov	rsi, rcx
.label_124:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2c8], rsi
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	dword ptr [rsp + 0x934], r9d
	mov	edx, 0x1b2
	mov	ecx, 1
	mov	rbp, rbp
	mov	r8d, 1
	mov	rdi, rsi
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x6a0]
	call	human_readable
	mov	r14, rax
	mov	rbp, rbp
	mov	bl, byte ptr [rsp + 0x28]
	test	bl, bl
	jne	.label_140
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x5c8]
	mov	rbp, rbp
	mov	rsi, r14
	mov	rsp, rsp
	call	strcmp
	nop	
	test	eax, eax
	je	.label_151
.label_140:
	test	r13, r13
	js	.label_152
	lea	rdi, [rdi]
	mov	r15d, 0x64
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	nop	
	je	.label_154
	mov	rsp, rsp
	movabs	rax, 0x28f5c28f5c28f5c
	mov	rbp, qword ptr [rsp + 0x2c8]
	mov	rsp, rsp
	cmp	rbp, rax
	nop	
	ja	.label_79
	imul	rax, rbp, 0x64
	xor	edx, edx
	div	r13
	jmp	.label_164
.label_152:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	jmp	.label_70
.label_151:
	mov	rbx, qword ptr [rsp + 0x2f0]
	jmp	.label_72
.label_79:
	mov	rax, r13
	movabs	rcx, 0xa3d70a3d70a3d70b
	lea	rsi, [rsi]
	imul	rcx
	mov	rcx, rdx
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rax, rcx
	shr	rax, 0x3f
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	add	rcx, rax
	nop	
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rbp
	div	rcx
.label_164:
	nop	
	mov	r15, rax
.label_154:
	mov	rsp, rsp
	mov	edx, 0x1b0
	mov	ecx, 1
	mov	r8d, 1
	lea	rdi, [rdi]
	mov	rdi, r13
	call	human_readable
	mov	rbp, rax
	mov	rsp, rsp
	test	bl, bl
	cmovne	r14, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], r15d
	nop	
	mov	qword ptr [rsp + 0x10], rbp
.label_70:
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	lea	rax, [rsp + 0x2e0]
	mov	qword ptr [rsp], rax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x2f0]
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x310]
	mov	r9, qword ptr [rsp + 0x938]
	lea	rdi, [rdi]
	call	error
	mov	edx, 0x28c
	lea	rbp, [rsp + 0x320]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r14
	call	__strcpy_chk
	mov	rax, qword ptr [rsp + 0x308]
	mov	rbp, rbp
	lea	rax, [rax + 5]
	mov	qword ptr [rsp + 0x5d0], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x674]
	mov	rsi, rbx
	mov	rsp, rsp
	call	dosync
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_130
	nop	
	call	__errno_location
	mov	cl, 1
	mov	qword ptr [rsp + 0x318], rcx
	nop	
	cmp	dword ptr [rax], 5
	mov	qword ptr [rsp + 0x5c8], rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x938]
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x934]
	mov	rdx, qword ptr [rsp + 0x5c0]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x940]
	je	.label_136
	mov	rbp, rbp
	jmp	.label_84
.label_130:
	mov	qword ptr [rsp + 0x5c8], rbp
.label_72:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x938]
	mov	r9d, dword ptr [rsp + 0x934]
	mov	rdx, qword ptr [rsp + 0x5c0]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x940]
	nop	
	jmp	.label_136
.label_90:
	mov	r14, r8
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x2f0]
	mov	rbp, rbp
	mov	r13, rsi
	lea	rsi, [rsi]
	call	dosync
	test	eax, eax
	je	.label_167
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x674], ebx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x2d0]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	ebx, 5
	nop	
	mov	r15, qword ptr [rsp + 0x2e8]
	lea	rdi, [rdi]
	je	.label_141
	nop	
	jmp	.label_77
.label_167:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x674], ebx
	mov	rdi, qword ptr [rsp + 0x2d0]
	call	free
	nop	
	mov	rax, qword ptr [rsp + 0x318]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x2e8]
.label_141:
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x310]
	je	.label_88
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x668], rax
.label_88:
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [r14 + 0x1e]
	mov	rsp, rsp
	add	rax, rbx
	mov	rbp, rbp
	cmp	rcx, rax
	mov	r14, r13
	jb	.label_146
	nop	
	jmp	.label_85
.label_123:
	cmp	dword ptr [rsi + 0x18], 0
	lea	rsi, [rsi]
	je	.label_108
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x674]
	call	ftruncate
	nop	
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x668]
	je	.label_111
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x5f0]
	cmp	eax, 0x8000
	jne	.label_111
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, r14
	call	error
	jmp	.label_111
.label_96:
	nop	
	mov	rax, qword ptr [rsp + 0x698]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	jmp	.label_139
.label_117:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	add	r14, qword ptr [rsp + 0x2c8]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x6a0]
	mov	rdi, r14
	call	umaxtostr
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x2f0]
	mov	r8, rbx
	call	error
	mov	rbp, qword ptr [rsp + 0x2d0]
	mov	rsp, rsp
	jmp	.label_104
.label_108:
	mov	rbp, qword ptr [rsp + 0x668]
	jmp	.label_111
.label_125:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	xor	eax, eax
.label_139:
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x2f0]
	call	error
.label_84:
	mov	rbp, qword ptr [rsp + 0x2d0]
.label_104:
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
.label_77:
	xor	ebp, ebp
.label_111:
	mov	rdi, qword ptr [rsp + 0x2d8]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	and	bpl, 1
	lea	rsi, [rsi]
	jmp	.label_83
.label_144:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x16
	mov	ebx, 0x16
	mov	rsp, rsp
	jmp	.label_87
.label_147:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
.label_87:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x2f0]
	nop	
	call	error
	lea	rsi, [rsi]
	jmp	.label_104
.label_134:
	lea	rdi, [rdi]
	add	r13, r14
	jmp	.label_107
.label_100:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4046d0

	.globl dosync
	.type dosync, @function
dosync:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	ebp, edi
	lea	rsi, [rsi]
	call	fdatasync
	nop	
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_169
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	mov	rsp, rsp
	lea	eax, [rbx - 9]
	mov	rbp, rbp
	cmp	eax, 0xd
	lea	rdi, [rdi]
	ja	.label_173
	mov	rbp, rbp
	mov	ecx, 0x3001
	lea	rdi, [rdi]
	bt	ecx, eax
	jb	.label_172
.label_173:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.73
.label_170:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, r14
	call	error
	mov	rsp, rsp
	mov	dword ptr [r15], ebx
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
.label_169:
	lea	rsi, [rsi]
	mov	eax, r12d
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_172:
	mov	edi, ebp
	mov	rsp, rsp
	call	fsync
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_169
	mov	ebx, dword ptr [r15]
	lea	eax, [rbx - 9]
	cmp	eax, 0xd
	mov	rsp, rsp
	ja	.label_174
	mov	ecx, 0x3001
	bt	ecx, eax
	jb	.label_171
.label_174:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.74
	jmp	.label_170
.label_171:
	mov	rbp, rbp
	call	sync
	jmp	.label_169
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4047e0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_181
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_183
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_177:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_175
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_182
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_180
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_175
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_175
.label_180:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_175:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_177
	nop	
	jmp	.label_176
.label_181:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_176
.label_183:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_178:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_179
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_182
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_179
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_179:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_178
.label_176:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_182:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049e0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_184
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_185
.label_184:
	nop	
	mov	esi, OFFSET FLAT:.str_2
.label_185:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a80

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_188
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_190:
	test	r15, r15
	mov	rbp, rbp
	je	.label_189
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_187
.label_189:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_186
	nop	dword ptr [rax]
.label_187:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_186:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_190
.label_188:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_191
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_191:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_193
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_194
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	jmp	.label_192
.label_194:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_2
.label_192:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_193:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_195
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_196:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_195
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_196
.label_195:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404dc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_198
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_197
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_197
.label_198:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_200
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_197:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_199
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_200:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_199:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_201
	pop	rcx
	ret	
.label_201:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ef0
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_202:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_203
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_202
.label_203:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	r15d, al
	nop	
	call	last_component
	nop	
	sub	rax, r14
	nop	dword ptr [rax]
.label_207:
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jae	.label_204
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_207
.label_204:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rdi, [rbx + rax + 1]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r15, rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_205
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_206
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0x2e
	nop	
	mov	ebx, 1
.label_206:
	mov	rbp, rbp
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_205:
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_208:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_208
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_209
	nop	dword ptr [rax + rax]
.label_211:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_209:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_211
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_212
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_210
	xor	r8d, r8d
.label_210:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_211
.label_212:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_214:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_213
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_214
.label_213:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_215
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_215:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_216
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_218
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_217
.label_218:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_217:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_216:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x148
	mov	r12, r8
	mov	rbp, rbp
	mov	r13, rcx
	mov	r14d, edx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], r15
	mov	qword ptr [rsp + 0x120], rdi
	mov	eax, r14d
	and	eax, 3
	mov	dword ptr [rsp + 0x84], eax
	mov	eax, r14d
	and	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xf4], eax
	mov	eax, 0x400
	lea	rsi, [rsi]
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0xdc], ecx
	lea	rdi, [rdi]
	call	localeconv
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	mov	rbp, rbp
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0xb8], rcx
	mov	eax, OFFSET FLAT:.str_5
	cmovb	rax, rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x130], rax
	mov	rsp, rsp
	mov	rbp, qword ptr [rbx + 8]
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf8], rax
	mov	rdi, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	cmp	rax, 0x11
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str_1
	cmovb	rax, rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	lea	rbx, [r15 + 0x287]
	mov	rbp, rbp
	cmp	rsi, r13
	lea	rdi, [rdi]
	jbe	.label_257
	nop	
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rsp, rsp
	je	.label_224
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rbp, rbp
	div	r13
	mov	rsp, rsp
	test	rdx, rdx
	jne	.label_224
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	div	r13
	mov	rbp, rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rdi
	lea	rsi, [rsi]
	div	rsi
	mov	r15, rax
	nop	
	add	rdx, rdx
	nop	
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	mov	rsp, rsp
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	nop	
	or	edi, 2
	cmp	rdx, rsi
	mov	rsi, rbp
	nop	
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_247
.label_257:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r13
	div	rsi
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rbp, rbp
	jne	.label_224
	mov	rsp, rsp
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r13
	div	rsi
	mov	rcx, rax
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	imul	r15, rdi
	xor	edx, edx
	mov	rax, r15
	div	rcx
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rdi, [rdi]
	mov	ecx, 0
	jne	.label_224
.label_247:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	mov	rbp, rbp
	mov	r14d, r8d
	nop	
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	nop	
	je	.label_269
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0xdc]
	nop	
	mov	edi, ebx
	xor	r13d, r13d
	mov	rbp, rbp
	cmp	rdi, r15
	mov	rbp, rbp
	jbe	.label_228
	nop	
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_236
.label_224:
	mov	qword ptr [rsp + 0xe8], rsi
	mov	rbp, rbp
	test	rsi, rsi
	setns	al
	lea	rsi, [rsi]
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_221]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rdi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_221]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	lea	rsi, [rsi]
	test	r13, r13
	setns	al
	nop	
	movzx	eax, al
	fild	qword ptr [rsp + 0x78]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_221]]
	fdivrp	st(2)
	mov	rsp, rsp
	fmulp	st(1)
	nop	
	test	r8b, 0x10
	lea	rsi, [rsi]
	jne	.label_239
	nop	
	mov	ecx, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_265
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_238]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x68]
	jbe	.label_268
	mov	qword ptr [rsp + 0x140], rsi
	nop	
	mov	dword ptr [rsp + 0x120], r8d
	fld	dword ptr [dword ptr [rip + label_220]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	mov	rsp, rsp
	fnstcw	word ptr [rsp + 0x82]
	lea	rdi, [rdi]
	mov	ax, word ptr [rsp + 0x82]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x82], 0xc7f
	mov	rsp, rsp
	fldcw	word ptr [rsp + 0x82]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x82], ax
	lea	rdi, [rdi]
	fistp	qword ptr [rsp + 0x60]
	fldcw	word ptr [rsp + 0x82]
	mov	rbp, rbp
	fnstcw	word ptr [rsp + 0x10e]
	nop	
	mov	ax, word ptr [rsp + 0x10e]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x10e], 0xc7f
	fldcw	word ptr [rsp + 0x10e]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x10e], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x18]
	nop	
	fldcw	word ptr [rsp + 0x10e]
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rax, qword ptr [rsp + 0x60]
	fxch	st(1)
	nop	
	fucomi	st(1)
	nop	
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	ecx, ecx
	nop	
	sete	cl
	mov	qword ptr [rsp + 0x100], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	lea	rdi, [rdi]
	fild	qword ptr [rsp + 0x100]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_221]]
	lea	rdi, [rdi]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	nop	
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	mov	rbp, rbp
	and	bl, cl
	movzx	ecx, bl
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	add	rcx, rax
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rsp, rsp
	setns	al
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	fild	qword ptr [rsp + 0xe0]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_221]]
	jmp	.label_260
.label_239:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xdc]
	nop	
	mov	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	lea	rdi, [rdi]
	fld1	
	nop	
	xor	r13d, r13d
	lea	rsi, [rsi]
	fild	qword ptr [rsp + 0x90]
	fldz	
	nop	word ptr cs:[rax + rax]
.label_258:
	fstp	st(0)
	mov	rsp, rsp
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	mov	rsp, rsp
	fmul	st(2)
	cmp	r13d, 7
	lea	rsi, [rsi]
	jg	.label_254
	lea	rdi, [rdi]
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	nop	
	fldz	
	mov	rbp, rbp
	jae	.label_258
.label_254:
	fstp	st(1)
	fstp	st(0)
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x120], r8d
	lea	rdi, [rdi]
	fdivp	st(1)
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rsp + 0x84]
	mov	rsp, rsp
	cmp	r14d, 1
	mov	rbp, rbp
	fld	st(0)
	mov	r15, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0xf4]
	je	.label_261
	fstp	st(0)
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_238]]
	mov	rbp, rbp
	fucomip	st(1)
	fld	st(0)
	jbe	.label_261
	nop	
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_220]]
	mov	rbp, rbp
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x12e]
	mov	rsp, rsp
	mov	ax, word ptr [rsp + 0x12e]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x12e], 0xc7f
	fldcw	word ptr [rsp + 0x12e]
	mov	word ptr [rsp + 0x12e], ax
	fistp	qword ptr [rsp + 0xc0]
	fldcw	word ptr [rsp + 0x12e]
	fnstcw	word ptr [rsp + 0x56]
	lea	rsi, [rsi]
	mov	ax, word ptr [rsp + 0x56]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x56], 0xc7f
	fldcw	word ptr [rsp + 0x56]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x56], ax
	lea	rsi, [rsi]
	fld	st(1)
	fistp	qword ptr [rsp + 0x98]
	fldcw	word ptr [rsp + 0x56]
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, qword ptr [rsp + 0xc0]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x98]
	test	r14d, r14d
	lea	rsi, [rsi]
	sete	cl
	mov	qword ptr [rsp + 0xd0], rax
	nop	
	test	rax, rax
	setns	dl
	nop	
	movzx	edx, dl
	fild	qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_221]]
	fucomip	st(1)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	mov	rbp, rbp
	movzx	ecx, bl
	mov	rbp, rbp
	mov	rbx, rsi
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x58]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_221]]
.label_261:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	__sprintf_chk
	mov	rdi, r15
	mov	rbp, rbp
	call	strlen
	mov	ecx, ebp
	shr	ecx, 5
	mov	rbp, rbp
	xor	ecx, 1
	or	rcx, 2
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	add	rcx, rdx
	cmp	rcx, rax
	mov	rsp, rsp
	jb	.label_241
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x120]
	test	cl, 8
	jne	.label_251
	nop	
	mov	r14, rdx
	nop	
	jmp	.label_223
.label_269:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_236
.label_265:
	mov	qword ptr [rsp + 0x140], rsi
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jmp	.label_260
.label_268:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x120], r8d
.label_260:
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_1
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	nop	
	mov	r13d, 0xffffffff
	jmp	.label_223
.label_251:
	movzx	ecx, byte ptr [rax + r15 - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_253
.label_241:
	fld	xword ptr [rsp + 0x110]
	fmul	dword ptr [dword ptr [rip + label_231]]
	nop	
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_232
	nop	
	fld	xword ptr [word ptr [rip + label_238]]
	fucomip	st(1)
	mov	rbp, rbp
	jbe	.label_232
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_220]]
	mov	rsp, rsp
	fld	st(1)
	fsub	st(1)
	lea	rdi, [rdi]
	fnstcw	word ptr [rsp + 0xa6]
	mov	ax, word ptr [rsp + 0xa6]
	nop	
	mov	word ptr [rsp + 0xa6], 0xc7f
	fldcw	word ptr [rsp + 0xa6]
	mov	word ptr [rsp + 0xa6], ax
	lea	rdi, [rdi]
	fistp	qword ptr [rsp + 0x10]
	mov	rsp, rsp
	fldcw	word ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	fnstcw	word ptr [rsp + 0x13e]
	mov	rsp, rsp
	mov	ax, word ptr [rsp + 0x13e]
	mov	word ptr [rsp + 0x13e], 0xc7f
	nop	
	fldcw	word ptr [rsp + 0x13e]
	mov	word ptr [rsp + 0x13e], ax
	fld	st(1)
	nop	
	fistp	qword ptr [rsp + 0x88]
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x13e]
	nop	
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	fxch	st(1)
	mov	rbp, rbp
	fucomi	st(1)
	lea	rdi, [rdi]
	fstp	st(1)
	lea	rdi, [rdi]
	cmovb	rax, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	test	r14d, r14d
	sete	cl
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	setns	dl
	lea	rsi, [rsi]
	movzx	edx, dl
	fild	qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_221]]
	fucomip	st(1)
	nop	
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	lea	rdi, [rdi]
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xb0], rcx
	mov	rbp, rbp
	setns	al
	mov	rbp, rbp
	movzx	eax, al
	fild	qword ptr [rsp + 0xb0]
	nop	
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_221]]
.label_232:
	fdiv	dword ptr [dword ptr [rip + label_231]]
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	jmp	.label_223
.label_228:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	nop	word ptr cs:[rax + rax]
.label_240:
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	rax, r15
	nop	
	div	rdi
	nop	
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	rbp, rbp
	mov	esi, ebp
	nop	
	sar	esi, 1
	xor	edx, edx
	lea	rsi, [rsi]
	mov	r15, rax
	mov	eax, ecx
	div	ebx
	nop	
	lea	edx, [rsi + rdx*2]
	cmp	edx, ebx
	mov	rbp, rbp
	mov	ecx, eax
	jae	.label_267
	add	edx, ebp
	lea	rsi, [rsi]
	setne	al
	movzx	ebp, al
	nop	
	jmp	.label_226
	nop	word ptr cs:[rax + rax]
.label_267:
	add	edx, ebp
	cmp	ebx, edx
	lea	rsi, [rsi]
	sbb	ebp, ebp
	and	ebp, 1
	nop	
	or	ebp, 2
.label_226:
	nop	
	inc	r13d
	cmp	r13d, 7
	mov	rsp, rsp
	jg	.label_237
	lea	rdi, [rdi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jbe	.label_240
.label_237:
	cmp	r15, 9
	ja	.label_242
	mov	eax, dword ptr [rsp + 0x84]
	cmp	eax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	jne	.label_245
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	nop	
	cmp	eax, 2
	lea	rsi, [rsi]
	ja	.label_249
	mov	rsp, rsp
	jmp	.label_255
.label_253:
	mov	r14, rdx
.label_223:
	mov	qword ptr [rsp + 0x68], r15
	mov	rbp, rbx
	mov	rsp, rsp
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memmove
	mov	r12, rbx
	sub	r12, r14
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rsp + 0x120]
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbp, rbp
	jmp	.label_262
.label_242:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_266
.label_245:
	nop	
	test	eax, eax
	jne	.label_255
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_255
.label_249:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_255
	inc	r15
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	cmp	r15, 9
	mov	rbp, rbp
	mov	ebp, 0
	ja	.label_271
.label_255:
	nop	
	test	r8b, 8
	lea	rdi, [rdi]
	je	.label_227
	test	ecx, ecx
	jne	.label_227
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_230
.label_227:
	lea	rdi, [rdi]
	add	ecx, 0x30
	nop	
	lea	r12, [rdx + 0x286]
	mov	byte ptr [rdx + 0x286], cl
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	sub	r12, rdx
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	rsi, qword ptr [rsp + 0x130]
	mov	ebx, r8d
	call	memcpy
	mov	rsp, rsp
	mov	r8d, ebx
	xor	ebp, ebp
.label_230:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_266:
	mov	rsi, qword ptr [rsp + 0x140]
.label_236:
	mov	eax, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_270
	cmp	eax, 1
	jne	.label_252
	lea	rsi, [rsi]
	movsxd	rax, ebp
	nop	
	mov	edx, r15d
	and	edx, 1
	add	rdx, rax
	nop	
	setne	al
	movzx	eax, al
	nop	
	add	eax, ecx
	nop	
	cmp	eax, 5
	jle	.label_252
	lea	rsi, [rsi]
	jmp	.label_244
.label_270:
	add	ecx, ebp
	nop	
	jle	.label_252
.label_244:
	inc	r15
	mov	eax, dword ptr [rsp + 0xdc]
	cmp	r13d, 7
	nop	
	jg	.label_252
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_252
	cmp	r15, rax
	jne	.label_252
	mov	qword ptr [rsp + 0x140], rsi
	inc	r13d
	mov	r15d, 1
	mov	rbp, rbp
	test	r8b, 8
	jne	.label_235
	mov	byte ptr [r12 - 1], 0x30
	dec	r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	sub	r12, rdx
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x130]
	mov	ebx, r8d
	lea	rsi, [rsi]
	call	memcpy
	mov	r8d, ebx
	mov	r15d, 1
	jmp	.label_235
.label_252:
	mov	qword ptr [rsp + 0x140], rsi
.label_235:
	mov	rbx, qword ptr [rsp + 0x110]
	nop	
	mov	edi, dword ptr [rsp + 0xf4]
	lea	rdi, [rdi]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, rbp
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_248:
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rdi, [rdi]
	mul	rcx
	mov	eax, edx
	mov	rbp, rbp
	shr	eax, 2
	lea	rsi, [rsi]
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	lea	rsi, [rsi]
	mov	esi, r15d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	lea	rsi, [rsi]
	dec	rbp
	mov	rsp, rsp
	shr	rdx, 3
	cmp	r15, 9
	mov	r15, rdx
	ja	.label_248
.label_262:
	nop	
	test	r8b, 4
	jne	.label_263
	mov	rsp, rsp
	mov	r12, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	jmp	.label_264
.label_263:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x84], r13d
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf4], edi
	mov	rbp, rbp
	mov	rbx, r12
	mov	rsp, rsp
	sub	rbx, rbp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x70]
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x20]
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	neg	r15
	mov	rsp, rsp
	mov	rbp, -1
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rsp, rsp
	jmp	.label_233
	nop	dword ptr [rax]
.label_225:
	add	r12, r15
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rdx, r14
	nop	
	call	memcpy
.label_233:
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_246
	nop	
	cmp	eax, 0x7f
	cmovae	rax, rbx
	mov	rbp, rbp
	inc	r13
	lea	rsi, [rsi]
	mov	rbp, rax
.label_246:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	rsp, rsp
	sub	r12, rbp
	mov	rax, rbx
	mov	rbp, rbp
	sub	rax, rbp
	lea	rsi, [rsi]
	lea	rsi, [rsp + rax + 0x20]
	mov	rdi, r12
	mov	rdx, rbp
	call	memcpy
	nop	
	sub	rbx, rbp
	jne	.label_225
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x120]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0x84]
.label_264:
	nop	
	test	r8b, r8b
	mov	rbp, rbp
	jns	.label_259
	test	r13d, r13d
	lea	rdi, [rdi]
	jns	.label_222
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_222
	mov	eax, dword ptr [rsp + 0xdc]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_234:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_222
	mov	rbp, rbp
	inc	ecx
	nop	
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_234
.label_222:
	nop	
	mov	eax, r8d
	and	eax, 0x100
	mov	rbp, rbp
	test	r8b, 0x40
	lea	rsi, [rsi]
	je	.label_229
	mov	rbp, rbp
	mov	ecx, r13d
	mov	rbp, rbp
	or	ecx, eax
	mov	rsp, rsp
	je	.label_229
	mov	rbx, qword ptr [rsp + 0x68]
	mov	byte ptr [rbx + 0x287], 0x20
	mov	rsp, rsp
	add	rbx, 0x288
.label_229:
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_250
	test	edi, edi
	lea	rdi, [rdi]
	jne	.label_219
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_256
.label_219:
	lea	rsi, [rsi]
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_256:
	nop	
	mov	byte ptr [rbx], cl
	lea	rdi, [rdi]
	inc	rbx
.label_250:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_259
	mov	rsp, rsp
	test	edi, edi
	je	.label_243
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_243
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_243:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0x42
	mov	rsp, rsp
	inc	rbx
.label_259:
	mov	byte ptr [rbx], 0
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x148
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_271:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	mov	r15d, 0xa
	jmp	.label_266
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010
	.globl human_options
	.type human_options, @function
human_options:

	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_276
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.4_1
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	test	rdi, rdi
	jne	.label_276
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_277
.label_276:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	mov	rbp, rbp
	movzx	ebp, al
	shl	ebp, 2
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:block_size_args
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	nop	
	js	.label_278
	cdqe	
	lea	rsi, [rsi]
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	lea	rdi, [rdi]
	mov	qword ptr [r15], 1
.label_275:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_273
.label_278:
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	rsp, rsp
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rcx, r15
	lea	rsi, [rsi]
	call	xstrtoumax
	test	eax, eax
	mov	rbp, rbp
	je	.label_280
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
.label_273:
	cmp	qword ptr [r15], 0
	mov	rsp, rsp
	jne	.label_272
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	nop	
	mov	ecx, 0x400
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	mov	eax, 4
.label_272:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_280:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	add	al, 0xd0
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	jb	.label_275
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_281:
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_279
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + 1]
	nop	
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	nop	
	cmp	ecx, 0xa
	nop	
	jae	.label_281
	jmp	.label_275
.label_277:
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	lea	rsi, [rsi]
	mov	eax, 0x200
	mov	ecx, 0x400
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	.label_275
.label_279:
	mov	ecx, ebp
	mov	rbp, rbp
	or	ecx, 0x80
	or	ebp, 0x180
	mov	rbp, rbp
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	lea	rsi, [rsi]
	jne	.label_274
	nop	
	movzx	eax, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	mov	rsp, rsp
	jne	.label_275
.label_274:
	lea	rsi, [rsi]
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_282:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_282
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406270

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_283
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_285
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_285
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_284
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_284:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_285:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_283:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406360
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063b0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063f0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406460
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406480
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_286
	test	rdx, rdx
	nop	
	je	.label_286
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_286:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406570

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_290:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_314
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_321]]
.label_718:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_719:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_347
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_347
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_377:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_370
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_370:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_377
.label_347:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_308
.label_711:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_308
.label_714:
	lea	rsi, [rsi]
	mov	al, 1
.label_712:
	lea	rsi, [rsi]
	mov	dl, 1
.label_715:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_336
	mov	rbp, rbp
	mov	cl, al
.label_336:
	mov	al, cl
.label_713:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_409
	test	rbp, rbp
	je	.label_412
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_293
.label_409:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_293
.label_716:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_295
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_300
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_304
.label_717:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_308
.label_412:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_293:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_308
.label_295:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_304
.label_300:
	nop	
	mov	r14d, 1
.label_304:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_308:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_350
	nop	dword ptr [rax]
.label_343:
	mov	rsp, rsp
	inc	r15
.label_350:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_399
	cmp	r15, r10
	jne	.label_400
	jmp	.label_401
	nop	dword ptr [rax]
.label_399:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_403
.label_400:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_364
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_288
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_288
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_288:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_310
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_313
	nop	dword ptr [rax]
.label_364:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_313
	nop	word ptr cs:[rax + rax]
.label_310:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_346
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_313
	jmp	.label_327
.label_346:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_313:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_383
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_385]]
.label_649:
	test	r15, r15
	jne	.label_349
	jmp	.label_392
.label_653:
	xor	eax, eax
	cmp	r10, -1
	je	.label_394
	test	r15, r15
	jne	.label_396
	nop	
	cmp	r10, 1
	je	.label_392
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_302
.label_642:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_312
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_327
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_407
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_407
	cmp	r14, rbp
	jae	.label_411
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_411:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_294
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_294:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_299
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_299:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_407:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_309
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_309:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_317
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_323
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_326
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_332
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_332:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_339
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_339:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_302
.label_643:
	mov	bl, 0x62
	nop	
	jmp	.label_361
.label_644:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_351
.label_645:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_361
.label_646:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_361
.label_647:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_351
.label_650:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_368
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_374
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_378
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_378:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_393
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_393:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_405
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_405:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_368:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_302
.label_651:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_408
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_349
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_349
	nop	
	jmp	.label_289
.label_652:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_292
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_297
	jmp	.label_301
.label_383:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_362
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_324
.label_394:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_329
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_329
.label_392:
	mov	dl, 1
.label_648:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_335
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_302
.label_312:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_343
	jmp	.label_349
.label_292:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_351
.label_297:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_355
.label_351:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_360
.label_361:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_302
	jmp	.label_367
.label_362:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_372
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_372:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_306
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_330:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_366
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_363
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_390
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_415
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_315:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_307
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_387
.label_307:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_315
.label_415:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_402
	mov	rbp, rbp
	xor	r13d, r13d
.label_402:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_330
	jmp	.label_298
	nop	
.label_306:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_358
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_363
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_366
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_375
	xor	r13d, r13d
.label_375:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_306
	lea	rsi, [rsi]
	jmp	.label_298
.label_329:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_302
.label_408:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_349
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_349
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_349
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_404
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_406
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_320
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_287
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_287:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_296
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_296:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_311
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_311:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_348
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_348:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_302
.label_349:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_302:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_386
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_331
	nop	
	jmp	.label_334
	nop	dword ptr [rax + rax]
.label_386:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_334
.label_331:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_340
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_352
	nop	word ptr cs:[rax + rax]
.label_334:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_352:
	mov	bl, r12b
	je	.label_355
	jmp	.label_367
.label_340:
	mov	bl, r12b
.label_367:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_327
	cmp	r9d, 2
	jne	.label_371
	mov	al, dil
	and	al, 1
	jne	.label_371
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_376
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_376:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_381
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_381:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_388
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_388:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_371:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_391
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_391:
	mov	rbp, rbp
	inc	r14
	jmp	.label_398
.label_396:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_302
.label_317:
	xor	r13d, r13d
	jmp	.label_302
.label_323:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_302
.label_326:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_302
.label_363:
	xor	r13d, r13d
.label_358:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_298
.label_366:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_414
	lea	rax, [r11 + r15]
.label_305:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_344
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_305
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_298
.label_414:
	xor	r13d, r13d
	jmp	.label_298
.label_344:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_298
.label_390:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_298:
	mov	rbp, rbp
	mov	rbx, r10
.label_324:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_337
	test	cl, cl
	je	.label_337
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_302
.label_337:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_341
	nop	dword ptr [rax]
.label_333:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_341:
	mov	rsp, rsp
	test	cl, cl
	je	.label_356
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_359
	cmp	r14, rbp
	jae	.label_365
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_365:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_359:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_373
	nop	dword ptr [rax + rax]
.label_356:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_379
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_384
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_384
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_325
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_325:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_369
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_369:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_397
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_397:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_384:
	cmp	r14, rbp
	jae	.label_291
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_291:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_353
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_353:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_413
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_413:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_373:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_355
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_316
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_316
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_318
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_318:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_338
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_338:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_316:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_333
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_333
	nop	word ptr cs:[rax + rax]
.label_355:
	test	dil, 1
	je	.label_345
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_345
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_380
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_380:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_354
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_354:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_345:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_398:
	cmp	r14, rbp
	jae	.label_342
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_342:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_343
.label_404:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_302
.label_406:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_302
	nop	word ptr [rax + rax]
.label_401:
	nop	
	mov	rcx, r15
.label_403:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_389
	mov	rsp, rsp
	or	al, dl
	je	.label_395
.label_389:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_382
	mov	rsp, rsp
	or	al, dl
	jne	.label_382
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_410
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_382
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_290
.label_382:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_303
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_303
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_303
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_322:
	cmp	r14, rbp
	jae	.label_319
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_319:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_322
.label_303:
	cmp	r14, rbp
	jae	.label_328
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_328
.label_335:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_327
.label_387:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_327
.label_379:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_327
.label_395:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_327
.label_360:
	nop	
	mov	r9d, 2
.label_327:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_357:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_328:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_410:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_357
.label_374:
	mov	r9d, 2
	jmp	.label_327
.label_301:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_327
.label_289:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_327
.label_320:
	mov	r9d, 5
	nop	
	jmp	.label_327
.label_314:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a10
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b50
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_416
	mov	qword ptr [rax], rbx
.label_416:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
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
	#Procedure 0x407ca0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_417
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_421:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_421
.label_417:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_420
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_418]], OFFSET FLAT:slot0
.label_420:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_419
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_419:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d60
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d70

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_427
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_423
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_424
.label_423:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_428
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_426
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_426:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_424:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_425
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_422
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_422:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_425:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_427:
	lea	rdi, [rdi]
	call	abort
.label_428:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407fe0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ff0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408020
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408050

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_429
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_429:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4080e0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_430
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_430:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408180
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_431
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_431:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408210
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_432
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_432:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408280
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_433]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408320
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_433]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_433]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408430
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_433]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084a0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_436
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_436:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408580
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_433]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_437
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_437
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_437:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408610
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_433]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_438
	test	rdx, rdx
	je	.label_438
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_438:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_433]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_439
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_439
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_439:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408740
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_433]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_434]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_435]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_440
	test	rsi, rsi
	je	.label_440
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_440:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087f0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x408810

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408830

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408860

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_442
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_444
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_443
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_443
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_443
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_443
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_443
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_443
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_442
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_442
.label_444:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_443
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_443
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_443
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_443
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_443
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_443
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_441
.label_443:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_442:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_441:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_442
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_442
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089d0
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a00

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_445
	mov	rsp, rsp
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + 8], xmm0
.label_445:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a40

	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:
	nop	
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a50

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	mov	rbp, rbp
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	nop	
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	rsp, rsp
	lea	r12, [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_448:
	nop	
	cmp	r14, r13
	jae	.label_446
	mov	rax, r14
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_447:
	lea	rsi, [rsi]
	shl	rax, 8
	or	rax, 0xff
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	cmp	rax, r13
	lea	rdi, [rdi]
	jb	.label_447
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	call	randread
	mov	rbp, rbp
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_450:
	mov	rcx, rbx
	mov	rsp, rsp
	shl	rcx, 8
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	nop	
	inc	rax
	nop	
	cmp	r14, r13
	jb	.label_450
.label_446:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	lea	rdi, [rdi]
	je	.label_449
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	nop	
	mov	rdi, rdx
	mov	rsp, rsp
	sub	r14, rdi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rcx
	div	rbp
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_448
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_451
.label_449:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_451:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bc0
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
	.align	16
	#Procedure 0x408be0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	explicit_bzero
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c40

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_452
	nop	
	xor	ebx, ebx
	test	r14, r14
	je	.label_457
	mov	esi, OFFSET FLAT:.str_7
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen_safer
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_454
.label_457:
	nop	
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_456
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rdi, rbx
	call	setvbuf
	mov	rsp, rsp
	jmp	.label_454
.label_452:
	mov	edi, 0x1038
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_454
.label_456:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebx, eax
	test	ebx, ebx
	js	.label_455
	lea	rdi, [rdi]
	cmp	r12, 0x800
	mov	edx, 0x800
	mov	rsp, rsp
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	nop	
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	close
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	r12, r12
	js	.label_455
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	lea	rsi, [rsi]
	mov	r13, r12
	ja	.label_453
.label_455:
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovbe	rbx, rax
	lea	rsi, [rsi]
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gettimeofday
	mov	rsp, rsp
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_453
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmovbe	r12, rax
	nop	
	call	getpid
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	nop	
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	mov	rsp, rsp
	ja	.label_453
	mov	eax, 0x800
	mov	rbp, rbp
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + r12]
	nop	
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_453
	mov	eax, 0x800
	nop	
	sub	rax, rbx
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rsi, [rsi]
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	r12, rbx
	nop	
	cmp	r12, 0x7ff
	lea	rdi, [rdi]
	ja	.label_453
	mov	rbp, rbp
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r12
	nop	
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	cmovbe	rbx, rax
	mov	rbp, rbp
	call	getgid
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
.label_453:
	mov	rdi, r14
	nop	
	call	isaac_seed
.label_454:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f70
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f80
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f90

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_461
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	mov	rbp, rax
	nop	
	call	__errno_location
	mov	r12, rax
	nop	
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_464
	nop	
.label_462:
	lea	rdi, [rdi]
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	mov	rbp, rbp
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_462
	mov	rsp, rsp
	jmp	.label_464
.label_461:
	mov	r12, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	jae	.label_458
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	add	r15, r12
	lea	rsi, [rsi]
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_460:
	nop	
	cmp	rbx, 0x800
	jb	.label_459
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	mov	rbp, rbp
	add	rbx, -0x800
	jne	.label_460
	mov	rbp, rbp
	jmp	.label_463
.label_459:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	isaac_refill
	lea	rdi, [rdi]
	mov	r12d, 0x800
	mov	rsi, r13
.label_458:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_463:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], r12
.label_464:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409110

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_465
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_465:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409160

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_466
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_468
	mov	esi, OFFSET FLAT:.str.1_2
	jmp	.label_467
.label_468:
	mov	esi, OFFSET FLAT:.str.2_3
.label_467:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_466:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091f0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x808]
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	nop	
	lea	r9, [rdi + 0x400]
	mov	rsp, rsp
	mov	r8, rsi
	mov	r10, rdi
	nop	dword ptr [rax]
.label_470:
	mov	r11, rax
	lea	rdi, [rdi]
	shl	r11, 0x15
	mov	rbp, rbp
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	nop	
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	lea	rsi, [rsi]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	lea	rsi, [rsi]
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	nop	
	add	rax, qword ptr [r10 + 0x408]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	mov	r11d, ecx
	lea	rdi, [rdi]
	and	r11d, 0x7f8
	add	rdx, rax
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + r11]
	mov	rbp, rbp
	mov	qword ptr [r10 + 8], rdx
	mov	rsp, rsp
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	rsp, rsp
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	lea	rdi, [rdi]
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	and	eax, 0x7f8
	lea	rdi, [rdi]
	add	rcx, r11
	nop	
	add	rcx, qword ptr [rdi + rax]
	nop	
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	mov	rbp, rbp
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 0x18]
	lea	rsi, [rsi]
	mov	r11d, ecx
	and	r11d, 0x7f8
	lea	rsi, [rsi]
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	lea	rsi, [rsi]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	mov	rbp, rbp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	mov	rbp, rbp
	cmp	r10, r9
	jb	.label_470
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	mov	rbp, rbp
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	nop	
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	nop	
	shr	rax, 5
	lea	rsi, [rsi]
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	nop	
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	nop	
	xor	r10, rax
	nop	
	add	r10, qword ptr [r9 - 0x3f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	lea	rsi, [rsi]
	and	eax, 0x7f8
	add	rcx, r10
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	nop	
	mov	rax, r10
	nop	
	shr	rax, 0x21
	xor	rax, r10
	nop	
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	mov	rsp, rsp
	and	r10d, 0x7f8
	mov	rbp, rbp
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	mov	rsp, rsp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	nop	
	jb	.label_469
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094d0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	nop	
	movabs	r8, 0xb9f8b322c73ac862
	mov	rbp, rbp
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_471:
	mov	rbp, rbp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rdi, [rdi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	lea	rsi, [rsi]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	mov	rbp, rbp
	shl	rdx, 9
	mov	r15, rdx
	nop	
	xor	r15, r10
	sub	rsi, r15
	lea	rdi, [rdi]
	mov	r10, r8
	nop	
	shr	r8, 0x17
	nop	
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	mov	rbp, rbp
	lea	r12, [rcx + rsi]
	lea	rsi, [rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	nop	
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	mov	rsp, rsp
	xor	r8, r10
	mov	r10, rcx
	nop	
	add	r10, rax
	mov	rbp, rbp
	sub	r14, r8
	nop	
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	mov	rsp, rsp
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	mov	rsp, rsp
	xor	rcx, r10
	mov	rbp, rbp
	mov	r11, r14
	mov	rbp, rbp
	add	r11, r15
	mov	rbp, rbp
	sub	r9, rcx
	lea	r10, [r9 + r15]
	lea	rdi, [rdi]
	shl	r15, 0xe
	mov	rsp, rsp
	mov	rax, r15
	xor	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	nop	
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	nop	
	add	rbx, 8
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jl	.label_471
	xor	ebx, ebx
	nop	
.label_472:
	mov	rsp, rsp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rsi, [rsi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	nop	
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	r14, r9
	shr	r14, 9
	mov	rbp, rbp
	xor	r14, r11
	mov	rbp, rbp
	add	r9, rdx
	lea	rdi, [rdi]
	sub	r8, r14
	lea	rsi, [rsi]
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	mov	rsp, rsp
	add	r8, rsi
	sub	rcx, r11
	mov	rbp, rbp
	lea	r9, [rcx + rsi]
	lea	rdi, [rdi]
	shl	rsi, 0xf
	mov	rsp, rsp
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	lea	rsi, [rsi]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	lea	rdi, [rdi]
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	nop	
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	mov	rsp, rsp
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	mov	rbp, rbp
	xor	rdx, r12
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_472
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409800

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	mov	rsp, rsp
	mov	r12d, r8d
	mov	rsp, rsp
	mov	r13, rcx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	r15d, edi
	nop	
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	nop	
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rsi, [rsi]
	call	syscall
	mov	rsp, rsp
	mov	rbx, rax
	call	__errno_location
	nop	
	test	ebx, ebx
	jns	.label_473
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x16
	je	.label_482
	lea	rdi, [rdi]
	cmp	ecx, 0x5f
	je	.label_482
	cmp	ecx, 0x26
	mov	rbp, rbp
	jne	.label_473
.label_482:
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_476
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_478
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	jmp	.label_473
.label_476:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_484:
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_475
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_475
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_474
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_475
.label_474:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	nop	
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	__fxstatat
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_473
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_479
	lea	rdi, [rdi]
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_475
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 2
	lea	rdi, [rdi]
	jmp	.label_473
.label_478:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	rbp, rbp
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	lea	rdi, [rdi]
	call	__fxstatat
	test	eax, eax
	je	.label_483
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	r12b, 1
	cmp	eax, 2
	je	.label_484
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_473
.label_483:
	nop	
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x11
	mov	rsp, rsp
	mov	ebx, 0xffffffff
	nop	
	jmp	.label_473
.label_479:
	lea	rcx, [rsp + 0x98]
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	mov	r8d, 0x100
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	__fxstatat
	nop	
	test	eax, eax
	je	.label_480
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	jne	.label_473
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_473
	mov	rbp, rbp
	jmp	.label_475
.label_480:
	nop	
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	nop	
	jne	.label_477
	and	eax, dword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_481
.label_475:
	nop	
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	mov	rbp, rbp
	mov	rcx, r13
	call	renameat
	mov	rsp, rsp
	mov	ebx, eax
.label_473:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_477:
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x14
	lea	rdi, [rdi]
	jmp	.label_473
.label_481:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_473
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ae0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_485
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_486
.label_485:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_486:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409b50

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_492
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_491
.label_492:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_491:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_3
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_494
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_495]]
.label_668:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_2
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_494:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_488
.label_669:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_670:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_671:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_489
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_487
.label_673:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_496
.label_674:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_496:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_487:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_489:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_493
.label_676:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_488:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_490
.label_675:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_490:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_493:
	mov	rbp, rbp
	call	__fprintf_chk
.label_667:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409f40
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_497:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_497
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f70
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_501:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_498
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_500
	nop	word ptr cs:[rax + rax]
.label_498:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_500:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_499
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_501
.label_499:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a000

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_502
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_502:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_504:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_503
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_505
	nop	dword ptr [rax + rax]
.label_503:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_505:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_506
	inc	r9
	cmp	r9, 0xa
	jb	.label_504
.label_506:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a140
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a1d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_507
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_508
	test	rax, rax
	je	.label_507
.label_508:
	nop	
	pop	rbx
	ret	
.label_507:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a220

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_509
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_510
.label_509:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_510:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a250
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_511
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_512
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_512
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_512:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_513
	test	rax, rax
	je	.label_511
.label_513:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_511:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_514
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_514
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_514:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_515
	test	rax, rax
	nop	
	je	.label_516
.label_515:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_516:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a320
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_517
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_521
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_520
.label_517:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_523
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_523:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_518
.label_520:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_519
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_519
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_519:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_522
	test	rax, rax
	mov	rbp, rbp
	je	.label_521
.label_522:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_521:
	call	xalloc_die
.label_518:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a400
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_525
	test	rax, rax
	mov	rbp, rbp
	je	.label_524
.label_525:
	pop	rbx
	ret	
.label_524:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a420
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_526
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_529
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_530
	call	free
	xor	eax, eax
	jmp	.label_527
.label_526:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_528
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_530:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_527
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_528
.label_527:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_528:
	mov	rbp, rbp
	call	xalloc_die
.label_529:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4b0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_531
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_532
.label_531:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_532:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a510
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_533
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_533
	pop	rcx
	ret	
.label_533:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a540

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_535
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_534
.label_535:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_534:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5a0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_536
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_537
.label_536:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_537:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a600

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a650

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_539
	cmp	eax, 1
	je	.label_542
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_541
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_538
.label_542:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_538
.label_539:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_544
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_540
.label_544:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_543
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_538
.label_541:
	call	__errno_location
	nop	
	jmp	.label_538
.label_543:
	mov	dword ptr [rax], 0x22
.label_538:
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	nop	
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	esi, ebp
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
.label_540:
	mov	rax, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a770

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7b0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_558
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_550:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_550
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_547
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_566
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_570
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_547
	mov	dword ptr [rsp + 4], 1
.label_570:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_553
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_547
.label_566:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_547
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_547
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_547
.label_553:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_545
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_552
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_559
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_559
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_559
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_555
	cmp	eax, 0x44
	nop	
	je	.label_555
	cmp	eax, 0x69
	jne	.label_559
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_560
	lea	rdi, [rdi]
	mov	ecx, 1
.label_560:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_559
.label_545:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_565
.label_555:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_559:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_571
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_548
	jmp	qword ptr [word ptr [+ (rax * 8) + label_551]]
.label_728:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_554
.label_571:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_557
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_561
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_563]]
.label_740:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_554:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_556
.label_548:
	cmp	r13d, 0x54
	nop	
	je	.label_549
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_552
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_568
.label_557:
	cmp	r13d, 0x74
	je	.label_549
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_552
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_556
.label_730:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_562
.label_731:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_567
.label_732:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_546
.label_549:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_569
.label_561:
	cmp	r13d, 0x5a
	jne	.label_552
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
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
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_568:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_567
.label_552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_547
.label_729:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
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
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_546
.label_733:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_569:
	or	dl, r10b
.label_562:
	lea	rsi, [rsi]
	or	dl, bl
.label_546:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_567:
	mov	rsp, rsp
	mov	rbp, rsi
.label_556:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_564
	or	eax, 2
.label_564:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_565:
	mov	qword ptr [rax], rbp
.label_547:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_558:
	mov	edi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b070

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_572
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_573
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_573
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_572:
	mov	ecx, 1
.label_573:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0e0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x40b0f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_574
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_575
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_574
.label_575:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_574
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_576
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_576:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_574:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40b1a0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_584
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_584:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_597
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_592
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_591
	mov	rsp, rsp
	test	esi, esi
	jne	.label_597
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_577
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_583
.label_597:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_590
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_591
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_581
.label_592:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_588
.label_591:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_596
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_578
.label_596:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_578:
	mov	edx, dword ptr [rax]
.label_593:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_588:
	mov	ebp, eax
.label_586:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_581:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_590
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_595
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_594
.label_590:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_580
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_585
.label_577:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_583:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_593
.label_595:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_594:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_582
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_587
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_587
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_586
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_589
.label_587:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_586
.label_580:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_585:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_588
.label_582:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_589:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_586
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_586
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_579
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_586
.label_579:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_586
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b570

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_598
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_598
	test	byte ptr [rbx + 1], 1
	je	.label_598
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_598:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b5b0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_599
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_599
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_600
.label_599:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_600:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_601
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_601:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b660

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_602
	nop	
	cmp	r15, -2
	jb	.label_602
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_602
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_602:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6f0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_603
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_604
	test	cl, cl
	mov	rsp, rsp
	jne	.label_604
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_604
.label_603:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_604
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_604:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b780

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_607
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_608
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_606
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_609
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_607
.label_609:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_605
.label_608:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_607
.label_606:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_605:
	xor	eax, eax
.label_607:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b860

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_611
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_610
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_612
.label_610:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_611
.label_612:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_611:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b8b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_613
	nop	
	mov	rax, rcx
.label_613:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8f0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	16
	#Procedure 0x40b910

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]