	.section	.text
	.align	16
	#Procedure 0x401570

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_18
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_23:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	#Procedure 0x401730

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
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_40
	call	setlocale
	mov	edi, OFFSET FLAT:label_45
	mov	esi, OFFSET FLAT:label_46
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_45
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + remove_empty_parents],  0
	jmp	.label_39
.label_35:
	mov	byte ptr [rip + verbose],  1
	nop	dword ptr [rax + rax]
.label_39:
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x6f
	jle	.label_31
	cmp	eax, 0x80
	je	.label_33
	cmp	eax, 0x76
	je	.label_35
	cmp	eax, 0x70
	jne	.label_37
	mov	byte ptr [rip + remove_empty_parents],  1
	jmp	.label_39
.label_33:
	mov	byte ptr [rip + ignore_fail_on_non_empty],  1
	jmp	.label_39
.label_31:
	cmp	eax, -1
	jne	.label_44
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r15d
	je	.label_47
	mov	r13b, 1
	jge	.label_49
	mov	r13b, 1
	nop	dword ptr [rax + rax]
.label_38:
	cdqe	
	mov	rbx, qword ptr [r14 + rax*8]
	cmp	byte ptr [rip + verbose],  1
	jne	.label_26
	mov	r12, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rcx
	call	prog_fprintf
.label_26:
	mov	rdi, rbx
	call	rmdir
	test	eax, eax
	je	.label_43
	call	__errno_location
	mov	rbp, rax
	mov	edi, dword ptr [rbp]
	mov	rsi, rbx
	call	ignorable_failure
	test	al, al
	jne	.label_32
	mov	r12d, dword ptr [rbp]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	call	error
	jmp	.label_32
.label_43:
	cmp	byte ptr [rip + remove_empty_parents],  1
	jne	.label_32
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	r12b, 1
	nop	dword ptr [rax + rax]
.label_41:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	mov	ecx, r12d
	jne	.label_34
	jmp	.label_48
	nop	word ptr [rax + rax]
.label_42:
	dec	rax
.label_34:
	cmp	rax, rbx
	jbe	.label_52
	cmp	byte ptr [rax], 0x2f
	je	.label_42
.label_52:
	mov	byte ptr [rax + 1], 0
	cmp	byte ptr [rip + verbose],  1
	jne	.label_53
	mov	r12, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rcx
	call	prog_fprintf
.label_53:
	mov	rdi, rbx
	call	rmdir
	test	eax, eax
	sete	r12b
	je	.label_41
	call	__errno_location
	mov	rbp, rax
	mov	edi, dword ptr [rbp]
	mov	rsi, rbx
	call	ignorable_failure
	mov	cl, 1
	test	al, al
	jne	.label_48
	mov	eax, dword ptr [rbp]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 4]
	mov	rdx, rbp
	call	error
	mov	ecx, r12d
.label_48:
	and	r13b, cl
	and	r13b, 1
	nop	word ptr [rax + rax]
.label_32:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r15d
	jl	.label_38
.label_49:
	not	r13b
	and	r13b, 1
	movzx	eax, r13b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_44:
	cmp	eax, 0xffffff7d
	je	.label_30
	cmp	eax, 0xffffff7e
	jne	.label_37
	xor	edi, edi
	call	usage
.label_30:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_14
	mov	edx, OFFSET FLAT:label_16
	mov	r8d, OFFSET FLAT:label_27
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
.label_37:
	mov	edi, 1
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70

	.globl ignorable_failure
	.type ignorable_failure, @function
ignorable_failure:
	push	rbp
	push	r14
	push	rbx
	cmp	byte ptr [rip + ignore_fail_on_non_empty],  1
	jne	.label_56
	mov	bl, 1
	cmp	edi, 0x11
	je	.label_54
	cmp	edi, 0x27
	je	.label_54
	dec	edi
	cmp	edi, 0x1d
	ja	.label_56
	mov	eax, 0x20019001
	xor	ebx, ebx
	bt	eax, edi
	jae	.label_54
	mov	edi, 0xffffff9c
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_54
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_55
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
.label_57:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_58
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_59
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_57
	test	cl, cl
	je	.label_57
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	jne	.label_56
	jmp	.label_60
