	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	nop	
	xor	esi, esi
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	test	rax, rax
	je	.label_9
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	nop	
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.11
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:.str.47
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_8:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x48
	mov	r15, rsi
	mov	rbp, rbp
	mov	r12d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.13
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	bpl, 1
	movabs	r14, 0x7fffffffffffffff
	mov	eax, OFFSET FLAT:body_fastmap
	lea	rsi, [rsi]
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:footer_fastmap
	movq	xmm0, rax
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:header_fastmap
	lea	rsi, [rsi]
	movq	xmm0, rax
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	jmp	.label_10
.label_19:
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	bl, bpl
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, r12d
	mov	rsp, rsp
	mov	rsi, r15
	lea	rsi, [rsi]
	call	getopt_long
	lea	rsi, [rsi]
	cmp	eax, 0x61
	jle	.label_26
	add	eax, -0x62
	cmp	eax, 0x15
	nop	
	ja	.label_10
	jmp	qword ptr [word ptr [+ (rax * 8) + label_28]]
.label_2198:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6f
	jg	.label_30
	mov	rsp, rsp
	cmp	ecx, 0x61
	je	.label_34
	cmp	ecx, 0x6e
	lea	rsi, [rsi]
	je	.label_34
	mov	rsp, rsp
	jmp	.label_32
.label_26:
	cmp	eax, -1
	nop	
	je	.label_37
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_38
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_10
	jmp	.label_41
.label_2199:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + section_del]],  rax
	lea	rdi, [rdi]
	mov	bpl, bl
	mov	rsp, rsp
	jmp	.label_10
.label_2200:
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x6f
	mov	rbp, rbp
	jg	.label_46
	cmp	ecx, 0x61
	je	.label_11
	cmp	ecx, 0x6e
	mov	rbp, rbp
	je	.label_11
	mov	rsp, rsp
	jmp	.label_13
.label_2201:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6f
	lea	rdi, [rdi]
	jg	.label_15
	lea	rdi, [rdi]
	cmp	ecx, 0x61
	je	.label_21
	nop	
	cmp	ecx, 0x6e
	lea	rdi, [rdi]
	je	.label_21
	jmp	.label_24
.label_2202:
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	esi, 1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	call	xdectoimax
	mov	qword ptr [word ptr [rip + page_incr]],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2203:
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbp
	nop	
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r8, rax
	call	xdectoimax
	nop	
	mov	qword ptr [word ptr [rip + blank_join]],  rax
	lea	rsi, [rsi]
	mov	bpl, bl
	jmp	.label_10
.label_2204:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x72
	je	.label_12
	movzx	ecx, cl
	cmp	ecx, 0x6c
	mov	rbp, rbp
	jne	.label_17
	movzx	edx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x6e
	jne	.label_20
	mov	rsp, rsp
	cmp	byte ptr [rax + 2], 0
	mov	rbp, rbp
	je	.label_42
.label_20:
	lea	rdi, [rdi]
	cmp	ecx, 0x72
	jne	.label_17
.label_12:
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6e
	jne	.label_25
	cmp	byte ptr [rax + 2], 0
	je	.label_27
.label_25:
	nop	
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x7a
	jne	.label_17
	cmp	byte ptr [rax + 2], 0
	lea	rsi, [rsi]
	je	.label_31
.label_17:
	xor	ebp, ebp
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	jmp	.label_19
.label_2205:
	nop	
	mov	byte ptr [byte ptr [rip + reset_numbers]],  1
	mov	bpl, bl
	jmp	.label_10
.label_2206:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	qword ptr [word ptr [rip + separator_str]],  rax
	lea	rdi, [rdi]
	mov	bpl, bl
	jmp	.label_10
.label_2207:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	lea	rsi, [r14 + 1]
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [rip + starting_line_number]],  rax
	mov	rsp, rsp
	mov	bpl, bl
	lea	rdi, [rdi]
	jmp	.label_10
.label_2208:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, rbp
	call	xdectoimax
	nop	
	mov	dword ptr [dword ptr [rip + lineno_width]],  eax
	lea	rdi, [rdi]
	mov	bpl, bl
	lea	rdi, [rdi]
	jmp	.label_10
.label_30:
	mov	rsp, rsp
	cmp	ecx, 0x70
	mov	rsp, rsp
	je	.label_29
	cmp	ecx, 0x74
	jne	.label_32
.label_34:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + body_type]],  rax
	mov	bpl, bl
	nop	
	jmp	.label_10
.label_46:
	nop	
	cmp	ecx, 0x70
	je	.label_36
	cmp	ecx, 0x74
	jne	.label_13
.label_11:
	mov	qword ptr [word ptr [rip + footer_type]],  rax
	mov	bpl, bl
	mov	rbp, rbp
	jmp	.label_10
.label_15:
	mov	rbp, rbp
	cmp	ecx, 0x70
	nop	
	je	.label_40
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_24
.label_21:
	nop	
	mov	qword ptr [word ptr [rip + header_type]],  rax
	mov	bpl, bl
	jmp	.label_10
.label_29:
	nop	
	lea	rbp, [rax + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	qword ptr [word ptr [rip + body_type]],  rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + body_regex]],  xmm0
	nop	
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [word ptr [rip + label_45]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	mov	edx, OFFSET FLAT:body_regex
	jmp	.label_18
.label_32:
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_0
	jmp	.label_19
.label_36:
	mov	rsp, rsp
	lea	rbp, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	qword ptr [word ptr [rip + footer_type]],  rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + footer_regex]],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [word ptr [rip + label_22]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:footer_regex
	mov	rsp, rsp
	jmp	.label_18
.label_13:
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	jmp	.label_19
.label_40:
	mov	rbp, rbp
	lea	rbp, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	nop	
	mov	qword ptr [word ptr [rip + header_type]],  rax
	nop	
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + header_regex]],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [word ptr [rip + label_39]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:header_regex
.label_18:
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rax
	mov	rbp, rbp
	call	rpl_re_compile_pattern
	mov	rcx, rax
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	mov	bpl, bl
	je	.label_10
	lea	rdi, [rdi]
	jmp	.label_16
.label_24:
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	jmp	.label_19
.label_27:
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_RIGHT_NOLZ
	mov	bpl, bl
	jmp	.label_10
.label_31:
	nop	
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_RIGHT_LZ
	mov	rbp, rbp
	mov	bpl, bl
	jmp	.label_10
.label_42:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_LEFT
	lea	rdi, [rdi]
	mov	bpl, bl
	mov	rbp, rbp
	jmp	.label_10
.label_37:
	test	bl, bl
	mov	rbp, rbp
	je	.label_35
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + section_del]]
	call	strlen
	mov	rbp, rax
	mov	rbp, rbp
	lea	rax, [rbp + rbp*2]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + header_del_len]],  rax
	lea	rdi, [rbp + rbp*2 + 1]
	mov	rbp, rbp
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + header_del]],  rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	stpcpy
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	mov	qword ptr [word ptr [rip + body_del_len]],  rax
	lea	rdi, [rdi]
	lea	rdi, [rbp + rbp + 1]
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [word ptr [rip + body_del]],  rax
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	qword ptr [word ptr [rip + footer_del_len]],  rbp
	lea	rdi, [rbp + 1]
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [word ptr [rip + footer_del]],  rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rbp, rbp
	mov	rdi, rax
	call	stpcpy
	nop	
	mov	edi, OFFSET FLAT:line_buf
	call	initbuffer
	mov	rdi,  qword ptr [word ptr [rip + separator_str]]
	call	strlen
	lea	rsi, [rsi]
	mov	r14, rax
	movsxd	rax,  dword ptr [dword ptr [rip + lineno_width]]
	lea	rsi, [rsi]
	lea	rdi, [r14 + rax + 1]
	mov	rbp, rbp
	call	xmalloc
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + print_no_line_fmt]],  r13
	movsxd	rbp,  dword ptr [dword ptr [rip + lineno_width]]
	mov	rsp, rsp
	add	rbp, r14
	mov	esi, 0x20
	mov	rdi, r13
	mov	rdx, rbp
	call	memset
	lea	rdi, [rdi]
	mov	byte ptr [r13 + rbp], 0
	mov	rax,  qword ptr [word ptr [rip + starting_line_number]]
	nop	
	mov	qword ptr [word ptr [rip + line_no]],  rax
	mov	rax,  qword ptr [word ptr [rip + body_type]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:body_regex
	nop	
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	eax, r12d
	jne	.label_44
	mov	edi, OFFSET FLAT:.str.30
	call	nl_file
	mov	rsp, rsp
	mov	bl, al
	jmp	.label_14
.label_44:
	jge	.label_14
	nop	word ptr cs:[rax + rax]
.label_23:
	lea	rsi, [rsi]
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	nl_file
	and	bl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + optind]],  eax
	mov	rsp, rsp
	cmp	eax, r12d
	jl	.label_23
.label_14:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_43
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	call	rpl_fclose
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_33
.label_43:
	nop	
	not	bl
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	movzx	eax, bl
	add	rsp, 0x48
	nop	
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_38:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	r9d, OFFSET FLAT:.str.29
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	call	exit
.label_41:
	lea	rdi, [rdi]
	xor	edi, edi
	call	usage
.label_35:
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_16:
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	call	error
.label_33:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl nl_file
	.type nl_file, @function
nl_file:
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_47
	cmp	byte ptr [r14 + 1], 0
	je	.label_54
.label_47:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r14
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_60
	jmp	.label_65
.label_54:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	lea	rdi, [rdi]
	mov	r15,  qword ptr [word ptr [rip + stdin]]
.label_60:
	nop	
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	rbp, rbp
	jmp	.label_66
	nop	word ptr cs:[rax + rax]
.label_49:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + label_68]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + label_63]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
.label_66:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:line_buf
	mov	rsi, r15
	call	readlinebuffer
	nop	
	test	rax, rax
	je	.label_72
	mov	rbp,  qword ptr [word ptr [rip + label_63]]
	lea	rbx, [rbp - 1]
	cmp	rbx, 2
	lea	rsi, [rsi]
	jb	.label_64
	mov	r12,  qword ptr [word ptr [rip + label_68]]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + section_del]]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rax]
	movzx	ecx, word ptr [r12]
	mov	rsp, rsp
	cmp	ecx, eax
	lea	rdi, [rdi]
	jne	.label_64
	cmp	rbx,  qword ptr [word ptr [rip + header_del_len]]
	mov	rsp, rsp
	jne	.label_74
	mov	rsi,  qword ptr [word ptr [rip + header_del]]
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_55
.label_74:
	mov	rbp, rbp
	cmp	rbx,  qword ptr [word ptr [rip + body_del_len]]
	jne	.label_59
	mov	rsi,  qword ptr [word ptr [rip + body_del]]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	nop	
	test	eax, eax
	je	.label_67
.label_59:
	lea	rsi, [rsi]
	cmp	rbx,  qword ptr [word ptr [rip + footer_del_len]]
	jne	.label_64
	mov	rsi,  qword ptr [word ptr [rip + footer_del]]
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_56
	nop	dword ptr [rax]
.label_64:
	mov	rax,  qword ptr [word ptr [rip + current_type]]
	movsx	eax, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	eax, 0x6f
	jg	.label_48
	nop	
	cmp	eax, 0x61
	mov	rbp, rbp
	je	.label_52
	cmp	eax, 0x6e
	mov	rbp, rbp
	je	.label_57
	lea	rdi, [rdi]
	jmp	.label_49
	nop	
.label_48:
	cmp	eax, 0x70
	je	.label_61
	nop	
	cmp	eax, 0x74
	lea	rsi, [rsi]
	jne	.label_49
	cmp	rbp, 2
	mov	rbp, rbp
	jb	.label_57
	lea	rdi, [rdi]
	jmp	.label_69
.label_52:
	mov	rax,  qword ptr [word ptr [rip + blank_join]]
	mov	rsp, rsp
	cmp	rax, 2
	jl	.label_69
	cmp	rbp, 1
	ja	.label_71
	mov	rcx,  qword ptr [word ptr [rip + proc_text.blank_lines]]
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + proc_text.blank_lines]],  rcx
	cmp	rcx, rax
	mov	rbp, rbp
	jne	.label_57
.label_71:
	mov	rsi,  qword ptr [word ptr [rip + lineno_format]]
	mov	edx,  dword ptr [dword ptr [rip + lineno_width]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + line_no]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + separator_str]]
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	__printf_chk
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + page_incr]]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_58
	lea	rsi, [rsi]
	add	qword ptr [word ptr [rip + line_no]],  rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + proc_text.blank_lines]],  0
	lea	rdi, [rdi]
	jmp	.label_49
.label_61:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + current_regex]]
	mov	rsi,  qword ptr [word ptr [rip + label_68]]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	rpl_re_search
	cmp	rax, -1
	je	.label_57
	cmp	rax, -2
	je	.label_62
.label_69:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + lineno_format]]
	mov	edx,  dword ptr [dword ptr [rip + lineno_width]]
	mov	rcx,  qword ptr [word ptr [rip + line_no]]
	mov	r8,  qword ptr [word ptr [rip + separator_str]]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + page_incr]]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_58
	nop	
	add	qword ptr [word ptr [rip + line_no]],  rax
	jmp	.label_49
	nop	
.label_57:
	mov	rdi,  qword ptr [word ptr [rip + print_no_line_fmt]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	jmp	.label_49
.label_55:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + header_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:header_regex
	lea	rsi, [rsi]
	jmp	.label_51
.label_67:
	mov	rax,  qword ptr [word ptr [rip + body_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	nop	
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:body_regex
	lea	rdi, [rdi]
	jmp	.label_51
.label_56:
	nop	
	mov	rax,  qword ptr [word ptr [rip + footer_type]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + current_type]],  rax
	nop	
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:footer_regex
.label_51:
	mov	al,  byte ptr [byte ptr [rip + reset_numbers]]
	and	al, 1
	jne	.label_50
	mov	rax,  qword ptr [word ptr [rip + starting_line_number]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + line_no]],  rax
.label_50:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_70
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	mov	rsp, rsp
	jmp	.label_66
.label_70:
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rbp, rbp
	call	__overflow
	jmp	.label_66
.label_72:
	test	byte ptr [r15], 0x20
	mov	rbp, rbp
	jne	.label_65
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_73
	cmp	byte ptr [r14 + 1], 0
	mov	rsp, rsp
	je	.label_75
.label_73:
	mov	rbp, rbp
	mov	rdi, r15
	call	rpl_fclose
	lea	rsi, [rsi]
	mov	bl, 1
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_53
.label_65:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_53:
	mov	al, bl
	pop	rbx
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_75:
	lea	rsi, [rsi]
	mov	rdi, r15
	call	clearerr_unlocked
	lea	rsi, [rsi]
	mov	bl, 1
	jmp	.label_53
.label_58:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	call	error
.label_62:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402a70
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
	#Procedure 0x402a80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a90

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
	je	.label_77
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_76
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_76
.label_77:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_79
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_76:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_78
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
.label_79:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_78:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
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
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b90
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_80
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_80:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bf0

	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:
	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	xor	eax, eax
	nop	
	test	byte ptr [rbp], 0x10
	jne	.label_81
	mov	rsp, rsp
	mov	r12, qword ptr [r15 + 0x10]
	nop	
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	add	r14, r12
	lea	rdi, [rdi]
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], edx
	mov	r13, r12
	nop	dword ptr [rax]
.label_86:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	jae	.label_84
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rax]
.label_85:
	cmp	r13, r14
	nop	
	jne	.label_83
	mov	rbp, rbp
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	call	x2realloc
	lea	rsi, [rsi]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_83:
	nop	
	mov	byte ptr [r13], bl
	nop	
	inc	r13
	nop	
	cmp	ebx, dword ptr [rsp]
	jne	.label_86
	lea	rdi, [rdi]
	jmp	.label_82
.label_84:
	mov	rbp, rbp
	mov	rdi, rbp
	call	__uflow
	mov	rsp, rsp
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_85
	mov	rsp, rsp
	cmp	r13, r12
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_81
	test	byte ptr [rbp], 0x20
	jne	.label_81
	mov	eax, ecx
	nop	
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp]
	lea	rdi, [rdi]
	jne	.label_85
.label_82:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_81:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d30

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
	je	.label_87
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
	jl	.label_89
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_89
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_88
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_88:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_89:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_87:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x402e20
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
	#Procedure 0x402e70
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
	#Procedure 0x402e90
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
	#Procedure 0x402eb0
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
	#Procedure 0x402f20
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
	#Procedure 0x402f40
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
	je	.label_90
	test	rdx, rdx
	nop	
	je	.label_90
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_90:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f80
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
	#Procedure 0x403030

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_189:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_169
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_176]]
.label_2288:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_2289:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_194
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_194
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_215:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_210
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_210:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_215
.label_194:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_102
.label_2281:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_102
.label_2284:
	lea	rsi, [rsi]
	mov	al, 1
.label_2282:
	mov	rbp, rbp
	mov	r12b, 1
.label_2285:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_124
	lea	rsi, [rsi]
	mov	cl, al
.label_124:
	mov	rsp, rsp
	mov	al, cl
.label_2283:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_131
	test	r10, r10
	je	.label_138
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_139
.label_131:
	xor	ecx, ecx
	jmp	.label_139
.label_2286:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_152
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_158
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_165
.label_2287:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_102
.label_138:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_139:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_102
.label_152:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_165
.label_158:
	lea	rdi, [rdi]
	mov	eax, 1
.label_165:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_102:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_173:
	nop	
	inc	rdi
.label_204:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_126
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_128
	jmp	.label_134
	nop	dword ptr [rax + rax]
.label_126:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_137
.label_128:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_145
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_149
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_149
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_149:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_183
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_115
	nop	dword ptr [rax + rax]
.label_145:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_115
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_211
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_115
	jmp	.label_100
.label_211:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_115:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_156
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_114]]
.label_2328:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_93
	mov	rbp, rbp
	jmp	.label_122
.label_2332:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_123
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_127
	nop	
	cmp	rbp, 1
	je	.label_122
	xor	r13d, r13d
	jmp	.label_91
.label_2321:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_140
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_100
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_153
	mov	al, r14b
	and	al, 1
	jne	.label_157
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_163
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_163:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_174
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_174:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_179:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_110
.label_2322:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_188
.label_2323:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_154
.label_2324:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_188
.label_2325:
	mov	bl, 0x66
	jmp	.label_188
.label_2326:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_154
.label_2329:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_201
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_202
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_159
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_159:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_171
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_171:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_108
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_108:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_201:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_91
.label_2330:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_121
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_93
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_93
	mov	rbp, rbp
	jmp	.label_132
.label_2331:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_135
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_141
	lea	rdi, [rdi]
	jmp	.label_147
.label_156:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_184
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_98:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_178
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_178
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_91
.label_123:
	test	rdi, rdi
	jne	.label_192
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_192
.label_122:
	mov	dl, 1
.label_2327:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_198
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_91
.label_140:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_173
	jmp	.label_93
.label_135:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_154
.label_141:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_144
.label_154:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_113
.label_188:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_91
	lea	rsi, [rsi]
	jmp	.label_129
.label_184:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_99
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_99:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_205:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_136
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_143
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_209
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_162
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_182:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_177
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_207
.label_177:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_182
.label_162:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_155
	xor	r13d, r13d
.label_155:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_205
	mov	rsp, rsp
	jmp	.label_98
.label_192:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_91
.label_121:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_93
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_93
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_93
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_97
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_190
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_105
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_111
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_111:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_117
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_117:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_101
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_101:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_203
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_203:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_91
.label_93:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_91:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_212
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_167
	lea	rsi, [rsi]
	jmp	.label_170
.label_212:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_170
.label_167:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_175
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_180:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_144
	mov	rsp, rsp
	jmp	.label_129
.label_175:
	mov	bl, r15b
.label_129:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_100
	nop	
	cmp	r9d, 2
	jne	.label_197
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_197
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_107
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_107:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_206
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_206:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_197:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_95
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_95:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_193
.label_127:
	xor	r13d, r13d
	nop	
	jmp	.label_91
.label_178:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_104
	nop	dword ptr [rax + rax]
.label_119:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_104:
	test	cl, cl
	je	.label_112
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_109
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_120
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_120:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_109
	nop	dword ptr [rax]
.label_112:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_100
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_142
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_142
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_133
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_133:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_160
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_160:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_146
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_146:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_142:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_214
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_214:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_186
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_186:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_196
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_196:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_109:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_144
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_92
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_92
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_96
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_96:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_103
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_103:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_92:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_119
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_144:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_130
	mov	rsp, rsp
	and	al, 1
	jne	.label_130
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_118
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_118:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_172
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_172:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_130:
	mov	rsp, rsp
	mov	bl, r15b
.label_193:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_187
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_187:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_173
.label_153:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_110
.label_157:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_110:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_181
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_181:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_125
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_191
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_195
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_200
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_200:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_208
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_208:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_91
.label_125:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_91
.label_191:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_91
.label_195:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_91
.label_143:
	xor	r13d, r13d
.label_136:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_98
.label_209:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_106
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_164:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_116
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_164
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_98
.label_106:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_98
.label_116:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_98
.label_97:
	xor	r13d, r13d
	jmp	.label_91
.label_190:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_91
.label_134:
	nop	
	mov	r13, rdi
.label_137:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_151
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_166
.label_151:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_168
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_168
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_185
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_168
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_189
.label_168:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_150
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_150
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_150
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_213:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_148
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_148:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_213
.label_150:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_94
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_94
.label_198:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_100
.label_207:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_100
.label_166:
	nop	
	mov	rbp, r13
	jmp	.label_100
.label_113:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_100:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_161:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_94:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_185:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_161
.label_202:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_100
.label_147:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_100
.label_132:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_100
.label_105:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_100
.label_169:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0
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
	#Procedure 0x4046f0
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
	je	.label_216
	mov	qword ptr [rax], rbx
.label_216:
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
	#Procedure 0x404840
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_217
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_221:
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
	jl	.label_221
.label_217:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_220
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_218]], OFFSET FLAT:slot0
.label_220:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_219
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_219:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404910

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
	js	.label_226
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_223
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_224
.label_223:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_228
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
	jne	.label_227
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_227:
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
.label_224:
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
	ja	.label_225
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
	je	.label_222
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_222:
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
.label_225:
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
.label_226:
	lea	rdi, [rdi]
	call	abort
.label_228:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b90
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
	#Procedure 0x404bc0
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
	#Procedure 0x404bf0
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
	je	.label_229
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
.label_229:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c80
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
	je	.label_230
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
.label_230:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
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
	je	.label_231
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
.label_231:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0
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
	je	.label_232
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
.label_232:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e20
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_233]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
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
	#Procedure 0x404ec0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
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
	#Procedure 0x404f60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_233]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
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
	#Procedure 0x404fd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
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
	#Procedure 0x405040

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
	je	.label_236
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
.label_236:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405120
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_233]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_237
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_237
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
.label_237:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4051b0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_233]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_238
	test	rdx, rdx
	je	.label_238
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
.label_238:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_233]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_239
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_239
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
.label_239:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_233]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_235]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_240
	test	rsi, rsi
	je	.label_240
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
.label_240:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390
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
	#Procedure 0x4053b0
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
	#Procedure 0x4053d0

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
	#Procedure 0x405400

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
	jne	.label_242
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_244
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_241
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_241
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_241
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_241
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_241
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_241
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_242
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_242
.label_244:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_241
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_241
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_241
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_241
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_241
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_241
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_243
.label_241:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_242:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_243:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_242
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_242
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405570

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
	je	.label_252
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_254
.label_252:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_254:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_250
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_247]]
.label_2189:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_250:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_246
.label_2190:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_2191:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_2192:
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
	jmp	.label_251
.label_2193:
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
	jmp	.label_249
.label_2194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_248
.label_2195:
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
.label_248:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_249:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_251:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_245
.label_2197:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_246:
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
	jmp	.label_253
.label_2196:
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
.label_253:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_245:
	mov	rbp, rbp
	call	__fprintf_chk
.label_2188:
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
	#Procedure 0x405960
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_255:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_255
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405990
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_259:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_256
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_258
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_258:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_257
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_259
.label_257:
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
	#Procedure 0x405a20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_260
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
.label_260:
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
.label_262:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_261
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_263
	nop	dword ptr [rax + rax]
.label_261:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_263:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_264
	inc	r9
	cmp	r9, 0xa
	jb	.label_262
.label_264:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b60
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
	mov	edx, OFFSET FLAT:.str.15_1
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
	#Procedure 0x405bf0
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
	jb	.label_265
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_266
	test	rax, rax
	je	.label_265
.label_266:
	nop	
	pop	rbx
	ret	
.label_265:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_267
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_268
.label_267:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_268:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70
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
	jb	.label_270
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_269
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_269
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_269:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_271
	test	rax, rax
	je	.label_270
.label_271:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_270:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_272
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_272
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_272:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_273
	test	rax, rax
	nop	
	je	.label_274
.label_273:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_274:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_275
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_279
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_278
.label_275:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_281
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_281:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_276
.label_278:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_277
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_277
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_277:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_280
	test	rax, rax
	mov	rbp, rbp
	je	.label_279
.label_280:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_279:
	call	xalloc_die
.label_276:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e20
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_282
	test	rax, rax
	mov	rbp, rbp
	je	.label_283
.label_282:
	pop	rbx
	ret	
.label_283:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405e40

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_284
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_287
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_288
	call	free
	xor	eax, eax
	jmp	.label_285
.label_284:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_286
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_288:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_285
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_286
.label_285:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_286:
	mov	rbp, rbp
	call	xalloc_die
.label_287:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ed0
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
	je	.label_289
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_290
.label_289:
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
.label_290:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30
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
	jb	.label_291
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_291
	pop	rcx
	ret	
.label_291:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f60

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
	je	.label_293
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_292
.label_293:
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
.label_292:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0
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
	je	.label_294
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_295
.label_294:
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
.label_295:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406020

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
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
	#Procedure 0x406070

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	eax, esi
	mov	r15, rdi
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	call	xstrtoimax
	mov	rsp, rsp
	test	eax, eax
	je	.label_300
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_302
	mov	rbp, rbp
	cmp	eax, 3
	jne	.label_297
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_296
.label_300:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	nop	
	jl	.label_303
	cmp	rbx, r12
	jle	.label_298
.label_303:
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	lea	rsi, [rsi]
	jl	.label_299
.label_302:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_296
.label_297:
	mov	rsp, rsp
	call	__errno_location
.label_296:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	nop	
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ebp, 0x16
	mov	rbp, rbp
	cmove	ebp, eax
	mov	rbp, rbp
	mov	rdi, r15
	call	quote
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rsp, rsp
	mov	rcx, r14
	call	error
	nop	
	mov	rbx, qword ptr [rsp]
.label_298:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_299:
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, -0x40000001
	jg	.label_301
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_296
.label_301:
	mov	dword ptr [rax], 0x22
	jmp	.label_296
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061c0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	rsp, rsp
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406200

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_304
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	cmovne	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, ebp
	call	__strtol_internal
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rcx, r12
	nop	
	je	.label_333
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_336
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_309
	mov	rsp, rsp
	mov	r13d, 1
.label_336:
	test	r14, r14
	nop	
	je	.label_349
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_353
.label_333:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_309
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_309
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	
	test	rax, rax
	mov	rcx, r15
	je	.label_309
.label_353:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_314
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_310
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_311
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_311
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strchr
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_311
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_339
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_339
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_311
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_329
	mov	r15d, 1
.label_329:
	mov	r8d, 0x400
	jmp	.label_311
