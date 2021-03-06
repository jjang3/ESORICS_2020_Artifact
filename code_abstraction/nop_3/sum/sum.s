	.section	.text
	.align	32
	#Procedure 0x401700

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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	mov	esi, OFFSET FLAT:.str.25
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
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.6
	mov	ecx, OFFSET FLAT:.str.31
	xor	eax, eax
	call	__printf_chk
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.8
	mov	esi, OFFSET FLAT:.str.9
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.8
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	r12d, OFFSET FLAT:bsd_sum_file
	jmp	.label_10
.label_20:
	mov	r12d, OFFSET FLAT:sysv_sum_file
.label_10:
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x71
	jle	.label_18
	cmp	eax, 0x72
	mov	r12d, OFFSET FLAT:bsd_sum_file
	je	.label_10
	cmp	eax, 0x73
	je	.label_20
	jmp	.label_13
.label_18:
	cmp	eax, -1
	jne	.label_12
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, r15d
	sub	ebp, eax
	jle	.label_14
	mov	bl, 1
	jmp	.label_16
	nop	
.label_19:
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	esi, ebp
	call	r12
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_16:
	cmp	eax, r15d
	jl	.label_19
	jmp	.label_9
.label_14:
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, ebp
	call	r12
	mov	bl, al
.label_9:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_15
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_17
.label_15:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_12:
	cmp	eax, 0xffffff7d
	je	.label_11
	cmp	eax, 0xffffff7e
	jne	.label_13
	xor	edi, edi
	call	usage
.label_11:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	mov	r9d, OFFSET FLAT:.str.13
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_13:
	mov	edi, 1
	call	usage
.label_17:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:.str.14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a90

	.globl bsd_sum_file
	.type bsd_sum_file, @function
bsd_sum_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x298
	mov	r14d, esi
	mov	r15, rdi
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2d
	jne	.label_27
	cmp	byte ptr [r15 + 1], 0
	je	.label_31
.label_27:
	mov	esi, OFFSET FLAT:.str.32
	mov	rdi, r15
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_22
	xor	r13d, r13d
	jmp	.label_23
.label_31:
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	r13b, 1
.label_23:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	xor	r12d, r12d
	xor	ebx, ebx
	jmp	.label_32
	nop	word ptr [rax + rax]
.label_29:
	inc	r12
	mov	ecx, ebx
	shr	ecx, 1
	shl	ebx, 0xf
	or	ebx, ecx
	add	ebx, eax
	movzx	ebx, bx
.label_32:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_28
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	eax, byte ptr [rax]
	jmp	.label_29
.label_28:
	mov	rdi, rbp
	call	__uflow
	cmp	eax, -1
	jne	.label_29
	test	byte ptr [rbp], 0x20
	jne	.label_33
	test	r13b, r13b
	jne	.label_25
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_25
.label_22:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_30
.label_33:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, r14d
	call	error
	test	r13b, r13b
	jne	.label_30
	mov	rdi, rbp
	call	rpl_fclose
	xor	ebx, ebx
	jmp	.label_30
.label_25:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	ecx, 1
	mov	r8d, 0x400
	mov	rdi, r12
	call	human_readable
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.33
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	cmp	r14d, 2
	jl	.label_24
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.34
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_24:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_21
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_26:
	mov	bl, 1
.label_30:
	mov	al, bl
	add	rsp, 0x298
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_21:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_26
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c50

	.globl sysv_sum_file
	.type sysv_sum_file, @function
sysv_sum_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x22a8
	mov	r14d, esi
	mov	r15, rdi
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2d
	jne	.label_48
	cmp	byte ptr [r15 + 1], 0
	je	.label_53
.label_48:
	xor	ebx, ebx
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r15
	call	open
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_34
	jmp	.label_49
.label_53:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	ebp, ebp
	mov	bl, 1
.label_34:
	mov	dword ptr [rsp + 0xc], ebx
	mov	dword ptr [rsp + 8], r14d
	xor	r13d, r13d
	lea	r14, [rsp + 0x2ac]
	lea	r12, [rsp + 0x2a0]
	xor	ebx, ebx
	jmp	.label_37
	nop	dword ptr [rax]
.label_39:
	add	rbx, rax
