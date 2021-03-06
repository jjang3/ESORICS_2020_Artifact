	.section	.text
	.align	32
	#Procedure 0x4014e9
	.globl sub_4014e9
	.type sub_4014e9, @function
sub_4014e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4014ea
	.globl sub_4014ea
	.type sub_4014ea, @function
sub_4014ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401522
	.globl sub_401522
	.type sub_401522, @function
sub_401522:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40156a
	.globl sub_40156a
	.type sub_40156a, @function
sub_40156a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158c
	.globl sub_40158c
	.type sub_40158c, @function
sub_40158c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40159d
	.globl sub_40159d
	.type sub_40159d, @function
sub_40159d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015b6
	.globl sub_4015b6
	.type sub_4015b6, @function
sub_4015b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_9
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_9:
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
	.section	.text
	.align	32
	#Procedure 0x401643
	.globl sub_401643
	.type sub_401643, @function
sub_401643:

	nop	word ptr cs:[rax + rax]
.label_14:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40165b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_12
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_15
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_15
.label_12:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_11:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_16
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_11
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401710
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40171a
	.globl sub_40171a
	.type sub_40171a, @function
sub_40171a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401720

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_17
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_19
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_19
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_22
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_22:
	mov	rbx, r14
.label_19:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_17:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_18
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4017c1
	.globl sub_4017c1
	.type sub_4017c1, @function
sub_4017c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017d8
	.globl sub_4017d8
	.type sub_4017d8, @function
sub_4017d8:

	nop	dword ptr [rax + rax]
.label_23:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4017ee
	.globl sub_4017ee
	.type sub_4017ee, @function
sub_4017ee:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017f7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_23
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_25
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_23
.label_25:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_23
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_24
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_24:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_27:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_26
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40186b
	.globl sub_40186b
	.type sub_40186b, @function
sub_40186b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401875
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_27
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_27
.label_26:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401890

	.globl remove_parents
	.type remove_parents, @function
remove_parents:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	strip_trailing_slashes
	mov	r15b, 1
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	mov	ecx, r15d
	jne	.label_35
	jmp	.label_28
	.section	.text
	.align	32
	#Procedure 0x4018ca
	.globl sub_4018ca
	.type sub_4018ca, @function
sub_4018ca:

	nop	word ptr [rax + rax]
.label_31:
	dec	rax
.label_35:
	cmp	rax, rbx
	jbe	.label_30
	cmp	byte ptr [rax], 0x2f
	je	.label_31
.label_30:
	mov	byte ptr [rax + 1], 0
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_32
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rcx
	call	prog_fprintf
.label_32:
	mov	rdi, rbx
	call	rmdir
	test	eax, eax
	sete	r15b
	je	.label_34
	call	__errno_location
	mov	r14, rax
	mov	edi, dword ptr [r14]
	mov	rsi, rbx
	call	ignorable_failure
	mov	cl, 1
	test	al, al
	jne	.label_28
	mov	r14d, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	call	error
	mov	ecx, r15d
.label_28:
	and	cl, 1
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40199b
	.globl sub_40199b
	.type sub_40199b, @function
sub_40199b:

	nop	dword ptr [rax + rax]
.label_36:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019a3
	.globl sub_4019a3
	.type sub_4019a3, @function
sub_4019a3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019ab
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_36
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019c0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_37
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_37:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019de
	.globl sub_4019de
	.type sub_4019de, @function
sub_4019de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4019e0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019ea
	.globl sub_4019ea
	.type sub_4019ea, @function
sub_4019ea:

	nop	word ptr [rax + rax]
.label_40:
	test	ebp, ebp
	sete	bl
.label_38:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019fc
	.globl sub_4019fc
	.type sub_4019fc, @function
sub_4019fc:

	nop	word ptr [rax + rax]