.label_349:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_309
.label_314:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_316
.label_339:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_311:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_323
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_324
	jmp	qword ptr [word ptr [+ (rax * 8) + label_328]]
.label_2217:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_332
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_335
.label_323:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_343
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_346
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_352]]
.label_2236:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_332
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_335
.label_324:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_306
	cmp	r13d, 0x59
	jne	.label_310
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	mov	rbp, rbp
	idiv	r8
	mov	r10, rax
	mov	rsp, rsp
	cmp	rbp, r10
	mov	edi, 1
	nop	
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_312
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	mov	rbp, rbp
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	ebx, al
.label_312:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_334
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_334:
	mov	rsp, rsp
	or	edi, ebx
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	r11d, 1
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_345
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	ebx, al
.label_345:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_305
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rsi, r9
	mov	rsp, rsp
	movzx	r11d, al
.label_305:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_319
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	nop	
	div	r8
	mov	rcx, rsi
	nop	
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	nop	
	movzx	ebx, al
.label_319:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_330
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	lea	rsi, [rsi]
	movzx	r14d, al
.label_330:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_307
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	imul	rcx, r8
	nop	
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_307:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_359
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
.label_359:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_317
.label_343:
	cmp	r13d, 0x74
	je	.label_306
	cmp	r13d, 0x77
	jne	.label_310
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_321
.label_332:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_317
.label_2219:
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp, rbp
	jl	.label_337
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_337:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_350
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	r10d, al
.label_350:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_360
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_360:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_317
.label_2220:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_317
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rbp
	nop	
	cmp	rax, rbp
	nop	
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
	nop	
	jmp	.label_317
.label_2221:
	lea	r13, [r9 + 1]
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_361
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_361:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_355
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_355:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_317
.label_306:
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rbp, rbp
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rbp, rbp
	mov	r11d, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_308
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	lea	rdi, [rdi]
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	edi, al
.label_308:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_325
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	lea	rsi, [rsi]
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r9
	movzx	r11d, al
.label_325:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_338
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	edi, al
.label_338:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_357
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	r8, r9
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r8
.label_357:
	or	ebx, edi
	jmp	.label_317
.label_346:
	nop	
	cmp	r13d, 0x5a
	jne	.label_310
	lea	r13, [r9 + 1]
	nop	
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rsp, rsp
	mov	r10, rax
	nop	
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_313
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_313:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_326
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	mov	rsp, rsp
	div	r8
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	edi, al
.label_326:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_342
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rbp, rbp
	mov	rcx, rsi
	imul	rcx, r8
	lea	rsi, [rsi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	rcx, r9
	movzx	ebx, al
.label_342:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_358
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	div	r8
	lea	rdi, [rdi]
	mov	rsi, rcx
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	nop	
	setl	al
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r11d, al
.label_358:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_347
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	ebx, al
.label_347:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_315
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_315:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_340
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rsi
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r8
.label_340:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_317
.label_310:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_309
.label_2218:
	lea	r13, [r9 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	nop	
	mov	rcx, r13
	mov	edi, 1
	jl	.label_354
	xor	edx, edx
	nop	
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rsp, rsp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_354:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_322
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	nop	
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbx, r9
	movzx	r14d, al
.label_322:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_331
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	nop	
	setl	al
	lea	rdi, [rdi]
	cmovl	rsi, r9
	movzx	ecx, al
.label_331:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_348
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	lea	rdi, [rdi]
	imul	rdi, r8
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rdi, r9
	movzx	r11d, al
.label_348:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_341
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r14d, al
.label_341:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_318
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_318:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_317
.label_2222:
	nop	
	lea	r13, [r9 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	lea	rsi, [rsi]
	idiv	r8
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rsp, rsp
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_327
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rcx, r9
	movzx	edi, al
.label_327:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_351
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	r14d, al
.label_351:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_362
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	mov	rbp, rbp
	imul	rbx, r8
	nop	
	cmp	rax, rsi
	setl	al
	nop	
	cmovl	rbx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_362:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_320
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	mov	rbp, rbp
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_320:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_344
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rbp, rbp
	imul	r8, rsi
	cmp	rax, rsi
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_344:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_317
.label_321:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_335:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_317:
	mov	rbp, rbp
	or	ebx, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	lea	rax, [rdx + r15]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_356
	or	ebx, 2
.label_356:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_316:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_309:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_304:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_363
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_364
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
	je	.label_364
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
.label_363:
	mov	ecx, 1
.label_364:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fc0

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
	js	.label_365
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_367
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
	je	.label_365
.label_367:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_365
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_366
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_366:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_365:
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
	#Procedure 0x407070

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_368
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_368
	test	byte ptr [rbx + 1], 1
	je	.label_368
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_368:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070b0

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
	jne	.label_369
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_369
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_370
.label_369:
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
.label_370:
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
	je	.label_371
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_371:
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
	#Procedure 0x407160

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
	je	.label_372
	nop	
	cmp	r15, -2
	jb	.label_372
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_372
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_372:
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
	#Procedure 0x4071f0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_373
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_373:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407260

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xf8
	nop	
	mov	qword ptr [rsp + 0xc8], rcx
	nop	
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	rsp, rsp
	mov	r12, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_479
.label_525:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0xf
	mov	rbp, rbp
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_414
	lea	rdi, [r13 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_524:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r13
	nop	
	jbe	.label_524
	lea	rsi, [rsi]
	mov	edi, 0x18
	mov	rsi, rbx
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	lea	rdi, [rdi]
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x88], rbx
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_376
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_376
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_376
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_376
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_376
	or	byte ptr [r12 + 0xb0], 4
.label_376:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_397
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_410
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_414
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_432:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_456
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_456:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_426
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_426
	or	byte ptr [r12 + 0xb0], 8
.label_426:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_432
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_451:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_386
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_386:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_448
	or	byte ptr [r12 + 0xb0], 8
.label_448:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_451
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_461:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_495
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_495:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_461
	nop	word ptr cs:[rax + rax]
.label_472:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_467
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_467:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_472
	jmp	.label_397
.label_410:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_397:
	cmp	qword ptr [r12], 0
	je	.label_414
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_414
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0xc8]
	and	ecx, 0x400000
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0x20], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r13
	mov	qword ptr [rsp + 0x70], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rbx
	mov	rax, rcx
	nop	
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xa8], al
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], edx
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa9], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rbp, rbp
	shr	al, 3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rsp + 0xaa], al
	mov	qword ptr [rsp + 0x88], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r13
	mov	rsp, rsp
	xor	eax, eax
	test	r13, r13
	jle	.label_483
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_522
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r15d, 0xc
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	movabs	rcx, 0x1fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	ja	.label_384
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_384
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_522:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_378
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	nop	
	call	realloc
	mov	r15d, 0xc
	nop	
	test	rax, rax
	je	.label_384
	mov	qword ptr [rsp + 0x28], rax
	mov	r15, qword ptr [rsp + 0xd0]
.label_378:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	nop	
	jmp	.label_388
.label_414:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_399
.label_483:
	shr	rcx, 0x20
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
.label_388:
	mov	rsp, rsp
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	lea	rdi, [rdi]
	je	.label_419
	lea	rsi, [rsi]
	cmp	ecx, 2
	jl	.label_416
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	lea	rdi, [rdi]
	mov	r15d, eax
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_384
	lea	r14, [rsp + 0x20]
.label_465:
	cmp	qword ptr [rsp + 0x58], r13
	jge	.label_427
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	rbp, rax
	mov	rbp, rbp
	jg	.label_427
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xb0], 2
	lea	rdi, [rdi]
	jl	.label_435
	nop	
	mov	r15d, 0xc
	mov	rsp, rsp
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_384
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rbp*8]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_384
	nop	
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_435
	shl	rbp, 4
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_384
	mov	qword ptr [rsp + 0x38], rax
.label_435:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_457
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	realloc
	lea	rsi, [rsi]
	mov	r15d, 0xc
	test	rax, rax
	je	.label_384
	mov	qword ptr [rsp + 0x28], rax
.label_457:
	mov	qword ptr [rsp + 0x60], rbx
	mov	rdi, r14
	nop	
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	mov	r15d, eax
	mov	rsp, rsp
	test	r15d, r15d
	je	.label_465
.label_384:
	mov	dword ptr [rsp + 0x14], r15d
	jmp	.label_415
.label_419:
	mov	rbp, rbp
	cmp	ecx, 2
	jl	.label_468
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_buffer
	lea	rdi, [rdi]
	jmp	.label_427
.label_416:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	cmp	rax, r13
	cmovg	rax, r13
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	r13, r13
	nop	
	jle	.label_462
	mov	rbp, rbp
	xor	eax, eax
	mov	ebp, 1
	mov	rsp, rsp
	jmp	.label_484
	nop	word ptr cs:[rax + rax]
.label_498:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_484:
	add	r14, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_492
.label_503:
	mov	rsp, rsp
	movzx	ebx, al
	lea	rsi, [rsi]
	lea	eax, [rbx + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_395
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_395:
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_498
	jmp	.label_502
.label_492:
	mov	al, byte ptr [rbx + rcx]
	mov	rbp, rbp
	jmp	.label_503
.label_468:
	test	rbx, rbx
	je	.label_504
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	mov	rbp, rbp
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_505
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r14]
	nop	
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	nop	
	jl	.label_505
	nop	dword ptr [rax + rax]
.label_512:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, rdi
	nop	
	jl	.label_512
	lea	rsi, [rsi]
	mov	rcx, rdi
.label_505:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	jmp	.label_427
.label_479:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	mov	rbp, rbp
	je	.label_399
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_525
.label_502:
	mov	rsp, rsp
	mov	rax, r13
.label_462:
	mov	qword ptr [rsp + 0xd0], r15
	jmp	.label_527
.label_504:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
.label_527:
	nop	
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rax
.label_427:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x30], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [rsp + 0xc8]
	nop	
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	or	rdx, 0x800000
	mov	rsp, rsp
	lea	r14, [rsp + 0xe0]
	mov	rsp, rsp
	lea	r13, [rsp + 0x20]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	mov	rbp, rbp
	cdqe	
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, rbp
	call	parse_reg_exp
	nop	
	mov	r14, rax
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_402
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	jne	.label_404
.label_402:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_408
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_508:
	nop	
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
.label_507:
	test	r14, r14
	mov	rbp, rbp
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_424
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_429
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x70]
.label_526:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	mov	rsp, rsp
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	mov	rsp, rsp
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_434
	mov	qword ptr [rbp], rcx
.label_424:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_434
	test	rcx, rcx
	je	.label_434
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x68], rcx
	nop	
	mov	r15, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	nop	
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_469
	cmp	qword ptr [r15 + 0x20], 0
	nop	
	je	.label_471
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_474
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	test	rax, rax
	je	.label_477
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_487
	test	rbx, rbx
	je	.label_489
	mov	rcx, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	edx, 1
	cmova	rdx, rcx
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_491
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_491
	cmp	rcx, 1
	lea	rsi, [rsi]
	mov	ebp, 1
	cmova	rbp, rcx
	lea	rsi, [rsi]
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	mov	rbp, rbp
	xor	edi, edi
	bt	rbp, 2
	nop	
	jb	.label_499
	lea	rsi, [rsi]
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	mov	rsp, rsp
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_393]]
	nop	
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_499:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_510
	mov	rsp, rsp
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	lea	rsi, [rsi]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_393]]
.label_518:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rsp, rsp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rdi, [rdi]
	lea	rbp, [rdi + 4]
	nop	
	movq	xmm2, rbp
	lea	rdi, [rdi]
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	mov	rbp, rbp
	jne	.label_518
.label_510:
	mov	rbp, rbp
	cmp	rdx, rsi
	mov	rdi, rsi
	mov	rsp, rsp
	je	.label_489
	nop	dword ptr [rax + rax]
.label_491:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_491
.label_489:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	call	optimize_subexps
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_375
.label_389:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_377
	nop	dword ptr [rax + rax]
.label_385:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, rcx
	je	.label_381
	test	rbp, rbp
	jne	.label_377
.label_381:
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_385
	jmp	.label_375
.label_377:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	lea	rsi, [rsi]
	je	.label_389
.label_375:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_390
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_406:
	cmp	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	jne	.label_390
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rax
	jb	.label_406
.label_390:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jne	.label_409
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_409
.label_469:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	jmp	.label_415
.label_471:
	nop	
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_487:
	mov	rbp, rbp
	lea	r14, [r15 + 0x68]
.label_409:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	rbp, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_431
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_431
	mov	rsp, rsp
	jmp	.label_436
	nop	dword ptr [rax]
.label_466:
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rbp, rcx
.label_436:
	mov	dword ptr [rsp + 0xe0], 0
	test	rdx, rdx
	je	.label_438
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_438
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	mov	rsp, rsp
	je	.label_438
	mov	qword ptr [rax], rbp
	nop	word ptr cs:[rax + rax]
.label_438:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	nop	
	je	.label_453
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rbp, rbp
	cmp	eax, 0x11
	jne	.label_453
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0xd0]
	nop	
	call	lower_subexp
	nop	
	mov	qword ptr [rbp + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_453
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	nop	
.label_453:
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	jne	.label_428
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_463
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	nop	
	je	.label_466
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_466
	mov	rsp, rsp
	jmp	.label_431
.label_463:
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	nop	
	mov	ebx, 0xfffc00ff
.label_473:
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_473
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_473
	nop	dword ptr [rax]
.label_500:
	movzx	eax, byte ptr [rbp + 0x30]
	nop	
	cmp	eax, 0x10
	nop	
	jne	.label_513
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_482
.label_513:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	nop	
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_490
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	lea	rsi, [rsi]
	jne	.label_482
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_482:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_497
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rsp, rsp
	mov	rbp, rcx
	je	.label_500
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_500
	lea	rdi, [rdi]
	jmp	.label_473
.label_408:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_507
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_508
.label_497:
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 0x30]
	nop	
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_515
	lea	rdi, [rdi]
	cmp	eax, 0xb
	jne	.label_517
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_379
.label_490:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rsp, rsp
	jmp	.label_415
.label_429:
	nop	
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	nop	
	test	rax, rax
	je	.label_434
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_526
.label_434:
	mov	dword ptr [rsp + 0x14], 0xc
.label_404:
	nop	
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_528
.label_515:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	lea	rdi, [rdi]
	jmp	.label_529
.label_517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_374
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_374:
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_379
.label_529:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_379:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_382
.label_405:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	lea	rsi, [rsi]
	mov	rdx, rcx
.label_382:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_396
.label_401:
	mov	rbp, rbp
	mov	rax, rsi
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	je	.label_391
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_396
.label_391:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	test	rdx, rdx
	jne	.label_401
	lea	rsi, [rsi]
	jmp	.label_403
.label_396:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_405
	cmp	eax, 0xb
	jne	.label_407
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_382
.label_407:
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_412
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
.label_412:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rdx, rcx
	lea	rsi, [rsi]
	je	.label_382
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_382
.label_403:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rsp, rsp
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	jne	.label_428
.label_446:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	jne	.label_430
	nop	word ptr [rax + rax]
.label_441:
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_519
	test	rbp, rbp
	jne	.label_430
.label_519:
	mov	rbx, qword ptr [rax]
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	jne	.label_441
	mov	rsp, rsp
	jmp	.label_445
.label_430:
	mov	rdi, r15
	mov	rsi, rbp
	nop	
	call	link_nfa_nodes
	nop	
	test	eax, eax
	mov	rbx, rbp
	je	.label_446
	lea	rdi, [rdi]
	jmp	.label_428
.label_445:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_439
	nop	dword ptr [rax + rax]
.label_411:
	inc	rbp
	lea	rdi, [rdi]
	mov	rax, rbp
.label_439:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jne	.label_454
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	test	r13b, 1
	mov	r13d, 0
	jne	.label_455
	mov	rsp, rsp
	jmp	.label_459
.label_454:
	mov	rbp, rbp
	mov	rbp, rax
.label_455:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_411
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_428
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rbp, rbp
	jne	.label_411
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_411
.label_428:
	mov	dword ptr [rsp + 0x14], eax
.label_415:
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
.label_528:
	nop	
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_481
	nop	dword ptr [rax + rax]
.label_485:
	mov	rbp, qword ptr [rdi]
	call	free
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	jne	.label_485
.label_481:
	mov	qword ptr [rbx + 0x70], 0
	nop	
	mov	dword ptr [rbx + 0x80], 0xf
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x68], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	nop	
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	mov	rbp, rbp
	je	.label_494
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_494:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_496:
	mov	eax, dword ptr [rsp + 0x14]
.label_399:
	lea	rdi, [rdi]
	add	rsp, 0xf8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_459:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_506
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	nop	
	je	.label_506
	test	byte ptr [r15 + 0xb0], 1
	nop	
	jne	.label_509
.label_506:
	cmp	qword ptr [r15 + 0x98], 0
	mov	rbp, rbp
	je	.label_511
.label_509:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x38], rax
	nop	
	test	rax, rax
	je	.label_516
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_511
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_520
.label_475:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_475
.label_520:
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_511
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	xor	r10d, r10d
.label_418:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	rdi, [rdi]
	jle	.label_530
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	nop	
	mov	qword ptr [rsp + 8], rdi
	nop	
	xor	ebx, ebx
.label_413:
	mov	r13, qword ptr [r15 + 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	mov	rbp, rbp
	lea	r14, [r13 + rbp*8 + 8]
	nop	
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_449
	mov	rbp, rbp
	lea	rcx, [r13 + rbp*8]
	mov	rsp, rsp
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_383
	lea	rcx, [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_400
.label_449:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_400:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_413
	mov	rax, qword ptr [r15 + 0x10]
.label_530:
	lea	rsi, [rsi]
	inc	r10
	nop	
	cmp	r10, rax
	nop	
	jb	.label_418
.label_511:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_421
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	and	cl, 4
	nop	
	je	.label_421
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rsi, [rsi]
	jne	.label_421
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_433
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rdi, [rdi]
	mov	rcx, rbx
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_521:
	mov	rbp, rbp
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rbp, rbp
	ja	.label_444
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_447]]
.label_2238:
	mov	rbp, rbp
	mov	sil, 1
	mov	rsp, rsp
	cmp	byte ptr [rcx], 0
	js	.label_450
	mov	sil, r10b
.label_450:
	mov	rbp, rbp
	mov	r10b, sil
	jmp	.label_452
.label_2239:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_421
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_452
	jmp	.label_421
.label_2240:
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_452
.label_2241:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	mov	rsp, rsp
	cmp	edi, 0x30
	ja	.label_458
	bt	r8, rdi
	jb	.label_452
.label_458:
	nop	
	cmp	esi, 0x80
	mov	rsp, rsp
	jne	.label_421
.label_452:
	inc	rbp
	mov	rsp, rsp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_521
	mov	rbp, rbp
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	lea	rdi, [rdi]
	xor	edx, edx
	mov	esi, 8
	mov	rsp, rsp
	test	r10b, 1
	je	.label_464
	jmp	.label_420
.label_474:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_415
.label_477:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_488:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_420:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	mov	rsp, rsp
	cmp	edi, 5
	je	.label_476
	lea	rdi, [rdi]
	cmp	edi, 1
	mov	rbp, rbp
	jne	.label_480
	cmp	byte ptr [rbx + rsi - 8], 0
	mov	rbp, rbp
	jns	.label_480
	mov	rsp, rsp
	and	eax, 0xffdfffff
	jmp	.label_486
.label_476:
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 7
.label_486:
	mov	rsp, rsp
	mov	dword ptr [rbx + rsi], eax
.label_480:
	nop	
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_488
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	jmp	.label_464
.label_383:
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_433:
	xor	ecx, ecx
.label_464:
	mov	dword ptr [r12 + 0xb4], 1
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	setg	dl
	or	dl, cl
	lea	rsi, [rsi]
	add	dl, dl
	nop	
	and	al, 0xf9
	or	al, dl
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0xb0], al
.label_421:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	nop	
	mov	qword ptr [rsp + 0xe8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	test	r14, r14
	jle	.label_501
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], r15
	lea	rdi, [r15*8]
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	test	rbp, rbp
	je	.label_514
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	nop	
	shl	r14, 3
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	jle	.label_423
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_423
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	lea	rsi, [rsi]
	jmp	.label_523
.label_422:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_523:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12]
	lea	rsi, [rsi]
	mov	rsi, r8
	shl	rsi, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_425
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_380
	add	rsi, rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_442:
	mov	rcx, qword ptr [rbp + rdi*8]
	nop	
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_394
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	mov	rsp, rsp
	je	.label_380
.label_394:
	inc	rdi
	lea	rsi, [rsi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jl	.label_442
.label_380:
	mov	rsp, rsp
	cmp	rdi, r15
	je	.label_425
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	jle	.label_387
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_392
.label_398:
	lea	rdi, [rdi]
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	mov	rbp, rbp
	lea	rbx, [rdi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbx
	nop	
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_398
.label_392:
	cmp	rdx, -1
	je	.label_387
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_425
.label_387:
	mov	rax, qword ptr [r12 + 0x30]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rdi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	mov	rsp, rsp
	call	re_node_set_merge
	test	eax, eax
	jne	.label_417
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_425:
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r15
	jl	.label_422
	jmp	.label_423
.label_501:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	dword ptr [rsp + 0xdc], 0
.label_423:
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_437
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_440
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_443
.label_440:
	mov	rsp, rsp
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	ecx, 2
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rsi, [rsi]
	je	.label_460
	test	rax, rax
	je	.label_460
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_460
.label_443:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
.label_417:
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	nop	
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	je	.label_470
.label_478:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rsp, rsp
	mov	rdi, rbp
	jne	.label_478
.label_470:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	lea	rsi, [rsi]
	je	.label_493
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_493:
	xor	eax, eax
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_399
	mov	rdi, r12
	nop	
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_496
.label_460:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_417
.label_516:
	lea	rsi, [rsi]
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_437:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_417
.label_514:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_417
.label_444:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f60
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f80

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_531
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_531:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_532
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_532:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_533
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_533:
	or	byte ptr [r14 + 0x38], 8
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409090

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x148
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x138], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_556
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r14b, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rsi, [rsi]
	shr	r14b, 6
	mov	rbp, rbp
	jmp	.label_565
.label_556:
	nop	
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
.label_565:
	cmp	qword ptr [rsi + 0x10], 0
	mov	rsp, rsp
	jle	.label_538
	nop	
	xor	edx, edx
	nop	
.label_555:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	lea	rdi, [rdi]
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	mov	rsp, rsp
	cmp	ebx, 1
	je	.label_537
	mov	qword ptr [rsp], rdx
	lea	rdi, [rdi]
	cmp	ebx, 6
	lea	rdi, [rdi]
	je	.label_549
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_543
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_564:
	bt	rbp, rbx
	jae	.label_554
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_554
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_557
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	mov	rbp, rbp
	jmp	.label_561
.label_557:
	nop	
	mov	eax, ebx
.label_561:
	cdqe	
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_554:
	inc	rbx
	cmp	rbx, 0x40
	mov	rbp, rbp
	jne	.label_564
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax + 8]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_544:
	bt	rbp, rbx
	mov	rbp, rbp
	jae	.label_571
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_571
	nop	
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_541
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_542
.label_541:
	lea	rsi, [rsi]
	lea	rax, [rbx + 0x40]
.label_542:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_571:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 0x40
	lea	rsi, [rsi]
	jne	.label_544
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_562:
	bt	rbp, rbx
	lea	rsi, [rsi]
	jae	.label_551
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx + 0x80], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_551
	lea	eax, [rbx + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_535
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_559
.label_535:
	lea	rax, [rbx + 0x80]
.label_559:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_551:
	nop	
	inc	rbx
	cmp	rbx, 0x40
	nop	
	jne	.label_562
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_545:
	mov	rbp, rbp
	bt	rbp, rbx
	jae	.label_568
	mov	rsp, rsp
	mov	byte ptr [r15 + rbx + 0xc0], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_568
	lea	rdi, [rdi]
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	nop	
	jae	.label_570
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	lea	rdi, [rdi]
	jmp	.label_539
.label_570:
	lea	rax, [rbx + 0xc0]
.label_539:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_568:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_545
	jmp	.label_546
	nop	word ptr [rax + rax]
.label_549:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_550
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x48], 0
	mov	rbp, rbp
	jne	.label_553
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_553
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_550
.label_553:
	nop	
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	nop	
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_569:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rsp, rsp
	movzx	ecx, byte ptr [rsp + 8]
	mov	rsp, rsp
	cmp	rax, -2
	mov	rbp, rbp
	jne	.label_567
	mov	byte ptr [r15 + rcx], 1
.label_567:
	mov	rsp, rsp
	inc	cl
	nop	
	mov	byte ptr [rsp + 8], cl
	jne	.label_569
	jmp	.label_546
	nop	dword ptr [rax]
.label_537:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	lea	rsi, [rsi]
	test	r14b, r14b
	je	.label_534
	nop	
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_540
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_540:
	mov	rsp, rsp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_534:
	mov	rsp, rsp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_546
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_546
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rsp, rsp
	mov	rdx, rcx
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	lea	rdi, [rdi]
	jae	.label_552
	add	r12, 0x18
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_566:
	mov	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + r12]
	lea	rsi, [rsi]
	and	ecx, esi
	cmp	ecx, 0x200001
	lea	rsi, [rsi]
	jne	.label_552
	nop	
	mov	al, byte ptr [rax + r12 - 8]
	mov	rbp, rbp
	mov	byte ptr [r13], al
	nop	
	inc	r13
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	nop	
	jb	.label_566
.label_552:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x144]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, r13
	mov	rbp, rbp
	jne	.label_547
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x144]
	nop	
	call	towlower
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	je	.label_547
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_547:
	nop	
	mov	r13, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	jmp	.label_546
	nop	dword ptr [rax + rax]
.label_543:
	nop	
	cmp	ebx, 2
	je	.label_560
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_546
	jmp	.label_560
.label_550:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_546
	nop	
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_563:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + rbp*4]
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_536
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_536
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_558
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	ebx, dword ptr [rax + rbx*4]
.label_558:
	nop	
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_536:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_548
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_548
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	lea	rsi, [rsi]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_548
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_548:
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_563
	nop	word ptr cs:[rax + rax]
.label_546:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	nop	
	inc	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x10]
	nop	
	jl	.label_555
.label_538:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_560:
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	lea	rsi, [rsi]
	call	memset
	lea	rdi, [rdi]
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_538
	or	byte ptr [r13 + 0x38], 1
	nop	
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409730
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_574
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_575
	mov	al, byte ptr [r15 + 0x38]
	lea	rsi, [rsi]
	and	al, 0x7f
	lea	rdi, [rdi]
	jmp	.label_572
.label_575:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	nop	
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_572:
	mov	rbp, rbp
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	lea	rdi, [rdi]
	cmovne	ebx, eax
	test	ebx, ebx
	nop	
	jne	.label_573
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_574:
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_573:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	mov	rsp, rsp
	jmp	.label_574
	nop	
	.section	.text
	.align	16
	#Procedure 0x409860
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_576
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_578
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_577
.label_579:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_578:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_577:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_579
.label_576:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409910
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_580
	call	free_dfa_content
.label_580:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409970

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_585
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_585
	mov	ebp, 0x400ff
	jmp	.label_592
	nop	word ptr cs:[rax + rax]
.label_593:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_592:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_596
	nop	
	cmp	ecx, 6
	jne	.label_597
	nop	
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, r15
	mov	rsp, rsp
	jmp	.label_588
	nop	dword ptr [rax]