.label_55:
	mov	edi, ebp
	call	close
	jmp	.label_56
.label_58:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_60:
	test	r14d, r14d
	sete	bl
	jmp	.label_54
.label_59:
	mov	rdi, rbx
	call	closedir
.label_56:
	xor	ebx, ebx
.label_54:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x401b60

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_61
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_61:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdi, qword ptr [rip + program_name]
	mov	rsi, rbx
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:label_64
	mov	rsi, rbx
	call	fputs_unlocked
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r14
	call	__vfprintf_chk
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x30]
	jae	.label_63
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_62:
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	ret	
.label_63:
	mov	esi, 0xa
	mov	rdi, rbx
	call	__overflow
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_71
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_68
	cmp	dword ptr [rbp], 0x20
	jne	.label_68
.label_71:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_67
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_65
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_67:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_65:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d30

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_72
	mov	rbx, rax
.label_72:
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
	#Procedure 0x401d60

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_73
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_75
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_75
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_78
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_78:
	mov	rbx, r14
.label_75:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_73:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_74
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10
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
	#Procedure 0x401e50
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
	#Procedure 0x401e60
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
	#Procedure 0x401e70
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
	#Procedure 0x401eb0
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
	#Procedure 0x401ed0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_79
	test	rdx, rdx
	je	.label_79
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_79:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f00
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
	#Procedure 0x401f80

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
.label_93:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_91
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_95]
.label_362:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_101
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_107
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_363:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_121
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_121
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_137:
	cmp	r14, r11
	jae	.label_116
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_116:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_137
.label_121:
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
	jmp	.label_150
.label_355:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_150
.label_358:
	mov	al, 1
.label_356:
	mov	r12b, 1
.label_359:
	test	r12b, 1
	mov	cl, 1
	je	.label_156
	mov	ecx, eax
.label_156:
	mov	al, cl
.label_357:
	test	r12b, 1
	jne	.label_158
	test	r11, r11
	je	.label_159
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_159:
	mov	r14d, 1
	jmp	.label_162
.label_158:
	xor	r14d, r14d
.label_162:
	mov	ecx, OFFSET FLAT:label_107
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_150
.label_360:
	test	r12b, 1
	jne	.label_172
	test	r11, r11
	je	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_175:
	mov	r14d, 1
	jmp	.label_179
.label_361:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_182
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_150
.label_172:
	xor	r14d, r14d
.label_179:
	mov	eax, OFFSET FLAT:label_182
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_150:
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
	jmp	.label_197
	nop	dword ptr [rax]
.label_138:
	inc	rsi
.label_197:
	cmp	rbp, -1
	je	.label_112
	cmp	rsi, rbp
	jne	.label_114
	jmp	.label_115
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_123
.label_114:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_128
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_100
	cmp	rbp, -1
	jne	.label_100
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
.label_100:
	cmp	rbx, rbp
	jbe	.label_145
.label_128:
	xor	r8d, r8d
.label_92:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_191
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_148]
.label_423:
	test	rsi, rsi
	jne	.label_139
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_145:
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
	jne	.label_166
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_92
	jmp	.label_178
.label_166:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_92
.label_427:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_187
	test	rsi, rsi
	jne	.label_189
	cmp	rbp, 1
	je	.label_153
	xor	r13d, r13d
	jmp	.label_90
.label_416:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_195
	cmp	byte ptr [rsp + 6], 0
	jne	.label_140
	cmp	r12d, 2
	jne	.label_199
	mov	eax, r9d
	and	al, 1
	jne	.label_199
	cmp	r14, r11
	jae	.label_200
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_81
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_81:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_124
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_124:
	add	r14, 3
	mov	r9b, 1