.label_39:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_38
	.section	.text
	.align	32
	#Procedure 0x401a10

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	mov	rcx, rdi
	xor	ebx, ebx
	mov	edi, 0xffffff9c
	mov	edx, 0x30900
	xor	eax, eax
	mov	rsi, rcx
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_38
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_39
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	call	readdir_ignoring_dot_and_dotdot
	mov	r14, rax
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	closedir
	test	r14, r14
	je	.label_40
	xor	ebx, ebx
	jmp	.label_38
	.section	.text
	.align	32
	#Procedure 0x401a70

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aa7
	.globl sub_401aa7
	.type sub_401aa7, @function
sub_401aa7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ab0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_41
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_41
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_41:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401ad6
	.globl sub_401ad6
	.type sub_401ad6, @function
sub_401ad6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401aea
	.globl sub_401aea
	.type sub_401aea, @function
sub_401aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401b00

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401b09
	.globl sub_401b09
	.type sub_401b09, @function
sub_401b09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b10
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x401b1a
	.globl sub_401b1a
	.type sub_401b1a, @function
sub_401b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x401b2a
	.globl sub_401b2a
	.type sub_401b2a, @function
sub_401b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b30

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_48
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_42
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_46
	mov	eax, OFFSET FLAT:label_47
	jmp	.label_45
.label_51:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_49
	mov	eax, OFFSET FLAT:label_50
.label_45:
	cmove	rax, rcx
.label_48:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401baf
	.globl sub_401baf
	.type sub_401baf, @function
sub_401baf:

	nop	dword ptr [rax]
.label_42:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_51
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_43
	mov	eax, OFFSET FLAT:label_44
	jmp	.label_45
	.section	.text
	.align	32
	#Procedure 0x401bf0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	last_component
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	cmove	rbx, r14
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c23
	.globl sub_401c23
	.type sub_401c23, @function
sub_401c23:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c30

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x401c39
	.globl sub_401c39
	.type sub_401c39, @function
sub_401c39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c40

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_52]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_53]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_54]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ca8
	.globl sub_401ca8
	.type sub_401ca8, @function
sub_401ca8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cb0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ce9
	.globl sub_401ce9
	.type sub_401ce9, @function
sub_401ce9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401cf0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	32
	#Procedure 0x401d01
	.globl sub_401d01
	.type sub_401d01, @function
sub_401d01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	.section	.text
	.align	32
	#Procedure 0x401d24
	.globl sub_401d24
	.type sub_401d24, @function
sub_401d24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_56:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_55
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_56
.label_55:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d56
	.globl sub_401d56
	.type sub_401d56, @function
sub_401d56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x401d77
	.globl sub_401d77
	.type sub_401d77, @function
sub_401d77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d80
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x401d8a
	.globl sub_401d8a
	.type sub_401d8a, @function
sub_401d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90

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
	call	xcharalloc
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
	je	.label_57
	mov	qword ptr [rax], rbx
.label_57:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e7c
	.globl sub_401e7c
	.type sub_401e7c, @function
sub_401e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e80

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_58:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_59
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_58
.label_59:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ec0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	.section	.text
	.align	32
	#Procedure 0x401f32
	.globl sub_401f32
	.type sub_401f32, @function
sub_401f32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_60
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_62
	jmp	.label_61
.label_60:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_61
.label_62:
	mov	eax, 1
	test	bpl, bpl
	je	.label_61
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_61:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fbd
	.globl sub_401fbd
	.type sub_401fbd, @function
sub_401fbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402009
	.globl sub_402009
	.type sub_402009, @function
sub_402009:

	nop	dword ptr [rax]
.label_63:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402015
	.globl sub_402015
	.type sub_402015, @function
sub_402015:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40201f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_63
	call	rpl_calloc
	test	rax, rax
	je	.label_63
	pop	rcx
	ret	
.label_64:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402046
	.globl sub_402046
	.type sub_402046, @function
sub_402046:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40204b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_64
	test	rdx, rdx
	je	.label_64
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402070

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
	je	.label_75
	mov	edx, OFFSET FLAT:label_71
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_77
.label_75:
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_66
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_67]]
.label_342:
	add	rsp, 8
	jmp	.label_65
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
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
	jmp	.label_65
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
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
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
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
	jmp	.label_65