.label_596:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_588:
	lea	rsi, [rsi]
	call	free
.label_597:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_593
.label_585:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_595
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_591:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_587
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_587:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_581
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_581:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_586
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_586:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_591
	lea	rdi, [rdi]
	jmp	.label_594
.label_595:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_594:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_583
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_584
	nop	word ptr cs:[rax + rax]
.label_582:
	mov	rdi, qword ptr [r14 + 0x40]
.label_584:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_590
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_598:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_598
.label_590:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_582
	mov	rdi, qword ptr [r14 + 0x40]
.label_583:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_589
	call	free
.label_589:
	nop	
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_599
	test	bpl, 4
	nop	
	jne	.label_603
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_600
.label_603:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_600:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_601
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_602
.label_601:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_602:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_599:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cd0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x268
	mov	r13, r9
	mov	rbp, rbp
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x150], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_652
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	mov	rsp, rsp
	cmp	rbp, r8
	cmove	rax, rbx
	nop	
	mov	r12, rax
.label_652:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	cmovb	rbx, rcx
	mov	eax, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_632
	mov	rbp, rbp
	mov	r15, qword ptr [r11 + 0x48]
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_632
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_632
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_717
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_717
	mov	rbp, rbp
	mov	rax, r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x250], r13
	nop	
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_722
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_646
.label_717:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_632
.label_722:
	cmp	qword ptr [rcx + 0x10], 0
	mov	rbp, rbp
	mov	r13, rax
	mov	rbp, rbp
	je	.label_744
	mov	rcx, r8
.label_646:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1c0], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	lea	rdi, [rdi]
	mov	al, 1
	cmp	rbx, r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], rbx
	jne	.label_731
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rsp, rsp
	setne	al
.label_731:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x227], al
	mov	rsp, rsp
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rbp, rbp
	cmp	rax, r12
	cmovge	r12, rax
	lea	rsi, [rsi]
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbx, qword ptr [rsp + 0x250]
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	shr	rcx, 0x16
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x118], cl
	test	rbx, rbx
	setne	bl
	lea	rdi, [rdi]
	or	bl, cl
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x11b], bl
	mov	dword ptr [rsp + 0x120], eax
	lea	rsi, [rsi]
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x119], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	cmp	rax, 2
	nop	
	mov	byte ptr [rsp + 0x11a], cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], rdx
	mov	qword ptr [rsp + 0xf0], rdx
	lea	rdi, [rdi]
	jl	.label_664
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	nop	
	mov	ecx, 0xc
	nop	
	cmp	r12, rax
	mov	rbp, rbp
	ja	.label_611
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	mov	rsp, rsp
	mov	r14, rdi
	lea	rsi, [r12*4]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	realloc
	mov	rbp, rbp
	mov	ecx, 0xc
	test	rax, rax
	je	.label_611
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x80]
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x210]
.label_664:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	test	bl, bl
	je	.label_623
	mov	r14, rdi
	mov	qword ptr [rsp + 0x80], r11
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	lea	rdi, [rdi]
	mov	ecx, 0xc
	mov	rbp, rbp
	test	rax, rax
	je	.label_611
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, r14
.label_623:
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r12
	mov	rsp, rsp
	lea	rax, [r11 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x11e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_645
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x210]
	mov	qword ptr [rsp + 0x98], rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	cmovle	rcx, qword ptr [rsp + 0x68]
.label_645:
	mov	qword ptr [rsp + 0xc0], rcx
	mov	qword ptr [rsp + 0xc8], rcx
	mov	qword ptr [rsp + 0xf8], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], r13
	mov	rbp, rbp
	mov	al, byte ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x260], rdi
	nop	
	shr	al, 7
	mov	byte ptr [rsp + 0x11d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x80], r11
	lea	r14, [rbx + rbx]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x130], edx
	mov	qword ptr [rsp + 0x138], -1
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_672
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_611
	lea	rdi, [rdi]
	shl	rbx, 4
	mov	rsp, rsp
	lea	rdi, [rbx + rbx*4]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	r13, rax
	mov	qword ptr [rsp + 0x168], r13
	mov	rbp, rbp
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x188], rax
	lea	rsi, [rsi]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_638
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	mov	ecx, 0xc
	nop	
	je	.label_611
.label_672:
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x230]
	mov	rbp, rbp
	sub	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x160], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x170], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x180], r14
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	ja	.label_706
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	test	dil, 2
	nop	
	jne	.label_706
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x148], 0
	jmp	.label_726
.label_706:
	lea	rsi, [rsi]
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_611
	lea	rdi, [rdi]
	lea	rdi, [r12*8 + 8]
	call	malloc
	lea	rsi, [rsi]
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x148], rax
	test	rax, rax
	je	.label_611
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	edi, dword ptr [rax + 0xb4]
.label_726:
	nop	
	mov	r13, qword ptr [rsp + 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x88], rbp
	nop	
	mov	eax, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x100], eax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rax, rbp
	mov	rsp, rsp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	rsp, rsp
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rbp, rbp
	test	r13, r13
	je	.label_740
	cmp	edi, 1
	je	.label_760
	nop	
	mov	ecx, 0x400000
	xor	eax, eax
	nop	
	cmp	qword ptr [rsp + 0x250], 0
	mov	rdx, qword ptr [rsp + 0x260]
	mov	rsp, rsp
	jne	.label_657
	mov	rbp, rbp
	and	rcx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	jne	.label_657
.label_760:
	mov	eax, 4
.label_657:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x250], 0
	setne	cl
	lea	rsi, [rsi]
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	rdi, [rdi]
	lea	edx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	edx, eax
.label_740:
	nop	
	mov	qword ptr [rsp + 8], rdi
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0x23f]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x88]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x1a8], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x1a0], rax
	cmp	rbx, rbp
	mov	eax, 1
	nop	
	mov	rcx, -1
	cmovge	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1c0], rcx
	lea	rsi, [rsi]
	add	edx, -4
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbx, r8
	jmp	.label_711
.label_761:
	mov	r12, qword ptr [rsp + 8]
	mov	rsp, rsp
	cmp	r12d, 1
	mov	rsp, rsp
	je	.label_612
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	je	.label_612
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	dword ptr [rax], -1
	je	.label_618
.label_612:
	mov	dword ptr [rsp + 0x170], 0
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x150]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x128]
	nop	
	mov	r14, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], 0
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_738
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_642
.label_738:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_614
	lea	rax, [r14 - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xe8], rax
	je	.label_650
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x227]
	mov	rbp, rbp
	jl	.label_655
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_670:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebp, -1
	jne	.label_666
	dec	rcx
	mov	rbp, rbp
	jg	.label_670
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rsp, rsp
	jmp	.label_692
.label_655:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x110]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_674
	lea	rsi, [rsi]
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_642
	nop	
	jmp	.label_687
.label_666:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_665
.label_725:
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_642
.label_687:
	lea	rsi, [rsi]
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_692
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_692
.label_614:
	mov	ecx, dword ptr [rsp + 0x100]
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_692
.label_650:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0x227]
.label_692:
	test	cl, 1
	mov	rbp, rbp
	jne	.label_674
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_642
	mov	eax, ecx
	nop	
	and	eax, 4
	sete	sil
	nop	
	mov	edx, ecx
	and	edx, 2
	mov	rbp, rbp
	je	.label_705
	test	sil, sil
	jne	.label_705
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_642
.label_705:
	test	edx, edx
	nop	
	jne	.label_712
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_642
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_642
.label_712:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_642
.label_665:
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	lea	rdi, [rdi]
	je	.label_674
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_725
.label_674:
	nop	
	mov	rbx, qword ptr [r15 + 0x50]
.label_642:
	mov	cl, byte ptr [rsp + 0x23f]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_776
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], edx
	je	.label_639
	mov	qword ptr [rax + r14*8], rbx
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x98], 0
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], eax
	jne	.label_733
.label_639:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x23f], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	r15, -1
	mov	rbp, rbp
	test	cl, 0x10
	mov	eax, 0
	jne	.label_649
.label_718:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x1a8]
.label_683:
	mov	qword ptr [rsp + 0x1b0], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	cmp	qword ptr [rsp + 0xf8], rbp
	mov	rsp, rsp
	jle	.label_617
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	sete	al
	or	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x25f], al
	mov	r14, rbx
	jmp	.label_677
.label_754:
	mov	qword ptr [rsp + 0x228], r15
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	jle	.label_758
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x70], rsi
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_707
.label_762:
	mov	rax, qword ptr [rsp + 0xd8]
	test	rax, rax
	jle	.label_763
	lea	rdx, [rax - 1]
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0xe8], rdx
	je	.label_608
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_771
	mov	rcx, qword ptr [rsp + 0xa0]
.label_778:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_774
	mov	rbp, rbp
	dec	rax
	jg	.label_778
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_608
.label_653:
	lea	rsi, [rsi]
	cmp	r14, rbx
	mov	rsp, rsp
	je	.label_781
	mov	dword ptr [rsp + 0x30], 0
.label_781:
	mov	r14, qword ptr [rsp + 0x38]
	cmove	r14, qword ptr [rsp + 0x240]
	mov	rsp, rsp
	jmp	.label_786
.label_771:
	nop	
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x110]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	lea	rsi, [rsi]
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_608
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_608
	jmp	.label_719
.label_774:
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_631
.label_732:
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	ebx, 0xa
	jne	.label_608
.label_719:
	mov	rbp, rbp
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_608
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_608
.label_720:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x4c], eax
	nop	
	mov	qword ptr [rsp + 0x198], rcx
	mov	qword ptr [rsp + 0x70], rsi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	lea	rsi, [rsi]
	xor	edx, edx
	cmp	ebx, 0x5f
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_637
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x198]
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	je	.label_662
	jmp	.label_661
.label_679:
	mov	rsp, rsp
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_708
	test	eax, eax
	lea	rdi, [rsp + 0x50]
	je	.label_681
	mov	rsp, rsp
	jmp	.label_659
.label_637:
	mov	rsi, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x198]
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	jmp	.label_661
.label_708:
	lea	rdi, [rsp + 0x50]
	jmp	.label_659
.label_707:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	test	eax, 0x100000
	je	.label_682
	mov	r12d, eax
	shr	r12d, 8
	mov	rbp, rbp
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rsp, rsp
	je	.label_686
	test	rcx, rcx
	js	.label_691
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xe8], rcx
	mov	rsp, rsp
	je	.label_693
	mov	r8d, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_696
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdx, [rcx + 1]
.label_701:
	mov	rsp, rsp
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebx, -1
	jne	.label_699
	mov	rbp, rbp
	dec	rdx
	test	rdx, rdx
	jg	.label_701
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x100]
	lea	rsi, [rsi]
	jmp	.label_703
.label_696:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + rcx]
	nop	
	mov	dl, al
	shr	dl, 6
	nop	
	movzx	edx, dl
	nop	
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_684
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_661
.label_699:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11e], 0
	mov	eax, r8d
	mov	rsp, rsp
	jne	.label_720
.label_662:
	lea	rsi, [rsi]
	mov	r8d, eax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_723
	jmp	.label_703
.label_684:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_703
.label_723:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_703
	xor	edi, edi
	jmp	.label_703
.label_691:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x100]
	jmp	.label_703
.label_693:
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x130]
	nop	
	and	edi, 2
	nop	
	xor	edi, 0xa
.label_703:
	mov	eax, edi
	and	eax, 1
	lea	rdi, [rdi]
	sete	dl
	test	r12b, 4
	je	.label_785
	lea	rdi, [rdi]
	test	eax, eax
	mov	eax, r8d
	je	.label_682
	jmp	.label_661
.label_785:
	nop	
	mov	eax, r8d
.label_661:
	test	ah, 8
	je	.label_739
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_682
.label_739:
	test	ah, 0x20
	je	.label_741
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 2
	lea	rdi, [rdi]
	je	.label_682
.label_741:
	test	r12b, r12b
	jns	.label_686
	mov	rbp, rbp
	and	edi, 8
	lea	rsi, [rsi]
	je	.label_682
.label_686:
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rsp, rsp
	lea	rdx, [rsp + 0x90]
	call	check_node_accept_bytes
	mov	rsp, rsp
	mov	rsi, rbx
	test	eax, eax
	nop	
	je	.label_682
	movsxd	r12, eax
	lea	rdi, [rdi]
	add	r12, qword ptr [rsp + 0xd8]
	nop	
	mov	ecx, dword ptr [rsp + 0x170]
	cmp	ecx, eax
	nop	
	cmovl	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x170], ecx
	mov	rbx, qword ptr [rsp + 0x150]
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	nop	
	cmp	rcx, r12
	jg	.label_756
	cmp	rcx, rax
	jl	.label_765
.label_756:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	rcx, r12
	lea	rsi, [rsi]
	jg	.label_766
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_766
.label_765:
	mov	rbp, rbp
	lea	esi, [r12 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	call	extend_buffers
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_772
.label_766:
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	sub	rdx, rbx
	mov	rsp, rsp
	jle	.label_775
	nop	
	mov	rax, qword ptr [rsp + 0x148]
	nop	
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], r12
.label_775:
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rbp, rbp
	add	rdx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	nop	
	test	rbx, rbx
	je	.label_787
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x1d0]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	je	.label_626
	mov	rbp, rbp
	jmp	.label_629
.label_787:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1e0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
.label_626:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x198], rbx
	nop	
	test	r12, r12
	mov	rsp, rsp
	jle	.label_748
	mov	rbp, rbp
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0xe8], rax
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	je	.label_641
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	jl	.label_647
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r12
.label_605:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_654
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	jg	.label_605
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_659
.label_647:
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0x110]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	nop	
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	lea	rdi, [rdi]
	jb	.label_659
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_659
	jmp	.label_678
.label_654:
	nop	
	cmp	byte ptr [rsp + 0x11e], 0
	mov	rsp, rsp
	jne	.label_679
.label_681:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ebx, 0xa
	mov	rsp, rsp
	jne	.label_659
.label_678:
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11d], 0
	mov	rbp, rbp
	jne	.label_659
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_659
.label_748:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	jmp	.label_659
.label_641:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
.label_659:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x1d0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x198], 0
	mov	rcx, qword ptr [rsp + 0x148]
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_697
	mov	rdi, qword ptr [rsp + 0x1e0]
	call	free
.label_697:
	mov	rax, qword ptr [rsp + 0x148]
	cmp	qword ptr [rax + r12*8], 0
	lea	rsi, [rsi]
	mov	rsi, rbp
	jne	.label_682
	nop	
	mov	eax, dword ptr [rsp + 0x50]
	nop	
	test	eax, eax
	nop	
	jne	.label_629
.label_682:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jl	.label_707
.label_758:
	mov	dword ptr [rsp + 0x24c], 0
	mov	r12b, byte ptr [rsp + 0x227]
	nop	
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_636
.label_763:
	mov	ecx, dword ptr [rsp + 0x100]
.label_608:
	mov	rbp, rbp
	and	ecx, 1
	nop	
	shl	rcx, 8
	mov	rbp, rbp
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rsi, [rsi]
	jmp	.label_721
.label_772:
	mov	dword ptr [rsp + 0x50], eax
.label_629:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24c], eax
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x227]
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_721
.label_631:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_608
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_732
	jmp	.label_608
.label_677:
	mov	rbp, rbp
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x240], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	cmp	rdx, rcx
	jl	.label_735
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_742
.label_735:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x240], rcx
	jl	.label_688
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_688
.label_742:
	add	ebp, 2
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_752
.label_688:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_754
.label_636:
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_769:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_624
	mov	qword ptr [rsp + 0x228], r15
	mov	r15, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	jne	.label_762
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x128]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	build_trtable
	test	al, al
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rdi, [rdi]
	jne	.label_769
	mov	dword ptr [rsp + 0x24c], 0xc
	xor	ebx, ebx
	jmp	.label_721
.label_624:
	mov	rbx, qword ptr [rax + rbp*8]
.label_721:
	cmp	qword ptr [rsp + 0x148], 0
	je	.label_777
	lea	rdi, [rsp + 0x24c]
	lea	rsi, [rsp + 0x90]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	rsp, rsp
	mov	rbx, rax
.label_777:
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_783
	nop	
	cmp	dword ptr [rsp + 0x24c], 0
	lea	rdi, [rdi]
	jne	.label_638
	mov	rax, qword ptr [rsp + 0x148]
	lea	rdi, [rdi]
	test	rax, rax
	setne	cl
	lea	rsi, [rsi]
	and	cl, byte ptr [rsp + 0x25f]
	nop	
	movzx	ecx, cl
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_609
	jmp	.label_617
.label_644:
	mov	rax, qword ptr [rsp + 0x148]
.label_609:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xd8]
	nop	
	mov	rcx, qword ptr [rsp + 0x150]
	nop	dword ptr [rax + rax]
.label_634:
	mov	rbp, rbp
	cmp	rdx, rcx
	jge	.label_617
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xd8], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_634
	xor	edx, edx
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_633
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24c]
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_644
.label_633:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_617
.label_783:
	mov	eax, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_653
	mov	r14, qword ptr [rsp + 0x38]
.label_786:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	mov	rbp, rbp
	jne	.label_658
	mov	qword ptr [rsp + 0x38], r14
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	nop	
	jmp	.label_663
.label_658:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	test	al, al
	jns	.label_668
	lea	rdi, [rsp + 0x90]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	test	rax, rax
	nop	
	jne	.label_668
	mov	qword ptr [rsp + 0x38], r14
.label_663:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf8], rbp
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jg	.label_677
	jmp	.label_617
.label_668:
	nop	
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_683
	jmp	.label_640
.label_617:
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	
	test	rcx, rcx
	je	.label_685
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	add	qword ptr [rcx], rax
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_640
.label_685:
	mov	rbp, rbp
	mov	rbp, r15
.label_640:
	mov	byte ptr [rsp + 0x227], r12b
	mov	rbp, rbp
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	je	.label_635
	mov	ecx, 0xc
	mov	rbp, rbp
	cmp	rbp, -2
	nop	
	je	.label_611
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 1
	mov	rsp, rsp
	seta	al
	mov	qword ptr [rsp + 0x138], rbp
	mov	rcx, qword ptr [rsp + 0x260]
	test	byte ptr [rcx + 0x38], 0x10
	lea	rsi, [rsi]
	sete	bl
	and	bl, al
	mov	rbp, rbp
	je	.label_698
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rax
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x80]
	jmp	.label_713
.label_698:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x80]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	je	.label_625
	mov	rax, qword ptr [rsp + 0x148]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	lea	rdi, [rdi]
	test	bl, 1
	mov	rsp, rsp
	je	.label_727
.label_713:
	nop	
	test	byte ptr [r12 + 0xb0], 1
	mov	rsp, rsp
	jne	.label_729
.label_727:
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	je	.label_625
.label_729:
	mov	qword ptr [rsp + 0x80], r12
	mov	rbp, rbp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_638
	mov	r14, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x240], rax
	lea	rsi, [rsi]
	lea	r12, [rbp*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_749
	cmp	qword ptr [r14 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_751
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r14
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	r15, rax
	nop	
	test	r15, r15
	je	.label_757
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, r12
	mov	rsp, rsp
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0x38], r12
	mov	qword ptr [rsp + 0x1d0], r12
	nop	
	mov	qword ptr [rsp + 0x1d8], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	sift_states_backward
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_743
.label_773:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_709
	cmp	qword ptr [r15], 0
	nop	
	mov	esi, 0
	jne	.label_709
	lea	rdi, [rdi]
	mov	r12, r15
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_606
	mov	rax, qword ptr [rsp + 0x148]
	dec	rbp
	nop	dword ptr [rax]
.label_621:
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_615
	lea	rdi, [rdi]
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_619
.label_615:
	lea	rcx, [rbp - 1]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_621
	jmp	.label_606
.label_619:
	mov	rbp, rbp
	lea	r15, [rsp + 0x90]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x240], rax
	lea	rdx, [rbp*8 + 8]
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x1d0], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1d8], r12
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x1d0]
	mov	rbp, rbp
	call	sift_states_backward
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_773
	lea	rsi, [rsi]
	mov	r12, r15
	jmp	.label_673
.label_751:
	nop	
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	qword ptr [rsp + 0x1d0], rbx
	mov	qword ptr [rsp + 0x1d8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rsp, rsp
	lea	rax, [rsp + 0x1f0]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x90]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x1d0]
	mov	rsp, rsp
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_673
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	mov	r12d, 0
	jne	.label_604
.label_606:
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	call	free
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 8]
.label_635:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	call	match_ctx_clean
.label_618:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x88]
	add	rbp, qword ptr [rsp + 0x1c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_611
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r12
	cmp	r14, rbp
	jge	.label_711
	jmp	.label_611
.label_649:
	test	cl, cl
	js	.label_716
	test	r12b, r12b
	lea	rsi, [rsi]
	mov	r15, r14
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_718
	mov	rbp, r14
	jmp	.label_640
.label_733:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x23f], cl
	lea	rbp, [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	jne	.label_728
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x68], 0x40
	nop	
	je	.label_730
	mov	rsp, rsp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24c], eax
	mov	rsp, rsp
	test	eax, eax
	jne	.label_734
.label_730:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	mov	cl, byte ptr [rsp + 0x23f]
	jmp	.label_639
.label_716:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	nop	
	test	rax, rax
	sete	cl
	lea	rsi, [rsi]
	setne	al
	movzx	eax, al
	mov	rsp, rsp
	or	cl, r12b
	je	.label_747
	mov	rbp, rbp
	or	r15, r14
	jmp	.label_718
.label_747:
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_640
.label_709:
	nop	
	mov	qword ptr [rsp + 0x38], r12
	lea	rsi, [rsi]
	test	rbp, rbp
	js	.label_753
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_755
.label_768:
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_755:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_759
	test	rdx, rdx
	nop	
	je	.label_620
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_779
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + r12*8], rax
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24c]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_620
	jmp	.label_779
.label_759:
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + r12*8], rdx
.label_620:
	cmp	r12, rbp
	jl	.label_768
.label_753:
	xor	eax, eax
.label_779:
	nop	
	mov	rdi, r15
	nop	
	mov	ebx, eax
	call	free
	nop	
	mov	eax, ebx
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 0
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	je	.label_604
	jmp	.label_673
.label_743:
	mov	qword ptr [rsp + 0x38], r12
	mov	r12, r15
.label_673:
	mov	r15, rbx
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	je	.label_625
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, r15
	je	.label_635
	mov	rbp, rbp
	jmp	.label_611
.label_728:
	lea	rsi, [rsi]
	movsxd	rbp, eax
	mov	rsp, rsp
	jmp	.label_640
.label_734:
	movsxd	rbp, eax
	lea	rsi, [rsi]
	jmp	.label_640
.label_711:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	eax, 4
	ja	.label_643
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_648]]
.label_2242:
	lea	rsi, [rsi]
	cmp	rbp, rbx
	mov	rax, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x210]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x250]
	jl	.label_651
	nop	dword ptr [rax + rax]
.label_671:
	xor	eax, eax
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jge	.label_660
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx + rbp]
.label_660:
	test	rsi, rsi
	je	.label_667
	movzx	eax, byte ptr [rsi + rax]
.label_667:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_669
	nop	
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_671
	jmp	.label_651
.label_643:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	jmp	.label_675
	nop	word ptr cs:[rax + rax]
.label_710:
	nop	
	add	rbp, qword ptr [rsp + 0x1c0]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rdi]
	jl	.label_611
	lea	rdi, [rdi]
	cmp	rbp, r14
	jle	.label_675
	mov	rsp, rsp
	jmp	.label_611
.label_700:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	nop	
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_611
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rcx, rbp
	mov	rbp, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	jmp	.label_695
	nop	word ptr cs:[rax + rax]
.label_675:
	mov	rcx, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0xc8]
	jae	.label_700
.label_695:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rbp, rdx
	nop	
	mov	edx, 0
	nop	
	jge	.label_704
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	movzx	edx, byte ptr [rdx + rcx]
.label_704:
	cmp	byte ptr [r13 + rdx], 0
	mov	rbp, rbp
	je	.label_710
	nop	
	jmp	.label_714
.label_2243:
	nop	
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rdx, qword ptr [rsp + 0x250]
	jge	.label_715
	nop	word ptr cs:[rax + rax]
.label_724:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	mov	rsp, rsp
	jne	.label_715
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], rbp
	mov	rsp, rsp
	cmp	rbp, r14
	nop	
	jl	.label_724
	jmp	.label_715
.label_2244:
	cmp	rbp, r14
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	jge	.label_715
	nop	dword ptr [rax]
.label_736:
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	lea	rdi, [rdi]
	jne	.label_715
	mov	rbp, rbp
	inc	rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_736
.label_715:
	mov	qword ptr [rsp + 0x250], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x210], rcx
	cmp	rbp, r14
	lea	rsi, [rsi]
	jne	.label_714
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0x210]
	jge	.label_745
	movzx	eax, byte ptr [rcx + r14]
.label_745:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x250]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_750
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
.label_750:
	mov	rsp, rsp
	mov	ecx, 1
	nop	
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	lea	rdi, [rdi]
	jne	.label_714
	mov	rbp, rbp
	jmp	.label_611
.label_669:
	mov	rax, rbp
.label_651:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_611
.label_714:
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	ecx, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_761
	jmp	.label_611
.label_752:
	cmp	eax, 0xc
	nop	
	jne	.label_764
.label_638:
	nop	
	mov	ecx, 0xc
.label_611:
	lea	rsi, [rsi]
	mov	ebx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_770
	nop	
	lea	rdi, [rsp + 0x90]
	nop	
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x188]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x168]
	lea	rsi, [rsi]
	call	free
.label_770:
	nop	
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11b], 0
	lea	rsi, [rsi]
	je	.label_607
	mov	rdi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	call	free
.label_607:
	lea	rdi, [rdi]
	mov	eax, ebx
.label_632:
	lea	rsi, [rsi]
	add	rsp, 0x268
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_744:
	lea	rdi, [rdi]
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_622
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_627
.label_622:
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rbp, rbp
	nop	
	je	.label_628
	mov	rbp, rbp
	test	r8, r8
	mov	ebp, 0
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_632
	jmp	.label_646
.label_776:
	cmp	dword ptr [rsp + 0x24c], 0xc
	mov	rsp, rsp
	je	.label_638
	nop	
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_627:
	mov	rcx, r8
	jmp	.label_646
.label_628:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_646
.label_604:
	mov	rdi, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	nop	
	mov	qword ptr [rsp + 0x138], rbp
	mov	r12, qword ptr [rsp + 0x80]
.label_625:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x2a0]
	cmp	qword ptr [rsp + 0x230], rax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x2a8]
	je	.label_611
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_676
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	edx, [rsi + 7]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x230]
	sub	edx, edi
	lea	rax, [rsi - 2]
	mov	rbp, rbp
	sub	rax, rdi
	nop	
	mov	ecx, 1
	lea	rsi, [rsi]
	test	dl, 7
	je	.label_680
	mov	rbp, rbp
	lea	rdx, [r14 + 0x10]
	lea	rdi, [rdi]
	lea	esi, [rsi + 7]
	sub	esi, edi
	nop	
	and	esi, 7
	mov	rbp, rbp
	xor	edi, edi
.label_690:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	mov	rbp, rbp
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jne	.label_690
	nop	
	add	rcx, 2
.label_680:
	mov	rsp, rsp
	cmp	rax, 7
	jb	.label_676
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_702:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	nop	
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	mov	rsp, rsp
	jne	.label_702