.label_37:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rsi, r12
	call	safe_read
	cmp	rax, -1
	je	.label_35
	test	rax, rax
	je	.label_50
	cmp	rax, 3
	jbe	.label_51
	mov	rcx, rax
	and	rcx, 0xfffffffffffffffc
	pxor	xmm2, xmm2
	je	.label_51
	movd	xmm0, r13d
	lea	rsi, [rax - 4]
	mov	edx, esi
	shr	edx, 2
	inc	edx
	test	dl, 3
	je	.label_54
	lea	edi, [rax - 4]
	shr	edi, 2
	inc	edi
	and	edi, 3
	neg	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_38:
	movd	xmm1, dword ptr [rsp + rdx + 0x2a0]
	punpcklbw	xmm1, xmm2
	punpcklwd	xmm1, xmm2
	paddd	xmm0, xmm1
	add	rdx, 4
	inc	rdi
	jne	.label_38
	jmp	.label_45
.label_51:
	xor	ecx, ecx
	jmp	.label_46
.label_54:
	xor	edx, edx
.label_45:
	cmp	rsi, 0xc
	jb	.label_42
	mov	rsi, rax
	and	rsi, 0xfffffffffffffffc
	sub	rsi, rdx
	add	rdx, r14
	nop	dword ptr [rax]
.label_40:
	movd	xmm1, dword ptr [rdx - 0xc]
	punpcklbw	xmm1, xmm2
	punpcklwd	xmm1, xmm2
	paddd	xmm1, xmm0
	movd	xmm0, dword ptr [rdx - 8]
	punpcklbw	xmm0, xmm2
	punpcklwd	xmm0, xmm2
	paddd	xmm0, xmm1
	movd	xmm1, dword ptr [rdx - 4]
	punpcklbw	xmm1, xmm2
	punpcklwd	xmm1, xmm2
	paddd	xmm1, xmm0
	movd	xmm0, dword ptr [rdx]
	punpcklbw	xmm0, xmm2
	punpcklwd	xmm0, xmm2
	paddd	xmm0, xmm1
	add	rdx, 0x10
	add	rsi, -0x10
	jne	.label_40
.label_42:
	pshufd	xmm1, xmm0, 0x4e
	paddd	xmm1, xmm0
	pshufd	xmm0, xmm1, 0xe5
	paddd	xmm0, xmm1
	movd	r13d, xmm0
	cmp	rax, rcx
	je	.label_39
	nop	dword ptr [rax]
.label_46:
	lea	rdx, [rsp + rcx + 0x2a0]
	mov	rsi, rax
	sub	rsi, rcx
	nop	
.label_52:
	movzx	ecx, byte ptr [rdx]
	add	r13d, ecx
	inc	rdx
	dec	rsi
	jne	.label_52
	jmp	.label_39
.label_35:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_41
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_41
.label_50:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_43
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_43
.label_49:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_41
.label_43:
	movzx	ebp, r13w
	mov	eax, r13d
	shr	eax, 0x10
	add	ebp, eax
	add	eax, r13d
	movzx	eax, ax
	shr	ebp, 0x10
	add	ebp, eax
	lea	rsi, [rsp + 0x10]
	xor	edx, edx
	mov	ecx, 1
	mov	r8d, 0x200
	mov	rdi, rbx
	call	human_readable
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.38
	xor	eax, eax
	mov	edx, ebp
	call	__printf_chk
	cmp	dword ptr [rsp + 8], 0
	je	.label_47
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.34
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_47:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_44
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_36:
	mov	bl, 1
.label_41:
	mov	al, bl
	add	rsp, 0x22a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_44:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_36
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_58
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_55
	cmp	dword ptr [rbp], 0x20
	jne	.label_55
.label_58:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_57
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_56
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_57:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_56:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_59
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_59:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r12, r8
	mov	r13, rcx
	mov	r14d, edx
	mov	r15, rsi
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r14d
	and	eax, 3
	mov	dword ptr [rsp + 0x44], eax
	mov	eax, r14d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x40], ecx
	call	localeconv
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, OFFSET FLAT:.str_3
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbp
	call	strlen
	mov	rsi, r12
	cmp	rax, 0x11
	mov	eax, OFFSET FLAT:.str_1
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x68], rax
	lea	rbx, [r15 + 0x287]
	cmp	rsi, r13
	jbe	.label_107
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_82
	xor	edx, edx
	mov	rax, rsi
	div	r13
	test	rdx, rdx
	jne	.label_82
	xor	edx, edx
	mov	rax, rsi
	div	r13
	mov	rbp, rsi
	mov	rsi, rax
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	r15, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	cmp	rdx, rsi
	mov	rsi, rbp
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_77
.label_107:
	xor	edx, edx
	mov	rax, r13
	div	rsi
	test	rdx, rdx
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	jne	.label_82
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	rcx, rax
	mov	r15, rcx
	imul	r15, rdi
	xor	edx, edx
	mov	rax, r15
	div	rcx
	cmp	rax, rdi
	mov	ecx, 0
	jne	.label_82