.label_347:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
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
	jmp	.label_65
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
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
	jmp	.label_65
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
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
	jmp	.label_65
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
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
	jmp	.label_65
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
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
.label_65:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023c8
	.globl sub_4023c8
	.type sub_4023c8, @function
sub_4023c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023dd
	.globl sub_4023dd
	.type sub_4023dd, @function
sub_4023dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4023e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40240d
	.globl sub_40240d
	.type sub_40240d, @function
sub_40240d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402410
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	.section	.text
	.align	32
	#Procedure 0x402423
	.globl sub_402423
	.type sub_402423, @function
sub_402423:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402430
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40243f
	.globl sub_40243f
	.type sub_40243f, @function
sub_40243f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402440
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
	.section	.text
	.align	32
	#Procedure 0x402473
	.globl sub_402473
	.type sub_402473, @function
sub_402473:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_84
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
.label_84:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024a2
	.globl sub_4024a2
	.type sub_4024a2, @function
sub_4024a2:

	nop	word ptr cs:[rax + rax]
.label_86:
	cmp	edi, 0x7f
	je	.label_85
	xor	eax, eax
	jmp	.label_85
	.section	.text
	.align	32
	#Procedure 0x4024b9
	.globl sub_4024b9
	.type sub_4024b9, @function
sub_4024b9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024c8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_86
.label_85:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024d0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024df
	.globl sub_4024df
	.type sub_4024df, @function
sub_4024df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4024e0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_87
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_87:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402532
	.globl sub_402532
	.type sub_402532, @function
sub_402532:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40254a
	.globl sub_40254a
	.type sub_40254a, @function
sub_40254a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402550
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40255a
	.globl sub_40255a
	.type sub_40255a, @function
sub_40255a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x402576
	.globl sub_402576
	.type sub_402576, @function
sub_402576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402580
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_88:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_88
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4025a1
	.globl sub_4025a1
	.type sub_4025a1, @function
sub_4025a1:

	nop	word ptr cs:[rax + rax]
.label_90:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_89
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_89:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025e4
	.globl sub_4025e4
	.type sub_4025e4, @function
sub_4025e4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4025e6

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
	jne	.label_91
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_91
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_90
.label_91:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x402620
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402628
	.globl sub_402628
	.type sub_402628, @function
sub_402628:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402630

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_93
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_92
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_92
.label_93:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_92
	test	cl, cl
	jne	.label_92
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_92:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402696
	.globl sub_402696
	.type sub_402696, @function
sub_402696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026a0

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
	je	.label_94
	cmp	r15, -2
	jb	.label_94
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_94
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_94:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026f6
	.globl sub_4026f6
	.type sub_4026f6, @function
sub_4026f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402700
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_95
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_95:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402723
	.globl sub_402723
	.type sub_402723, @function
sub_402723:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402730

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_96
	test	rax, rax
	je	.label_97
.label_96:
	pop	rbx
	ret	
.label_97:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40274a
	.globl sub_40274a
	.type sub_40274a, @function
sub_40274a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402750
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40275a
	.globl sub_40275a
	.type sub_40275a, @function
sub_40275a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760

	.globl errno_rmdir_non_empty
	.type errno_rmdir_non_empty, @function
errno_rmdir_non_empty:
	cmp	edi, 0x27
	sete	cl
	cmp	edi, 0x11
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x40276f
	.globl sub_40276f
	.type sub_40276f, @function
sub_40276f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402770
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_98
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_98:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402796
	.globl sub_402796
	.type sub_402796, @function
sub_402796:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_99
	test	rbx, rbx
	jne	.label_99
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_99:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_101
	test	rax, rax
	je	.label_100
.label_101:
	pop	rbx
	ret	
.label_100:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4027d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_104
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_104:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
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
	.section	.text
	.align	32
	#Procedure 0x4028cb
	.globl sub_4028cb
	.type sub_4028cb, @function
sub_4028cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_113
	mov	ecx, OFFSET FLAT:label_114
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402944
	.globl sub_402944
	.type sub_402944, @function
sub_402944:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950

	.globl errno_may_be_empty
	.type errno_may_be_empty, @function