.label_676:
	nop	
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_694
	mov	rax, qword ptr [rsp + 0x260]
	mov	al, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	and	al, 0x10
	jne	.label_694
	mov	rax, qword ptr [rsp + 0x80]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_737
	nop	
	xor	eax, eax
	jmp	.label_656
.label_757:
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	qword ptr [rsp + 0x1a0], rax
.label_749:
	mov	rdi, qword ptr [rsp + 0x1a0]
	nop	
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	jmp	.label_638
.label_737:
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_656:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x260]
	movzx	r8d, al
	lea	rsi, [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	set_regs
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_611
.label_694:
	nop	
	mov	r10b, byte ptr [rsp + 0x11c]
	mov	r8, qword ptr [rsp + 0xa8]
	lea	rdx, [r14 + 8]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x230]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	r11, [rsp + 0xc8]
	mov	rsp, rsp
	jmp	.label_610
.label_782:
	mov	rbx, qword ptr [rsp + 0xc0]
	cmp	rdi, rbx
	lea	rsi, [rsi]
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx - 8], rdi
	lea	rsi, [rsi]
	mov	rsi, rcx
	shl	rsi, 4
	mov	rsp, rsp
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rdx], rbx
	jmp	.label_767
.label_610:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	nop	
	je	.label_780
	test	r10b, r10b
	jne	.label_782
	mov	rbp, rbp
	mov	rbx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rbp, rdx
.label_767:
	nop	
	mov	rsi, qword ptr [rsp + 0x88]
	add	rdi, rsi
	nop	
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_780:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_610
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0x80]
	jle	.label_613
	mov	rbp, rbp
	lea	rcx, [r9 - 1]
	lea	rdi, [rdi]
	xor	eax, eax
	test	r9b, 3
	je	.label_616
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	shl	rdx, 4
	add	rdx, r14
	nop	
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_630:
	inc	rax
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_630
.label_616:
	lea	rsi, [rsi]
	cmp	rcx, 3
	mov	rsp, rsp
	jb	.label_613
	mov	rcx, r9
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	add	rdx, r14
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_746:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x30], -1
	nop	
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_746
.label_613:
	mov	rax, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	test	rax, rax
	je	.label_611
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_611
	sub	qword ptr [rsp + 0x10], r9
	lea	rdi, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
.label_689:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	nop	
	je	.label_784
	lea	rsi, [rsi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_784:
	lea	rsi, [rsi]
	inc	rdx
	add	rdi, 0x10
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x10], rdx
	nop	
	jne	.label_689
	jmp	.label_611
.label_764:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1e0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	nop
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c210

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	mov	rsp, rsp
	js	.label_792
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r9
	cmp	rcx, rdx
	nop	
	jg	.label_792
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rbp, rbp
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	rsp, rsp
	mov	al, r13b
	lea	rdi, [rdi]
	jle	.label_789
	test	r13b, 8
	mov	rbp, rbp
	mov	al, r13b
	lea	rdi, [rdi]
	jne	.label_789
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	nop	
	mov	al, r13b
	je	.label_789
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rsp, rsp
	mov	rdx, r15
	mov	rcx, rbp
	nop	
	mov	al, byte ptr [rbx + 0x38]
.label_789:
	xor	esi, esi
	test	r14, r14
	lea	rdi, [rdi]
	mov	ebp, 1
	je	.label_812
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	and	cl, 0x10
	jne	.label_796
	nop	
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_811
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_813
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	cmovle	r14, rcx
	nop	
	mov	ebp, 1
	cmovg	rbp, rax
	mov	rbp, rbp
	jmp	.label_815
.label_812:
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	r15, rcx
	lea	rsi, [rsi]
	jmp	.label_796
.label_811:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
.label_813:
	mov	rsp, rsp
	inc	rbp
.label_815:
	lea	rdi, [rdi]
	mov	rsi, r14
.label_796:
	nop	
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_792
	mov	cl, r13b
	nop	
	shr	cl, 5
	mov	rsp, rsp
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	mov	rsp, rsp
	or	r13d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], r13d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x40]
	nop	
	call	re_search_internal
	nop	
	test	eax, eax
	je	.label_807
	cmp	eax, 1
	sete	al
	mov	rbp, rbp
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	jmp	.label_790
.label_807:
	mov	qword ptr [rsp + 0x38], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	mov	rsp, rsp
	je	.label_814
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	lea	rsi, [rsi]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_800
	lea	rsi, [rsi]
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	nop	
	je	.label_797
	mov	r13, r12
	mov	qword ptr [rsp + 0x40], rdi
	mov	rsp, rsp
	mov	r15, r8
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_803
	lea	r12, [rbx*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	call	malloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	lea	rdi, [rdi]
	xor	r13d, r13d
	test	r14, r14
	je	.label_806
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	r12, rax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_793
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_798
.label_800:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	mov	rsp, rsp
	jae	.label_798
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.24
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_797:
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_788
	mov	rbx, rax
	mov	rdi, r15
.label_798:
	test	rbp, rbp
	jle	.label_791
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	test	bpl, 1
	je	.label_795
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_795:
	lea	rdi, [rdi]
	cmp	rbp, 1
	mov	rbp, rbp
	je	.label_805
	mov	rax, rbp
	lea	rsi, [rsi]
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	mov	rbp, rbp
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_809:
	mov	rbx, qword ptr [rsi - 0x18]
	nop	
	mov	qword ptr [rdx - 8], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	mov	rbp, rbp
	add	rsi, 0x20
	mov	rsp, rsp
	add	rdx, 0x10
	add	rax, -2
	jne	.label_809
.label_805:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	jmp	.label_799
.label_791:
	xor	ebp, ebp
.label_799:
	mov	rbp, rbp
	cmp	rbp, rbx
	jae	.label_802
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_804:
	mov	qword ptr [rcx + rbp*8], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rbp*8], -1
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, qword ptr [r12]
	lea	rdi, [rdi]
	jb	.label_804
.label_802:
	nop	
	mov	r13d, r14d
.label_794:
	nop	
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	lea	rsi, [rsi]
	and	al, 0xf9
	mov	cl, r13b
	mov	rbp, rbp
	and	cl, 6
	mov	rsp, rsp
	or	cl, al
	lea	rdi, [rdi]
	and	r13b, 6
	lea	rdi, [rdi]
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	mov	rbp, rbp
	je	.label_790
.label_814:
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_790
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	r14, rax
	jne	.label_808
	nop	
	mov	r14, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	sub	r14, rax
.label_790:
	lea	rsi, [rsi]
	call	free
.label_792:
	mov	rax, r14
	mov	rbp, rbp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_788:
	mov	qword ptr [rsp + 0x40], r8
	mov	rdi, qword ptr [r12 + 8]
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_801
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_810
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r15
	jmp	.label_798
.label_793:
	mov	rsp, rsp
	mov	rdi, r14
	call	free
.label_806:
	mov	r8, r15
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_794
.label_810:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_801:
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	jmp	.label_794
.label_803:
	mov	edi, OFFSET FLAT:.str.23
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_808:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c790

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7c0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	nop	
	mov	r15, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_816
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_819
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_816
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_820
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_817
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_816
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, rax
	nop	
	call	memcpy
	mov	rdi, r12
	mov	rsp, rsp
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	nop	
	mov	r9, r13
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_820
.label_819:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_821
.label_816:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_818
.label_821:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_820
.label_817:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_820:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rcx, r9
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_818:
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c970
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rax, rbx
	or	rax, r14
	lea	rdi, [rdi]
	or	rax, rbp
	js	.label_822
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_827
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_822
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_823
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_825
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_822
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	r13, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_823
.label_827:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_824
.label_822:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_826
.label_824:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_823
.label_825:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_823:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	nop	
	mov	rax, rbx
.label_826:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cb10
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	mov	r9b, al
	mov	rbp, rbp
	or	r9b, 2
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_828
	lea	rsi, [rsi]
	mov	al, r9b
.label_828:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cb50

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_829
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_829:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cbd0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_831
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_830
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_830
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_831
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_830
	mov	qword ptr [rbx + 0x18], rax
.label_831:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_832
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_830
	nop	
	mov	qword ptr [rbx + 8], rax
.label_832:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_830:
	mov	eax, ebp
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cca0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	cmp	r13, rax
	nop	
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_873
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_873
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_889
.label_873:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_835
.label_889:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_833
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_836
.label_877:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_844
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_847
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_847
.label_844:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_856
.label_874:
	mov	rax, r15
	jmp	.label_869
.label_856:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_874
	nop	word ptr cs:[rax + rax]
.label_836:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_875
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_875
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_869
	nop	word ptr cs:[rax + rax]
.label_875:
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	nop	
	add	rbp, r15
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rax, [rbp - 1]
	mov	rsp, rsp
	cmp	rax, -4
	ja	.label_877
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_870
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	add	rdi, r15
	nop	
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	nop	
	add	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	nop	
	jmp	.label_884
.label_870:
	mov	rbp, rbp
	mov	esi, ebx
	mov	dword ptr [rsp + 0x68], esi
	mov	rbx, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x10]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	lea	rdi, [rdi]
	jne	.label_890
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
.label_884:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_869
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	lea	rdi, [rax + r15*4 + 4]
	mov	rbp, rbp
	lea	rdx, [rbp*4 - 4]
	lea	rdi, [rdi]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_869:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_836
	jmp	.label_864
.label_890:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_865
.label_847:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_833:
	lea	rsi, [rsi]
	mov	rax, r15
.label_864:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_881
.label_835:
	cmp	r15, r13
	jge	.label_878
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_865:
	nop	
	mov	rdx, r13
	nop	
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_883
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_834:
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r14
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 - 1]
	cmp	rax, -4
	mov	rbp, rbp
	ja	.label_840
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_854
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rsi, [rsi]
	call	wcrtomb
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	mov	rbp, rbp
	jne	.label_862
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_868
.label_883:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_834
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_887:
	cmp	rsi, rdx
	jge	.label_885
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	rbp, rbp
	mov	byte ptr [rsp + rsi + 0x10], bl
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jl	.label_887
	mov	rbx, r8
	nop	
	jmp	.label_834
.label_840:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_837
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_842
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_842
.label_837:
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	mov	rbp, rbp
	movzx	edx, al
	test	rcx, rcx
	jne	.label_851
.label_843:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_858
.label_846:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	nop	
	cmp	r14, -1
	lea	rsi, [rsi]
	je	.label_860
.label_850:
	mov	rbp, r15
	nop	
	jmp	.label_835
.label_862:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_854
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_882
.label_842:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_878:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_881:
	xor	eax, eax
.label_857:
	add	rsp, 0x78
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_854:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_868:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_839
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_852
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_852
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_861
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_393]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_861:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_886
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_393]]
	nop	
.label_872:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	mov	rbp, rbp
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rsi, [rsi]
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	lea	rsi, [rsi]
	movdqa	xmm4, xmm3
	lea	rsi, [rsi]
	paddq	xmm4, xmm1
	nop	
	paddq	xmm3, xmm2
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	nop	
	add	rdx, 8
	nop	
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_872
.label_886:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_839
.label_852:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_880:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_880
.label_839:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_879
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_835
.label_879:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_835
.label_885:
	mov	rbx, r8
	jmp	.label_834
.label_882:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_845
	nop	
	shl	rdi, 3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	lea	rdi, [rdi]
	call	malloc
	mov	r8, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_855
.label_845:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_859
	nop	
	test	r15, r15
	je	.label_867
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_863
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_863
	lea	rdi, [rdi]
	lea	rdi, [r15 - 4]
	mov	rsp, rsp
	mov	rsi, rdi
	lea	rdi, [rdi]
	shr	rsi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_876
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_393]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_876:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_891
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_393]]
.label_841:
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	nop	
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jne	.label_841
.label_891:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_867
.label_863:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_863
.label_867:
	mov	byte ptr [r12 + 0x8c], 1
.label_859:
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x50], r8
	lea	rsi, [rsi]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	dword ptr [rax + r15*4], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
	jb	.label_871
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_838
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_838
	lea	rsi, [rsi]
	mov	rax, rcx
	or	rax, 1
	mov	rsp, rsp
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	nop	
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	mov	rbp, rbp
	movq	xmm2, rbx
	nop	
	mov	r11, rbx
	lea	rdi, [rdi]
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	lea	rdi, [rdi]
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_393]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_848]]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_849]],  0xe8
.label_853:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	lea	rdi, [rdi]
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	nop	
	movdqa	xmm4, xmm5
	lea	rdi, [rdi]
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	mov	rbp, rbp
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	lea	rsi, [rsi]
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	nop	
	movdqa	xmm4, xmm3
	lea	rdi, [rdi]
	pcmpgtd	xmm4, xmm1
	lea	rsi, [rsi]
	pshufd	xmm2, xmm4, 0xa0
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	mov	rsp, rsp
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	nop	
	pandn	xmm0, xmm11
	nop	
	por	xmm0, xmm5
	mov	rbp, rbp
	pand	xmm7, xmm2
	nop	
	pandn	xmm2, xmm11
	nop	
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	lea	rdi, [rdi]
	movq	qword ptr [rdx + rsi*4], xmm6
	lea	rdi, [rdi]
	add	rsi, 4
	nop	
	cmp	r13, rsi
	jne	.label_853
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_871
.label_838:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_866:
	cmp	rax, r14
	nop	
	mov	rsi, r11
	cmovb	rsi, rax
	nop	
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rbp, rbp
	inc	rax
	cmp	rdi, rax
	jne	.label_866
.label_871:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_888
	add	qword ptr [r12 + 0x68], rcx
.label_888:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_835
.label_851:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_843
.label_858:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_846
.label_860:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_850
.label_855:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_857
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d870

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_902
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_894
	nop	word ptr [rax + rax]
.label_896:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_893
.label_895:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_901
.label_892:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_901:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_898
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rax*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	mov	rcx, rbp
.label_898:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_894
	mov	rbp, rbp
	jmp	.label_899
.label_903:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_897
	nop	
.label_904:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_900
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_904
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_897
.label_893:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_895
.label_900:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_897
	nop	word ptr cs:[rax + rax]
.label_894:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_903
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_897:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_896
	cmp	rax, -2
	jne	.label_892
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_896
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_902:
	mov	rcx, r13
.label_899:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da90

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_922
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_917
.label_922:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_907
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	jmp	.label_911
.label_918:
	mov	rbp, rbp
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_916
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_919
	nop	word ptr cs:[rax + rax]
.label_911:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp]
	call	peek_token
	nop	
	cdqe	
	nop	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 8
	lea	rdi, [rdi]
	cmp	ecx, 0xa
	mov	rbp, rbp
	mov	r15d, 0
	je	.label_906
	cmp	qword ptr [rsp + 8], 0
	nop	
	je	.label_914
	cmp	eax, 9
	mov	rsp, rsp
	mov	r15d, 0
	lea	rsi, [rsi]
	je	.label_906
.label_914:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r9, rbp
	call	parse_branch
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_910
	nop	
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_912
.label_910:
	mov	rax, qword ptr [rsp + 0x18]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_906:
	mov	ecx, dword ptr [r14 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_918
	mov	rax, qword ptr [r14 + 0x70]
.label_919:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_921
	mov	qword ptr [rbx], rbp
.label_921:
	test	r15, r15
	je	.label_915
	mov	rsp, rsp
	mov	qword ptr [r15], rbp
.label_915:
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, rbp
	mov	rbp, rbp
	je	.label_911
	jmp	.label_917
.label_907:
	mov	rbp, rbx
.label_917:
	mov	rsp, rsp
	mov	rax, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_912:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_917
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_909:
	lea	rdi, [rdi]
	mov	r15, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_909
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_909
	nop	word ptr cs:[rax + rax]
.label_913:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_905
	cmp	eax, 6
	lea	rdi, [rdi]
	jne	.label_920
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_908
	nop	dword ptr [rax]
.label_905:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x28]
.label_908:
	mov	rsp, rsp
	call	free
.label_920:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_917
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	lea	rdi, [rdi]
	mov	r15, rax
	je	.label_913
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	r15, rax
	je	.label_913
	jmp	.label_909
.label_916:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_917
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ddf0

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_958
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [r15], r12b
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	nop	
	and	eax, 0xff9fffff
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	mov	rbp, rbp
	jl	.label_927
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_927
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_937
.label_927:
	cmp	r12d, 0x5c
	jne	.label_943
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_945
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_949
.label_944:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_955:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_952
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	mov	rbp, rbp
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	nop	
	or	eax, ecx
	jmp	.label_960
.label_958:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_923
.label_943:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_930
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	nop	
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	nop	
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	nop	
	or	cl, al
	mov	rsp, rsp
	movzx	ecx, cl
	shl	ecx, 0x16
	lea	rdi, [rdi]
	mov	eax, 0xffbfffff
	mov	rbp, rbp
	and	eax, dword ptr [r15 + 8]
	lea	rdi, [rdi]
	or	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_934
.label_945:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_947
.label_930:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	mov	rbp, rbp
	cmp	r12d, 0x5f
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	shr	eax, 3
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	shl	eax, 0x16
	or	eax, ebx
.label_934:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_940
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_959
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_924]]
.label_2250:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_925
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_925
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x48], rcx
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	ja	.label_923
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_925:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_923
.label_940:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_946
	cmp	r12d, 0x3f
	je	.label_948
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_950
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_923
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_953
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_953
	test	dh, 8
	je	.label_923
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_923
.label_953:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_923
.label_952:
	movzx	ebp, r14b
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	mov	rbp, rbp
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	lea	rdi, [rdi]
	shl	eax, 0x16
	nop	
	or	eax, ebx
.label_960:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_933
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_935
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_939]]
.label_2275:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_923
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	nop	
	mov	qword ptr [r15], rax
	jmp	.label_923
.label_946:
	cmp	r12d, 0x7b
	je	.label_956
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_951
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_923
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_954
	jmp	.label_923
.label_937:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_947:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_923:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_933:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_926
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_929]]
.label_2305:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_959:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_923
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_928
	jmp	.label_923
.label_2251:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_936
	nop	
	jmp	.label_923
.label_2252:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_941
	lea	rdi, [rdi]
	jmp	.label_923
.label_2253:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2254:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_923
	jmp	.label_938
.label_2255:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_923
.label_948:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_923
	jmp	.label_957
.label_950:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_923
.label_956:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_961
	jmp	.label_923
.label_951:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_923
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_928
	lea	rdi, [rdi]
	jmp	.label_923
.label_926:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_932
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_923
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_923
.label_949:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_942
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_944
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_942
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_944
.label_942:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_931
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_931:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_955
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_944
	mov	rbp, rbp
	jmp	.label_955
.label_935:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_923
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_923
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_923
.label_2306:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2307:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_923
.label_961:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2308:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_923
	test	cx, cx
	js	.label_923
.label_928:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_923
.label_2309:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_923
.label_954:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_923
.label_932:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_923
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_923
.label_2271:
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_923
.label_2272:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_923
.label_936:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2273:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_923
.label_941:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2274:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_923
.label_938:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2276:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_923
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_923
.label_2277:
	test	r13d, 0x80000
	jne	.label_923
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_923
.label_2278:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_923
.label_957:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
.label_2279:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_923
.label_2280:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_923
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_923
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e680

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	r12d, r12d
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_975
	nop	
	mov	eax, dword ptr [rbp]
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_975
	jmp	.label_970
	nop	word ptr cs:[rax + rax]
.label_963:
	mov	rsp, rsp
	test	rbx, rbx
	cmove	rbx, r12
.label_975:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	mov	ecx, eax
	or	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0xa
	je	.label_988
	test	r15, r15
	je	.label_971
	mov	rbp, rbp
	cmp	eax, 9
	je	.label_973
.label_971:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, r15
	mov	r9, rbp
	lea	rsi, [rsi]
	call	parse_expression
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	jne	.label_983
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_984
.label_983:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_963
	test	r12, r12
	mov	rbp, rbp
	je	.label_963
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_964
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x70]
.label_972:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	jmp	.label_975
.label_964:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_977
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_972
.label_984:
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_970
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_979:
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_979
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_979
	nop	dword ptr [rax + rax]
.label_985:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	nop	
	cmp	eax, 3
	je	.label_962
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_968
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_981
.label_962:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_981:
	call	free
.label_968:
	mov	rax, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_970
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_985
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_985
	lea	rdi, [rdi]
	jmp	.label_979
.label_988:
	lea	rdi, [rdi]
	mov	r12, rbx
	jmp	.label_970
.label_973:
	lea	rsi, [rsi]
	mov	r12, rbx
.label_970:
	mov	rax, r12
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_977:
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_982:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_982
	nop	
	mov	r12, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	jne	.label_982
	nop	word ptr [rax + rax]
.label_987:
	lea	rsi, [rsi]
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	nop	
	je	.label_976
	lea	rsi, [rsi]
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_965
	mov	r15, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	jmp	.label_978
.label_976:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_978:
	call	free
.label_965:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	mov	rsp, rsp
	je	.label_966
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_987
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	mov	rbp, rax
	je	.label_987
	nop	
	jmp	.label_982
.label_966:
	mov	r14d, 0x400ff
.label_974:
	mov	rbp, rbx
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_974
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_974
	nop	dword ptr [rax + rax]
.label_969:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rbp, rbp
	and	eax, r14d
	mov	rbp, rbp
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_980
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_967
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rcx, r15
	jmp	.label_967
.label_980:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rcx, rbx
.label_967:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_986
	nop	
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_969
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_969
	nop	
	jmp	.label_974
.label_986:
	mov	rsp, rsp
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_970
	nop	
	.section	.text
	.align	16
	#Procedure 0x40eb10

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xe8
	nop	
	mov	r12, r9
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	mov	r13, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rbp, rbp
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	mov	rsp, rsp
	ja	.label_1007
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1206]]
.label_2268:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_4
	nop	
	mov	ecx, OFFSET FLAT:.str.2_2
	nop	
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	mov	r9, r12
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1220
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_1002
.label_2269:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	sete	al
	mov	rbp, rbp
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	ecx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_997
.label_1220:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_1002
	nop	
	jmp	.label_1007
.label_2259:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1087
	mov	rax, qword ptr [r9 + 0x70]
.label_1131:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1016
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1045
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_1002
.label_1176:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1054
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	peek_token
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1063
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_1162:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp]
	nop	
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1138:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_1095
	mov	rax, qword ptr [r9 + 0x70]
.label_1164:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1047
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_1045
	lea	rdi, [rdi]
	jmp	.label_1002
.label_1063:
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	r9, rbp
	test	rax, rax
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1138
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1162
.label_1095:
	nop	
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	mov	r13, r9
	call	malloc
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1047
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1164
.label_1045:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1176
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_1002
.label_2260:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	eax, cl
	mov	rbp, rbp
	cdqe	
	lea	rsi, [rsi]
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1083
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1194
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1184:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	movdqu	xmm1, xmmword ptr [rbx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	inc	qword ptr [r9 + 0x98]
	nop	
	or	byte ptr [r9 + 0xb0], 2
	mov	rsp, rsp
	jmp	.label_1002
.label_2261:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1224
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_1156:
	mov	qword ptr [rsp], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	nop	
	jle	.label_1002
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1002
.label_2262:
	mov	qword ptr [rsp + 0x18], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_1034
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rsi, [rsi]
	inc	r13
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	mov	rsp, rsp
	jne	.label_1007
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1057
	mov	r15, rbp
.label_1034:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_1151
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1151:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1067
	mov	rax, qword ptr [r9 + 0x70]
.label_1200:
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	nop	
	je	.label_1072
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_1072:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1002
.label_2263:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_1092
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_1098
.label_2265:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_1105
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_1039
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_1117
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1125]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_1117
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1039:
	mov	eax, dword ptr [r15]
.label_1105:
	cmp	eax, 0x200
	je	.label_1141
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_1145
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_1149
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1107:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	mov	rbp, rbp
	jmp	.label_1089
.label_2267:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_1134
.label_2264:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_1134
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_1193
.label_1092:
	nop	
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], eax
	mov	rbp, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1197
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_1088:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1158:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1002
.label_2270:
	mov	dword ptr [r12], 5
	jmp	.label_1098
.label_2266:
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x90], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	edi, 0x50
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_993
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_993
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x19
	nop	
	je	.label_1012
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_1018
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_1022
.label_997:
	mov	r9, rbx
	nop	
	jmp	.label_1002
.label_1193:
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, r13
	mov	rbp, rbp
	mov	r9, r12
	lea	rsi, [rsi]
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	parse_expression
.label_1016:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_1002
.label_1012:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_1058
	or	byte ptr [r13 + 1], 4
.label_1058:
	cdqe	
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	add	qword ptr [rsi + 0x48], rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 2
	lea	rsi, [rsi]
	je	.label_1018
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_1022:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_1075
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_1075:
	lea	rcx, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x20], 3
	lea	rdi, [rsp + 0x20]
	mov	r9d, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, rbx
	call	parse_bracket_element
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1093
	mov	rbp, rbp
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1097
.label_1008:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_1113
	nop	
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	lea	rax, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, qword ptr [rsp]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1097
	lea	rdi, [rdi]
	jmp	.label_1093
.label_2215:
	nop	
	mov	cl, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1146
.label_2216:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_1157
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_1042:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1029
.label_1140:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_1175
.label_1177:
	nop	
	xor	eax, eax
.label_1175:
	cmp	ebx, 3
	je	.label_1181
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_1037
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_1091
.label_1181:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_1091
.label_1037:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1091:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_1079
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_1152
.label_1079:
	test	r12, r12
	movzx	edx, al
	je	.label_1195
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_1195
.label_1152:
	mov	edx, dword ptr [rsp + 0x28]
.label_1195:
	cmp	ebx, 3
	je	.label_1222
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1228
.label_1222:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1133
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_1133
.label_1228:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_1133:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_996
	cmp	ebp, -1
	je	.label_996
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1212
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_996
.label_1212:
	test	r12, r12
	je	.label_1218
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_1221
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_1070:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_1211
.label_1218:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_1211:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_1023:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_1009
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_1009
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x3a
	mov	rsp, rsp
	add	rdi, rcx
	mov	rbp, rbp
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1009:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_1023
	mov	dword ptr [r12], 0
	jmp	.label_1029
.label_1157:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1001
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_1042
.label_1221:
	mov	dword ptr [rsp + 0xdc], edx
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	lea	rbx, [rax*4 + 4]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	nop	
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_1059
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1059
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0xdc]
	jmp	.label_1070
.label_1097:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0x20]
	nop	
	cmp	r15d, 2
	je	.label_1082
	cmp	r15d, 4
	jne	.label_1085
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	mov	rdx, r15
	lea	rcx, [rsp + 0x90]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	build_charclass
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_1029
	nop	
	jmp	.label_1227
.label_1085:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_1116
	cmp	eax, 2
	jne	.label_1024
	mov	rbp, rbp
	jmp	.label_1122
.label_1116:
	mov	r13, r9
	nop	
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	nop	
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	ecx, 0x15
	je	.label_1066
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_1139
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	mov	dword ptr [rsp + 0xa0], 3
	mov	r9d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1166
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	peek_token_bracket
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0xb4], 1
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jg	.label_1180
	xor	r12d, r12d