.label_77:
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14d, r8d
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	je	.label_94
	mov	ebx, dword ptr [rsp + 0x40]
	mov	edi, ebx
	xor	r13d, r13d
	cmp	rdi, r15
	jbe	.label_99
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_80
.label_82:
	mov	qword ptr [rsp + 0xe8], rsi
	test	rsi, rsi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_84]]
	mov	qword ptr [rsp + 0xf0], rdi
	test	rdi, rdi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf0]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_84]]
	mov	qword ptr [rsp + 0xf8], r13
	test	r13, r13
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_84]]
	fdivrp	st(2)
	fmulp	st(1)
	test	r8b, 0x10
	jne	.label_105
	mov	ecx, dword ptr [rsp + 0x44]
	cmp	ecx, 1
	je	.label_70
	fld	xword ptr [word ptr [rip + label_73]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x58]
	jbe	.label_74
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	fld	dword ptr [dword ptr [rip + label_83]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7e]
	mov	ax, word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], 0xc7f
	fldcw	word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], ax
	fistp	qword ptr [rsp + 0x88]
	fldcw	word ptr [rsp + 0x7e]
	fnstcw	word ptr [rsp + 0x7c]
	mov	ax, word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], 0xc7f
	fldcw	word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x80]
	fldcw	word ptr [rsp + 0x7c]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0x88]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x80]
	test	ecx, ecx
	sete	cl
	mov	qword ptr [rsp + 0x90], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_84]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0x98], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x98]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_84]]
	jmp	.label_108
.label_105:
	mov	qword ptr [rsp + 0x48], rsi
	mov	eax, dword ptr [rsp + 0x40]
	mov	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	fld1	
	xor	r13d, r13d
	fild	qword ptr [rsp + 0xe0]
	fldz	
	nop	dword ptr [rax + rax]
.label_86:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	fmul	st(2)
	cmp	r13d, 7
	jg	.label_81
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_86
.label_81:
	fstp	st(1)
	fstp	st(0)
	mov	dword ptr [rsp + 0x50], r8d
	fdivp	st(1)
	mov	r14d, dword ptr [rsp + 0x44]
	cmp	r14d, 1
	fld	st(0)
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebp, dword ptr [rsp + 0x64]
	je	.label_87
	fstp	st(0)
	fld	xword ptr [word ptr [rip + label_73]]
	fucomip	st(1)
	fld	st(0)
	jbe	.label_87
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_83]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7a]
	mov	ax, word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], 0xc7f
	fldcw	word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], ax
	fistp	qword ptr [rsp + 0xc8]
	fldcw	word ptr [rsp + 0x7a]
	fnstcw	word ptr [rsp + 0x78]
	mov	ax, word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], 0xc7f
	fldcw	word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xc0]
	fldcw	word ptr [rsp + 0x78]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xc8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xc0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xd0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xd0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_84]]
	fucomip	st(1)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xd8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_84]]
.label_87:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, ebp
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	rdx, qword ptr [rsp + 0x20]
	add	rcx, rdx
	cmp	rcx, rax
	jb	.label_98
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_103
	mov	r14, rdx
	jmp	.label_65
.label_94:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_80
.label_70:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_108
.label_74:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
.label_108:
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	r13d, 0xffffffff
	jmp	.label_65
.label_103:
	movzx	ecx, byte ptr [rax + r15 - 1]
	cmp	ecx, 0x30
	jne	.label_67
.label_98:
	fld	xword ptr [rsp + 0x30]
	fmul	dword ptr [dword ptr [rip + label_68]]
	cmp	r14d, 1
	je	.label_72
	fld	xword ptr [word ptr [rip + label_73]]
	fucomip	st(1)
	jbe	.label_72
	fld	dword ptr [dword ptr [rip + label_83]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x76]
	mov	ax, word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], 0xc7f
	fldcw	word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], ax
	fistp	qword ptr [rsp + 0xa8]
	fldcw	word ptr [rsp + 0x76]
	fnstcw	word ptr [rsp + 0x74]
	mov	ax, word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], 0xc7f
	fldcw	word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xa0]
	fldcw	word ptr [rsp + 0x74]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xa8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xa0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xb0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xb0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_84]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xb8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xb8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_84]]