.label_199:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_94
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_94:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_97
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_97
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_97
	cmp	r14, r11
	jae	.label_130
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_130:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_89
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_89:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_90
.label_417:
	mov	bl, 0x62
	jmp	.label_132
.label_418:
	mov	cl, 0x74
	jmp	.label_134
.label_419:
	mov	bl, 0x76
	jmp	.label_132
.label_420:
	mov	bl, 0x66
	jmp	.label_132
.label_421:
	mov	cl, 0x72
	jmp	.label_134
.label_424:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_136
	cmp	byte ptr [rsp + 6], 0
	jne	.label_98
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
	jae	.label_142
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_142:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_151
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_151:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_157
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_157:
	add	r14, 3
	xor	r9d, r9d
.label_136:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_90
.label_425:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_164
	cmp	r12d, 2
	jne	.label_139
	cmp	byte ptr [rsp + 6], 0
	je	.label_139
	jmp	.label_98
.label_426:
	cmp	r12d, 2
	jne	.label_173
	cmp	byte ptr [rsp + 6], 0
	jne	.label_98
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_129
.label_191:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_185
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
.label_135:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_86
	test	r8b, r8b
	je	.label_86
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_90
.label_187:
	test	rsi, rsi
	jne	.label_154
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_154
.label_153:
	mov	dl, 1
.label_422:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_98
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_90:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_106
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_109
	jmp	.label_111
	nop	word ptr cs:[rax + rax]
.label_106:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_111
.label_109:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_119
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_129
	jmp	.label_133
	nop	dword ptr [rax]
.label_111:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_133
	jmp	.label_129
.label_119:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_133
.label_195:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_138
	xor	r15d, r15d
	jmp	.label_139
.label_173:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_134
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_129
.label_134:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_98
.label_132:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_90
	nop	word ptr cs:[rax + rax]
.label_133:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_140
	cmp	r12d, 2
	jne	.label_161
	mov	eax, r9d
	and	al, 1
	jne	.label_161
	cmp	r14, r11
	jae	.label_188
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_167:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_113
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_113:
	add	r14, 3
	mov	r9b, 1
.label_161:
	cmp	r14, r11
	jae	.label_177
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_177:
	inc	r14
	jmp	.label_183
.label_185:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_186
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_186:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_126:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_201
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_84
	cmp	rbp, -2
	je	.label_88
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_196
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_152:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_96
	bt	rsi, rdx
	jb	.label_110
.label_96:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_152
.label_196:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_174
	xor	r13d, r13d
.label_174:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_126
	jmp	.label_135
.label_97:
	xor	r13d, r13d
	jmp	.label_90
.label_154:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_90
.label_164:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_139
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_139
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_139
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_80
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_105
	cmp	byte ptr [rsp + 6], 0
	jne	.label_143
	cmp	r14, r11
	jae	.label_163
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_163:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_176
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_176:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_165
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_165:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_104
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_104:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_90
.label_139:
	xor	eax, eax
.label_189:
	xor	r13d, r13d
	jmp	.label_90
.label_86:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_118:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_184:
	test	r8b, r8b
	je	.label_190
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_192
	cmp	r14, r11
	jae	.label_193
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_193:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_192
	nop	dword ptr [rax]
.label_190:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_178
	cmp	r12d, 2
	jne	.label_82
	mov	eax, r9d
	and	al, 1
	jne	.label_82
	cmp	r14, r11
	jae	.label_83
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_83:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_122
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_122:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_146
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_146:
	add	r14, 3
	mov	r9b, 1
.label_82:
	cmp	r14, r11
	jae	.label_181
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_181:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_102
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_102:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_117
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_117:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_192:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_129
	test	r9b, 1
	je	.label_155
	mov	ebx, eax
	and	bl, 1
	jne	.label_155
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_131
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_131:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_144
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_144:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_155:
	cmp	r14, r11
	jae	.label_118
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
.label_129:
	test	r9b, 1
	je	.label_147
	and	al, 1
	jne	.label_147
	cmp	r14, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_149:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_125
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_125:
	add	r14, 2
	xor	r9d, r9d