.label_1180:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_996
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_996
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_1202
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_996
.label_1202:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1203
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_996
.label_1203:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_1140
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_1177
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_1175
.label_1066:
	nop	
	mov	eax, ebx
	neg	eax
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1024:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_1225
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1232]]
.label_1082:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1236
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1146:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_1029:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_1008
	mov	rbp, rbp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0xe0]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1119
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1119:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_1035
	mov	rcx, qword ptr [r9 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	and	qword ptr [r13], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	and	qword ptr [r13 + 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1035:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_1049
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_1049
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_1049
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_1049
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_1062
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1049
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_1049
.label_1062:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1078
	mov	rax, qword ptr [r9 + 0x70]
.label_1231:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1158
.label_1049:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1100
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1048:
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	nop	
	jne	.label_1112
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1112
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1112
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1142
.label_1112:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_1118
	mov	rbp, qword ptr [r9 + 0x70]
.label_1204:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	mov	rbp, rbp
	shl	rbx, 6
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	nop	
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rbx + 0x40], -1
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1123
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1060:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rbp
	jmp	.label_1002
.label_1141:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1207
	mov	rax, qword ptr [r9 + 0x70]
.label_1128:
	lea	ecx, [rbp + 1]
	nop	
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	mov	rbp, rbp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	ecx, 0xa
.label_1089:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_1210
	mov	rax, qword ptr [r9 + 0x70]
.label_1214:
	lea	ecx, [rbx + 1]
	nop	
	mov	dword ptr [r15], ecx
	nop	
	movsxd	rcx, ebx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1068:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1019
	mov	rax, qword ptr [r9 + 0x70]
.label_1196:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r15], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	nop	
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1026
	mov	qword ptr [rbp], r15
.label_1026:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_1047
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_1050
	jmp	.label_1047
.label_1145:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1099
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1143:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rsi, [rsi]
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	nop	
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1050:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1007
.label_1197:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1047
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1088
.label_1093:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1086
.label_1018:
	mov	dword ptr [r12], 2
	jmp	.label_1110
.label_1113:
	mov	dword ptr [r12], 7
.label_1227:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_998
.label_1054:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1002
.label_1087:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1047
	nop	
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1131
.label_1083:
	mov	dword ptr [r12], 6
	jmp	.label_1098
.label_1224:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_1047
	lea	rsi, [rsi]
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	nop	
	jmp	.label_1156
.label_993:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_1047
.label_1194:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1047
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1184
.label_1067:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1047
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r15
	jmp	.label_1200
.label_1210:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1068
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1214
.label_1019:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1047
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1196
.label_1236:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1086
.label_1117:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1033:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_1027:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1003
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1003:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_1102
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_1014
.label_1102:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1014:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_1027
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_1033
	jmp	.label_1039
.label_1100:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1001
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1048
.label_1118:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1001
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1204
.label_1123:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1001
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_1060
.label_1122:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_1086
.label_1149:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1096
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1107
.label_1207:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1124
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1128
.label_1099:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1047
	mov	r13, r15
	mov	r9, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1143
.label_1047:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_1098
.label_1139:
	mov	dword ptr [r12], 7
	jmp	.label_1161
.label_1142:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_1002
.label_1057:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1173
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_1183:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1183
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_1183
.label_1205:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1187
	nop	
	cmp	eax, 6
	jne	.label_1190
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_992
.label_1187:
	mov	rdi, qword ptr [rbp + 0x28]
.label_992:
	nop	
	call	free
.label_1190:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_1173
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1205
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1205
	jmp	.label_1183
.label_1173:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_1098
.label_1096:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1089
.label_1124:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_1089
.label_1166:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_1161
.label_1078:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1001
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1231
.label_1001:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1110:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_998
.label_1059:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_996:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_1161:
	mov	rsp, rsp
	mov	r9, r13
.label_1086:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_998:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ebp, 0
	jne	.label_1007
.label_1002:
	mov	qword ptr [rsp + 0x18], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, r14
	mov	rbp, rbp
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	nop	
	mov	eax, r14d
	nop	
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0xd0], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x50], r14
	nop	dword ptr [rax]
.label_1192:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_1061
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1064
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_1032
	mov	r14, rbp
	lea	rsi, [rsi]
	cmp	eax, 0x12
	nop	
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	lea	rsi, [rsi]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	cmove	rcx, rax
	jmp	.label_1172
.label_1126:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_1032:
	mov	rsp, rsp
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	nop	
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1101
	nop	
	cmp	eax, 2
	je	.label_1109
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1114
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_1032
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_1032
	cmp	r15, -2
	je	.label_1032
	cmp	ecx, 0x39
	nop	
	ja	.label_1032
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_1126
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_1032
.label_1114:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_1101:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_1135
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1137
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_995
.label_1137:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_1144
	nop	word ptr cs:[rax + rax]
.label_1135:
	cmp	r15, -2
	je	.label_1109
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_1154
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_1109
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1109
.label_995:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_1021
.label_1154:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_1171
.label_1053:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_1021:
	mov	r12, rdx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 0x18
	lea	rsi, [rsi]
	je	.label_1189
	cmp	eax, 2
	je	.label_1198
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_1189
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1021
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1021
	cmp	r12, -2
	je	.label_1021
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_1021
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_1053
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_1021
.label_1189:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_1198
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_1171
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_1219
.label_1171:
	cmp	eax, 0x18
	nop	
	jne	.label_1219
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_1226
	nop	dword ptr [rax]
.label_1172:
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	mov	rsp, rsp
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r14
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_994
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r9
	mov	rax, r9
	lea	rsi, [rsi]
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rax, rdi
	lea	rsi, [rsi]
	je	.label_1004
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_1130
.label_1208:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_1028
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_1040:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1040
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1040
	nop	
.label_1104:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_1046
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_1046
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1046:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1028
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_1104
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_1104
	jmp	.label_1040
	nop	dword ptr [rax + rax]
.label_1028:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1201
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_1213:
	lea	rdi, [rdi]
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	nop	
	mov	dword ptr [r8 + 0x80], esi
	mov	rbp, rbp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	r12, r12
	je	.label_1073
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_1073:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_1090
	nop	
	jmp	.label_1094
	nop	word ptr cs:[rax + rax]
.label_1004:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1004
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1004
	nop	
.label_1153:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_989
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1121
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	jmp	.label_1136
	nop	dword ptr [rax]
.label_989:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1136:
	mov	rsp, rsp
	call	free
.label_1121:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_994
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_1153
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_1153
	jmp	.label_1004
.label_1229:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1167
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r8 + 0x80], 0
	nop	
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1170
.label_1230:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_1132
.label_1127:
	mov	edi, 0x3c8
	mov	rsp, rsp
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r8, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1103
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1216
.label_1167:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1106
.label_1036:
	mov	qword ptr [r14], 0
.label_1106:
	xor	r12d, r12d
.label_1132:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	mov	r8, r15
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_1103
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1191
	nop	word ptr cs:[rax + rax]
.label_1094:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1229
	mov	rax, qword ptr [r8 + 0x70]
.label_1170:
	lea	rdx, [r12 + 0x28]
	nop	
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_990
	nop	dword ptr [rax + rax]
.label_1074:
	lea	rdx, [r12 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	nop	
	lea	rcx, [rax + rsi + 8]
	nop	
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_990:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1043
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1052
	nop	word ptr [rax + rax]
.label_1043:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1178:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_1020
	test	r12, r12
	jne	.label_1055
.label_1020:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1178
	nop	
	jmp	.label_1065
.label_1055:
	lea	r14, [rbp + 0x10]
.label_1052:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_1076
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1074
.label_1076:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1036
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1074
	nop	word ptr cs:[rax + rax]
.label_1065:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1230
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_1191:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1103
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1127
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1216:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	r13, [rax + rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	nop	
	lea	r15, [r15 + 1]
	lea	rdi, [rdi]
	jl	.label_1094
.label_1090:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_1159
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_1163
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1013:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	rdx, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	nop	
	jmp	.label_1174
.label_1159:
	mov	r12, qword ptr [rsp + 0x98]
.label_1174:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_1179
.label_1219:
	mov	qword ptr [rsp + 0xe0], r14
.label_1144:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_994
.label_1130:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_1038
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_1209
.label_1201:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	lea	rdi, [rdi]
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r8, rbp
	test	rax, rax
	je	.label_1103
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_1213
.label_1198:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1109:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_991
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_994
.label_1011:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1015
	mov	rbp, rbp
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1233
.label_1165:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_1111
.label_1015:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1041
.label_1168:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_1041:
	nop	
	xor	r13d, r13d
.label_1111:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_1103
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_1108
	nop	
.label_1209:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1011
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1233:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	r12, [rsp + 0x70]
	jmp	.label_1071
	nop	word ptr cs:[rax + rax]
.label_1056:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rsi, [rsi]
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1071:
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rsi, [rsi]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1120
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1129
	nop	dword ptr [rax]
.label_1120:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1147:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1235
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_1160
.label_1235:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1147
	jmp	.label_1150
.label_1160:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_1129:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1155
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1056
.label_1155:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1168
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1056
	nop	word ptr cs:[rax + rax]
.label_1150:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1165
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1108:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1115
	mov	qword ptr [rdi], rdx
.label_1115:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_1103
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_1209
.label_1038:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_1223
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_994
.label_1163:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_994
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1013
.label_1223:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1006
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1148:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	rdi, [rdi]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rbp, [rsp + 0x70]
	jmp	.label_1017
	nop	word ptr cs:[rax + rax]
.label_1031:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rbp, rbp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	rbp, rbp
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
.label_1017:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1069
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1010
.label_1069:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1081:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1077
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1080
.label_1077:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_1081
	jmp	.label_1084
.label_1080:
	lea	rbp, [rbx + 0x10]
.label_1010:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1188
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1031
.label_1188:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1186
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1031
.label_991:
	mov	qword ptr [rsp + 0xe0], rbp
	cmp	eax, 2
	setne	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_994
.label_1084:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_1208
.label_1226:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_994
.label_1006:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1169
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	r8, r12
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	nop	
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	rsp, rsp
	mov	r9, r14
	lea	rdi, [rdi]
	jmp	.label_1148
.label_1169:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_1103
.label_1186:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_1103:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_994:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_1179
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_1182
	lea	rsi, [rsi]
	jmp	.label_1185
	nop	word ptr cs:[rax + rax]
.label_1179:
	mov	rbx, qword ptr [rsp]
.label_1182:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_1192
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_1199
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_1192
.label_1199:
	mov	rbp, rbp
	test	al, al
	jne	.label_1134
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_1005:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_1005
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1005
	nop	
.label_1000:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1215
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_1217
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	nop	
	mov	rdi, rbx
	jmp	.label_1234
	nop	dword ptr [rax + rax]
.label_1215:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1234:
	lea	rsi, [rsi]
	call	free
.label_1217:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1134
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1000
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1000
	jmp	.label_1005
.label_1185:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_1007
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_999:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_999
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_999
	nop	dword ptr [rax]
.label_1051:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1025
	cmp	eax, 6
	jne	.label_1030
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	jmp	.label_1044
	nop	
.label_1025:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_1044:
	lea	rsi, [rsi]
	call	free
.label_1030:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1007
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1051
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1051
	mov	rsp, rsp
	jmp	.label_999
.label_1134:
	mov	dword ptr [r12], 0xd
.label_1098:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1007
.label_1061:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_1007
.label_1064:
	mov	r15, rbp
.label_1007:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1225:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d70

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1247
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1253
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0x14]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0x20], al
	nop	
	lea	rcx, [rsp + 8]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_1242
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1244
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1251:
	movsx	rcx, al
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	lea	rdi, [rdi]
	shr	rdx, 0x3a
	add	rdx, rcx
	lea	rsi, [rsi]
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1251
.label_1244:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_1239
	movdqu	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1239:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1248
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	and	qword ptr [rbx + 0x18], rax
.label_1248:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1238
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_1252:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	lea	r14, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 2
	lea	rsi, [rsi]
	jl	.label_1241
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_1254
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_1243:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x80]
	nop	
	cmp	eax, 0xf
	je	.label_1246
	mov	rcx, qword ptr [r12 + 0x70]
.label_1249:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	nop	
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	lea	rax, [rcx + rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rsi + 8], 0
	nop	
	mov	qword ptr [rcx + rsi + 0x10], r14
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1237
.label_1241:
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1237
.label_1247:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_1245
.label_1253:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1250
.label_1242:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1245
.label_1238:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1240
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1252
.label_1254:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1240
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_1243
.label_1240:
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
.label_1250:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1245:
	xor	eax, eax
.label_1237:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1246:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_1237
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_1249
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412280

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_1255
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_1261
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1261
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1260
.label_1261:
	test	dl, 1
	mov	rsp, rsp
	je	.label_1258
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_1258
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1258
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_1260
.label_1255:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1258:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_1262
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1263
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_1259
.label_1262:
	cmp	eax, 0x5e
	nop	
	je	.label_1267
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_1257
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1260
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_1260:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_1263:
	mov	rbp, rbp
	xor	eax, eax
.label_1259:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_1266
	cmp	eax, 0x3a
	je	.label_1256
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_1264
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1257:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1256:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_1265
.label_1264:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1267:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_1266:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1265:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412400

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1268
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_1268
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_1280:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1283
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_1280
.label_1283:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_1268
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1288
.label_1268:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1272
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1278]]
.label_2302:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_1269
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1284
	nop	dword ptr [rax]
.label_1274:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_1284:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_1286
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1289
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1281
	nop	word ptr cs:[rax + rax]
.label_1286:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_1273:
	mov	bl, byte ptr [rbx + rdx]
.label_1281:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1269
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_1285
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1287
.label_1285:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_1274
	jmp	.label_1269
.label_1289:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_1270
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_1276
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1279
.label_1276:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1279
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_1275
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_1275
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_1277:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1275
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_1277
.label_1275:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_1281
.label_1270:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_1273
.label_1279:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1281
.label_1287:
	mov	rsp, rsp
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x1e
	je	.label_1271
	cmp	ecx, 0x1c
	je	.label_1282
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_1269
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_1269
.label_1271:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_1269
.label_1282:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_1269
.label_2301:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_1272
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1269
.label_1272:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1288:
	xor	eax, eax
.label_1269:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412730

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_1325
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_1334
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1325
.label_1334:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1325:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1327
.label_1321:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_4
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1344
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1352
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1296
	mov	esi, OFFSET FLAT:.str.3_1
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1304
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1311
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1317
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_1
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1322
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1331
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1351
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1343
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1318
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_1291
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1306
.label_1319:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1328
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1328:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_1319
	mov	rsp, rsp
	jmp	.label_1291
.label_1344:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1295
	nop	
.label_1340:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1339
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1339:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_1340
	jmp	.label_1291
	nop	dword ptr [rax]
.label_1295:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1320
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1320:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1295
	jmp	.label_1291
.label_1352:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1305
	nop	word ptr cs:[rax + rax]
.label_1323:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1313
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1313:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1323
	jmp	.label_1291
	nop	
.label_1305:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_1332
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1332:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_1305
	nop	
	jmp	.label_1291
.label_1296:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1326
	nop	dword ptr [rax + rax]
.label_1315:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1290
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	mov	rsp, rsp
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 6
	lea	rdi, [rdi]
	or	qword ptr [r15 + rcx*8], rax
.label_1290:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1315
	mov	rsp, rsp
	jmp	.label_1291
	nop	word ptr cs:[rax + rax]
.label_1326:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_1333
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1333:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1326
	mov	rbp, rbp
	jmp	.label_1291
.label_1304:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1298
	nop	
.label_1349:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1338
	nop	
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1338:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1349
	nop	
	jmp	.label_1291
.label_1298:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1294
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1294:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_1298
	jmp	.label_1291
.label_1327:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1291
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_1321
.label_1311:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_1302
	nop	word ptr cs:[rax + rax]
.label_1346:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_1336
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	sar	rcx, 0x3f
	mov	rbp, rbp
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1336:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1346
	jmp	.label_1291
.label_1302:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1293
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1293:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1302
	jmp	.label_1291
.label_1317:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1337
	nop	dword ptr [rax]
.label_1329:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1310
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1310:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_1329
	mov	rbp, rbp
	jmp	.label_1291
.label_1337:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_1335
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1335:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1337
	mov	rbp, rbp
	jmp	.label_1291
.label_1322:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1309
	nop	dword ptr [rax + rax]
.label_1308:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1316
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1316:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1308
	jmp	.label_1291
.label_1309:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1314
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1314:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1309
	nop	
	jmp	.label_1291
.label_1331:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_1297
	nop	
.label_1312:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1342
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	nop	
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1342:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_1312
	jmp	.label_1291
.label_1297:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
	je	.label_1350
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1350:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1297
	jmp	.label_1291
.label_1351:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_1292
	nop	word ptr cs:[rax + rax]
.label_1324:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_1345
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rbp, rbp
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1345:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1324
	jmp	.label_1291
.label_1292:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_1330
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_1330:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1292
	jmp	.label_1291
.label_1343:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_1301
.label_1300:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_1347
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1347:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1300
	nop	
	jmp	.label_1291
.label_1301:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_1307
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1307:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1301
	jmp	.label_1291
.label_1306:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1348
	mov	cl, byte ptr [r14 + rdx]
	mov	rbp, rbp
	mov	eax, 1
	nop	
	shl	rax, cl
	mov	rsp, rsp
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1348:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1306
	mov	rsp, rsp
	jmp	.label_1291
.label_1318:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1299
.label_1353:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_1341
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1341:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1353
.label_1291:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1299:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1303
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1303:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_1299
	jmp	.label_1291
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413170

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 0x11
	mov	rbp, rbp
	je	.label_1354
	cmp	eax, 4
	jne	.label_1355
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1355
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa0], rax
	nop	
	xor	eax, eax
	ret	
.label_1354:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1355
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1355
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1356
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rsi
.label_1356:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	nop	
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	rcx, 0x3f
	mov	rbp, rbp
	jg	.label_1355
	mov	rsp, rsp
	mov	rax, -2
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_1355:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413240

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 0x30]
	mov	rbp, rbp
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1357
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1367]]
.label_2176:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1366
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_1363
.label_2177:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	nop	
	js	.label_1361
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_1362
	lea	rdi, [rdi]
	mov	r12, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	rbx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	qword ptr [r12 + rbx*8], 2
	mov	rsp, rsp
	mov	edi, 0x10
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1359
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_1360
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_1363
.label_2174:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_1359
	nop	
	mov	edi, OFFSET FLAT:.str.17_2
	nop	
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2175:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1363
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1368
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_1363
.label_1357:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_1364
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_1363
.label_1360:
	mov	qword ptr [rax], 2
	jge	.label_1369
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_1363
.label_1369:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1363:
	xor	eax, eax
.label_1359:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_1366:
	lea	rax, [r14 + rbx*8]
.label_1358:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1359
.label_1368:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_1358
.label_1361:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1362:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1364:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4134f0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rdi
	nop	
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	r13, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	je	.label_1379
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	lea	rdi, [rdi]
	je	.label_1379
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_1374
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1374
.label_1379:
	mov	r12d, dword ptr [rbx + 0x80]
	nop	
	cmp	r12d, 0xf
	mov	rsp, rsp
	je	.label_1375
	mov	rax, qword ptr [rbx + 0x70]
.label_1381:
	lea	rdi, [rdi]
	lea	ecx, [r12 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r12d
	mov	rbp, rbp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1377:
	mov	qword ptr [rsp], rbp
	mov	rbp, rbp
	mov	r15d, dword ptr [rbx + 0x80]
	mov	rbp, rbp
	cmp	r15d, 0xf
	je	.label_1370
	mov	rax, qword ptr [rbx + 0x70]
.label_1380:
	lea	rsi, [rsi]
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 9
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1376:
	test	r13, r13
	lea	rsi, [rsi]
	mov	rbp, r15
	nop	
	je	.label_1372
	mov	rbp, rbp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_1384
	mov	rax, qword ptr [rbx + 0x70]
.label_1382:
	nop	
	lea	ecx, [rbp + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r13], rbp
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1372
	mov	qword ptr [r15], rbp
.label_1372:
	nop	
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1383
	mov	rax, qword ptr [rbx + 0x70]
.label_1378:
	lea	rdi, [rdi]
	lea	ecx, [r13 + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	nop	
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	r12, r12
	je	.label_1385
	lea	rsi, [rsi]
	mov	qword ptr [r12], r13
.label_1385:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1373
	nop	
	mov	qword ptr [rbp], r13
.label_1373:
	test	r15, r15
	je	.label_1371
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1371
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_1371
	test	r13, r13
	je	.label_1371
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	lea	rdi, [rdi]
	mov	eax, 0x80000
	mov	rbp, rbp
	and	eax, dword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	mov	ecx, 0xfff7ffff
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	mov	rbp, rbp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x30], ecx
.label_1374:
	mov	rax, r13
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1375:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rax, rax
	nop	
	je	.label_1377
	mov	rcx, qword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	nop	
	jmp	.label_1381
.label_1370:
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	xor	r15d, r15d
	test	rax, rax
	je	.label_1376
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1380
.label_1383:
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1373
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	mov	rbp, rbp
	jmp	.label_1378
.label_1371:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_1374
.label_1384:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_1372
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1382
	nop	
	.section	.text
	.align	16
	#Procedure 0x4138d0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_1390
.label_1391:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1389
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1387
.label_1389:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1387:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r15 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1388:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1390:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1388
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1388
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [r13 + r13*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1386
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_1386
	test	r13, r13
	mov	rbp, rbp
	je	.label_1386
	nop	
	test	rbp, rbp
	je	.label_1386
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	nop	
	mov	qword ptr [rbx + 0x28], r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jmp	.label_1391
.label_1386:
	lea	rsi, [rsi]
	mov	rbx, rax
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1388
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413b60

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rdi]
	lea	rdi, [rax*8 + 8]
	mov	rbp, rbp
	call	malloc
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1392
	mov	qword ptr [rsp + 0x28], rbx
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	rsp, rsp
	mov	r8d, eax
	mov	rbp, rbp
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1394
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_1394
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1394
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1392
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_1394:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_1400
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_1399
.label_1400:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_1393
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1396:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	lea	r12, [rdx + rdx*2]
	nop	
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1402
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1397
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1403
	jmp	.label_1392
.label_1397:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1403:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1392
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1401
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1402:
	mov	r15b, 1
.label_1401:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_1396
	jmp	.label_1399
.label_1393:
	mov	rbp, rbp
	xor	r15d, r15d
.label_1399:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1392
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_1395
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_1395
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1398
.label_1395:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1398:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_1392:
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413e10

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	nop	
	mov	r14, rdi
.label_1414:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1405:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1419
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	rsp, rsp
	mov	qword ptr [rdx + r12*8 + 8], 0
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	rdi, r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	re_dfa_add_node
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_1417
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax + rcx + 8], edx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x24]
	jne	.label_1405
	jmp	.label_1404
	nop	dword ptr [rax]
.label_1419:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1406
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_1411
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_1412
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_1412
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_1415:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_1407
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_1410
.label_1407:
	dec	rsi
	test	rsi, rsi
	jle	.label_1412
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1415
	mov	rbp, rbp
	jmp	.label_1412
.label_1410:
	cmp	rsi, -1
	je	.label_1412
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1420
	mov	rbp, rbp
	jmp	.label_1404
	nop	word ptr [rax + rax]
.label_1412:
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1413
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rax, qword ptr [r14]
	nop	
	mov	rcx, rbx
	nop	
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	mov	rsp, rsp
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x3ff00
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	nop	
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1404
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x1c], eax
	nop	
	test	eax, eax
	nop	
	jne	.label_1404
.label_1420:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1409
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	nop	
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	lea	rsi, [rsi]
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1405
	mov	rsp, rsp
	jmp	.label_1404
.label_1411:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1416
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_1418
.label_1416:
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], 0xc
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1404
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	nop	
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	rsp, rsp
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	rbp, rbp
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	nop	
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	lea	rdi, [rcx + r15*8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1414
	jmp	.label_1404
.label_1417:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1404
.label_1413:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1404
.label_1409:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_1404
.label_1406:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1408:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_1404:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1418:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1404
	nop	
	jmp	.label_1408
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4143e0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1428
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1428
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_1425
	add	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_1422
	nop	
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
.label_1425:
	test	rcx, rcx
	je	.label_1432
	nop	
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	dec	rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	or	rdx, rcx
	nop	
	js	.label_1434
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_1427
.label_1421:
	dec	rax
.label_1426:
	dec	rcx
	jmp	.label_1424
	nop	word ptr cs:[rax + rax]
.label_1427:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1421
	jge	.label_1426
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_1424:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1427
.label_1434:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_1429
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	mov	rbp, rbp
	lea	rdi, [rbx*8]
	lea	rdi, [rdi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1429:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_1428
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1431:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_1423:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_1430
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1423
	nop	
	jmp	.label_1428
	nop	word ptr cs:[rax + rax]
.label_1430:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_1431
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_1433
.label_1432:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_1433:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_1428:
	xor	eax, eax
.label_1422:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414600

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1435
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1442
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_1445
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1438
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1440
.label_1435:
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1448
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_1439
.label_1442:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_1441
.label_1445:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_1440:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_1446
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1443
	nop	word ptr [rax + rax]
.label_1436:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_1436
	lea	rdi, [rdi]
	jmp	.label_1443
.label_1446:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_1444
	nop	dword ptr [rax + rax]
.label_1437:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1444:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_1437
.label_1443:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1441:
	inc	qword ptr [r14 + 8]
.label_1439:
	lea	rdi, [rdi]
	mov	al, 1
.label_1447:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_1448:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1447
.label_1438:
	xor	eax, eax
	jmp	.label_1447
	nop	
	.section	.text
	.align	16
	#Procedure 0x414740

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	mov	rsp, rsp
	test	r8, r8
	lea	rdi, [rdi]
	je	.label_1472
	nop	
	mov	qword ptr [rsp], rdi
	mov	r14d, r13d
	add	r14, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_1475
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1455
	lea	rsi, [rsi]
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	nop	
	je	.label_1461
	nop	
	movq	xmm0, r14
	nop	
	lea	r9, [r8 - 4]
	lea	rsi, [rsi]
	mov	eax, r9d
	shr	eax, 2
	nop	
	inc	eax
	xor	edi, edi
	test	al, 3
	mov	rsp, rsp
	je	.label_1465
	mov	rsp, rsp
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1464:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	lea	rsi, [rsi]
	add	rdi, 4
	inc	rbp
	jne	.label_1464
	jmp	.label_1458
.label_1472:
	mov	dword ptr [rdi], 0
	jmp	.label_1459
.label_1461:
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_1455
.label_1465:
	pxor	xmm1, xmm1
.label_1458:
	mov	rsp, rsp
	cmp	r9, 0xc
	jb	.label_1469
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rsi, [rsi]
	sub	rax, rdi
	mov	rsp, rsp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1479:
	nop	
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	mov	rsp, rsp
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	mov	rsp, rsp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1479
.label_1469:
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	paddq	xmm0, xmm1
	mov	rbp, rbp
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1475
.label_1455:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	
.label_1482:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_1482
.label_1475:
	mov	rax, qword ptr [rsi + 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	lea	rsi, [rsi]
	jle	.label_1449
	lea	rsi, [rsi]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1468:
	nop	
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	lea	rdi, [rdi]
	jne	.label_1450
	movzx	eax, byte ptr [r15 + 0x68]
	nop	
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	lea	rsi, [rsi]
	jne	.label_1450
	test	rdx, rdx
	je	.label_1450
	mov	rdi, qword ptr [r15 + 0x50]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1450
	nop	
	cmp	qword ptr [rdi + 8], r8
	mov	rsp, rsp
	jne	.label_1450
	lea	rsi, [rsi]
	mov	rax, r8
.label_1453:
	test	rax, rax
	jle	.label_1451
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1453
	nop	dword ptr [rax + rax]
.label_1450:
	nop	
	inc	rbx
	nop	
	cmp	rbx, r10
	lea	rdi, [rdi]
	jl	.label_1468
.label_1449:
	mov	rsp, rsp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_1460
	nop	
	mov	r10, r15
	add	r10, 8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r10
	mov	r9, rbx
	nop	
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1484
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	mov	rbp, r15
	lea	rsi, [rsi]
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1474
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	rbp, rbp
	mov	r15, rbp
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_1485
.label_1484:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, r12
.label_1485:
	mov	rsp, rsp
	mov	al, byte ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	lea	rdi, [rdi]
	or	al, cl
	mov	rsp, rsp
	mov	byte ptr [r15 + 0x68], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1462
	mov	rsp, rsp
	mov	ebp, r13d
	lea	rdi, [rdi]
	and	ebp, 1
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	and	r13d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], r13d
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	r8d, r8d
	nop	
.label_1480:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	nop	
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	lea	rsi, [rsi]
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_1478
	mov	rbp, rbp
	test	ecx, ecx
	nop	
	je	.label_1466
.label_1478:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	mov	rbp, rbp
	shr	al, 5
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	or	eax, esi
	lea	rsi, [rsi]
	shl	al, 5
	nop	
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1477
	mov	rbp, rbp
	cmp	edx, 2
	lea	rsi, [rsi]
	jne	.label_1486
	or	bl, 0x10
	mov	rbp, rbp
	jmp	.label_1467
.label_1477:
	lea	rdi, [rdi]
	or	bl, 0x40
.label_1467:
	lea	rsi, [rsi]
	mov	byte ptr [r15 + 0x68], bl
.label_1486:
	nop	
	test	ecx, ecx
	je	.label_1466
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1471
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	edi, 0x18
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1476
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1470
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rbp, rbp
	mov	rdi, r15
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1452
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_1456
.label_1470:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_1456:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x18]
.label_1471:
	test	ebp, ebp
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jne	.label_1483
	mov	rsp, rsp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	jne	.label_1454
.label_1483:
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	je	.label_1457
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	nop	
	jne	.label_1454
.label_1457:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x34], 0
	nop	
	jne	.label_1481
	mov	rbp, rbp
	mov	eax, r13d
	and	eax, 0x10
	mov	rsp, rsp
	jne	.label_1454