.label_72:
	fdiv	dword ptr [dword ptr [rip + label_68]]
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	jmp	.label_65
.label_99:
	mov	qword ptr [rsp + 0x48], rsi
	nop	dword ptr [rax + rax]
.label_110:
	xor	edx, edx
	mov	rax, r15
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	esi, ebp
	sar	esi, 1
	xor	edx, edx
	mov	r15, rax
	mov	eax, ecx
	div	ebx
	lea	edx, [rsi + rdx*2]
	cmp	edx, ebx
	mov	ecx, eax
	jae	.label_85
	add	edx, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_91
	nop	
.label_85:
	add	edx, ebp
	cmp	ebx, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_91:
	inc	r13d
	cmp	r13d, 7
	jg	.label_97
	cmp	rdi, r15
	jbe	.label_110
.label_97:
	cmp	r15, 9
	ja	.label_100
	mov	eax, dword ptr [rsp + 0x44]
	cmp	eax, 1
	mov	rdx, qword ptr [rsp + 0x58]
	jne	.label_101
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_104
	jmp	.label_60
.label_67:
	mov	r14, rdx
.label_65:
	mov	qword ptr [rsp + 0x58], r15
	mov	rbp, rbx
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	mov	r12, rbx
	sub	r12, r14
	mov	r8d, dword ptr [rsp + 0x50]
	mov	edi, dword ptr [rsp + 0x64]
	jmp	.label_111
.label_100:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_92
.label_101:
	test	eax, eax
	jne	.label_60
	test	ebp, ebp
	je	.label_60
.label_104:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_60
	inc	r15
	xor	ecx, ecx
	cmp	r15, 9
	mov	ebp, 0
	ja	.label_64
.label_60:
	test	r8b, 8
	je	.label_69
	test	ecx, ecx
	jne	.label_69
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_71
.label_69:
	add	ecx, 0x30
	lea	r12, [rdx + 0x286]
	mov	byte ptr [rdx + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	xor	ebp, ebp
.label_71:
	xor	ecx, ecx
.label_92:
	mov	rsi, qword ptr [rsp + 0x48]
.label_80:
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	je	.label_88
	cmp	eax, 1
	jne	.label_90
	movsxd	rax, ebp
	mov	edx, r15d
	and	edx, 1
	add	rdx, rax
	setne	al
	movzx	eax, al
	add	eax, ecx
	cmp	eax, 5
	jle	.label_90
	jmp	.label_95
.label_88:
	add	ecx, ebp
	jle	.label_90
.label_95:
	inc	r15
	mov	eax, dword ptr [rsp + 0x40]
	cmp	r13d, 7
	jg	.label_90
	test	r14d, r14d
	je	.label_90
	cmp	r15, rax
	jne	.label_90
	mov	qword ptr [rsp + 0x48], rsi
	inc	r13d
	mov	r15d, 1
	test	r8b, 8
	jne	.label_66
	mov	byte ptr [r12 - 1], 0x30
	dec	r12
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	mov	r15d, 1
	jmp	.label_66
.label_90:
	mov	qword ptr [rsp + 0x48], rsi
.label_66:
	mov	rbx, qword ptr [rsp + 0x30]
	mov	edi, dword ptr [rsp + 0x64]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_62:
	mov	rax, r15
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r15d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r15, 9
	mov	r15, rdx
	ja	.label_62
.label_111:
	test	r8b, 4
	jne	.label_76
	mov	r12, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_78
.label_76:
	mov	dword ptr [rsp + 0x44], r13d
	mov	dword ptr [rsp + 0x50], r8d
	mov	qword ptr [rsp + 0x30], rbx
	mov	dword ptr [rsp + 0x64], edi
	mov	rbx, r12
	sub	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x100]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	r15, r14
	neg	r15
	mov	rbp, -1
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_93
.label_112:
	add	r12, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, r14
	call	memcpy
.label_93:
	movzx	eax, byte ptr [r13]
	test	rax, rax
	je	.label_102
	cmp	eax, 0x7f
	cmovae	rax, rbx
	inc	r13
	mov	rbp, rax
