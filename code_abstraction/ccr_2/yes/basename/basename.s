	.section	.text
	.align	16
	#Procedure 0x4013d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_14
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
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_12
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_12
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_14:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	.align	16
	#Procedure 0x4015f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_29
	call	setlocale
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_49
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_35
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	.label_30
.label_48:
	mov	rbx, qword ptr [rip + optarg]
	mov	r12b, 1
	nop	dword ptr [rax + rax]
.label_30:
	mov	ecx, ebp
.label_46:
	mov	bpl, cl
	mov	edx, OFFSET FLAT:label_32
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_39
	mov	cl, 1
	cmp	eax, 0x61
	je	.label_42
	cmp	eax, 0x7a
	je	.label_46
	cmp	eax, 0x73
	je	.label_48
	jmp	.label_28
.label_42:
	mov	r12b, 1
	jmp	.label_30
.label_39:
	cmp	eax, -1
	jne	.label_31
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r15d
	jge	.label_33
	test	r12b, r12b
	sete	dl
	lea	ecx, [rax + 2]
	cmp	ecx, r15d
	jge	.label_36
	test	dl, dl
	jne	.label_43
.label_36:
	test	r12b, r12b
	je	.label_47
.label_41:
	xor	edx, edx
	test	bpl, bpl
	setne	dl
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	rsi, rbx
	call	perform_basename
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r15d
	jl	.label_41
	jmp	.label_37
.label_47:
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
	cmp	ecx, r15d
	jne	.label_38
	mov	rsi, qword ptr [r14 + rax*8 + 8]
.label_38:
	xor	edx, edx
	test	bpl, bpl
	setne	dl
	call	perform_basename
.label_37:
	xor	eax, eax
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_31:
	cmp	eax, 0xffffff7d
	je	.label_44
	cmp	eax, 0xffffff7e
	jne	.label_28
	xor	edi, edi
	call	usage
.label_44:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_9
	mov	edx, OFFSET FLAT:label_15
	mov	r8d, OFFSET FLAT:label_40
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
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
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_28:
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017e0

	.globl perform_basename
	.type perform_basename, @function
perform_basename:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edx
	mov	r15, rsi
	call	base_name
	mov	rbx, rax
	mov	rdi, rbx
	call	strip_trailing_slashes
	test	r15, r15
	je	.label_51
	cmp	byte ptr [rbx], 0x2f
	je	.label_51
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	add	rbp, rbx
	mov	rdi, r15
	call	strlen
	add	rax, r15
.label_52:
	cmp	rbp, rbx
	jbe	.label_50
	cmp	rax, r15
	jbe	.label_50
	movzx	ecx, byte ptr [rbp - 1]
	dec	rbp
	cmp	cl, byte ptr [rax - 1]
	lea	rax, [rax - 1]
	je	.label_52
	jmp	.label_51
.label_50:
	cmp	rbp, rbx
	jbe	.label_51
	mov	byte ptr [rbp], 0
.label_51:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	eax, eax
	test	r14b, r14b
	mov	esi, 0xa
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_53
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_54:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_53:
	call	__overflow
	jmp	.label_54
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_61
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_57
	cmp	dword ptr [rbp], 0x20
	jne	.label_57
.label_61:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_59
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_58
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_59:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_58:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401980

	.globl base_name
	.type base_name, @function
base_name:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	last_component
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	je	.label_63
	mov	rdi, rbx
	call	base_len
	xor	esi, esi
	cmp	byte ptr [rbx + rax], 0x2f
	sete	sil
	add	rsi, rax
	mov	rdi, rbx
	jmp	.label_62
.label_63:
	mov	rdi, r14
	call	base_len
	mov	rdi, r14
	mov	rsi, rax
.label_62:
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xstrndup
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019d0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_64:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_64
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_67:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_68:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_67
	test	dl, dl
	je	.label_66
	mov	ecx, esi
	and	cl, 1
	je	.label_65
	xor	esi, esi
.label_65:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_67
.label_66:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_69:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_70
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_69
.label_70:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a60

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_71
	mov	rbx, rax
.label_71:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_75
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_73
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_73
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_77
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_77:
	mov	rbx, r14
.label_73:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_75:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_76
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b40
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
	#Procedure 0x401b80
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
	#Procedure 0x401b90
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
	#Procedure 0x401ba0
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
	#Procedure 0x401be0
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
	#Procedure 0x401c00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_78
	test	rdx, rdx
	je	.label_78
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_78:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
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
	#Procedure 0x401cb0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_166:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_164
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_169]
.label_350:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_173
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_109
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_351:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_187
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_187
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_200:
	cmp	r14, r11
	jae	.label_148
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_148:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_200
.label_187:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_84
.label_343:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_84
.label_346:
	mov	al, 1