errno_may_be_empty:
	dec	edi
	cmp	edi, 0x1d
	ja	.label_115
	mov	eax, 0x20019001
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_115:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402967
	.globl sub_402967
	.type sub_402967, @function
sub_402967:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402970

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_117:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_158
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_127]]
.label_436:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_133
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_50
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_437:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_149
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_149
	xor	r14d, r14d
.label_165:
	cmp	r14, r11
	jae	.label_161
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_161:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_165
.label_149:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_169
.label_429:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_169
.label_432:
	mov	al, 1
.label_430:
	mov	r12b, 1
.label_433:
	test	r12b, 1
	mov	cl, 1
	je	.label_182
	mov	ecx, eax
.label_182:
	mov	al, cl
.label_431:
	test	r12b, 1
	jne	.label_184
	test	r11, r11
	je	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_186:
	mov	r14d, 1
	jmp	.label_190
.label_184:
	xor	r14d, r14d
.label_190:
	mov	ecx, OFFSET FLAT:label_50
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_169
.label_434:
	test	r12b, 1
	jne	.label_197
	test	r11, r11
	je	.label_224
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_224:
	mov	r14d, 1
	jmp	.label_145
.label_435:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_49
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_169
.label_197:
	xor	r14d, r14d
.label_145:
	mov	eax, OFFSET FLAT:label_49
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_169:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_221
	.section	.text
	.align	32
	#Procedure 0x402c4c
	.globl sub_402c4c
	.type sub_402c4c, @function
sub_402c4c:

	nop	dword ptr [rax]
.label_148:
	inc	rsi
.label_221:
	cmp	rbp, -1
	je	.label_138
	cmp	rsi, rbp
	jne	.label_217
	jmp	.label_142
	.section	.text
	.align	32
	#Procedure 0x402c63
	.globl sub_402c63
	.type sub_402c63, @function
sub_402c63:

	nop	word ptr cs:[rax + rax]
.label_138:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_142
.label_217:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_153
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_155
	cmp	rbp, -1
	jne	.label_155
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_155:
	cmp	rbx, rbp
	jbe	.label_170
.label_153:
	xor	r8d, r8d
.label_122:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_171
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_175]]
.label_377:
	test	rsi, rsi
	jne	.label_167
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x402cfe
	.globl sub_402cfe
	.type sub_402cfe, @function
sub_402cfe:

	nop	
.label_170:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_188
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_122
	jmp	.label_132
.label_188:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_122
.label_381:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_203
	test	rsi, rsi
	jne	.label_204
	cmp	rbp, 1
	je	.label_179
	xor	r13d, r13d
	jmp	.label_130
.label_370:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_209
	cmp	byte ptr [rsp + 7], 0
	jne	.label_120
	cmp	r12d, 2
	jne	.label_212
	mov	eax, r9d
	and	al, 1
	jne	.label_212
	cmp	r14, r11
	jae	.label_213
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_213:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_156
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_223:
	add	r14, 3
	mov	r9b, 1
.label_212:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_118
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_118:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_119
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_119
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_119
	cmp	r14, r11
	jae	.label_134
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_134:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_173
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_173:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_130
.label_371:
	mov	bl, 0x62
	jmp	.label_147
.label_372:
	mov	cl, 0x74
	jmp	.label_151
.label_373:
	mov	bl, 0x76
	jmp	.label_147
.label_374:
	mov	bl, 0x66
	jmp	.label_147
.label_375:
	mov	cl, 0x72
	jmp	.label_151
.label_378:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_160
	cmp	byte ptr [rsp + 7], 0
	jne	.label_120
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_166:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_177
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_177:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_180
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_180:
	add	r14, 3
	xor	r9d, r9d
.label_160:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_130
.label_379:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_187
	cmp	r12d, 2
	jne	.label_167
	cmp	byte ptr [rsp + 7], 0
	je	.label_167
	jmp	.label_120
.label_380:
	cmp	r12d, 2
	jne	.label_195
	cmp	byte ptr [rsp + 7], 0
	jne	.label_120
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_143
.label_171:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_200
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
.label_125:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_211
	test	r8b, r8b
	je	.label_211
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_130
.label_203:
	test	rsi, rsi
	jne	.label_116
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_116
.label_179:
	mov	dl, 1