.label_102:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	sub	r12, rbp
	mov	rax, rbx
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x100]
	mov	rdi, r12
	mov	rdx, rbp
	call	memcpy
	sub	rbx, rbp
	jne	.label_112
	mov	edi, dword ptr [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8d, dword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	r13d, dword ptr [rsp + 0x44]
.label_78:
	test	r8b, r8b
	jns	.label_61
	test	r13d, r13d
	jns	.label_63
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_63
	mov	eax, dword ptr [rsp + 0x40]
	xor	ecx, ecx
	mov	edx, 1
	nop	dword ptr [rax]
.label_75:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_63
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_75
.label_63:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	je	.label_79
	mov	ecx, r13d
	or	ecx, eax
	je	.label_79
	mov	rbx, qword ptr [rsp + 0x58]
	mov	byte ptr [rbx + 0x287], 0x20
	add	rbx, 0x288
.label_79:
	test	r13d, r13d
	je	.label_89
	test	edi, edi
	jne	.label_106
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_109
.label_106:
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_109:
	mov	byte ptr [rbx], cl
	inc	rbx
.label_89:
	test	eax, eax
	je	.label_61
	test	edi, edi
	je	.label_96
	test	r13d, r13d
	je	.label_96
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_96:
	mov	byte ptr [rbx], 0x42
	inc	rbx
.label_61:
	mov	byte ptr [rbx], 0
	mov	rax, r12
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x30]
	mov	r15d, 0xa
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0
	.globl human_options
	.type human_options, @function
human_options:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	test	rdi, rdi
	jne	.label_118
	mov	edi, OFFSET FLAT:.str.4_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_118
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_115
.label_118:
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	movzx	ebp, al
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_114
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_120:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_117
.label_114:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_121
	mov	dword ptr [r14], 0
.label_117:
	cmp	qword ptr [r15], 0
	jne	.label_113
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	mov	eax, 4
.label_113:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_121:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	movzx	eax, al
	cmp	eax, 0xa
	jb	.label_120
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_122:
	cmp	rax, rbx
	je	.label_116
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	jae	.label_122
	jmp	.label_120
.label_115:
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	xor	ebp, ebp
	jmp	.label_120
.label_116:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	jne	.label_119
	movzx	eax, byte ptr [rax - 2]
	cmp	eax, 0x69
	jne	.label_120
.label_119:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_120
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b50

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_125
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_124
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_124
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_123
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_123:
	mov	rbx, r14
.label_124:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_125:
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
	#Procedure 0x402c00
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
	#Procedure 0x402c40
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
	#Procedure 0x402c50
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
	#Procedure 0x402c60
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
	#Procedure 0x402ca0
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
	#Procedure 0x402cc0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_126
	test	rdx, rdx
	je	.label_126
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_126:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cf0
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
	#Procedure 0x402d70

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
.label_206:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_136
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_143]]
.label_413:
	mov	edi, OFFSET FLAT:.str.11
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
.label_414:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_164
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_164
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_182:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_192
.label_164:
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
	jmp	.label_129
.label_406:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_129
.label_409:
	mov	al, 1
.label_407:
	mov	r12b, 1
.label_410:
	test	r12b, 1
	mov	cl, 1
	je	.label_217
	mov	cl, al
.label_217:
	mov	al, cl
.label_408:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_220
	test	r10, r10
	je	.label_224
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_226
.label_220:
	xor	ecx, ecx
	jmp	.label_226
.label_411:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_242
	test	r10, r10
	je	.label_240
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_142
.label_412:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_129
.label_224:
	mov	ecx, 1
.label_226:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_129
.label_242:
	xor	eax, eax
	jmp	.label_142
.label_240:
	mov	eax, 1
.label_142:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_129:
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
	jmp	.label_168
.label_204:
	inc	rdi
.label_168:
	cmp	rbp, -1
	je	.label_196
	cmp	rdi, rbp
	jne	.label_199
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_196:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_201
.label_199:
	test	r12b, r12b
	je	.label_208
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_210
	cmp	rbp, -1
	jne	.label_210
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
.label_210:
	cmp	rbx, rbp
	jbe	.label_230
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_130
	nop	word ptr [rax + rax]
.label_208:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_130
.label_230:
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
	jne	.label_128
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_130
	jmp	.label_137
.label_128:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_130:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_233
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_160]]
.label_422:
	test	rdi, rdi
	jne	.label_145
	jmp	.label_166
.label_426:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_167
	test	rdi, rdi
	jne	.label_171
	cmp	rbp, 1
	je	.label_166
	xor	r13d, r13d
	jmp	.label_127
.label_415:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_175
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_137
	cmp	r9d, 2
	jne	.label_211
	mov	al, r14b
	and	al, 1
	jne	.label_188
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_191
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_191:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_140
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_140:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_184
.label_416:
	mov	bl, 0x62
	jmp	.label_214
.label_417:
	mov	cl, 0x74
	jmp	.label_216
.label_418:
	mov	bl, 0x76
	jmp	.label_214