.label_344:
	mov	r12b, 1
.label_347:
	test	r12b, 1
	mov	cl, 1
	je	.label_97
	mov	ecx, eax
.label_97:
	mov	al, cl
.label_345:
	test	r12b, 1
	jne	.label_101
	test	r11, r11
	je	.label_102
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_102:
	mov	r14d, 1
	jmp	.label_105
.label_101:
	xor	r14d, r14d
.label_105:
	mov	ecx, OFFSET FLAT:label_109
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_84
.label_348:
	test	r12b, 1
	jne	.label_122
	test	r11, r11
	je	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_124:
	mov	r14d, 1
	jmp	.label_128
.label_349:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_130
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_84
.label_122:
	xor	r14d, r14d
.label_128:
	mov	eax, OFFSET FLAT:label_130
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_84:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_147
	nop	dword ptr [rax]
.label_79:
	inc	rsi
.label_147:
	cmp	rbp, -1
	je	.label_181
	cmp	rsi, rbp
	jne	.label_182
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_188
.label_182:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_193
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_195
	cmp	rbp, -1
	jne	.label_195
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_195:
	cmp	rbx, rbp
	jbe	.label_86
.label_193:
	xor	r8d, r8d
.label_135:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_88
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_90]
.label_363:
	test	rsi, rsi
	jne	.label_81
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_110
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_135
	jmp	.label_127
.label_110:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_135
.label_367:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_136
	test	rsi, rsi
	jne	.label_138
	cmp	rbp, 1
	je	.label_96
	xor	r13d, r13d
	jmp	.label_93
.label_356:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_145
	cmp	byte ptr [rsp + 6], 0
	jne	.label_100
	cmp	r12d, 2
	jne	.label_151
	mov	eax, r9d
	and	al, 1
	jne	.label_151
	cmp	r14, r11
	jae	.label_154
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_154:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_158
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_158:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_184
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_184:
	add	r14, 3
	mov	r9b, 1
.label_151:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_167
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_167:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_170
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_170
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_170
	cmp	r14, r11
	jae	.label_191
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_191:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_113
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_113:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_93
.label_357:
	mov	bl, 0x62
	jmp	.label_137
.label_358:
	mov	cl, 0x74
	jmp	.label_121
.label_359:
	mov	bl, 0x76
	jmp	.label_137
.label_360:
	mov	bl, 0x66
	jmp	.label_137
.label_361:
	mov	cl, 0x72
	jmp	.label_121
.label_364:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_199
	cmp	byte ptr [rsp + 6], 0
	jne	.label_80
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_83
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_83:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_94
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_94:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_98
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_98:
	add	r14, 3
	xor	r9d, r9d
.label_199:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_93
.label_365:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_107
	cmp	r12d, 2
	jne	.label_81
	cmp	byte ptr [rsp + 6], 0
	je	.label_81
	jmp	.label_80
.label_366:
	cmp	r12d, 2
	jne	.label_123
	cmp	byte ptr [rsp + 6], 0
	jne	.label_80
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_85
.label_88:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_132
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_115:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_150
	test	r8b, r8b
	je	.label_150
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_93
.label_136:
	test	rsi, rsi
	jne	.label_106
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_106
.label_96:
	mov	dl, 1
.label_362:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_80
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_93:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_176
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_177
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_176:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_180
.label_177:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_185
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_85
	jmp	.label_198
	nop	dword ptr [rax]
.label_180:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_198
	jmp	.label_85
.label_185:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_198
.label_145:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_79
	xor	r15d, r15d
	jmp	.label_81
.label_123:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_121
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_85
.label_121:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_80
.label_137:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_93
	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_100
	cmp	r12d, 2
	jne	.label_103
	mov	eax, r9d
	and	al, 1
	jne	.label_103
	cmp	r14, r11
	jae	.label_134
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_134:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_141
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_141:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_92
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_92:
	add	r14, 3
	mov	r9b, 1
.label_103:
	cmp	r14, r11
	jae	.label_126
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_126:
	inc	r14
	jmp	.label_112
.label_132:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_133
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_133:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_142:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_157
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_160
	cmp	rbp, -2
	je	.label_163
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_168
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_197:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_104
	bt	rsi, rdx
	jb	.label_179
.label_104:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_197
.label_168:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_146
	xor	r13d, r13d
.label_146:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_142
	jmp	.label_115
.label_170:
	xor	r13d, r13d
	jmp	.label_93
.label_106:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_93
.label_107:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_81
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_81
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_81
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_153
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_172
	cmp	byte ptr [rsp + 6], 0
	jne	.label_111
	cmp	r14, r11
	jae	.label_118
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_118:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_120
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_120:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_108
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_108:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_116
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_116:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_93
.label_81:
	xor	eax, eax