.label_376:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_120
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_130:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_128
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_129
	jmp	.label_135
	.section	.text
	.align	32
	#Procedure 0x403044
	.globl sub_403044
	.type sub_403044, @function
sub_403044:

	nop	word ptr cs:[rax + rax]
.label_128:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_135
.label_129:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_139
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_143
	jmp	.label_159
	.section	.text
	.align	32
	#Procedure 0x40308d
	.globl sub_40308d
	.type sub_40308d, @function
sub_40308d:

	nop	dword ptr [rax]
.label_135:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_159
	jmp	.label_143
.label_139:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_159
.label_209:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_148
	xor	r15d, r15d
	jmp	.label_167
.label_195:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_151
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_143
.label_151:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_120
.label_147:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_130
	nop	word ptr cs:[rax + rax]
.label_159:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_120
	cmp	r12d, 2
	jne	.label_144
	mov	eax, r9d
	and	al, 1
	jne	.label_144
	cmp	r14, r11
	jae	.label_185
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_185:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_178
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_178:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_193
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	add	r14, 3
	mov	r9b, 1
.label_144:
	cmp	r14, r11
	jae	.label_196
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_196:
	inc	r14
	jmp	.label_136
.label_200:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_201
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_201:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_168:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_215
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_219
	cmp	rbp, -2
	je	.label_225
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_227
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_210:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_191
	bt	rsi, rdx
	jb	.label_132
.label_191:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_210
.label_227:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_141
	xor	r13d, r13d
.label_141:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_168
	jmp	.label_125
.label_119:
	xor	r13d, r13d
	jmp	.label_130
.label_116:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_130
.label_187:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_167
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_167
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_167
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_176
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_194
	cmp	byte ptr [rsp + 7], 0
	jne	.label_120
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_181
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_181:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_152
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_152:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_189
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_189:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_192
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_192:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_130
.label_167:
	xor	eax, eax
.label_204:
	xor	r13d, r13d
	jmp	.label_130
.label_211:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_199
	.section	.text
	.align	32
	#Procedure 0x403373
	.globl sub_403373
	.type sub_403373, @function
sub_403373:

	nop	word ptr cs:[rax + rax]
.label_164:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_199:
	test	r8b, r8b
	je	.label_205
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_206
	cmp	r14, r11
	jae	.label_207
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_207:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x4033bc
	.globl sub_4033bc
	.type sub_4033bc, @function
sub_4033bc:

	nop	dword ptr [rax]
.label_205:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_132
	cmp	r12d, 2
	jne	.label_214
	mov	eax, r9d
	and	al, 1
	jne	.label_214
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_228
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_228:
	add	r14, 3
	mov	r9b, 1
.label_214:
	cmp	r14, r11
	jae	.label_146
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_146:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_124
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_124:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_131
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_131:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_206:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_143
	test	r9b, 1
	je	.label_150
	mov	ebx, eax
	and	bl, 1
	jne	.label_150
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_154
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_154:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_157
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_157:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_150:
	cmp	r14, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_164
	.section	.text
	.align	32
	#Procedure 0x4034c3
	.globl sub_4034c3
	.type sub_4034c3, @function
sub_4034c3:

	nop	word ptr cs:[rax + rax]
.label_143:
	test	r9b, 1
	je	.label_172
	and	al, 1
	jne	.label_172
	cmp	r14, r11
	jae	.label_174
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_174:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_202
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	add	r14, 2
	xor	r9d, r9d
.label_172:
	mov	ebx, r15d
.label_136:
	cmp	r14, r11
	jae	.label_123
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_123:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_148
.label_219:
	xor	r13d, r13d
.label_215:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_125
.label_225:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_198
	mov	rsi, qword ptr [rsp + 0x50]
.label_216:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_220
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_216
	xor	r13d, r13d
	jmp	.label_125
.label_198:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_125
.label_220:
	xor	r13d, r13d
	jmp	.label_125