.label_1481:
	nop	
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1466
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_1466
	nop	word ptr cs:[rax + rax]
.label_1454:
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, r8
	js	.label_1473
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1473
	dec	rcx
	nop	
	mov	qword ptr [r15 + 0x10], rcx
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jle	.label_1473
	lea	rax, [r12*8]
	mov	rsp, rsp
	add	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rcx, r8
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1463:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1463
	nop	word ptr cs:[rax + rax]
.label_1473:
	lea	rdi, [rdi]
	inc	r8
.label_1466:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	nop	
	jl	.label_1480
.label_1462:
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	register_state
	test	eax, eax
	je	.label_1451
.label_1476:
	mov	rdi, r15
	call	free_state
	mov	rbp, rbp
	jmp	.label_1460
.label_1452:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1460
.label_1474:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_1460:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_1459:
	xor	r15d, r15d
.label_1451:
	mov	rsp, rsp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414df0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	rsp, rsp
	mov	ecx, 0xc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1489
	mov	rbp, rbp
	test	r13, r13
	jle	.label_1492
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1488:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1494
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_1491
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1490
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_1491:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1494:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1488
.label_1492:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_1493
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1487:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1489
.label_1490:
	nop	
	mov	ecx, 0xc
.label_1489:
	mov	eax, ecx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1493:
	mov	rbp, rbp
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	ecx, 0xc
	mov	rsp, rsp
	je	.label_1489
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_1487
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414fb0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rbp, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_1542
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1559
	mov	qword ptr [rbx + 0x20], 0
.label_1559:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r13
	jne	.label_1536
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r13
.label_1536:
	mov	rbp, rbp
	test	r14, r14
	je	.label_1524
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_1526
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1530
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1543
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
.label_1543:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_1556
.label_1518:
	nop	
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1499:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1524
	lea	rsi, [rsi]
	add	qword ptr [rbx + 8], r14
.label_1524:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1498
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1512
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1517
	jmp	.label_1496
.label_1498:
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_1519
	mov	qword ptr [rbx + 0x30], rdx
	lea	rdi, [rdi]
	jmp	.label_1496
.label_1512:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1496:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1517:
	mov	rbp, rbp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1542:
	mov	r14, r13
	lea	rsi, [rsi]
	sub	r14, rax
	lea	rdi, [rdi]
	jmp	.label_1536
.label_1526:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	mov	rbp, rbp
	test	cl, cl
	jne	.label_1540
.label_1507:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	lea	rdi, [rdi]
	jl	.label_1547
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [rbx + 0x89], 0
	mov	rsp, rsp
	je	.label_1511
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	nop	
	mov	rdx, r14
	sub	rdx, rsi
	mov	rbp, rbp
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	mov	rsp, rsp
	lea	rsi, [rdi + rsi - 1]
	nop	word ptr cs:[rax + rax]
.label_1516:
	mov	rbp, rsi
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_1511
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	mov	rbp, rbp
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1516
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_1520
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	r12, r10
	nop	
	mov	rsi, rbp
.label_1554:
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1531
	mov	rbp, rbp
	cmp	rax, -3
	lea	rdi, [rdi]
	mov	r10, r12
	ja	.label_1523
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_1523
.label_1530:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsp, rsp
	xor	ecx, ecx
.label_1514:
	lea	rsi, [rsi]
	lea	rsi, [rcx + rdx]
	mov	rsp, rsp
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	nop	
	sar	rax, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1495
	mov	rbp, rbp
	jge	.label_1509
	nop	
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	rdi, rdx
.label_1495:
	cmp	rcx, rdi
	mov	rbp, rbp
	mov	rdx, rdi
	jl	.label_1514
.label_1509:
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1525
	lea	rdi, [rdi]
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_1525
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + r14*8], r14
	mov	rbp, rbp
	jne	.label_1525
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	mov	rsp, rsp
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	mov	rsp, rsp
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	lea	rsi, [rsi]
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	jle	.label_1499
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1500:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx*8], rsi
	mov	rbp, rbp
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_1500
	jmp	.label_1499
.label_1556:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_1518
.label_1525:
	mov	rax, r14
	sub	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1532:
	mov	rax, r12
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1539
	nop	
	lea	r12, [rax - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbp + rax*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_1532
.label_1539:
	cmp	rax, rsi
	mov	rsp, rsp
	jge	.label_1505
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
.label_1545:
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1505
	mov	rbp, rbp
	inc	rax
	cmp	rax, rsi
	jl	.label_1545
.label_1505:
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	jne	.label_1548
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_1504
.label_1519:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1558
	mov	rsp, rsp
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	mov	rbp, rbp
	jge	.label_1561
	lea	rdi, [rdi]
	jmp	.label_1503
	nop	dword ptr [rax]
.label_1527:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1503:
	lea	rdi, [rdi]
	inc	r15
	lea	rdi, [rdi]
	mov	r12, rbp
	mov	rsp, rsp
	add	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1508
.label_1535:
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rbp, rbp
	cmp	eax, 0x17f
	mov	rsp, rsp
	ja	.label_1557
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1557:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	byte ptr [rax + r15 - 1], bpl
	lea	rsi, [rsi]
	cmp	r15, r14
	nop	
	jl	.label_1527
	lea	rdi, [rdi]
	jmp	.label_1533
.label_1508:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx]
	mov	rbp, rbp
	jmp	.label_1535
.label_1547:
	add	rax, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1537
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_1537:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1551
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0xa
	nop	
	jne	.label_1551
	lea	rdi, [rdi]
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	lea	rsi, [rsi]
	add	eax, eax
.label_1551:
	mov	dword ptr [rbx + 0x70], eax
	mov	rbp, rbp
	jmp	.label_1499
.label_1548:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	lea	rsi, [rsi]
	je	.label_1504
	test	rbp, rbp
	lea	rdi, [rdi]
	jle	.label_1510
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	mov	rsp, rsp
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	lea	rsi, [rsi]
	call	memset
.label_1510:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1504:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1499
.label_1558:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1496
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	cmovg	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_1534
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx]
	mov	rsp, rsp
	jmp	.label_1544
.label_1560:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1544:
	mov	rbp, rbp
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_1560
	mov	rax, rcx
.label_1534:
	mov	qword ptr [rbx + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1496
.label_1533:
	nop	
	mov	r15, r14
.label_1561:
	mov	qword ptr [rbx + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1496
.label_1540:
	nop	
	mov	rdx, r14
	sub	rdx, r13
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1507
.label_1531:
	mov	rbp, rbp
	mov	r10, r12
.label_1523:
	lea	rdi, [rdi]
	cmp	esi, -1
	jne	.label_1521
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 0x38]
.label_1511:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	jge	.label_1550
	mov	qword ptr [rsp + 0x10], r10
	lea	rax, [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1513
.label_1502:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	cmp	rbp, r12
	lea	rsi, [rsi]
	je	.label_1538
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	je	.label_1497
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	nop	
	jmp	.label_1497
.label_1538:
	mov	rcx, qword ptr [rsp + 8]
.label_1497:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1555
	nop	
.label_1513:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	add	rsi, r12
	mov	rbp, rbp
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1502
	mov	rcx, rax
	or	rcx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	nop	
	je	.label_1502
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp]
.label_1555:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	nop	
	jl	.label_1513
	mov	qword ptr [rbx + 0x30], rbp
	nop	
	cmp	esi, -1
	mov	r10, qword ptr [rsp + 0x10]
	je	.label_1528
.label_1521:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1522
.label_1515:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	jne	.label_1506
	mov	ecx, 2
	nop	
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1506
	nop	
	xor	ecx, ecx
.label_1506:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1529
.label_1550:
	mov	qword ptr [rbx + 0x30], rbp
.label_1528:
	dec	r10
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r10
	mov	rbp, rbp
	mov	edx, r15d
	nop	
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1529:
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_1541
.label_1501:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1499
.label_1541:
	lea	rdi, [rdi]
	jle	.label_1549
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1549:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rsp, rsp
	je	.label_1501
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	jmp	.label_1501
.label_1522:
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	cmp	esi, 0x5f
	mov	rbp, rbp
	mov	ecx, 1
	je	.label_1506
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1515
	jmp	.label_1506
.label_1520:
	lea	rsi, [rsp + 0x2e]
	cmp	rdx, 6
	mov	ecx, 6
	mov	rsp, rsp
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1553
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rbp, rbp
	cmp	rdi, -8
	lea	rdi, [rdi]
	mov	rcx, -7
	mov	rsp, rsp
	cmovg	rcx, rdi
	nop	
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	mov	rsp, rsp
	inc	rcx
.label_1552:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	rsp, rsp
	mov	byte ptr [rsp + rcx + 0x2c], al
	dec	rcx
	mov	rsp, rsp
	cmp	rcx, 1
	nop	
	jg	.label_1552
	nop	
	jmp	.label_1546
.label_1553:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r11
.label_1546:
	mov	r12, r10
	nop	
	jmp	.label_1554
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4159e0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	mov	rbp, rbp
	test	r10, r10
	jle	.label_1562
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x98]
	mov	rbp, rbp
	mov	r11, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	lea	rdi, [rdi]
	mov	r8d, eax
	and	r8d, 2
	mov	rsp, rsp
	and	eax, 8
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1567:
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rbp, rbp
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_1564
	shr	edx, 8
	mov	rsp, rsp
	test	dx, 0x3ff
	je	.label_1562
	test	r9d, r9d
	nop	
	jne	.label_1566
	mov	rsp, rsp
	mov	esi, edx
	and	esi, 4
	jne	.label_1564
.label_1566:
	lea	rdi, [rdi]
	test	r9d, r9d
	lea	rsi, [rsi]
	je	.label_1565
	mov	esi, edx
	mov	rbp, rbp
	and	esi, 8
	mov	rbp, rbp
	jne	.label_1564
.label_1565:
	test	r8d, r8d
	lea	rsi, [rsi]
	jne	.label_1563
	lea	rdi, [rdi]
	mov	esi, edx
	and	esi, 0x20
	mov	rbp, rbp
	jne	.label_1564
.label_1563:
	test	eax, eax
	jne	.label_1562
	nop	
	test	dl, dl
	jns	.label_1562
.label_1564:
	lea	rsi, [rsi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	ecx, 0
	mov	rsp, rsp
	jl	.label_1567
.label_1562:
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415af0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_1572
	nop	
	xor	r12d, r12d
	nop	
.label_1569:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1568
	nop	word ptr cs:[rax + rax]
.label_1571:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1571
.label_1568:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1570
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1570:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1569
.label_1572:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415c00

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	nop	
	mov	qword ptr [rbp - 0x88], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x58], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x30], r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + label_1573]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1574]]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	lea	rdi, [rdi]
	je	.label_1575
	mov	qword ptr [rbp - 0x78], rcx
	mov	r15, r14
	mov	edi, 0x60
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	r14d, 0xc
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_1591
	nop	
	lea	r13, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
.label_1575:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xb8], r13
	mov	r15, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	cmp	rdx, 0xfbf
	lea	rdi, [rdi]
	ja	.label_1628
	mov	rax, rsp
	mov	rsp, rsp
	lea	rcx, [rdx + 0xf]
	nop	
	and	rcx, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rsp, rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	jmp	.label_1636
.label_1628:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	call	malloc
	test	rax, rax
	je	.label_1588
	mov	cl, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
.label_1636:
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbx + 8]
	nop	
	jg	.label_1604
	lea	rax, [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1611
.label_1588:
	mov	r14d, 0xc
	test	r13, r13
	mov	rbp, rbp
	je	.label_1591
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	jle	.label_1595
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1632:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_1632
	mov	rsp, rsp
	jmp	.label_1595
.label_1596:
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	r14, rax
	jmp	.label_1610
	nop	dword ptr [rax]
.label_1611:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax]
	nop	
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	nop	
	cmp	edx, 9
	nop	
	je	.label_1576
	cmp	edx, 8
	jne	.label_1587
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r14
	mov	rbp, rbp
	jge	.label_1587
	shl	rax, 4
	nop	
	mov	qword ptr [rbx + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rax + 8], -1
	lea	rdi, [rdi]
	jmp	.label_1587
	nop	dword ptr [rax]
.label_1576:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	lea	rsi, [rsi]
	jge	.label_1587
	lea	rsi, [rsi]
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	mov	rbp, rbp
	jge	.label_1630
	mov	qword ptr [rbx + rax + 8], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	r13, rsi
	mov	rsi, rbx
	mov	rsp, rsp
	jmp	.label_1582
.label_1630:
	test	ecx, 0x80000
	je	.label_1624
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax], -1
	mov	rsp, rsp
	je	.label_1624
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xb0]
.label_1582:
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r13
	lea	rdi, [rdi]
	jmp	.label_1587
.label_1624:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1587:
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbx + 8]
	mov	rsp, rsp
	jne	.label_1578
	cmp	r15, qword ptr [r12 + 0xb0]
	nop	
	jne	.label_1578
	mov	rbp, rbp
	mov	r13, r12
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1584
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_1593
.label_1608:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_1634
	cmp	qword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_1593
.label_1634:
	inc	rax
	lea	rsi, [rsi]
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_1608
.label_1593:
	lea	rdi, [rdi]
	cmp	rax, r14
	je	.label_1612
	mov	rcx, qword ptr [r12]
	nop	
	lea	rax, [rcx - 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_1601
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	mov	rsp, rsp
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_1578:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	lea	rdi, [rdi]
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	mov	rbp, rbp
	test	al, 8
	mov	rsp, rsp
	jne	.label_1598
	nop	
	test	eax, 0x100000
	lea	rdi, [rdi]
	jne	.label_1597
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1602
	mov	rax, qword ptr [rsi + r13]
	nop	
	shl	rax, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx + 0x18]
	nop	
	mov	rdx, r14
	mov	rbp, rbp
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	je	.label_1606
	cmp	r14, -1
	je	.label_1607
	cmp	rdi, -1
	je	.label_1607
	cmp	r14, rdi
	je	.label_1606
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_1607
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rdi]
	lea	rdi, [rsi + r12]
	nop	
	add	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x80], rdx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_1607
.label_1606:
	cmp	r14, rdi
	lea	rsi, [rsi]
	jne	.label_1585
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	mov	r14, rdx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	rdx, r14
	lea	rsi, [rsi]
	test	al, al
	je	.label_1581
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	mov	rsp, rsp
	jle	.label_1585
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	ecx, 0
	nop	
	je	.label_1605
	nop	word ptr cs:[rax + rax]
.label_1623:
	lea	rsi, [rcx + rax]
	mov	rsp, rsp
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1623
.label_1605:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_1585
	mov	rbp, rbp
	cmp	qword ptr [r8 + rcx*8], r14
	mov	rbp, rbp
	je	.label_1586
	jmp	.label_1585
	nop	word ptr cs:[rax + rax]
.label_1598:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_node_set_insert
	nop	
	test	al, al
	je	.label_1581
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	lea	rdi, [rdi]
	test	r9, r9
	jle	.label_1590
	nop	
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	lea	r11, [r10 - 1]
	mov	rbp, rbp
	mov	r14, -1
	xor	r15d, r15d
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	nop	word ptr cs:[rax + rax]
.label_1631:
	nop	
	test	r10, r10
	jle	.label_1625
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_1609
	nop	dword ptr [rax]
.label_1618:
	lea	rdx, [rax + rsi]
	mov	rsp, rsp
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	nop	
	cmovge	rsi, rdx
	cmp	rax, rsi
	nop	
	jb	.label_1618
.label_1609:
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_1625
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1625
	cmp	r14, -1
	lea	rdi, [rdi]
	jne	.label_1614
	mov	r14, rbx
.label_1625:
	inc	r15
	cmp	r15, r9
	jl	.label_1631
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	jmp	.label_1610
	nop	word ptr [rax + rax]
.label_1597:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rdx, eax
.label_1585:
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1577
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x30]
.label_1602:
	add	rsi, r13
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	call	check_node_accept
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	je	.label_1590
.label_1577:
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0xa8]
	nop	
	cmp	qword ptr [rbp - 0xb8], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_1616
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rax + 0xa8]
	lea	rsi, [rsi]
	jg	.label_1607
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1607
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	nop	
	test	rax, rax
	nop	
	jle	.label_1607
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1637
	nop	word ptr cs:[rax + rax]
.label_1619:
	mov	rbp, rbp
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rbx, rdi
	nop	
	cmovge	rax, rsi
	mov	rsp, rsp
	cmp	rbx, rax
	jb	.label_1619
.label_1637:
	cmp	rbx, -1
	lea	rdi, [rdi]
	je	.label_1590
	cmp	qword ptr [rcx + rbx*8], r14
	lea	rdi, [rdi]
	jne	.label_1590
.label_1616:
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_1589
.label_1614:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_1615
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	edx, 0
	je	.label_1622
	nop	word ptr cs:[rax + rax]
.label_1626:
	lea	rsi, [rdx + rcx]
	nop	
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rbp, rbp
	jb	.label_1626
.label_1622:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	and	dl, cl
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	cmovne	rax, rbx
	test	dl, dl
	lea	rsi, [rsi]
	jne	.label_1596
	nop	
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0xa8]
	jne	.label_1599
	lea	rdi, [rdi]
	mov	r14, rax
	jmp	.label_1610
.label_1615:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	nop	
	je	.label_1610
.label_1599:
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1580
	mov	rdi, qword ptr [rcx + 0x10]
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1581
	mov	rax, qword ptr [rbp - 0xb8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa8]
	jmp	.label_1638
.label_1580:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
.label_1638:
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13], rdx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13 + 8], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1581
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	nop	
	jle	.label_1620
	mov	qword ptr [rbx], r15
	nop	
	shl	r15, 3
	mov	rdi, r15
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r12 + r13 + 0x28], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1629
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	jmp	.label_1586
.label_1620:
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_1586:
	mov	rdx, qword ptr [rbp - 0xa8]
.label_1589:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
.label_1610:
	test	r14, r14
	mov	rbp, rbp
	js	.label_1603
	mov	r12, qword ptr [rbp - 0x88]
	nop	
	jmp	.label_1594
.label_1603:
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	cmp	r14, -2
	lea	rsi, [rsi]
	je	.label_1581
	nop	dword ptr [rax]
.label_1590:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_1592
.label_1607:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [r13], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1601
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rbp, rbp
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	nop	
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	nop	
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1594:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jle	.label_1611
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
.label_1604:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_1583
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_1583:
	xor	r14d, r14d
	test	r13, r13
	je	.label_1591
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r13], 0
	jle	.label_1595
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r13]
	mov	rbp, rbp
	jl	.label_1613
.label_1595:
	mov	rdi, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_1621
.label_1592:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	lea	rsi, [rsi]
	jmp	.label_1627
.label_1584:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	free
	xor	r14d, r14d
.label_1627:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_1591
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	jmp	.label_1621
.label_1612:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1635
	nop	
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_1635:
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	lea	rdi, [rdi]
	jle	.label_1579
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1633:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	lea	rdi, [rdi]
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	lea	rsi, [rsi]
	jl	.label_1633
	jmp	.label_1579
.label_1629:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1581:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_1617
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	call	free
.label_1617:
	mov	rsp, rsp
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0xb8]
	nop	
	test	r12, r12
	je	.label_1591
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_1579
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1600:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_1600
.label_1579:
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
.label_1621:
	mov	rsp, rsp
	call	free
.label_1591:
	lea	rdi, [rdi]
	mov	eax, r14d
	mov	rbp, rbp
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1601:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416960

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_1639
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1646
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_1643
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_1645:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_1640
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_1645
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1641
.label_1643:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	mov	rsp, rsp
	bt	rcx, rax
	jb	.label_1641
	xor	edx, edx
	nop	
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1641
	jmp	.label_1642
.label_1640:
	cmp	byte ptr [rbx + 0x8e], 0
	nop	
	jne	.label_1644
.label_1647:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1641
.label_1642:
	mov	edx, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1641
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_1641
.label_1639:
	mov	edx, dword ptr [rbx + 0x70]
	mov	rbp, rbp
	jmp	.label_1641
.label_1646:
	and	edx, 2
	xor	edx, 0xa
.label_1641:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1644:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1641
	test	eax, eax
	jne	.label_1641
	jmp	.label_1647
	nop	
	.section	.text
	.align	16
	#Procedure 0x416a60

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_1648
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_1649
.label_1650:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0xf8]
	nop	
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1648
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1652
	nop	dword ptr [rax]
.label_1649:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rdx, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	lea	rdi, [rdi]
	jne	.label_1651
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_1651
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1651
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_1650
.label_1652:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rsp, rsp
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	nop	
	test	rdx, rdx
	je	.label_1648
	mov	qword ptr [rdx + 8], rbp
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	nop	
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax + rax]
.label_1651:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_1649
.label_1648:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416c00

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x80], rsi
	lea	rdi, [rdi]
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_1653
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x90], r15
	nop	
	mov	r8, qword ptr [r13 + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], r8
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1656:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rax, qword ptr [rsp + 0x80]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], r14
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	shl	r14, 4
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + r14 + 8]
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	jne	.label_1659
	lea	rsi, [rsi]
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1665
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1695
	test	ecx, ecx
	je	.label_1659
.label_1695:
	lea	rsi, [rsi]
	test	bh, 8
	je	.label_1706
	test	ecx, ecx
	nop	
	jne	.label_1659
.label_1706:
	test	bh, 0x20
	je	.label_1657
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	and	ecx, 2
	je	.label_1659
.label_1657:
	test	bpl, bpl
	jns	.label_1665
	and	eax, 8
	je	.label_1659
	nop	dword ptr [rax]
.label_1665:
	mov	rbp, rbp
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x48], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	mov	rbp, rbp
	test	r12, r12
	mov	eax, 0
	jle	.label_1673
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_1685:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	nop	
	lea	rsi, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_1685
.label_1673:
	lea	rsi, [rsi]
	cmp	rax, r12
	jge	.label_1696
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1696
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	nop	
	cmp	qword ptr [rcx + rax*8 + 8], r8
	mov	rsp, rsp
	jne	.label_1696
	lea	rax, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_1655:
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], rcx
	lea	rsi, [rsi]
	je	.label_1690
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	lea	rax, [rax + 0x28]
	mov	rbp, rbp
	jne	.label_1655
.label_1696:
	cmp	qword ptr [r13 + 0xe8], 0
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rsi, [rsi]
	jle	.label_1663
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], r15
	mov	rax, qword ptr [r9]
	mov	rsp, rsp
	mov	r10, qword ptr [rax + r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_1672
	nop	word ptr cs:[rax + rax]
.label_1691:
	mov	rbp, rbp
	mov	rax, qword ptr [r9]
.label_1672:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xf8]
	nop	
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x68], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r10
	mov	rbp, rbp
	jne	.label_1682
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r11
	mov	rsp, rsp
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	jle	.label_1689
	nop	
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_1684
.label_1689:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	nop	
	jmp	.label_1681
.label_1704:
	nop	
	mov	r9, qword ptr [r13 + 0x58]
	mov	rsp, rsp
	cmp	rdi, r9
	nop	
	jg	.label_1700
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], rdi
	nop	
	mov	rdi, r13
	nop	
	mov	rdx, r14
	jg	.label_1701
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	jl	.label_1664
.label_1701:
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x98]
	jg	.label_1660
	cmp	rcx, r9
	lea	rdi, [rdi]
	jge	.label_1660
.label_1664:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1658
.label_1660:
	mov	r14, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	sub	rdx, r8
	mov	rsp, rsp
	mov	r13, rdi
	jle	.label_1680
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	nop	
	call	memset
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [r13 + 0xc0], rax
.label_1680:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_1694
	nop	dword ptr [rax + rax]
.label_1684:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	nop	
	sub	rdi, r15
	mov	rsp, rsp
	add	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_1698
	mov	rbp, rbp
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jg	.label_1704
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x98], rdi
.label_1694:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	nop	
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	jne	.label_1670
.label_1698:
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	nop	
	ja	.label_1658
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	inc	r12
	nop	
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	lea	rsi, [rsi]
	jl	.label_1684
	mov	rbp, rbp
	jmp	.label_1681
.label_1670:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
.label_1700:
	mov	rdx, rbx
	mov	rdi, r15
.label_1681:
	mov	rsp, rsp
	cmp	r12, rax
	lea	rsi, [rsi]
	jge	.label_1697
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_1682
.label_1697:
	test	r12, r12
	setg	al
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	add	rbp, rdi
	lea	rdi, [rdi]
	cmp	rbp, r8
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	jg	.label_1682
	jmp	.label_1666
.label_1675:
	cmp	r14, -1
	je	.label_1668
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r11
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	jne	.label_1671
	nop	
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1658
.label_1671:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	call	check_arrival
	lea	rsi, [rsi]
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	je	.label_1654
	test	r13d, r13d
	jne	.label_1658
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	lea	rdi, [rdi]
	je	.label_1705
.label_1687:
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_1658
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x20], rcx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	nop	
	mov	r8, qword ptr [rsp + 0x88]
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rbp, rbp
	cmp	r13d, 1
	ja	.label_1658
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_1688
.label_1693:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_1682
	mov	qword ptr [rsp + 0x78], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	lea	rbx, [rdx + 1]
	lea	rdi, [rdi]
	mov	r15, rdx
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13d, eax
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_1658
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	mov	rdx, r15
	jmp	.label_1667