.label_138:
	xor	r13d, r13d
	jmp	.label_93
.label_150:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_82:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_131:
	test	r8b, r8b
	je	.label_139
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_140
	cmp	r14, r11
	jae	.label_143
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_143:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_140
	nop	dword ptr [rax]
.label_139:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_127
	cmp	r12d, 2
	jne	.label_156
	mov	eax, r9d
	and	al, 1
	jne	.label_156
	cmp	r14, r11
	jae	.label_159
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_159:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_161
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_161:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_165:
	add	r14, 3
	mov	r9b, 1
.label_156:
	cmp	r14, r11
	jae	.label_125
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_125:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_174
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_178
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_178:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_140:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_85
	test	r9b, 1
	je	.label_190
	mov	ebx, eax
	and	bl, 1
	jne	.label_190
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_196
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_196:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_155
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_155:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_190:
	cmp	r14, r11
	jae	.label_82
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_85:
	test	r9b, 1
	je	.label_89
	and	al, 1
	jne	.label_89
	cmp	r14, r11
	jae	.label_91
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_91:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	add	r14, 2
	xor	r9d, r9d
.label_89:
	mov	ebx, r15d
.label_112:
	cmp	r14, r11
	jae	.label_99
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_99:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_79
.label_160:
	xor	r13d, r13d
.label_157:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_115
.label_163:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_119
	mov	rsi, qword ptr [rsp + 0x58]
.label_129:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_192
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_129
	xor	r13d, r13d
	jmp	.label_115
.label_119:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_115
.label_192:
	xor	r13d, r13d
	jmp	.label_115
.label_153:
	xor	r13d, r13d
	jmp	.label_93
.label_172:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_93
	nop	dword ptr [rax + rax]
.label_183:
	mov	rcx, rsi
.label_188:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_144
	or	al, dl
	je	.label_149
.label_144:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_152
	or	al, dl
	jne	.label_152
	test	r10b, 1
	jne	.label_162
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_152
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_166
.label_152:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_171
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_175
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_175
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_186:
	cmp	r14, r11
	jae	.label_87
	mov	byte ptr [rcx + r14], al
.label_87:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_186
	jmp	.label_175
.label_100:
	mov	qword ptr [rsp + 0x20], rbp
.label_127:
	mov	rdx, rdi
	jmp	.label_95
.label_80:
	mov	qword ptr [rsp + 0x20], rbp
.label_179:
	mov	rdx, rdi
	mov	eax, 2
.label_189:
	mov	qword ptr [rsp + 0x38], rax
.label_95:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_114:
	mov	r14, rax
.label_117:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_149:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_95
.label_162:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_114
.label_171:
	mov	rcx, qword ptr [rsp + 8]
.label_175:
	cmp	r14, r11
	jae	.label_117
	mov	byte ptr [rcx + r14], 0
	jmp	.label_117
.label_111:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_189
.label_164:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0
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
	#Procedure 0x402b90
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
	je	.label_201
	mov	qword ptr [rax], rbx
.label_201:
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
	#Procedure 0x402c80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_202
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_204:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_204
.label_202:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_205
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_206], OFFSET FLAT:slot0
.label_205:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_203
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_203:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x402d30

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
	js	.label_210
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_213
	cmp	r12d, 0x7fffffff
	je	.label_208
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
	jne	.label_211
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_211:
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
.label_213:
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
	jbe	.label_209
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_212
.label_209:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_207
	mov	rdi, r14
	call	free
.label_207:
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
.label_212:
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
.label_210:
	call	abort
.label_208:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00
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
	#Procedure 0x402f20
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
	#Procedure 0x402f40
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
	je	.label_214
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
.label_214:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0
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
	je	.label_215
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
.label_215:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020
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
	je	.label_216
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
.label_216:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090
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
	je	.label_217
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
.label_217:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
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
	#Procedure 0x403170
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
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
	#Procedure 0x4031e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
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
	#Procedure 0x403240
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
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
	#Procedure 0x4032a0
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
	je	.label_221
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
.label_221:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403340
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_222
	test	rdx, rdx
	je	.label_222
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_222:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033b0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_223
	test	rdx, rdx
	je	.label_223
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_223:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_224
	test	rsi, rsi
	je	.label_224
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_224:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403490
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_218]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_219]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_225
	test	rsi, rsi
	je	.label_225
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
.label_225:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510
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
	#Procedure 0x403530
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

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
	#Procedure 0x403570

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
	jne	.label_227
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_232
	cmp	ecx, 0x55
	jne	.label_226
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_226
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_226
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_226
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_226
	cmp	byte ptr [rax + 5], 0
	jne	.label_226
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_229
	mov	eax, OFFSET FLAT:label_230
	jmp	.label_231