.label_176:
	xor	r13d, r13d
	jmp	.label_130
.label_194:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_130
	.section	.text
	.align	32
	#Procedure 0x403598
	.globl sub_403598
	.type sub_403598, @function
sub_403598:

	nop	dword ptr [rax + rax]
.label_142:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_208
	or	dl, al
	je	.label_132
.label_208:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_163
	or	dl, al
	jne	.label_163
	test	r10b, 1
	jne	.label_226
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_163
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_117
.label_163:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_121
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_126
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_126
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_140:
	cmp	r14, r11
	jae	.label_137
	mov	byte ptr [rcx + r14], al
.label_137:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_140
	jmp	.label_126
.label_120:
	mov	qword ptr [rsp + 0x20], rbp
.label_132:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_183:
	mov	r14, rax
.label_162:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_226:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_183
.label_121:
	mov	rcx, qword ptr [rsp + 8]
.label_126:
	cmp	r14, r11
	jae	.label_162
	mov	byte ptr [rcx + r14], 0
	jmp	.label_162
.label_158:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40372c
	.globl sub_40372c
	.type sub_40372c, @function
sub_40372c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_236
	nop	
.label_235:
	mov	edi, OFFSET FLAT:label_229
	call	strcmp
	test	eax, eax
	je	.label_232
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_235
.label_232:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_229
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_113
	mov	ecx, OFFSET FLAT:label_114
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_230
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_230
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_229
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_114
	mov	ecx, OFFSET FLAT:label_229
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_239
	mov	ecx, OFFSET FLAT:label_240
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x40384a
	.globl sub_40384a
	.type sub_40384a, @function
sub_40384a:

	nop	word ptr [rax + rax]
.label_241:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x40385c
	.globl sub_40385c
	.type sub_40385c, @function
sub_40385c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403869

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_241
	ret	
	.section	.text
	.align	32
	#Procedure 0x403870

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4038a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038aa
	.globl sub_4038aa
	.type sub_4038aa, @function
sub_4038aa:

	nop	word ptr [rax + rax]
.label_243:
	xor	eax, eax
.label_244:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038b9
	.globl sub_4038b9
	.type sub_4038b9, @function
sub_4038b9:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4038bb

	.globl ignorable_failure
	.type ignorable_failure, @function
ignorable_failure:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	cmp	byte ptr [byte ptr [rip + ignore_fail_on_non_empty]],  1
	jne	.label_243
	mov	edi, ebp
	call	errno_rmdir_non_empty
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.label_244
	mov	edi, ebp
	call	errno_may_be_empty
	test	al, al
	je	.label_243
	mov	rdi, rbx
	call	is_empty_dir
	jmp	.label_244
	.section	.text
	.align	32
	#Procedure 0x4038f0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038fd
	.globl sub_4038fd
	.type sub_4038fd, @function
sub_4038fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403900
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403913
	.globl sub_403913
	.type sub_403913, @function
sub_403913:

	nop	word ptr cs:[rax + rax]
.label_245:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403923
	.globl sub_403923
	.type sub_403923, @function
sub_403923:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403925
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_245
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_248
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_246
	jmp	.label_247
.label_248:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_247
.label_246:
	mov	eax, 1
	test	bpl, bpl
	je	.label_247
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_247:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039c8
	.globl sub_4039c8
	.type sub_4039c8, @function
sub_4039c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039d0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_249
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_251
	jmp	.label_250
.label_249:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_250
.label_251:
	mov	eax, 1
	test	bpl, bpl
	je	.label_250
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_250:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a49
	.globl sub_403a49
	.type sub_403a49, @function
sub_403a49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a50

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_254
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_253
	jmp	.label_252
.label_254:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_252
.label_253:
	mov	eax, 1
	test	bpl, bpl
	je	.label_252
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_252:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ab3
	.globl sub_403ab3
	.type sub_403ab3, @function
sub_403ab3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ac0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_257
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_255
	jmp	.label_256
.label_257:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_256
.label_255:
	mov	eax, 1
	test	bpl, bpl
	je	.label_256
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_256:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b1f
	.globl sub_403b1f
	.type sub_403b1f, @function