.label_1705:
	lea	rsi, [rsi]
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r13d, 0xc
	nop	
	test	rax, rax
	je	.label_1658
	mov	rbp, rbp
	lea	rcx, [rbx + rbx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1687
	nop	dword ptr [rax]
.label_1666:
	cmp	rbp, qword ptr [r14]
	mov	rbp, rbp
	jle	.label_1699
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_1693
	lea	rbx, [rdx + 1]
.label_1667:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa0]
	movzx	eax, byte ptr [rbp + rcx - 1]
	nop	
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_1682
.label_1699:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_1692
	mov	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_1692
	mov	qword ptr [rsp + 0x98], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	lea	rdi, [rdi]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1678:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	nop	
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_1683
	cmp	qword ptr [rdx + rdi], r10
	je	.label_1675
.label_1683:
	nop	
	inc	rsi
	cmp	rsi, rax
	mov	rbp, rbp
	jl	.label_1678
.label_1668:
	lea	rdi, [rdi]
	mov	rbx, r13
.label_1688:
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	jmp	.label_1654
	nop	word ptr cs:[rax + rax]
.label_1692:
	nop	
	mov	r15, r14
	lea	rsi, [rsi]
	mov	rbx, r13
.label_1654:
	lea	rsi, [rsi]
	cmp	rbp, r8
	lea	rsi, [rsi]
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	jl	.label_1666
	nop	dword ptr [rax]
.label_1682:
	inc	r11
	lea	rsi, [rsi]
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_1691
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x90]
	jmp	.label_1663
.label_1690:
	mov	rax, r12
.label_1663:
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	cmp	r12, rax
	jge	.label_1659
	mov	rsp, rsp
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	dword ptr [rax]
.label_1686:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
	nop	
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbp - 0x18], rcx
	lea	rsi, [rsi]
	jne	.label_1661
	cmp	qword ptr [rax + rbp - 0x10], r8
	mov	rsp, rsp
	jne	.label_1661
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_1669
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_1674
.label_1669:
	mov	qword ptr [rsp + 0x48], r12
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rax, [rax*8]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x18]
.label_1674:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0xa0], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	lea	rsi, [r14 - 1]
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	nop	
	mov	rbx, r8
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1703
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
.label_1703:
	mov	qword ptr [rsp + 0x98], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	nop	
	lea	rdi, [rsp + 0x50]
	je	.label_1702
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	nop	
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	call	re_node_set_init_union
	nop	
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_1662
	nop	
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rbx, r12
	mov	rsp, rsp
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1679
	lea	rsi, [rsi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	je	.label_1679
	lea	rdi, [rdi]
	jmp	.label_1677
.label_1702:
	nop	
	lea	rdi, [rsp + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1679
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x90]
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0xa0]
	je	.label_1676
	mov	rsp, rsp
	jmp	.label_1677
.label_1679:
	mov	r15, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
.label_1676:
	nop	
	cmp	rdx, rcx
	jne	.label_1661
	mov	rax, qword ptr [rax + r8*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rax + 0x10], rcx
	mov	rbp, rbp
	jle	.label_1661
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_1677
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	r14, rcx
	mov	rbp, rbp
	call	transit_state_bkref
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r13d, eax
	nop	
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_1677
.label_1661:
	inc	r12
	add	rbp, 0x28
	lea	rdi, [rdi]
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1686
	nop	word ptr [rax + rax]
.label_1659:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_1656
.label_1653:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_1677
.label_1658:
	mov	dword ptr [rsp + 0x14], r13d
.label_1677:
	nop	
	mov	eax, r13d
	add	rsp, 0xa8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1662:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	jmp	.label_1677
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417850

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	lea	rsi, [rsi]
	cmp	rsi, rdx
	mov	rbp, rbp
	ja	.label_1712
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1712
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1719
	mov	rax, qword ptr [r14 + 0x40]
	nop	
	lea	rsi, [rax*8 + 8]
	mov	rbp, rbp
	call	realloc
	mov	rbp, rbp
	mov	rcx, rax
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1712
	mov	qword ptr [r14 + 0xb8], rcx
.label_1719:
	nop	
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1720
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	jl	.label_1711
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1709
	jmp	.label_1712
.label_1720:
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_1717
	mov	rdi, r14
	lea	rsi, [rsi]
	call	build_wcs_buffer
	nop	
	jmp	.label_1709
.label_1711:
	mov	rbx, qword ptr [r14 + 0x30]
	nop	
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_1710
	lea	rsi, [rsi]
	jmp	.label_1714
.label_1707:
	nop	
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_1716
	nop	word ptr cs:[rax + rax]
.label_1714:
	mov	rcx, qword ptr [r14]
	nop	
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1707
.label_1716:
	mov	rbp, rbp
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	nop	
	ja	.label_1713
	nop	
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax + r12*4]
.label_1713:
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rbx], r12b
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, r15
	nop	
	jl	.label_1714
	mov	rsp, rsp
	mov	rbx, r15
.label_1710:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x30], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_1709
.label_1717:
	mov	rdx, qword ptr [r14 + 0x78]
	nop	
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1709
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovg	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1708
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rbp, rbp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1715
	nop	word ptr cs:[rax + rax]
.label_1718:
	mov	rdx, qword ptr [r14 + 0x78]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	nop	
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_1715:
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_1718
	lea	rdi, [rdi]
	mov	rax, rcx
.label_1708:
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_1709:
	lea	rdi, [rdi]
	xor	eax, eax
.label_1712:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417ab0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1727
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1723
.label_1727:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_1729
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1725
	mov	rbp, rbp
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1728
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	nop	
	jmp	.label_1721
.label_1729:
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_1723
.label_1725:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1721:
	nop	
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	lea	rdi, [rdi]
	jne	.label_1723
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1723:
	test	rbx, rbx
	je	.label_1726
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1724
	lea	r12, [rbx + 8]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, r14
	lea	rsi, [rsi]
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	lea	rsi, [rsi]
	xor	eax, eax
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1722
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	lea	rdi, [rdi]
	je	.label_1722
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	transit_state_bkref
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	nop	
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1722
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rsp, rsp
	jmp	.label_1722
.label_1726:
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	jmp	.label_1722
.label_1724:
	mov	rax, rbx
.label_1722:
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1728:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1722
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417c80

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1730
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_1731
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_1731
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1731
	lea	rsi, [rsi]
	add	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rbp], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0xc
	nop	
	je	.label_1736
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_1733
.label_1731:
	test	r13, r13
	jle	.label_1730
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1732
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1735
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_1741
.label_1730:
	test	r15, r15
	je	.label_1732
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1732
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1732
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1735
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_1741
.label_1732:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1741
.label_1738:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_1733:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_1734
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_1739
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_1733
	jmp	.label_1734
.label_1739:
	nop	
	sete	bl
	mov	rbp, rbp
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	nop	
	jl	.label_1738
	jmp	.label_1740
.label_1734:
	mov	rsp, rsp
	mov	rbx, rcx
.label_1740:
	nop	
	sub	r13, rbp
	jle	.label_1737
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	nop	
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_1742
.label_1737:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_1742
	mov	rsp, rsp
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	nop	
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_1742:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_1741:
	xor	ecx, ecx
.label_1736:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_1735:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_1736
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417f20

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	rsp, rsp
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1745
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1747
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	mov	rbp, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1750
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	mov	rbp, rbp
	add	rbp, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1747:
	nop	
	test	r15, r15
	nop	
	jle	.label_1744
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1746
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1746
.label_1744:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_1746:
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8 + 8], r14
	nop	
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	mov	rbp, rbp
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	mov	rbp, rbp
	cmovne	si, dx
	mov	rbp, rbp
	mov	word ptr [rax + rcx*8 + 0x22], si
	nop	
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1748
	mov	dword ptr [r13 + 0xe0], edi
.label_1748:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_1751
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1749
.label_1751:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_1743
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1743
.label_1749:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_1745
.label_1743:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_1745
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_1745:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1750:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_1745
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418180

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x98], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0xb0], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	rsp, rsp
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	mov	rbp, rbp
	jle	.label_1777
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x60], r8
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [r15 + 0x10]
.label_1756:
	mov	qword ptr [rsp + 0x28], r12
	nop	
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	lea	rsi, [rsi]
	jne	.label_1770
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1753
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x14], 0
	nop	
	lea	rsi, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	nop	
	jne	.label_1774
	mov	qword ptr [rsp + 0xb8], r12
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rbp
	jmp	.label_1787
.label_1770:
	mov	rbp, qword ptr [r13 + r14*8]
	lea	rsi, [rsi]
	mov	rcx, r14
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1757
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	nop	
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1761
	mov	dword ptr [rsp + 0x18], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	r8, rcx
	jmp	.label_1764
.label_1757:
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rcx
	nop	
	jmp	.label_1769
.label_1761:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r8, rcx
	nop	
	jle	.label_1783
	mov	r12, r8
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], eax
	mov	qword ptr [rsp + 0x40], rbx
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1753
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	lea	rsi, [rsi]
	shl	r14, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, r12
	jmp	.label_1764
.label_1777:
	mov	rsp, rsp
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	rbp, rbp
	mov	r14d, 0xc
	lea	rsi, [rsi]
	cmp	rsi, rcx
	jle	.label_1759
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r8
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	shr	rax, 0x3d
	mov	rbp, rbp
	jne	.label_1759
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rbp, rbp
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	lea	rsi, [rsi*8]
	lea	rdi, [rdi]
	call	realloc
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_1759
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rax
	mov	rbp, rbp
	lea	rdi, [r13 + rbx*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	call	memset
	nop	
	jmp	.label_1756
.label_1783:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], eax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
.label_1764:
	test	byte ptr [rbp + 0x68], 0x40
	mov	rsp, rsp
	je	.label_1769
.label_1787:
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	je	.label_1772
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	expand_bkref_cache
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	jne	.label_1774
.label_1772:
	mov	rbx, r8
	lea	rdi, [rsp + 0x14]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	nop	
	mov	ecx, dword ptr [rsp + 0x18]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_1784
	mov	eax, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1755
.label_1784:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + r8*8], rbp
.label_1769:
	mov	r15, qword ptr [rsp + 0x98]
	cmp	r8, r15
	jge	.label_1786
	nop	
	lea	rbx, [rsp + 0x40]
	xor	ecx, ecx
.label_1776:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rbp
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [r13 + 0xe0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jg	.label_1754
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], 0
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_1763
	add	rsi, 8
	mov	rdi, r15
	mov	rsp, rsp
	mov	rbx, r8
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1755
.label_1763:
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_1778
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_1779
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1771:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	mov	rsp, rsp
	je	.label_1785
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r8
	mov	rbp, rbp
	mov	r14, r8
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_1760
	mov	rcx, qword ptr [rbx + 0x18]
	nop	
	mov	rdx, r14
	mov	r14, rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + r15*8]
	lea	rdi, [rdi]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x70]
	nop	
	je	.label_1758
	add	rsi, 8
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbx, rcx
	mov	rbp, rbp
	call	re_node_set_merge
	mov	rsp, rsp
	mov	rcx, rbx
	mov	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x94], ebx
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_1775
.label_1758:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_1768
	lea	rdi, [rsp + 0x94]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + rbp*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	mov	rbp, rbp
	jne	.label_1752
	mov	ebx, dword ptr [rsp + 0x94]
	test	ebx, ebx
	je	.label_1752
	jmp	.label_1775
	nop	word ptr cs:[rax + rax]
.label_1760:
	mov	r14, rbx
	test	eax, eax
	jne	.label_1752
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_1785:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_1762
.label_1752:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_1768
.label_1762:
	inc	r12
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jl	.label_1771
	mov	rdi, qword ptr [rsp + 0x80]
	lea	r15, [rsp + 0x40]
.label_1779:
	nop	
	mov	rbx, r8
	mov	rsp, rsp
	call	free
	nop	
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], 0
.label_1778:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	je	.label_1780
	lea	rsi, [rsi]
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1755
	nop	
	mov	rdi, r13
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	rbp, rbp
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	r8, r12
	nop	
	jne	.label_1755
.label_1780:
	mov	rbp, rbp
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rdx, r15
	mov	rbx, r15
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1773
	nop	
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1755
.label_1773:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	cmp	r14, r15
	mov	r8, r14
	jl	.label_1776
	lea	rdi, [rdi]
	jmp	.label_1767
.label_1786:
	mov	rsp, rsp
	mov	r14, r8
.label_1767:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	nop	
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	je	.label_1782
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	jle	.label_1782
	xor	r14d, r14d
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	je	.label_1765
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_1766:
	lea	rsi, [rsi]
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	nop	
	cmp	rdx, rcx
	jb	.label_1766
	lea	rsi, [rsi]
	jmp	.label_1781
.label_1768:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x14], ebx
	mov	rbp, rbp
	jmp	.label_1755
.label_1775:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], ebx
.label_1755:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	call	free
	mov	r14d, dword ptr [rsp + 0x14]
	nop	
	jmp	.label_1759
.label_1765:
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x60]
.label_1781:
	cmp	rdx, -1
	nop	
	je	.label_1782
	cmp	qword ptr [rax + rdx*8], rbp
	nop	
	je	.label_1759
.label_1782:
	lea	rsi, [rsi]
	mov	r14d, 1
.label_1759:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1774:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	jmp	.label_1759
.label_1753:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	r14d, 0xc
	nop	
	jmp	.label_1759
.label_1754:
	mov	r14, r8
	jmp	.label_1767
	nop	
	.section	.text
	.align	16
	#Procedure 0x418b50

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r15d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1789
	test	r12, r12
	mov	rbp, rbp
	jle	.label_1795
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_1790
	nop	dword ptr [rax]
.label_1792:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_1790
	lea	rsi, [rsi]
	jmp	.label_1795
	nop	word ptr cs:[rax + rax]
.label_1793:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_1788
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_1796
	nop	
.label_1790:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	lea	r9, [rdx + rdx*2]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1788
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_1794:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_1791
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1793
.label_1791:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_1794
.label_1788:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1796:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_1792
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_1789
.label_1795:
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	xor	ebx, ebx
.label_1789:
	mov	eax, ebx
	nop	
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418d10

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	rax, qword ptr [r10 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	lea	rdi, [rdi]
	mov	edx, 0
	lea	rdi, [rdi]
	jle	.label_1823
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_1811:
	mov	rbp, rbp
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rsp, rsp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbp
	mov	rbp, rbp
	cmp	rdx, rdi
	jl	.label_1811
.label_1823:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_1808
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_1808
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_1808
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_1827
.label_1821:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_1827:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_1797:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1801
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_1813
	nop	
.label_1819:
	mov	rsp, rsp
	lea	rbp, [rsi + rdi]
	lea	rsi, [rsi]
	shr	rbp, 1
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], rdx
	nop	
	lea	rbx, [rbp + 1]
	lea	rsi, [rsi]
	cmovl	rsi, rbx
	mov	rbp, rbp
	cmovge	rdi, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jb	.label_1819
.label_1813:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_1801
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_1801
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_1807
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1822
	nop	dword ptr [rax + rax]
.label_1825:
	lea	rsi, [rdx + rcx]
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	mov	rsp, rsp
	cmp	rdx, rcx
	jb	.label_1825
.label_1822:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_1806
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_1806
	mov	rbp, r14
	jmp	.label_1800
.label_1807:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1815
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_1812
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1828
.label_1824:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1824
.label_1828:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_1812
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1814
.label_1812:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_1818
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1809
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_1810
.label_1806:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1817
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_1816:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ecx, dword ptr [rsp + 0x38]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_1803
.label_1798:
	mov	r14, rbp
	jmp	.label_1800
.label_1815:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1799
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_1805
.label_1818:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_1810:
	mov	rsp, rsp
	xor	ebx, ebx
.label_1820:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1802
	xor	al, 1
	mov	rsp, rsp
	jne	.label_1802
.label_1805:
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	nop	
	sete	al
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, al
	movzx	ecx, cl
	nop	
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	cmovne	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
.label_1814:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_1800:
	test	ecx, ecx
	je	.label_1801
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_1804
	nop	dword ptr [rax + rax]
.label_1801:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_1797
	nop	
	jmp	.label_1808
.label_1817:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_1816
.label_1803:
	lea	rsi, [rsi]
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r14d
	mov	rsp, rsp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], r14d
	mov	rbp, rbp
	jmp	.label_1798
.label_1802:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], ebx
	nop	
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], ebx
	lea	rsi, [rsi]
	jmp	.label_1826
.label_1799:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], 0xc
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1826:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1800
.label_1809:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_1820
.label_1804:
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_1821
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_1808:
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419320

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	nop	
	jmp	.label_1835
	nop	
.label_1834:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_1835:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1831
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_1837
	nop	dword ptr [rax]
.label_1836:
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rax, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_1836
.label_1837:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_1831
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1838
.label_1831:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_1830
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_1829
.label_1830:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_1833
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1832
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1834
	jmp	.label_1838
	nop	word ptr cs:[rax + rax]
.label_1832:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1833
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_1834
.label_1829:
	cmp	r15d, 9
	jne	.label_1838
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	nop	
	je	.label_1833
.label_1838:
	nop	
	xor	eax, eax
.label_1833:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4194c0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	nop	
	mov	r8, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r8, r8
	je	.label_1855
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_1852
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1841
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_1841
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 2
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 3
	nop	
	je	.label_1845
	nop	
	lea	ebp, [r8 - 4]
	nop	
	shr	ebp, 2
	nop	
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1860:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	mov	rbp, rbp
	paddq	xmm0, xmm2
	nop	
	paddq	xmm1, xmm3
	add	rdi, 4
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	jne	.label_1860
	jmp	.label_1842
.label_1845:
	pxor	xmm1, xmm1
.label_1842:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_1843
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1862:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	lea	rsi, [rsi]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	lea	rdi, [rdi]
	paddq	xmm3, xmm1
	nop	
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	lea	rsi, [rsi]
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rbp, rbp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	nop	
	paddq	xmm4, xmm2
	mov	rbp, rbp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm5
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rax, -0x10
	mov	rsp, rsp
	jne	.label_1862
.label_1843:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1852
.label_1841:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_1848:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_1848
.label_1852:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rax, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1864
	nop	
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1839:
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_1850
	mov	r13, qword ptr [rdx + rbx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_1850
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1850
	nop	
	mov	rdi, r8
.label_1857:
	test	rdi, rdi
	nop	
	jle	.label_1853
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_1857
	nop	dword ptr [rax]
.label_1850:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jl	.label_1839
.label_1864:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	mov	rsp, rsp
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1849
	mov	rbp, rbp
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 8]
	nop	
	test	rbx, rbx
	jle	.label_1854
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1861
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1847
.label_1854:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_1851
	mov	rbp, rbp
	lea	r14, [r12 + 0x10]
.label_1847:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1844:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	nop	
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	lea	rsi, [rsi]
	mov	ecx, ebp
	nop	
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_1840
	movzx	esi, bpl
	mov	rsp, rsp
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	mov	rbp, rbp
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	lea	rsi, [rsi]
	cmp	esi, 0xc
	je	.label_1859
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_1858
	cmp	esi, 2
	lea	rsi, [rsi]
	jne	.label_1846
	or	bl, 0x10
	jmp	.label_1863
.label_1858:
	or	bl, 0x40
	jmp	.label_1863
.label_1846:
	lea	rdi, [rdi]
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1840
.label_1859:
	mov	rbp, rbp
	or	bl, 0x80
.label_1863:
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x68], bl
.label_1840:
	mov	rbp, rbp
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1844
.label_1851:
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	register_state
	test	eax, eax
	mov	rbp, rbp
	je	.label_1853
	mov	rbp, rbp
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_1849
.label_1855:
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
	jmp	.label_1856
.label_1861:
	mov	rdi, r13
	call	free
.label_1849:
	mov	rbp, rbp
	mov	dword ptr [r14], 0xc
.label_1856:
	lea	rsi, [rsi]
	xor	r13d, r13d
.label_1853:
	mov	rbp, rbp
	mov	rax, r13
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x419910

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	nop	
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	lea	rdi, [rdi]
	cmp	r10d, 7
	je	.label_1872
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_1865
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_1865
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_1878:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_1865
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_1878
.label_1865:
	cmp	r10d, 5
	jne	.label_1875
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_1866
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_1868
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_1866
.label_1868:
	test	al, al
	js	.label_1885
	mov	r14d, ebx
	jmp	.label_1866
.label_1875:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_1866
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1866
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1869
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_1869
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_1876
.label_1869:
	cmp	r8d, 1
	jne	.label_1881
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_1876
.label_1881:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_1876:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_1884
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1889:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_1879
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_1889
.label_1884:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_1891
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1877:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_1879
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_1877
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_1891:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_1871
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1890:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_1883
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_1880
.label_1883:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_1890
	jmp	.label_1871
.label_1879:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_1871:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1873
	mov	r14d, ecx
	jmp	.label_1866
.label_1873:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_1866
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_1866
.label_1885:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_1866
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_1866
.label_1872:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_1887
.label_1866:
	mov	rbp, rbp
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_1880:
	nop	
	mov	ecx, ebx
	jmp	.label_1871
.label_1887:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_1866
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_1874
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0xc0
	sbb	eax, eax
	mov	rbp, rbp
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_1866
.label_1874:
	cmp	edi, 0xef
	nop	
	ja	.label_1886
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_1867
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_1866
	jmp	.label_1867
.label_1886:
	cmp	edi, 0xf7
	nop	
	ja	.label_1870
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_1867
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_1866
	jmp	.label_1867
.label_1870:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_1882
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_1867
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_1866
	mov	rsp, rsp
	jmp	.label_1867
.label_1882:
	cmp	edi, 0xfd
	ja	.label_1866
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_1867
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_1866
.label_1867:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_1866
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_1888:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_1866
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_1866
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_1888
	mov	r14d, esi
	jmp	.label_1866
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419d00

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	mov	rbp, rbp
	movzx	ebp, bl
	mov	rbp, rbp
	xor	eax, eax
	nop	
	dec	ebp
	cmp	ebp, 6
	lea	rsi, [rsi]
	ja	.label_1892
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_1898]]
.label_2245:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_1896
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1892
.label_2246:
	mov	rsi, qword ptr [rsi]
	nop	
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	mov	rsp, rsp
	jb	.label_1896
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1892
.label_2248:
	lea	rdi, [rdi]
	test	cl, cl
	js	.label_1900
.label_2247:
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_1895
	movzx	eax, cl
	nop	
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_1896
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1896
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1892
.label_1895:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_1899
.label_1896:
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	mov	al, 1
	lea	rsi, [rsi]
	test	bp, 0x3ff
	lea	rsi, [rsi]
	je	.label_1892
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	edx, eax
	mov	rsp, rsp
	call	re_string_context_at
	nop	
	mov	ecx, eax
	and	ecx, 1
	lea	rsi, [rsi]
	test	bpl, 4
	mov	rsp, rsp
	je	.label_1894
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_1894
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1892
.label_1894:
	lea	rdi, [rdi]
	test	bh, 8
	lea	rdi, [rdi]
	je	.label_1897
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1897
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1892
.label_1900:
	xor	eax, eax
	nop	
	jmp	.label_1892
.label_1897:
	test	bh, 0x20
	mov	rsp, rsp
	je	.label_1893
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 2
	lea	rdi, [rdi]
	jne	.label_1893
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_1892
.label_1899:
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_1892
.label_1893:
	lea	rdi, [rdi]
	and	eax, 8
	nop	
	test	bpl, bpl
	mov	rsp, rsp
	setns	cl
	mov	rsp, rsp
	shr	eax, 3
	mov	rbp, rbp
	or	al, cl
.label_1892:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419e90

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xa8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rsi
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1946
	lea	rax, [r13 + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1920
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0x30], rax
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1916:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	mov	rbp, rbp
	movzx	r10d, al
	cmp	r10d, 1
	mov	rsp, rsp
	jne	.label_1965
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	mov	rbp, rbp
	shl	rdx, cl
	mov	rbp, rbp
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x90], rdx
	jmp	.label_1923
	nop	word ptr cs:[rax + rax]
.label_1965:
	cmp	r10d, 7
	je	.label_1988
	cmp	r10d, 5
	je	.label_1991
	lea	rdi, [rdi]
	cmp	r10d, 3
	nop	
	jne	.label_1908
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	por	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	jmp	.label_1923
.label_1988:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], -1
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rsp, rsp
	mov	rdx, -2
	mov	rsp, rsp
	test	cl, 0x40
	jne	.label_1904
	nop	
	mov	qword ptr [rbp - 0x90], -0x401
	mov	rdx, -0x402
.label_1904:
	nop	
	test	cl, cl
	lea	rsi, [rsi]
	jns	.label_1923
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rdx
	lea	rdi, [rdi]
	jmp	.label_1923
.label_1991:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1929
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	nop	
	movdqu	xmm0, xmmword ptr [rcx]
	nop	
	por	xmm0, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	mov	rbp, rbp
	por	xmm1, xmmword ptr [rbp - 0x80]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm0
	jmp	.label_1930
.label_1929:
	mov	qword ptr [rbp - 0x78], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], -1
	mov	qword ptr [rbp - 0x90], -1
	lea	rsi, [rsi]
	mov	rcx, -1
.label_1930:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	mov	rbp, rbp
	jne	.label_1953
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x90], rcx
.label_1953:
	test	dl, dl
	jns	.label_1923
	lea	rdi, [rdi]
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x90], rcx
	nop	dword ptr [rax]
.label_1923:
	mov	rsp, rsp
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	mov	rbp, rbp
	je	.label_1945
	lea	rdi, [rdi]
	test	cl, 0x20
	mov	rsp, rsp
	je	.label_1969
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	test	dh, 4
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	je	.label_1908
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0x400
.label_1969:
	nop	
	test	cl, cl
	js	.label_1976
	lea	rsi, [rsi]
	test	cl, 4
	je	.label_1978
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_1976
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_1987
	mov	rdx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	movq	r8, xmm1
	mov	rbp, rbp
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	r9, xmm0
	nop	
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	nop	
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	lea	rdi, [rdi]
	pand	xmm1, xmmword ptr [rbp - 0x80]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	pshufd	xmm0, xmm1, 0x4e
	lea	rdi, [rdi]
	movq	rdx, xmm0
	mov	rsp, rsp
	or	rdx, rbx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	jmp	.label_1992
.label_1987:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	lea	rsi, [rsi]
	pand	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x80]
	movq	rdi, xmm0
	mov	rsp, rsp
	or	rdi, rdx
	or	rdi, r8
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_1992:
	test	rdx, rdx
	je	.label_1908
.label_1978:
	lea	rsi, [rsi]
	test	cl, 8
	mov	rbp, rbp
	je	.label_1945
	mov	rbp, rbp
	cmp	r10d, 1
	setne	cl
	nop	
	test	eax, 0x400000
	lea	rsi, [rsi]
	je	.label_1948
	mov	rbp, rbp
	test	cl, cl
	mov	rbp, rbp
	jne	.label_1948
	nop	word ptr cs:[rax + rax]