.label_419:
	mov	bl, 0x66
	jmp	.label_214
.label_420:
	mov	cl, 0x72
	jmp	.label_216
.label_423:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_222
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_227
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
	jae	.label_247
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_249:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_221
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_222:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_127
.label_424:
	cmp	r9d, 5
	je	.label_225
	cmp	r9d, 2
	jne	.label_145
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_145
	jmp	.label_151
.label_425:
	cmp	r9d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_156
	jmp	.label_185
.label_233:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_161
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
.label_139:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_177
	test	cl, cl
	je	.label_177
	xor	eax, eax
	jmp	.label_127
.label_167:
	test	rdi, rdi
	jne	.label_195
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_195
.label_166:
	mov	dl, 1
.label_421:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_198
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_127
.label_175:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_204
	jmp	.label_145
.label_153:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_216
.label_156:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_133
.label_216:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_212
.label_214:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_127
	jmp	.label_135
.label_161:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_218
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_218:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_165:
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
	je	.label_248
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_251
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_132
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_187
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_234:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_147
	bt	rsi, rdx
	jb	.label_149
.label_147:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_234
.label_187:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_181
	xor	r13d, r13d
.label_181:
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
	je	.label_165
	jmp	.label_139
.label_195:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_127
.label_225:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_145
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_145
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_145
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_189
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_193
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_155
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_134
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_134:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_207
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_207:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_213
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_213:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_179
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_179:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_127
.label_145:
	xor	eax, eax
	xor	r13d, r13d
.label_127:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_236
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_239
	jmp	.label_183
	nop	word ptr [rax + rax]
.label_236:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_183
.label_239:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_244
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_250
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_250:
	mov	bl, r15b
	je	.label_133
	jmp	.label_135
.label_244:
	mov	bl, r15b
.label_135:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_137
	cmp	r9d, 2
	jne	.label_141
	mov	al, r14b
	and	al, 1
	jne	.label_141
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_231
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_231:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_144
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_144:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_158
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_158:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_141:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_169
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_169:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_170
.label_171:
	xor	r13d, r13d
	jmp	.label_127
.label_177:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_180
	nop	word ptr [rax + rax]
.label_173:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_180:
	test	cl, cl
	je	.label_194
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_152
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_197:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_152
	nop	word ptr [rax + rax]
.label_194:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_137
	cmp	r9d, 2
	jne	.label_148
	mov	al, r14b
	and	al, 1
	jne	.label_148
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_215
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_215:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_205
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_205:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_232
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_232:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_148:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_243
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_246
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_238
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_238:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_152:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_133
	test	r14b, 1
	je	.label_150
	mov	bl, al
	and	bl, 1
	jne	.label_150
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_159
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_159:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_162
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_162:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_150:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_173
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_173
	nop	dword ptr [rax]
.label_133:
	test	r14b, 1
	je	.label_190
	and	al, 1
	jne	.label_190
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_245
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_245:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_172
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_172:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_190:
	mov	bl, r15b
.label_170:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_209
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_209:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_204
.label_211:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_184
.label_188:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_184:
	cmp	rcx, r10
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_223:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_229
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_237
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_241
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_178:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_219
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_219:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_127
.label_229:
	xor	r13d, r13d
	jmp	.label_127
.label_237:
	xor	r13d, r13d
	jmp	.label_127
.label_241:
	xor	r13d, r13d
	jmp	.label_127
.label_251:
	xor	r13d, r13d
.label_248:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_139
.label_132:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_146
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_131:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_154
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_131
	xor	r13d, r13d
	jmp	.label_139
.label_146:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_139
.label_154:
	xor	r13d, r13d
	jmp	.label_139
.label_189:
	xor	r13d, r13d
	jmp	.label_127
.label_193:
	xor	r13d, r13d
	jmp	.label_127
	nop	dword ptr [rax]
.label_200:
	mov	r13, rdi
.label_201:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_174
	or	al, dl
	je	.label_138
.label_174:
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
	je	.label_186
	or	al, dl
	jne	.label_186
	test	r8b, 1
	jne	.label_202
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_186
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_206
.label_186:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_163
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_163
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_163
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_228:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_176
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_176:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_228
.label_163:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_235
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_235
.label_198:
	mov	r9d, 2
	jmp	.label_137
.label_149:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_137
.label_138:
	mov	rbp, r13
	jmp	.label_137
.label_212:
	mov	r9d, 2
.label_137:
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
.label_157:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_235:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_202:
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
	jmp	.label_157