.label_147:
	mov	ebx, r15d
.label_183:
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_160:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_138
.label_84:
	xor	r13d, r13d
.label_201:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_135
.label_88:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_171
	mov	rsi, qword ptr [rsp + 0x58]
.label_180:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_169
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_180
	xor	r13d, r13d
	jmp	.label_135
.label_171:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_135
.label_169:
	xor	r13d, r13d
	jmp	.label_135
.label_80:
	xor	r13d, r13d
	jmp	.label_90
.label_105:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_90
	nop	dword ptr [rax + rax]
.label_115:
	mov	rcx, rsi
.label_123:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_194
	or	al, dl
	je	.label_198
.label_194:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_85
	or	al, dl
	jne	.label_85
	test	r10b, 1
	jne	.label_87
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_85
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_93
.label_85:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_99
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_103
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_103
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_120:
	cmp	r14, r11
	jae	.label_108
	mov	byte ptr [rcx + r14], al
.label_108:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_120
	jmp	.label_103
.label_140:
	mov	qword ptr [rsp + 0x20], rbp
.label_178:
	mov	rdx, rdi
	jmp	.label_127
.label_98:
	mov	qword ptr [rsp + 0x20], rbp
.label_110:
	mov	rdx, rdi
	mov	eax, 2
.label_141:
	mov	qword ptr [rsp + 0x38], rax
.label_127:
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
.label_168:
	mov	r14, rax
.label_170:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_198:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_127
.label_87:
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
	jmp	.label_168
.label_99:
	mov	rcx, qword ptr [rsp + 8]
.label_103:
	cmp	r14, r11
	jae	.label_170
	mov	byte ptr [rcx + r14], 0
	jmp	.label_170
.label_143:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_141
.label_91:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90
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
	#Procedure 0x402e60
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
	je	.label_202
	mov	qword ptr [rax], rbx
.label_202:
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
	#Procedure 0x402f50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_203
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_206:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_206
.label_203:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_207
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_205], OFFSET FLAT:slot0
.label_207:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_204
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_204:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403000

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
	js	.label_208
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_211
	cmp	r12d, 0x7fffffff
	je	.label_213
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
	jne	.label_209
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_209:
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
.label_211:
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
	jbe	.label_214
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_210
.label_214:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_212
	mov	rdi, r14
	call	free
.label_212:
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
.label_210:
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
.label_208:
	call	abort
.label_213:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4031c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0
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
	#Procedure 0x4031f0
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
	#Procedure 0x403210
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
	je	.label_215
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
.label_215:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403280
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
	je	.label_216
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
.label_216:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

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
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_217:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403360
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
	je	.label_218
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
.label_218:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
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
	#Procedure 0x403440
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
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
	#Procedure 0x4034b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
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
	#Procedure 0x403510
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
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
	#Procedure 0x403570
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
	je	.label_222
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
.label_222:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403610
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
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
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_223:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403680
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_224
	test	rdx, rdx
	je	.label_224
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_224:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
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
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_225:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403760
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_219]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_220]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_221]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_226
	test	rsi, rsi
	je	.label_226
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
.label_226:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037e0
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
	#Procedure 0x403800
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820
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
	#Procedure 0x403840

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
	jne	.label_228
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_233
	cmp	ecx, 0x55
	jne	.label_227
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_227
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_227
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_227
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_227
	cmp	byte ptr [rax + 5], 0
	jne	.label_227
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_230
	mov	eax, OFFSET FLAT:label_231
	jmp	.label_232
.label_233:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_227
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_227
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_227
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_227
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_227
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_227
	cmp	byte ptr [rax + 7], 0
	je	.label_229
.label_227:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_182
	mov	eax, OFFSET FLAT:label_107
.label_232:
	cmove	rax, rcx