.label_1976:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	jmp	.label_1908
.label_1948:
	nop	
	cmp	dword ptr [r12 + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1960
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	nop	
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm1
	lea	rsi, [rsi]
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	nop	
	pandn	xmm1, xmmword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movq	rdi, xmm1
	or	rdi, rcx
	mov	rsp, rsp
	or	rdi, rdx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	nop	
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_1962
.label_1960:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	lea	rsi, [rsi]
	pandn	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movq	rdx, xmm0
	or	rdx, rax
	mov	rbp, rbp
	or	rdx, rcx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	lea	rdi, [rdi]
	movq	rax, xmm0
	mov	rsp, rsp
	or	rax, rdx
.label_1962:
	test	rax, rax
	mov	rbp, rbp
	je	.label_1908
	nop	
.label_1945:
	nop	
	test	r14, r14
	nop	
	jle	.label_1961
	mov	qword ptr [rbp - 0x58], rsi
	mov	r13, qword ptr [rbp - 0x30]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, r10d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edx
	nop	word ptr cs:[rax + rax]
.label_1968:
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_1924
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_1925
.label_1924:
	nop	
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], r14
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	r9, r12
	mov	rsp, rsp
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rbp, rbp
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	lea	rdi, [rdi]
	or	rbx, r11
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	mov	rbp, rbp
	je	.label_1931
	lea	rdi, [rdi]
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	lea	rdi, [rdi]
	not	r12
	lea	rdi, [rdi]
	and	r12, rax
	mov	qword ptr [rbp - 0x68], r12
	mov	qword ptr [rbp - 0x90], r12
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	not	rdx
	nop	
	and	rdx, r14
	lea	rdi, [rdi]
	mov	rax, rdx
	or	rax, rbx
	lea	rdi, [rdi]
	not	r14
	lea	rdi, [rdi]
	and	r14, rcx
	mov	qword ptr [rbp - 0x88], r14
	lea	rdi, [rdi]
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	lea	rsi, [rsi]
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x80], r15
	mov	r12, qword ptr [rbp - 0xb8]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rsi
	nop	
	or	rax, rdi
	mov	rbp, rbp
	mov	r12, rsi
	je	.label_1957
	mov	qword ptr [rbp - 0xb8], r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, rsi
	shl	rax, 5
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	nop	
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	nop	
	lea	r12, [rsi + rsi*2]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xe0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1984
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	shl	rdi, 3
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xb8]
	je	.label_1921
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	call	memcpy
	nop	
	jmp	.label_1934
	nop	word ptr cs:[rax + rax]
.label_1931:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	edx, dword ptr [rbp - 0x50]
	jmp	.label_1925
.label_1984:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0xb8]
.label_1934:
	mov	rsp, rsp
	inc	qword ptr [rbp - 0xa0]
.label_1957:
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	al, al
	je	.label_1956
	mov	rsp, rsp
	or	r14, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	or	r15, r12
	or	r15, r14
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	je	.label_1919
.label_1925:
	mov	rsp, rsp
	inc	rdi
	mov	rsp, rsp
	add	r13, 0x20
	mov	rsp, rsp
	add	qword ptr [rbp - 0x58], 0x18
	nop	
	cmp	rdi, r14
	jl	.label_1968
	nop	
	jmp	.label_1919
.label_1961:
	xor	edi, edi
.label_1919:
	cmp	rdi, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jne	.label_1908
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rsi, [rsi]
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x90]
	nop	
	movdqa	xmm1, xmmword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rsp, rsp
	mov	r15, rbx
	lea	rsi, [rsi]
	lea	rbx, [rdi + rdi*2]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r15*8]
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	rbp, rbp
	mov	r12, rdi
	mov	rbp, rbp
	mov	edi, 8
	mov	rsp, rsp
	call	malloc
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1999
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	inc	r12
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_1908:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	jl	.label_1916
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_1920
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	xor	ecx, ecx
	test	rax, rax
	lea	rdi, [rdi]
	mov	edx, 0xc
	mov	rsp, rsp
	cmovne	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_1933
	mov	rbp, rbp
	test	rax, rax
	je	.label_1933
	nop	
	lea	rax, [r14*8]
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1909
	mov	qword ptr [rbp - 0x60], r13
	mov	rsp, rsp
	mov	rax, rsp
	lea	rsi, [rsi]
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	nop	
	mov	dword ptr [rbp - 0xc0], 0
	jmp	.label_1952
.label_1921:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rax], xmm0
.label_1956:
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	r12, qword ptr [rbp - 0xa0]
.label_1983:
	mov	r14, -1
	test	r12, r12
	nop	
	jle	.label_1920
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_1973:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1973
	mov	rsi, r15
.label_1920:
	mov	rdi, rsi
	nop	
	call	free
	test	r14, r14
	mov	rsp, rsp
	je	.label_1974
	xor	eax, eax
	nop	
	jmp	.label_1935
.label_1974:
	mov	edi, 8
	lea	rdi, [rdi]
	mov	esi, 0x100
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	test	rax, rax
	setne	al
	mov	rbp, rbp
	jmp	.label_1935
.label_1946:
	xor	eax, eax
	jmp	.label_1935
.label_1909:
	nop	
	call	malloc
	test	rax, rax
	nop	
	je	.label_1933
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc0], ecx
.label_1952:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], r14
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xb8], rax
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
.label_1911:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], 0
	nop	
	lea	rcx, [r14 + r14*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xe0], r15
	test	rax, rax
	jle	.label_1917
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1981:
	nop	
	mov	rcx, qword ptr [r13 + r15*8]
	nop	
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_1989
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xf8]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0xd4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1906
	mov	rax, qword ptr [rbx]
.label_1989:
	nop	
	inc	r15
	mov	rsp, rsp
	cmp	r15, rax
	nop	
	jl	.label_1981
.label_1917:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rbp - 0xd4]
	mov	rbp, rbp
	mov	rsi, r12
	nop	
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1940
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_1906
.label_1940:
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1966
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_1903
.label_1966:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	lea	rdi, [rbp - 0xd4]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1977
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	test	ecx, ecx
	nop	
	jne	.label_1906
.label_1977:
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	je	.label_1985
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 1
	mov	rbp, rbp
	jg	.label_1990
	mov	rax, qword ptr [rbp - 0xc8]
.label_1990:
	mov	qword ptr [rbp - 0xc8], rax
.label_1985:
	mov	ecx, 2
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1903
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1906
.label_1903:
	mov	rbp, rbp
	mov	rax, r14
	shl	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	or	rdx, qword ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rsi, qword ptr [rbp - 0x98]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	mov	rbp, rbp
	cmp	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	jl	.label_1911
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xc8]
	and	al, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	edi, 8
	jne	.label_1939
	lea	rsi, [rsi]
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_1906
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	je	.label_1950
	mov	rsp, rsp
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	jmp	.label_1926
.label_1964:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	mov	rbp, rbp
	je	.label_1964
	test	qword ptr [r12 + 0xb8], rdx
	nop	
	je	.label_1994
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_1970
.label_1994:
	nop	
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_1970:
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_1972
.label_1926:
	mov	rbx, -1
	lea	rsi, [rsi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_1964
.label_1972:
	mov	rbp, rbp
	add	rdx, rdx
	shr	rdi, 1
	lea	rsi, [rsi]
	inc	r9
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_1926
.label_1950:
	nop	
	mov	rsi, r15
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_1982
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_1910
.label_1905:
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	lea	rdi, [rdi]
	test	qword ptr [rcx], rdx
	nop	
	lea	rcx, [rcx + 0x20]
	je	.label_1905
	test	qword ptr [r12 + 0xc0], rdx
	mov	rsp, rsp
	je	.label_1996
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1998
.label_1996:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_1998:
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_1902
.label_1910:
	lea	rsi, [rsi]
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_1905
.label_1902:
	lea	rsi, [rsi]
	add	rdx, rdx
	lea	rsi, [rsi]
	shr	rsi, 1
	inc	r9
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1910
.label_1982:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xc0]
	je	.label_1915
	nop	
	lea	r8, [r14 + 0x1810]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_1922
.label_1912:
	mov	rbx, rdi
	nop	
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	nop	
	je	.label_1912
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_1932
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1937
.label_1932:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1937:
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_1942
.label_1922:
	mov	rdi, -1
	test	r10b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_1912
.label_1942:
	add	rdx, rdx
	shr	r10, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r10, r10
	nop	
	jne	.label_1922
.label_1915:
	test	r13, r13
	je	.label_1951
	nop	
	lea	r8, [r14 + 0x1818]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0xc0
	jmp	.label_1907
.label_1954:
	nop	
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_1954
	nop	
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_1958
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rsp, rsp
	jmp	.label_1944
.label_1958:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1944:
	mov	rsp, rsp
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	jmp	.label_1997
.label_1907:
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r13b, 1
	nop	
	mov	rcx, r8
	mov	rsp, rsp
	jne	.label_1954
.label_1997:
	add	rdx, rdx
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	test	r13, r13
	nop	
	jne	.label_1907
.label_1951:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	ch, 4
	je	.label_1963
	lea	rdi, [rdi]
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_1979:
	mov	rsp, rsp
	test	byte ptr [rdx + 1], 4
	lea	rdi, [rdi]
	jne	.label_1993
	mov	rbp, rbp
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_1979
	nop	
	jmp	.label_1963
.label_1999:
	mov	rsp, rsp
	lea	rax, [rsi + rbx*8]
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_1983
.label_1933:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1995
.label_1993:
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	test	dl, dl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_1963
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x850], rcx
.label_1963:
	test	r11b, r11b
	nop	
	je	.label_1901
	mov	rdi, r9
	lea	rsi, [rsi]
	call	free
.label_1901:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_1913:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rsp, rsp
	add	rbx, 0x18
	dec	r15
	jne	.label_1913
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	call	free
	nop	
	mov	al, 1
	jmp	.label_1935
.label_1939:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x60], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1906
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x58]
	je	.label_1928
	mov	rbp, rbp
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jmp	.label_1936
.label_1906:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_1943
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_1943:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xe0]
	jle	.label_1949
.label_1995:
	lea	rdi, [rdi]
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1959:
	nop	
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r14
	jne	.label_1959
.label_1949:
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	nop	
	xor	eax, eax
.label_1935:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1975:
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1975
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	nop	
	jmp	.label_1971
.label_1936:
	mov	rbx, -1
	test	dil, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_1975
.label_1971:
	lea	rdi, [rdi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	inc	r9
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_1936
.label_1928:
	mov	rbp, rbp
	mov	rsi, r15
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_1986
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	r9d, 0x40
	lea	rsi, [rsi]
	jmp	.label_1914
.label_1947:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1947
	mov	rsp, rsp
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_2000
.label_1914:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	sil, 1
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_1947
.label_2000:
	add	rdx, rdx
	lea	rdi, [rdi]
	shr	rsi, 1
	mov	rbp, rbp
	inc	r9
	test	rsi, rsi
	jne	.label_1914
.label_1986:
	mov	r9, r10
	nop	
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	je	.label_1918
	lea	r8, [r14 + 0x1810]
	mov	rsp, rsp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	nop	
	jmp	.label_1927
.label_1967:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	nop	
	lea	rdi, [rdi + 0x20]
	nop	
	je	.label_1967
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_1938
.label_1927:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	cl, 1
	mov	rbp, rbp
	mov	r10, rcx
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_1967
.label_1938:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rsp, rsp
	mov	rcx, r10
	shr	rcx, 1
	mov	rbp, rbp
	inc	rsi
	test	rcx, rcx
	jne	.label_1927
.label_1918:
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_1951
	lea	rdi, [rdi]
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	mov	rsp, rsp
	jmp	.label_1955
.label_1941:
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	lea	rdi, [rdi]
	je	.label_1941
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_1980
.label_1955:
	mov	rbp, rbp
	mov	rbx, -1
	test	r13b, 1
	nop	
	mov	rdi, r8
	lea	rsi, [rsi]
	jne	.label_1941
.label_1980:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r13, r13
	nop	
	je	.label_1951
	lea	rsi, [rsi]
	jmp	.label_1955
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b3a0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x58
	nop	
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1365]]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2017
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2005
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_2008:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_2009
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2012
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2013
	nop	dword ptr [rax]
.label_2012:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_2013:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2018
	mov	dword ptr [rsp + 0x4c], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], 0
	lea	r13, [rdx - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2010
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2010
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2019:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	r12, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r12
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	r12, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2007
	mov	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	nop	
	call	check_node_accept_bytes
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_2016
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_2015
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_2003
.label_2016:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2003
	mov	rbp, rbp
	jmp	.label_2007
.label_2015:
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r15
	mov	r15, rsi
	nop	
	je	.label_2007
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2007
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2014
	nop	word ptr [rax + rax]
.label_2011:
	mov	rbp, rbp
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	mov	rbp, rbp
	cmovge	rsi, rbp
	lea	rsi, [rsi]
	cmp	rdi, rsi
	jb	.label_2011
.label_2014:
	mov	rbp, rbp
	test	eax, eax
	je	.label_2007
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_2007
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2003
.label_2007:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	r12, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	check_node_accept
	nop	
	test	al, al
	nop	
	je	.label_2004
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2004
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_2004
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	lea	rsi, [rsi]
	dec	rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	mov	rbp, rbp
	je	.label_2006
.label_2002:
	lea	rdi, [rsi + rax]
	mov	rbp, rbp
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	mov	rbp, rbp
	lea	rbp, [rdi + 1]
	nop	
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	mov	rbp, rbp
	jb	.label_2002
.label_2006:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_2004
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_2004
	nop	
.label_2003:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2001
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	r8, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + r8*8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	r9, r13
	call	check_dst_limits
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2004
.label_2001:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_2005
.label_2004:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_2019
.label_2010:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_2008
	mov	rbp, rbp
	jmp	.label_2005
.label_2009:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_2005
.label_2018:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_2005:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2020:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2017:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_2020
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b810

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	nop	
	mov	r13, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	cmove	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r11 + 8], 0
	lea	rdi, [rdi]
	je	.label_2030
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_2057
	mov	rbp, rbp
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	lea	rsi, [rsi]
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x10]
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_2035
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2043
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	shl	rdi, 3
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	mov	rsp, rsp
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], ecx
	je	.label_2035
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2043
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_2061:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2058
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_2061
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_2043:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp]
	jne	.label_2025
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_2057
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_2083
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2071:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_2022
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_2022
	mov	rdx, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12]
	nop	
	shl	rdx, 4
	mov	rsp, rsp
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x48], r8
	mov	rbp, rbp
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2047
	nop	
	test	rax, rax
	nop	
	jle	.label_2022
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_2021:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_2055
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_2072
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_2077
	mov	rbp, rsi
.label_2077:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_2072
	nop	word ptr cs:[rax + rax]
.label_2055:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2085
	mov	rbp, r14
.label_2085:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_2072:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_2021
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_2028
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2042
.label_2028:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_2022
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2022
	nop	dword ptr [rax]
.label_2075:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2080
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_2036
	nop	dword ptr [rax]
.label_2074:
	mov	rsp, rsp
	lea	rbx, [rax + rdx]
	lea	rdi, [rdi]
	shr	rbx, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	cmovl	rax, rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2074
.label_2036:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2080
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_2040
.label_2080:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_2024
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_2066
	nop	dword ptr [rax]
.label_2060:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	nop	
	cmp	qword ptr [rcx + rdi*8], r14
	nop	
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rbx
	cmovge	rdx, rdi
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2060
.label_2066:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2024
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_2040
.label_2024:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	r15, r13
	nop	
	mov	rdi, r12
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r12, r10
	nop	
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	nop	
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jne	.label_2042
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_2040:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_2075
	jmp	.label_2022
.label_2047:
	nop	
	test	rax, rax
	mov	ebp, 0
	jg	.label_2048
	jmp	.label_2022
	nop	dword ptr [rax]
.label_2065:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_2048:
	mov	rbp, rbp
	mov	rdx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	shl	rdx, 4
	nop	
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	mov	rbp, rbp
	and	edi, ebx
	nop	
	or	edi, 1
	cmp	edi, 9
	jne	.label_2038
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2038
	mov	rbp, rbp
	mov	r14, r15
	mov	r15, r13
	mov	rsp, rsp
	mov	rdi, r12
	mov	r13, r12
	mov	rsp, rsp
	mov	rdx, r11
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbx, r11
	lea	rsi, [rsi]
	call	sub_epsilon_src_nodes
	mov	rbp, rbp
	mov	r10, r12
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2042
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_2038:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_2065
	nop	word ptr cs:[rax + rax]
.label_2022:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2071
.label_2083:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_2057:
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r11
	mov	rbp, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	je	.label_2086
	jmp	.label_2025
.label_2030:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2086:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2041
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_2041
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_2049
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_2079:
	mov	rbp, rbp
	lea	rsi, [rax + r15]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	rdi, rsi
	sar	rdi, 1
	nop	
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	lea	rdi, [rdi]
	cmovge	rax, rdi
	mov	rbp, rbp
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	lea	rsi, [rsi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jl	.label_2079
.label_2049:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_2054
	cmp	r15, -1
	nop	
	je	.label_2054
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2054
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_2027
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	mov	qword ptr [rsp + 0x68], rdx
	nop	
	mov	r10, rbx
	mov	qword ptr [rsp + 0xa8], r10
	mov	rbp, rbp
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	shl	qword ptr [rsp + 0xb0], 3
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_2069:
	mov	qword ptr [rsp + 0x90], r13
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	jne	.label_2033
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_2070
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2073
	nop	
	jmp	.label_2070
.label_2033:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_2070
.label_2073:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_2063:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_2045
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2084
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2034
	nop	dword ptr [rax]
.label_2084:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2034:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2045
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_2045
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_2045
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2053
	nop	dword ptr [rax]
.label_2023:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	nop	
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rdi, [rdi]
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jb	.label_2023
.label_2053:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2062
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2062
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_2081
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2026
.label_2062:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_2026
.label_2081:
	cmp	qword ptr [rsp], 0
	jne	.label_2032
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [r10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r10 + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x30], xmm2
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_2037
	mov	rbp, rbp
	mov	rbp, r10
	mov	qword ptr [rsp + 0x30], rbx
	shl	rbx, 3
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	nop	
	je	.label_2078
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_2032
.label_2037:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_2032:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rbx, r10
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	mov	r12d, 0xc
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	je	.label_2044
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rdx
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	r10, rbp
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2044
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_2051
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_2056
	nop	dword ptr [rax]
.label_2050:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2067
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_2046
	mov	rbp, rbp
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xbc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2044
	mov	rsp, rsp
	lea	rdi, [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0xbc]
	test	r12d, r12d
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp]
	je	.label_2046
	jmp	.label_2044
.label_2067:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2046:
	inc	r13
	cmp	r13, rcx
	jl	.label_2050
.label_2056:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_2051:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_2029
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2068
	nop	
.label_2059:
	mov	rsp, rsp
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jb	.label_2059
.label_2068:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_2082
	nop	
	mov	rdi, -1
.label_2082:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_2029
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_2029
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_2029
	mov	rbp, rbp
	dec	r12
	lea	rdi, [rdx + 1]
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rbx, rdi
	nop	
	cmovge	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, rdx
	cmp	rbx, 4
	mov	rbp, rbp
	jb	.label_2039
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_2039
	mov	qword ptr [rsp + 0xa8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], r11
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	lea	rsi, [rsi]
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	nop	
	shr	r11, 2
	mov	rsp, rsp
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2052
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2052:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_2064
	mov	rbp, rbp
	cmp	r12, rdi
	lea	rsi, [rsi]
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	nop	
	lea	rsi, [rax + r10*8 + 0x38]
.label_2031:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsi - 0x28], xmm1
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	mov	rsp, rsp
	add	rdi, -8
	mov	rbp, rbp
	jne	.label_2031
.label_2064:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_2029
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2039:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_2039
.label_2029:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_2026:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_2045:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_2063
.label_2070:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2069
.label_2044:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2076
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_2076:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_2041
	mov	rsp, rsp
	jmp	.label_2025
.label_2054:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_2041:
	xor	r12d, r12d
.label_2025:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2042:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_2025
.label_2058:
	mov	dword ptr [rsp + 0x10], eax
.label_2035:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_2025
.label_2027:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2041
.label_2078:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_2044
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c660

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2095
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_2095
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_2099
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2095
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_2102
.label_2099:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_2102:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2094:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_2103:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2093:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_2087
	nop	
	jl	.label_2092
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_2093
	nop	
	jmp	.label_2089
	nop	word ptr cs:[rax + rax]
.label_2092:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_2103
	jmp	.label_2089
	nop	dword ptr [rax]
.label_2087:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_2088
	nop	dword ptr [rax + rax]
.label_2097:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2098
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_2097
	mov	rbp, rbp
	jmp	.label_2088
.label_2098:
	test	rsi, rsi
	js	.label_2088
	cmp	rcx, rax
	je	.label_2104
	nop	dword ptr [rax + rax]
.label_2088:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2104:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2089
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_2094
.label_2089:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	jle	.label_2090
	nop	
	test	rax, rax
	js	.label_2090
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2105:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_2100:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_2096
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_2100
	jmp	.label_2101
.label_2096:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_2105
	mov	rbp, rbp
	jmp	.label_2091
.label_2090:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_2101:
	mov	rdx, r10
.label_2091:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_2095:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c8c0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	nop	
	lea	rdx, [r15 + r15*2]
	mov	rsp, rsp
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2117
	lea	rsi, [rsi]
	lea	rax, [rcx + rdx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2123:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_2106
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2106
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	nop	
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	lea	rdi, [rdi]
	jl	.label_2109
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_2109:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_2120
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_2121
	nop	
.label_2128:
	mov	rbp, rbp
	lea	rbx, [rbp + rcx]
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	mov	rbp, rbp
	cmovl	rbp, rax
	nop	
	cmovge	rcx, rbx
	mov	rsp, rsp
	cmp	rbp, rcx
	jb	.label_2128
.label_2121:
	cmp	rbp, -1
	je	.label_2120
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2108
.label_2120:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_2108
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_2118
	nop	word ptr cs:[rax + rax]
.label_2107:
	lea	rax, [rcx + rbp]
	mov	rbp, rbp
	shr	rax, 1
	nop	
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rbp, rbp
	jb	.label_2107
.label_2118:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_2108
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_2130
.label_2108:
	test	r10, r10
	jle	.label_2106
	test	r9, r9
	mov	rsp, rsp
	jle	.label_2110
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_2112
	nop	word ptr cs:[rax + rax]
.label_2119:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	jb	.label_2119
.label_2112:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2110
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_2106
.label_2110:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_2106
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2122
	nop	word ptr cs:[rax + rax]
.label_2113:
	nop	
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	mov	rsp, rsp
	cmovge	rsi, rax
	cmp	rcx, rsi
	mov	rbp, rbp
	jb	.label_2113
.label_2122:
	cmp	rcx, -1
	je	.label_2106
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_2106
.label_2130:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	nop	
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	nop	
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2129
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_2106:
	inc	r13
	cmp	r13, r9
	jl	.label_2123
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_2117
	lea	r8, [rsp + 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r11, [r10 - 1]
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2111:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2125
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_2133
	nop	word ptr cs:[rax + rax]
.label_2114:
	lea	rdi, [rdi]
	lea	rdi, [rcx + rdx]
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rcx, rbx
	lea	rsi, [rsi]
	cmovge	rdx, rdi
	mov	rsp, rsp
	cmp	rcx, rdx
	jb	.label_2114
.label_2133:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2125
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_2126
.label_2125:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2126
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2131
	nop	word ptr cs:[rax + rax]
.label_2116:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	mov	rbp, rbp
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	nop	
	jb	.label_2116
.label_2131:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_2124
	nop	
	mov	rax, -1
.label_2124:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_2126
	cmp	r14, rax
	jle	.label_2126
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2126
	nop	
.label_2115:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2115
	nop	dword ptr [rax + rax]
.label_2126:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_2111
	jmp	.label_2127
.label_2117:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_2127:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2132:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2129:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2132
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41cd60

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	lea	rsi, [rsi]
	mov	r10, rsi
	mov	qword ptr [rsp + 0x18], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	mov	rbp, rbp
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2143
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2140:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	mov	rsp, rsp
	shr	rbx, 0x3f
	add	rbx, rsi
	nop	
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2140
.label_2143:
	nop	
	cmp	r14, rax
	lea	rdi, [rdi]
	jge	.label_2135
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	lea	rdx, [r14 + r14*4]
	nop	
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2141
.label_2135:
	mov	r14, -1
.label_2141:
	nop	
	xor	r12d, r12d
	test	rax, rax
	nop	
	jle	.label_2146
	mov	rbp, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_2138:
	lea	rsi, [rdx + r12]
	lea	rsi, [rsi]
	mov	rbx, rsi
	shr	rbx, 0x3f
	mov	rbp, rbp
	add	rbx, rsi
	sar	rbx, 1
	nop	
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	mov	rsp, rsp
	cmovge	rdx, rbx
	lea	rsi, [rsi]
	lea	rsi, [rbx + 1]
	mov	rbp, rbp
	cmovl	r12, rsi
	lea	rdi, [rdi]
	cmp	r12, rdx
	jl	.label_2138
.label_2146:
	cmp	r12, rax
	jge	.label_2137
	mov	rax, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	lea	rdi, [rdi]
	je	.label_2139
.label_2137:
	nop	
	mov	r12, -1
.label_2139:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2147
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2145:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rsi*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	lea	rdi, [rdi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	mov	rsp, rsp
	cmp	r11, rcx
	mov	rbp, rbp
	jle	.label_2142
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_2134
.label_2142:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_2134
	nop	
	cmp	r11, rcx
	mov	rsp, rsp
	sete	bl
	nop	
	movzx	r8d, bl
	lea	rdi, [rdi]
	cmp	rsi, rcx
	mov	rsp, rsp
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2134
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rdx
	nop	
	mov	r8, r14
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	rbp, r10
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10 + 0x10]
	nop	
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rbp + rbp*4]
	nop	
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax + rax]
.label_2134:
	mov	rbp, rbp
	cmp	r11, r9
	jg	.label_2136
	lea	rdi, [rdi]
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2136
	lea	rsi, [rsi]
	cmp	r11, r9
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rsp, rsp
	sete	bl
	mov	rbp, rbp
	movzx	ebp, bl
	mov	ebx, esi
	mov	rbp, rbp
	cmp	rax, r9
	sete	al
	movzx	esi, al
	mov	rsp, rsp
	add	esi, esi
	mov	rbp, rbp
	xor	r13d, r13d
	or	esi, ebp
	nop	
	je	.label_2136
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r10, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	r13d, eax
	nop	dword ptr [rax + rax]
.label_2136:
	nop	
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2144
	nop	
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2145
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2144
.label_2147:
	xor	eax, eax
.label_2144:
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d0a0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_2156
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3b], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x24], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2160:
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	nop	
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_2148
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_2154
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_2149
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2149
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_2157:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_2152
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_2159
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x28], rax
	je	.label_2152
.label_2159:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_2155
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_2161
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_2150
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_2152
	lea	rdi, [rdi]
	jmp	.label_2158
.label_2161:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x3b], 0
	mov	rsp, rsp
	je	.label_2158
	xor	eax, eax
	cmp	dword ptr [rsp + 0x3c], 0
	nop	
	je	.label_2152
	mov	rbp, rbp
	jmp	.label_2150
.label_2158:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_2152:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_2157
	jmp	.label_2149
	nop	word ptr [rax + rax]
.label_2148:
	cmp	dword ptr [rsp + 0x3c], 0
	je	.label_2149
	xor	eax, eax
	jmp	.label_2153
	nop	dword ptr [rax + rax]
.label_2154:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x24], 0
	nop	
	je	.label_2149
	mov	eax, 0xffffffff
.label_2153:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_2150
.label_2149:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	jl	.label_2160
.label_2156:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_2151
.label_2155:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2151:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_2150:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x41d350

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
	jne	.label_2162
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_2163
	test	cl, cl
	mov	rsp, rsp
	jne	.label_2163
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_2163
.label_2162:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2163
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_2163:
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
	#Procedure 0x41d3e0

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
	je	.label_2165
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2164
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_2166
.label_2164:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_2165
.label_2166:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_2165:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41d430

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
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_2167
	nop	
	mov	rax, rcx
.label_2167:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x41d470

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