sub_403b1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_258
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_260
	jmp	.label_259
.label_258:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_259
.label_260:
	mov	eax, 1
	test	bpl, bpl
	je	.label_259
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_259:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b69
	.globl sub_403b69
	.type sub_403b69, @function
sub_403b69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b70

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_263
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_262
	jmp	.label_261
.label_263:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_261
.label_262:
	mov	eax, 1
	test	bpl, bpl
	je	.label_261
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_261:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bb5
	.globl sub_403bb5
	.type sub_403bb5, @function
sub_403bb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_266
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_265
	jmp	.label_264
.label_266:
	mov	eax, 1
	test	cl, cl
	je	.label_264
.label_265:
	xor	eax, eax
.label_264:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bef
	.globl sub_403bef
	.type sub_403bef, @function
sub_403bef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403bf0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_52]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_53]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_54]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c5d
	.globl sub_403c5d
	.type sub_403c5d, @function
sub_403c5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x403c6d
	.globl sub_403c6d
	.type sub_403c6d, @function
sub_403c6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x403c77
	.globl sub_403c77
	.type sub_403c77, @function
sub_403c77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403c8e
	.globl sub_403c8e
	.type sub_403c8e, @function
sub_403c8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c90

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
	js	.label_270
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_273
	cmp	r12d, 0x7fffffff
	je	.label_268
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_271
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_271:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_273:
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
	jbe	.label_269
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_272
.label_269:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_267
	mov	rdi, r14
	call	free
.label_267:
	mov	rdi, r15
	call	xcharalloc
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
.label_272:
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
.label_270:
	call	abort
.label_268:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403e4d
	.globl sub_403e4d
	.type sub_403e4d, @function
sub_403e4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_275
	cmp	byte ptr [rax], 0x43
	jne	.label_277
	cmp	byte ptr [rax + 1], 0
	je	.label_274
.label_277:
	mov	esi, OFFSET FLAT:label_276
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_275
.label_274:
	xor	ebx, ebx
.label_275:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e81
	.globl sub_403e81
	.type sub_403e81, @function
sub_403e81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e90
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	.section	.text
	.align	32
	#Procedure 0x403ea9
	.globl sub_403ea9
	.type sub_403ea9, @function
sub_403ea9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_279:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_278
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_280
	.section	.text
	.align	32
	#Procedure 0x403ed9
	.globl sub_403ed9
	.type sub_403ed9, @function
sub_403ed9:

	nop	dword ptr [rax]
.label_278:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_280:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_281
	inc	r9
	cmp	r9, 0xa
	jb	.label_279
.label_281:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f0f
	.globl sub_403f0f
	.type sub_403f0f, @function
sub_403f0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403f10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_282
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_284:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_284
.label_282:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_286
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_285]], OFFSET FLAT:slot0
.label_286:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_283
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_283:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fa1
	.globl sub_403fa1
	.type sub_403fa1, @function
sub_403fa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403fba
	.globl sub_403fba
	.type sub_403fba, @function
sub_403fba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x403fcd
	.globl sub_403fcd
	.type sub_403fcd, @function
sub_403fcd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fd0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x403fe0

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
	mov	esi, OFFSET FLAT:label_240
	call	setlocale
	mov	edi, OFFSET FLAT:label_290
	mov	esi, OFFSET FLAT:label_291
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_290
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + remove_empty_parents]],  0
	jmp	.label_296
.label_304:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	nop	dword ptr [rax + rax]
.label_296:
	mov	edx, OFFSET FLAT:label_299
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x6f
	jle	.label_302
	cmp	eax, 0x80
	je	.label_303
	cmp	eax, 0x76
	je	.label_304
	cmp	eax, 0x70
	jne	.label_301
	mov	byte ptr [byte ptr [rip + remove_empty_parents]],  1
	jmp	.label_296
.label_303:
	mov	byte ptr [byte ptr [rip + ignore_fail_on_non_empty]],  1
	jmp	.label_296