.label_227:
	mov	r9d, 2
	jmp	.label_137
.label_185:
	mov	r9d, 2
	jmp	.label_137
.label_151:
	mov	r9d, 2
	jmp	.label_137
.label_155:
	mov	r9d, 5
	jmp	.label_137
.label_136:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f00
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
	#Procedure 0x403fd0
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
	je	.label_252
	mov	qword ptr [rax], rbx
.label_252:
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
	#Procedure 0x4040d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_253
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_256:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_256
.label_253:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_257
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_254]], OFFSET FLAT:slot0
.label_257:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_255
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_255:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404180

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
	js	.label_258
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_261
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_264
.label_261:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_260
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
	jne	.label_259
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_259:
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
.label_264:
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
	ja	.label_262
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_263
	mov	rdi, rbx
	call	free
.label_263:
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
.label_262:
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
.label_258:
	call	abort
.label_260:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404350
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404360
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
	#Procedure 0x404380
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
	#Procedure 0x4043a0

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
	je	.label_265
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
.label_265:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404410
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
	je	.label_266
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
.label_266:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480
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
	je	.label_267
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
.label_267:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0
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
	je	.label_268
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
.label_268:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x4045d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x404640

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x4046a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x404700

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
	je	.label_272
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
.label_272:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_273
	test	rdx, rdx
	je	.label_273
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_273:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404820
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_274
	test	rdx, rdx
	je	.label_274
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_274:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_275
	test	rsi, rsi
	je	.label_275
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_275:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404900
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_269]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_276
	test	rsi, rsi
	je	.label_276
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
.label_276:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
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
	#Procedure 0x4049a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0

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
	#Procedure 0x4049e0

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
	jne	.label_277
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_279
	cmp	ecx, 0x55
	jne	.label_278
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_278
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_278
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_278
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_278
	cmp	byte ptr [rax + 5], 0
	jne	.label_278
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_277
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_277
.label_279:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_278
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_278
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_278
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_278
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_278
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_278
	cmp	byte ptr [rax + 7], 0
	je	.label_280
.label_278:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_277:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_280:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_277
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_277
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0

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
.label_282:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_281
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_282
	cmp	rbx, 0x7ff00001
	jb	.label_281
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_282
.label_281:
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
	#Procedure 0x404b30

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
	je	.label_289
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_288
.label_289:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_288:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_284
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_285]]
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_284:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_283
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_290
.label_451:
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
	jmp	.label_292
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_287
.label_453:
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
.label_287:
	mov	qword ptr [rsp + 0x10], rdi
.label_292:
	mov	qword ptr [rsp + 8], rsi
.label_290:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_291
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_283:
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
	jmp	.label_286
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_286:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_291:
	call	__fprintf_chk
.label_446:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_293:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_293
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_296:
	cmp	r10d, 0x28
	ja	.label_294
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_295
	nop	word ptr cs:[rax + rax]
.label_294:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_295:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_297
	inc	r9
	cmp	r9, 0xa
	jb	.label_296
.label_297:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_298
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_298:
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
.label_302:
	cmp	r8d, 0x28
	ja	.label_299
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_301
	nop	
.label_299:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_301:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_300
	inc	r9
	cmp	r9, 0xa
	jb	.label_302
.label_300:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x405030
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_303
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	je	.label_303
.label_304:
	pop	rbx
	ret	
.label_303:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405070

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_305
	test	rax, rax
	je	.label_306
.label_305:
	pop	rbx
	ret	
.label_306:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_307
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_308
	test	rbx, rbx
	jne	.label_308
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_308:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_307
.label_309:
	pop	rbx
	ret	
.label_307:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_310
	test	rbx, rbx
	jne	.label_310
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_310:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_312
	test	rax, rax
	je	.label_311
.label_312:
	pop	rbx
	ret	
.label_311:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405110
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_317
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_318
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_313
.label_317:
	test	rcx, rcx
	jne	.label_319
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_319:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_315
.label_313:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_314
	test	rbx, rbx
	jne	.label_314
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_314:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_316
	test	rax, rax
	je	.label_318
.label_316:
	pop	rbx
	ret	
.label_318:
	call	xalloc_die
.label_315:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_321
.label_320:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_324
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_326
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_323
	call	free
	xor	eax, eax
	jmp	.label_325
.label_324:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_322
	mov	qword ptr [rsi], rbx
.label_323:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	je	.label_322
.label_325:
	pop	rbx
	ret	
.label_322:
	call	xalloc_die