.label_228:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_229:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_234
	mov	eax, OFFSET FLAT:label_235
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910

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
	je	.label_245
	mov	edx, OFFSET FLAT:label_251
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_238
.label_245:
	mov	edx, OFFSET FLAT:label_240
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_238:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
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
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_246
	jmp	qword ptr [(r12 * 8) + label_247]
.label_402:
	add	rsp, 8
	jmp	.label_239
.label_246:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
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
.label_403:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
.label_405:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
.label_406:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
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
.label_407:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_239
.label_408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
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
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
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
.label_411:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
.label_410:
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
	#Procedure 0x403c70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_255:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_255
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_266
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_268
.label_266:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_268:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_265
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_267
.label_265:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_267:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_257
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
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_261
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_262
.label_261:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_262:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_259
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_260
.label_259:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_260:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_256
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_258
.label_256:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_258:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_257:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_269
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_269:
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
	#Procedure 0x403f20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_271
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_274
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_275
	test	rax, rax
	je	.label_274
.label_275:
	pop	rbx
	ret	
.label_274:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_276
	test	rax, rax
	je	.label_277
.label_276:
	pop	rbx
	ret	
.label_277:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404000
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_278
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_279
	test	rbx, rbx
	jne	.label_279
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_279:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_280
	test	rax, rax
	je	.label_278
.label_280:
	pop	rbx
	ret	
.label_278:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_281
	test	rbx, rbx
	jne	.label_281
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_281:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_283
	test	rax, rax
	je	.label_282
.label_283:
	pop	rbx
	ret	
.label_282:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404080
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_284
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_287
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_285
.label_284:
	test	rcx, rcx
	jne	.label_290
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_290:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_286
.label_285:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_289
	test	rbx, rbx
	jne	.label_289
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_289:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_288
	test	rax, rax
	je	.label_287
.label_288:
	pop	rbx
	ret	
.label_287:
	call	xalloc_die
.label_286:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404120
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_291
	test	rax, rax
	je	.label_292
.label_291:
	pop	rbx
	ret	
.label_292:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404140
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_293
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_296
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_297
	call	free
	xor	eax, eax
	jmp	.label_294
.label_293:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_295
	mov	qword ptr [rsi], rbx
.label_297:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_294
	test	rax, rax
	je	.label_295
.label_294:
	pop	rbx
	ret	
.label_295:
	call	xalloc_die
.label_296:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
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
	je	.label_299
	test	r14, r14
	je	.label_298
.label_299:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_298:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_300
	call	rpl_calloc
	test	rax, rax
	je	.label_300
	pop	rcx
	ret	
.label_300:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404220

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
	je	.label_301
	test	r15, r15
	je	.label_302
.label_301:
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404260
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
	je	.label_304
	test	r15, r15
	je	.label_303
.label_304:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_303:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_66
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4042e0

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
	#Procedure 0x404330

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
	#Procedure 0x404390

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
	#Procedure 0x4043f0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_311:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_311
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_314
	nop	word ptr cs:[rax + rax]
.label_313:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_314:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_313
	test	dl, dl
	je	.label_312
	mov	ecx, esi
	and	cl, 1
	je	.label_315
	xor	esi, esi
.label_315:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_313
.label_312:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_316:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_317
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_316
.label_317:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_319
	cmp	byte ptr [rax], 0x43
	jne	.label_321
	cmp	byte ptr [rax + 1], 0
	je	.label_318
.label_321:
	mov	esi, OFFSET FLAT:label_320
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_319
.label_318:
	xor	ebx, ebx
.label_319:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

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
	mov	eax, OFFSET FLAT:label_322
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_323
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_325
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_323
.label_325:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_323
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_324
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_324:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_323:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404570

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_326
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_326
	test	byte ptr [rbx + 1], 1
	je	.label_326
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_326:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0

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
	jne	.label_327
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_327
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_328
.label_327:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_328:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_329
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_329:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x404620

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