.label_302:
	cmp	eax, -1
	jne	.label_289
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	je	.label_292
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	r13b, 1
	cmp	eax, r15d
	jge	.label_294
	mov	r13b, 1
	nop	
.label_287:
	cdqe	
	mov	rbx, qword ptr [r14 + rax*8]
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_297
	mov	r12,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
.label_297:
	mov	rdi, rbx
	call	rmdir
	test	eax, eax
	je	.label_288
	call	__errno_location
	mov	rbp, rax
	mov	edi, dword ptr [rbp]
	mov	rsi, rbx
	call	ignorable_failure
	test	al, al
	jne	.label_293
	mov	r12d, dword ptr [rbp]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	jmp	.label_293
	.section	.text
	.align	32
	#Procedure 0x404159
	.globl sub_404159
	.type sub_404159, @function
sub_404159:

	nop	dword ptr [rax]
.label_288:
	cmp	byte ptr [byte ptr [rip + remove_empty_parents]],  1
	jne	.label_293
	mov	rdi, rbx
	call	remove_parents
	and	al, r13b
	mov	r13b, al
	nop	word ptr [rax + rax]
.label_293:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_287
.label_294:
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
.label_289:
	cmp	eax, 0xffffff7d
	je	.label_298
	cmp	eax, 0xffffff7e
	jne	.label_301
	xor	edi, edi
	call	usage
.label_298:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_229
	mov	edx, OFFSET FLAT:label_113
	mov	r8d, OFFSET FLAT:label_300
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
.label_301:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40422b
	.globl sub_40422b
	.type sub_40422b, @function
sub_40422b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_306
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_306:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rsi, rbx
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:label_307
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
	mov	edi, 0xa
	mov	rsi, rbx
	call	fputc_unlocked
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042fd
	.globl sub_4042fd
	.type sub_4042fd, @function
sub_4042fd:

	nop	dword ptr [rax]
.label_312:
	test	rcx, rcx
	jne	.label_308
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_308:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_309
.label_311:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_309:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404347
	.globl sub_404347
	.type sub_404347, @function
sub_404347:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40434e

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_312
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_310
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_311
.label_310:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404380

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
	.section	.text
	.align	32
	#Procedure 0x4043b6
	.globl sub_4043b6
	.type sub_4043b6, @function
sub_4043b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_240
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_313
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043e5
	.globl sub_4043e5
	.type sub_4043e5, @function
sub_4043e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4043fa
	.globl sub_4043fa
	.type sub_4043fa, @function
sub_4043fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x404405
	.globl sub_404405
	.type sub_404405, @function
sub_404405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_314
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_315]]
.label_316:
	ret	
.label_314:
	xor	eax, eax
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x404426
	.globl sub_404426
	.type sub_404426, @function
sub_404426:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404430
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x40443f
	.globl sub_40443f
	.type sub_40443f, @function
sub_40443f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404440
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404467
	.globl sub_404467
	.type sub_404467, @function
sub_404467:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_317:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_317
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_320
	.section	.text
	.align	32
	#Procedure 0x404491
	.globl sub_404491
	.type sub_404491, @function
sub_404491:

	nop	word ptr cs:[rax + rax]
.label_319:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044a4
	.globl sub_4044a4
	.type sub_4044a4, @function
sub_4044a4:

	nop	dword ptr [rax + rax]
.label_318:
	inc	rax
	mov	sil, dl
.label_320:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_318
	test	cl, cl
	je	.label_319
	mov	edx, esi
	and	dl, 1
	je	.label_321
	xor	esi, esi
.label_321:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_318
	.section	.text
	.align	32
	#Procedure 0x4044d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_322
	test	rsi, rsi
	mov	ecx, 1
	je	.label_323
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_323
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_322:
	mov	ecx, 1
.label_323:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40451b
	.globl sub_40451b
	.type sub_40451b, @function
sub_40451b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404585
	.globl sub_404585
	.type sub_404585, @function
sub_404585:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404592
	.globl sub_404592
	.type sub_404592, @function
sub_404592:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045b6
	.globl sub_4045b6
	.type sub_4045b6, @function
sub_4045b6:

	nop	word ptr cs:[rax + rax]