.label_326:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240
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
	je	.label_328
	test	r14, r14
	je	.label_327
.label_328:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_329
	call	rpl_calloc
	test	rax, rax
	je	.label_329
	pop	rcx
	ret	
.label_329:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0

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
	je	.label_330
	test	r15, r15
	je	.label_331
.label_330:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_331:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
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
	je	.label_333
	test	r15, r15
	je	.label_332
.label_333:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_332:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405340

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405370

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
	jae	.label_357
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_350:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_350
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_334
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
	je	.label_335
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_341
	cmp	eax, 0x22
	jne	.label_334
	mov	dword ptr [rsp + 4], 1
.label_341:
	test	r14, r14
	jne	.label_343
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_334
.label_335:
	test	r14, r14
	je	.label_334
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_334
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_334
.label_343:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_359
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_338
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_337
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_337
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_337
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_354
	cmp	eax, 0x44
	je	.label_354
	cmp	eax, 0x69
	jne	.label_337
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	ecx, 3
	je	.label_360
	mov	ecx, 1
.label_360:
	mov	esi, 0x400
	jmp	.label_337
.label_359:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_342
.label_354:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_337:
	cmp	r13d, 0x59
	jg	.label_348
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_349
	jmp	qword ptr [word ptr [+ (rax * 8) + label_351]]
.label_478:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_352
.label_348:
	cmp	r13d, 0x73
	jg	.label_353
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_355
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_358]]
.label_456:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_352:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_339
.label_349:
	cmp	r13d, 0x54
	je	.label_340
	cmp	r13d, 0x59
	jne	.label_338
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
	jmp	.label_345
.label_353:
	cmp	r13d, 0x74
	je	.label_340
	cmp	r13d, 0x77
	jne	.label_338
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_339
.label_457:
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
	jmp	.label_346
.label_458:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_336
.label_459:
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
	jmp	.label_344
.label_340:
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
	jmp	.label_356
.label_355:
	cmp	r13d, 0x5a
	jne	.label_338
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
.label_345:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_336
.label_338:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_334
.label_479:
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
	jmp	.label_344
.label_480:
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
.label_356:
	or	dl, r10b
.label_346:
	or	dl, bl
.label_344:
	and	dl, 1
	movzx	eax, dl
.label_336:
	mov	rbp, rsi
.label_339:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_347
	or	eax, 2
.label_347:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_342:
	mov	qword ptr [rax], rbp
.label_334:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_357:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_361
	test	rsi, rsi
	mov	ecx, 1
	je	.label_362
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_362
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_361:
	mov	ecx, 1
.label_362:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_363
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_365
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_363
.label_365:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_363
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_364
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_364:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_363:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405af0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_366
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_366
	test	byte ptr [rbx + 1], 1
	je	.label_366
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_366:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b30

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
	jne	.label_367
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_367
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_368
.label_367:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_368:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_369
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_369:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ba0

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
	je	.label_370
	cmp	r15, -2
	jb	.label_370
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_370
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_370:
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
	#Procedure 0x405c00

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10

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
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_374
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_371:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_372
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_376
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_377
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_373
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_372
.label_373:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_372
.label_377:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_372:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_371
	jmp	.label_375
.label_374:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_375:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_376:
	mov	rax, rbp
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
	#Procedure 0x405d10
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
	je	.label_378
	mov	esi, OFFSET FLAT:.str.1_5
	jmp	.label_379
.label_378:
	mov	esi, OFFSET FLAT:.str_7
.label_379:
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
	#Procedure 0x405d80

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
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_384
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_381:
	test	r15, r15
	je	.label_383
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_380
.label_383:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_382
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_2
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_382:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_381
.label_384:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_385
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
.label_385:
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
	#Procedure 0x405eb0
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
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_386
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_387
	mov	esi, OFFSET FLAT:.str.1_5
	jmp	.label_388
.label_387:
	mov	esi, OFFSET FLAT:.str_7
.label_388:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
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
.label_386:
	add	rsp, 0x18
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
	#Procedure 0x405f70
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
	je	.label_389
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_389
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_390
.label_389:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fe0

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
	jne	.label_392
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_391
	test	cl, cl
	jne	.label_391
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_391
.label_392:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_391
	call	__errno_location
	mov	dword ptr [rax], 0
.label_391:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406040

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_394
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_395
	cmp	byte ptr [rax + 1], 0
	je	.label_393
.label_395:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_394
.label_393:
	xor	ebx, ebx
.label_394:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406080

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_396
	mov	rax, rcx
.label_396:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x4060b0

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