.label_232:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_226
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_226
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_226
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_226
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_226
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_226
	cmp	byte ptr [rax + 7], 0
	je	.label_228
.label_226:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_130
	mov	eax, OFFSET FLAT:label_109
.label_231:
	cmove	rax, rcx
.label_227:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_228:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_233
	mov	eax, OFFSET FLAT:label_234
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403640

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
	je	.label_235
	mov	edx, OFFSET FLAT:label_245
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_251
.label_235:
	mov	edx, OFFSET FLAT:label_252
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_251:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
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
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_240
	jmp	qword ptr [(r12 * 8) + label_241]
.label_384:
	add	rsp, 8
	jmp	.label_239
.label_240:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
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
	jmp	.label_239
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
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
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
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
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
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
	jmp	.label_239
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
	jmp	.label_239
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
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
	jmp	.label_239
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
	jmp	.label_239
.label_393:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
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
	jmp	.label_239
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
.label_239:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_254:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_254
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_259
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_262
.label_259:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_262:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_261
	cmp	r10d, 0x29
	jae	.label_258
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_260
.label_258:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_260:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_261
	cmp	r10d, 0x29
	jae	.label_256
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_257
.label_256:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_257:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_261
	cmp	r10d, 0x29
	jae	.label_267
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_255
.label_267:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_255:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_261
	cmp	r10d, 0x29
	jae	.label_265
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_266
.label_265:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_266:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_261
	cmp	r10d, 0x29
	jae	.label_263
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_264
.label_263:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_264:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_261
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_261
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_261
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_261
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_261:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_268
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_268:
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
	#Procedure 0x403c50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_270
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_273
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_274
	test	rax, rax
	je	.label_273
.label_274:
	pop	rbx
	ret	
.label_273:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_275
	test	rax, rax
	je	.label_276
.label_275:
	pop	rbx
	ret	
.label_276:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_277
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_278
	test	rbx, rbx
	jne	.label_278
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_278:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_279
	test	rax, rax
	je	.label_277
.label_279:
	pop	rbx
	ret	
.label_277:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_280
	test	rbx, rbx
	jne	.label_280
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_280:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_282
	test	rax, rax
	je	.label_281
.label_282:
	pop	rbx
	ret	
.label_281:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403db0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_286
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_288
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_283
.label_286:
	test	rcx, rcx
	jne	.label_289
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_289:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_284
.label_283:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_285
	test	rbx, rbx
	jne	.label_285
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_285:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_287
	test	rax, rax
	je	.label_288
.label_287:
	pop	rbx
	ret	
.label_288:
	call	xalloc_die
.label_284:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e50
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_290
	test	rax, rax
	je	.label_291
.label_290:
	pop	rbx
	ret	
.label_291:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_294
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_296
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_293
	call	free
	xor	eax, eax
	jmp	.label_295
.label_294:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_292
	mov	qword ptr [rsi], rbx
.label_293:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_295
	test	rax, rax
	je	.label_292
.label_295:
	pop	rbx
	ret	
.label_292:
	call	xalloc_die
.label_296:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0
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
	je	.label_298
	test	r14, r14
	je	.label_297
.label_298:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_297:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_299
	call	rpl_calloc
	test	rax, rax
	je	.label_299
	pop	rcx
	ret	
.label_299:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

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
	je	.label_300
	test	r15, r15
	je	.label_301
.label_300:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_301:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
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
	je	.label_303
	test	r15, r15
	je	.label_302
.label_303:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_302:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_305
	pop	rcx
	ret	
.label_305:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_306
	test	rsi, rsi
	mov	ecx, 1
	je	.label_307
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_307
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_306:
	mov	ecx, 1
.label_307:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

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
	je	.label_308
	cmp	r15, -2
	jb	.label_308
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_308
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_308:
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
	#Procedure 0x4040e0

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
	jne	.label_310
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_309
	test	cl, cl
	jne	.label_309
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_309
.label_310:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_309
	call	__errno_location
	mov	dword ptr [rax], 0
.label_309:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404140

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_312
	cmp	byte ptr [rax], 0x43
	jne	.label_314
	cmp	byte ptr [rax + 1], 0
	je	.label_311
.label_314:
	mov	esi, OFFSET FLAT:label_313
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_312
.label_311:
	xor	ebx, ebx
.label_312:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404180

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_29
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_315
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_316
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_318
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_316
.label_318:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_316
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_317
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_317:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_316:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_319
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_319
	test	byte ptr [rbx + 1], 1
	je	.label_319
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_319:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

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
	jne	.label_320
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_320
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_321
.label_320:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_321:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_322
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_322:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4042e0

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
