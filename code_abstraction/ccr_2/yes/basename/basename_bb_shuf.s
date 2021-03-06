	.section	.text
	.align	16
	#Procedure 0x401359
	.globl sub_401359
	.type sub_401359, @function
sub_401359:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40135a
	.globl sub_40135a
	.type sub_40135a, @function
sub_40135a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401392
	.globl sub_401392
	.type sub_401392, @function
sub_401392:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013da
	.globl sub_4013da
	.type sub_4013da, @function
sub_4013da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013fc
	.globl sub_4013fc
	.type sub_4013fc, @function
sub_4013fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40140d
	.globl sub_40140d
	.type sub_40140d, @function
sub_40140d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401426
	.globl sub_401426
	.type sub_401426, @function
sub_401426:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401430
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40143d
	.globl sub_40143d
	.type sub_40143d, @function
sub_40143d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401440

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x401445
	.globl sub_401445
	.type sub_401445, @function
sub_401445:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401450

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_9
	test	rdx, rdx
	je	.label_9
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_9:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40147b
	.globl sub_40147b
	.type sub_40147b, @function
sub_40147b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401480
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40148a
	.globl sub_40148a
	.type sub_40148a, @function
sub_40148a:

	nop	word ptr [rax + rax]
.label_12:
	inc	rax
	mov	sil, dl
.label_13:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_12
	test	cl, cl
	je	.label_10
	mov	edx, esi
	and	dl, 1
	je	.label_11
	xor	esi, esi
.label_11:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_12
	.section	.text
	.align	16
	#Procedure 0x4014b7

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_14:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_14
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x4014d8
	.globl sub_4014d8
	.type sub_4014d8, @function
sub_4014d8:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4014eb
	.globl sub_4014eb
	.type sub_4014eb, @function
sub_4014eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014f0
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
	.align	16
	#Procedure 0x4014ff
	.globl sub_4014ff
	.type sub_4014ff, @function
sub_4014ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401500

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_16
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_15
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_16
.label_15:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_16
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_17
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_17:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_16:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401577
	.globl sub_401577
	.type sub_401577, @function
sub_401577:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401580

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
	.align	16
	#Procedure 0x4015b3
	.globl sub_4015b3
	.type sub_4015b3, @function
sub_4015b3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015c0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401600

	.globl perform_basename
	.type perform_basename, @function
perform_basename:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	call	base_name
	mov	rbx, rax
	mov	rdi, rbx
	call	strip_trailing_slashes
	test	rbp, rbp
	je	.label_20
	cmp	byte ptr [rbx], 0x2f
	je	.label_20
	mov	rdi, rbx
	mov	rsi, rbp
	call	remove_suffix
.label_20:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	eax, eax
	test	r14b, r14b
	mov	edi, 0xa
	cmovne	edi, eax
	call	putchar_unlocked
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x40165c
	.globl sub_40165c
	.type sub_40165c, @function
sub_40165c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401660

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401682
	.globl sub_401682
	.type sub_401682, @function
sub_401682:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401690

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
	mov	rcx,  qword ptr [word ptr [rip + label_22]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_23]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_24]]
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
	.align	16
	#Procedure 0x4016fd
	.globl sub_4016fd
	.type sub_4016fd, @function
sub_4016fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401700

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40170d
	.globl sub_40170d
	.type sub_40170d, @function
sub_40170d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401710

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x401717
	.globl sub_401717
	.type sub_401717, @function
sub_401717:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401720
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401794
	.globl sub_401794
	.type sub_401794, @function
sub_401794:

	nop	word ptr cs:[rax + rax]
.label_32:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_31
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_31:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017d4
	.globl sub_4017d4
	.type sub_4017d4, @function
sub_4017d4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4017d6

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
	jne	.label_33
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_33
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_32
.label_33:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x401810

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40181e
	.globl sub_40181e
	.type sub_40181e, @function
sub_40181e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401820

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
	js	.label_34
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_37
	cmp	r12d, 0x7fffffff
	je	.label_39
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
	jne	.label_35
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_35:
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
.label_37:
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
	jbe	.label_40
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_36
.label_40:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_38
	mov	rdi, r14
	call	free
.label_38:
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
.label_36:
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
.label_34:
	call	abort
.label_39:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4019dd
	.globl sub_4019dd
	.type sub_4019dd, @function
sub_4019dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

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
	.align	16
	#Procedure 0x401a0d
	.globl sub_401a0d
	.type sub_401a0d, @function
sub_401a0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a10
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
	.align	16
	#Procedure 0x401a23
	.globl sub_401a23
	.type sub_401a23, @function
sub_401a23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a30
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a3d
	.globl sub_401a3d
	.type sub_401a3d, @function
sub_401a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_41
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_41:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a63
	.globl sub_401a63
	.type sub_401a63, @function
sub_401a63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_42
	test	rax, rax
	je	.label_43
.label_42:
	pop	rbx
	ret	
.label_43:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a8a
	.globl sub_401a8a
	.type sub_401a8a, @function
sub_401a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a90
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
	.align	16
	#Procedure 0x401aa6
	.globl sub_401aa6
	.type sub_401aa6, @function
sub_401aa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_44
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_44
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_44:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401ad6
	.globl sub_401ad6
	.type sub_401ad6, @function
sub_401ad6:

	nop	word ptr cs:[rax + rax]
.label_46:
	mov	rdi, r14
	call	base_len
	mov	rdi, r14
	mov	rsi, rax
.label_45:
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xstrndup
	.section	.text
	.align	16
	#Procedure 0x401afa
	.globl sub_401afa
	.type sub_401afa, @function
sub_401afa:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b02

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
	je	.label_46
	mov	rdi, rbx
	call	base_len
	xor	esi, esi
	cmp	byte ptr [rbx + rax], 0x2f
	sete	sil
	add	rsi, rax
	mov	rdi, rbx
	jmp	.label_45
	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b3a
	.globl sub_401b3a
	.type sub_401b3a, @function
sub_401b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_47
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_49
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_49
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_52
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_52:
	mov	rbx, r14
.label_49:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_47:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_48
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401be1
	.globl sub_401be1
	.type sub_401be1, @function
sub_401be1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0

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
	.align	16
	#Procedure 0x401c27
	.globl sub_401c27
	.type sub_401c27, @function
sub_401c27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_53:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_53
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401c51
	.globl sub_401c51
	.type sub_401c51, @function
sub_401c51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401c6a
	.globl sub_401c6a
	.type sub_401c6a, @function
sub_401c6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c70
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c7f
	.globl sub_401c7f
	.type sub_401c7f, @function
sub_401c7f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c80

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_54
	pop	rcx
	ret	
.label_54:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401c92
	.globl sub_401c92
	.type sub_401c92, @function
sub_401c92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_55
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_55:
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
	.align	16
	#Procedure 0x401d23
	.globl sub_401d23
	.type sub_401d23, @function
sub_401d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d30
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x401d3a
	.globl sub_401d3a
	.type sub_401d3a, @function
sub_401d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d40

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
	je	.label_56
	mov	qword ptr [rax], rbx
.label_56:
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
	.align	16
	#Procedure 0x401e2c
	.globl sub_401e2c
	.type sub_401e2c, @function
sub_401e2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e30

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401e3a
	.globl sub_401e3a
	.type sub_401e3a, @function
sub_401e3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40
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
	.align	16
	#Procedure 0x401e50

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x401e59
	.globl sub_401e59
	.type sub_401e59, @function
sub_401e59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e60

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x401e6a
	.globl sub_401e6a
	.type sub_401e6a, @function
sub_401e6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e70

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
	je	.label_67
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_69
.label_67:
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
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
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_58
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_59]]
.label_327:
	add	rsp, 8
	jmp	.label_57
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
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
	jmp	.label_57
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
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
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
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
.label_330:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
	jmp	.label_57
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
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
	jmp	.label_57
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
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
	jmp	.label_57
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	jmp	.label_57
.label_336:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_57
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
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
.label_57:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021c8
	.globl sub_4021c8
	.type sub_4021c8, @function
sub_4021c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021da
	.globl sub_4021da
	.type sub_4021da, @function
sub_4021da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021e0
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
	.align	16
	#Procedure 0x402213
	.globl sub_402213
	.type sub_402213, @function
sub_402213:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402220

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_77:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_76
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402249
	.globl sub_402249
	.type sub_402249, @function
sub_402249:

	nop	dword ptr [rax]
.label_76:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_78:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_79
	inc	r9
	cmp	r9, 0xa
	jb	.label_77
.label_79:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40227f
	.globl sub_40227f
	.type sub_40227f, @function
sub_40227f:

	nop	
.label_80:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402285
	.globl sub_402285
	.type sub_402285, @function
sub_402285:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40228f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_80
	call	rpl_calloc
	test	rax, rax
	je	.label_80
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_82
	cmp	byte ptr [rax], 0x43
	jne	.label_84
	cmp	byte ptr [rax + 1], 0
	je	.label_81
.label_84:
	mov	esi, OFFSET FLAT:label_83
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_82
.label_81:
	xor	ebx, ebx
.label_82:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022e1
	.globl sub_4022e1
	.type sub_4022e1, @function
sub_4022e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x402307
	.globl sub_402307
	.type sub_402307, @function
sub_402307:

	nop	word ptr [rax + rax]
.label_86:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402311
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_85
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_87]]
.label_85:
	xor	eax, eax
	jmp	.label_86
	.section	.text
	.align	16
	#Procedure 0x402326
	.globl sub_402326
	.type sub_402326, @function
sub_402326:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402330
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
	.align	16
	#Procedure 0x4023a2
	.globl sub_4023a2
	.type sub_4023a2, @function
sub_4023a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_88
	ret	
.label_88:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4023c3
	.globl sub_4023c3
	.type sub_4023c3, @function
sub_4023c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_89
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_90
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023f5
	.globl sub_4023f5
	.type sub_4023f5, @function
sub_4023f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_91
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_91:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402418
	.globl sub_402418
	.type sub_402418, @function
sub_402418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402420

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
	je	.label_92
	cmp	r15, -2
	jb	.label_92
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_92
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_92:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402476
	.globl sub_402476
	.type sub_402476, @function
sub_402476:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402489
	.globl sub_402489
	.type sub_402489, @function
sub_402489:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402490

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
	mov	rax,  qword ptr [word ptr [rip + label_22]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_23]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_24]]
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
	.align	16
	#Procedure 0x4024f8
	.globl sub_4024f8
	.type sub_4024f8, @function
sub_4024f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402500
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_93
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_93:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40251e
	.globl sub_40251e
	.type sub_40251e, @function
sub_40251e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402520
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_94
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_94:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40253e
	.globl sub_40253e
	.type sub_40253e, @function
sub_40253e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402540
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40254a
	.globl sub_40254a
	.type sub_40254a, @function
sub_40254a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550
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
	.align	16
	#Procedure 0x402563
	.globl sub_402563
	.type sub_402563, @function
sub_402563:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402570

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
	je	.label_97
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_95
	jmp	.label_96
.label_97:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_96
.label_95:
	mov	eax, 1
	test	bpl, bpl
	je	.label_96
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
.label_96:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025f8
	.globl sub_4025f8
	.type sub_4025f8, @function
sub_4025f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600

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
	je	.label_98
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_100
	jmp	.label_99
.label_98:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_99
.label_100:
	mov	eax, 1
	test	bpl, bpl
	je	.label_99
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
.label_99:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402679
	.globl sub_402679
	.type sub_402679, @function
sub_402679:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402680

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
	je	.label_103
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_102
	jmp	.label_101
.label_103:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_101
.label_102:
	mov	eax, 1
	test	bpl, bpl
	je	.label_101
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
.label_101:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026e3
	.globl sub_4026e3
	.type sub_4026e3, @function
sub_4026e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0

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
	je	.label_106
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_104
	jmp	.label_105
.label_106:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_105
.label_104:
	mov	eax, 1
	test	bpl, bpl
	je	.label_105
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_105:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40274f
	.globl sub_40274f
	.type sub_40274f, @function
sub_40274f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402750

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
	je	.label_107
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_109
	jmp	.label_108
.label_107:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_108
.label_109:
	mov	eax, 1
	test	bpl, bpl
	je	.label_108
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_108:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402799
	.globl sub_402799
	.type sub_402799, @function
sub_402799:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0

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
	je	.label_112
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_111
	jmp	.label_110
.label_112:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_110
.label_111:
	mov	eax, 1
	test	bpl, bpl
	je	.label_110
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_110:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e5
	.globl sub_4027e5
	.type sub_4027e5, @function
sub_4027e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_114
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_115
	jmp	.label_113
.label_114:
	mov	eax, 1
	test	cl, cl
	je	.label_113
.label_115:
	xor	eax, eax
.label_113:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40281f
	.globl sub_40281f
	.type sub_40281f, @function
sub_40281f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402820

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
	je	.label_116
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
.label_116:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402872
	.globl sub_402872
	.type sub_402872, @function
sub_402872:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402880
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_117
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_119:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_119
.label_117:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_120
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_121]], OFFSET FLAT:slot0
.label_120:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_118
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_118:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402911
	.globl sub_402911
	.type sub_402911, @function
sub_402911:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402920

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
	jne	.label_131
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
	je	.label_128
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_129
	mov	eax, OFFSET FLAT:label_130
	jmp	.label_124
.label_127:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_125
	mov	eax, OFFSET FLAT:label_126
.label_124:
	cmove	rax, rcx
.label_131:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40299f
	.globl sub_40299f
	.type sub_40299f, @function
sub_40299f:

	nop	dword ptr [rax]
.label_128:
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
	je	.label_127
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_122
	mov	eax, OFFSET FLAT:label_123
	jmp	.label_124
.label_133:
	cmp	rbx, r15
	jbe	.label_132
	mov	byte ptr [rbx], 0
.label_132:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029ee
	.globl sub_4029ee
	.type sub_4029ee, @function
sub_4029ee:

	nop
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029f4

	.globl remove_suffix
	.type remove_suffix, @function
remove_suffix:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	strlen
	mov	rbx, rax
	add	rbx, r15
	mov	rdi, r14
	call	strlen
	add	rax, r14
	nop	word ptr cs:[rax + rax]
.label_134:
	cmp	rbx, r15
	jbe	.label_133
	cmp	rax, r14
	jbe	.label_133
	movzx	ecx, byte ptr [rbx - 1]
	dec	rbx
	cmp	cl, byte ptr [rax - 1]
	lea	rax, [rax - 1]
	je	.label_134
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x402a40
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
	.align	16
	#Procedure 0x402a59
	.globl sub_402a59
	.type sub_402a59, @function
sub_402a59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_135
	nop	
.label_145:
	mov	edi, OFFSET FLAT:label_138
	call	strcmp
	test	eax, eax
	je	.label_143
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_145
.label_143:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_138
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_137
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_137
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_137:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_138
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_141
	mov	ecx, OFFSET FLAT:label_89
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
	.align	16
	#Procedure 0x402b7a
	.globl sub_402b7a
	.type sub_402b7a, @function
sub_402b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80

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
	je	.label_146
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_147
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_147
.label_146:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_147
	test	cl, cl
	jne	.label_147
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_147:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402be6
	.globl sub_402be6
	.type sub_402be6, @function
sub_402be6:

	nop	word ptr cs:[rax + rax]
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_149
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_154:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_152
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_153
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_153
.label_152:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_154
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_149:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_148
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_155:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_150
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cbb
	.globl sub_402cbb
	.type sub_402cbb, @function
sub_402cbb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cc5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_155
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_155
.label_150:
	ret	
.label_157:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
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
	.align	16
	#Procedure 0x402d18
	.globl sub_402d18
	.type sub_402d18, @function
sub_402d18:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d22

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_157
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e2f
	.globl sub_402e2f
	.type sub_402e2f, @function
sub_402e2f:

	nop	
.label_167:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402e35
	.globl sub_402e35
	.type sub_402e35, @function
sub_402e35:

	nop	dword ptr [rax]
.label_168:
	call	xalloc_die
.label_165:
	test	rcx, rcx
	jne	.label_164
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_164:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_167
.label_166:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x402e83

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_165
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_168
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x402eb0
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
	.align	16
	#Procedure 0x402ed7
	.globl sub_402ed7
	.type sub_402ed7, @function
sub_402ed7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eea
	.globl sub_402eea
	.type sub_402eea, @function
sub_402eea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_170:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_169
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_170
.label_169:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f16
	.globl sub_402f16
	.type sub_402f16, @function
sub_402f16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f20
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_171
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_171:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402f46
	.globl sub_402f46
	.type sub_402f46, @function
sub_402f46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_172
	test	rbx, rbx
	jne	.label_172
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_172:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_174
	test	rax, rax
	je	.label_173
.label_174:
	pop	rbx
	ret	
.label_173:
	call	xalloc_die
.label_175:
	cmp	edi, 0x7f
	je	.label_176
	xor	eax, eax
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x402f89
	.globl sub_402f89
	.type sub_402f89, @function
sub_402f89:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f98
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_175
.label_176:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fa0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402faa
	.globl sub_402faa
	.type sub_402faa, @function
sub_402faa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x402fbd
	.globl sub_402fbd
	.type sub_402fbd, @function
sub_402fbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0
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
	.align	16
	#Procedure 0x402fd0

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
.label_208:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_237
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_214]]
.label_385:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_220
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_126
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_386:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_233
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_233
	xor	r14d, r14d
.label_247:
	cmp	r14, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_244:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_247
.label_233:
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
	jmp	.label_236
.label_378:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_236
.label_381:
	mov	al, 1
.label_379:
	mov	r12b, 1
.label_382:
	test	r12b, 1
	mov	cl, 1
	je	.label_262
	mov	ecx, eax
.label_262:
	mov	al, cl
.label_380:
	test	r12b, 1
	jne	.label_265
	test	r11, r11
	je	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_239:
	mov	r14d, 1
	jmp	.label_270
.label_265:
	xor	r14d, r14d
.label_270:
	mov	ecx, OFFSET FLAT:label_126
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_236
.label_383:
	test	r12b, 1
	jne	.label_278
	test	r11, r11
	je	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_260:
	mov	r14d, 1
	jmp	.label_282
.label_384:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_236
.label_278:
	xor	r14d, r14d
.label_282:
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_236:
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
	jmp	.label_187
	.section	.text
	.align	16
	#Procedure 0x4032ac
	.globl sub_4032ac
	.type sub_4032ac, @function
sub_4032ac:

	nop	dword ptr [rax]
.label_204:
	inc	rsi
.label_187:
	cmp	rbp, -1
	je	.label_227
	cmp	rsi, rbp
	jne	.label_205
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x4032c3
	.globl sub_4032c3
	.type sub_4032c3, @function
sub_4032c3:

	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_231
.label_205:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_235
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_238
	cmp	rbp, -1
	jne	.label_238
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
.label_238:
	cmp	rbx, rbp
	jbe	.label_250
.label_235:
	xor	r8d, r8d
.label_179:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_251
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_256]]
.label_349:
	test	rsi, rsi
	jne	.label_196
	jmp	.label_258
	.section	.text
	.align	16
	#Procedure 0x40335e
	.globl sub_40335e
	.type sub_40335e, @function
sub_40335e:

	nop	
.label_250:
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
	jne	.label_268
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_179
	jmp	.label_186
.label_268:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_179
.label_353:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_286
	test	rsi, rsi
	jne	.label_287
	cmp	rbp, 1
	je	.label_258
	xor	r13d, r13d
	jmp	.label_203
.label_342:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_178
	cmp	byte ptr [rsp + 7], 0
	jne	.label_182
	cmp	r12d, 2
	jne	.label_184
	mov	eax, r9d
	and	al, 1
	jne	.label_184
	cmp	r14, r11
	jae	.label_240
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_193
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_193:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_199
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	r14, 3
	mov	r9b, 1
.label_184:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_198:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_210
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_210
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_210
	cmp	r14, r11
	jae	.label_221
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_221:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_201
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_201:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_203
.label_343:
	mov	bl, 0x62
	jmp	.label_232
.label_344:
	mov	cl, 0x74
	jmp	.label_222
.label_345:
	mov	bl, 0x76
	jmp	.label_232
.label_346:
	mov	bl, 0x66
	jmp	.label_232
.label_347:
	mov	cl, 0x72
	jmp	.label_222
.label_350:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_242
	cmp	byte ptr [rsp + 7], 0
	jne	.label_182
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
	jae	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_257
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_257:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_259
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_259:
	add	r14, 3
	xor	r9d, r9d
.label_242:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_203
.label_351:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_267
	cmp	r12d, 2
	jne	.label_196
	cmp	byte ptr [rsp + 7], 0
	je	.label_196
	jmp	.label_182
.label_352:
	cmp	r12d, 2
	jne	.label_276
	cmp	byte ptr [rsp + 7], 0
	jne	.label_182
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_206
.label_251:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_225
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
.label_197:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_200
	test	r8b, r8b
	je	.label_200
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_203
.label_286:
	test	rsi, rsi
	jne	.label_207
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_207
.label_258:
	mov	dl, 1
.label_348:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_182
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_203:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_216
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_218
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x4036a4
	.globl sub_4036a4
	.type sub_4036a4, @function
sub_4036a4:

	nop	word ptr cs:[rax + rax]
.label_216:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_188
.label_218:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_228
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_206
	jmp	.label_241
	.section	.text
	.align	16
	#Procedure 0x4036ed
	.globl sub_4036ed
	.type sub_4036ed, @function
sub_4036ed:

	nop	dword ptr [rax]
.label_188:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_241
	jmp	.label_206
.label_228:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_241
.label_178:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_204
	xor	r15d, r15d
	jmp	.label_196
.label_276:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_222
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_206
.label_222:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_182
.label_232:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_203
	nop	word ptr cs:[rax + rax]
.label_241:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_182
	cmp	r12d, 2
	jne	.label_223
	mov	eax, r9d
	and	al, 1
	jne	.label_223
	cmp	r14, r11
	jae	.label_266
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_266:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_271:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_273
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_273:
	add	r14, 3
	mov	r9b, 1
.label_223:
	cmp	r14, r11
	jae	.label_277
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_277:
	inc	r14
	jmp	.label_279
.label_225:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_283
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_283:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_243:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_192
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_195
	cmp	rbp, -2
	je	.label_285
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_180
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_280:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_224
	bt	rsi, rdx
	jb	.label_186
.label_224:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_280
.label_180:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_230
	xor	r13d, r13d
.label_230:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_243
	jmp	.label_197
.label_210:
	xor	r13d, r13d
	jmp	.label_203
.label_207:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_203
.label_267:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_196
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_196
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_196
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_263
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_217
	cmp	byte ptr [rsp + 7], 0
	jne	.label_182
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_249
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_269
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_269:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_272
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_272:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_203
.label_196:
	xor	eax, eax
.label_287:
	xor	r13d, r13d
	jmp	.label_203
.label_200:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_281
	.section	.text
	.align	16
	#Procedure 0x4039d3
	.globl sub_4039d3
	.type sub_4039d3, @function
sub_4039d3:

	nop	word ptr cs:[rax + rax]
.label_246:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_281:
	test	r8b, r8b
	je	.label_288
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_181
	cmp	r14, r11
	jae	.label_289
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_289:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_181
	.section	.text
	.align	16
	#Procedure 0x403a1c
	.globl sub_403a1c
	.type sub_403a1c, @function
sub_403a1c:

	nop	dword ptr [rax]
.label_288:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_186
	cmp	r12d, 2
	jne	.label_191
	mov	eax, r9d
	and	al, 1
	jne	.label_191
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_190
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_190:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_183
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_183:
	add	r14, 3
	mov	r9b, 1
.label_191:
	cmp	r14, r11
	jae	.label_226
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_219
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_219:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_181:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_206
	test	r9b, 1
	je	.label_234
	mov	ebx, eax
	and	bl, 1
	jne	.label_234
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_254
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_254:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_275
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_275:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_234:
	cmp	r14, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_246
	.section	.text
	.align	16
	#Procedure 0x403b23
	.globl sub_403b23
	.type sub_403b23, @function
sub_403b23:

	nop	word ptr cs:[rax + rax]
.label_206:
	test	r9b, 1
	je	.label_253
	and	al, 1
	jne	.label_253
	cmp	r14, r11
	jae	.label_255
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_255:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_209:
	add	r14, 2
	xor	r9d, r9d
.label_253:
	mov	ebx, r15d
.label_279:
	cmp	r14, r11
	jae	.label_261
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_261:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_204
.label_195:
	xor	r13d, r13d
.label_192:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_197
.label_285:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_274
	mov	rsi, qword ptr [rsp + 0x50]
.label_284:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_185
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_284
	xor	r13d, r13d
	jmp	.label_197
.label_274:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_197
.label_185:
	xor	r13d, r13d
	jmp	.label_197
.label_263:
	xor	r13d, r13d
	jmp	.label_203
.label_217:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x403bf8
	.globl sub_403bf8
	.type sub_403bf8, @function
sub_403bf8:

	nop	dword ptr [rax + rax]
.label_231:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_177
	or	dl, al
	je	.label_186
.label_177:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_189
	or	dl, al
	jne	.label_189
	test	r10b, 1
	jne	.label_202
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_189
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_208
.label_189:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_211
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_213
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_213
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_229:
	cmp	r14, r11
	jae	.label_215
	mov	byte ptr [rcx + r14], al
.label_215:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_229
	jmp	.label_213
.label_182:
	mov	qword ptr [rsp + 0x20], rbp
.label_186:
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
.label_264:
	mov	r14, rax
.label_245:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_202:
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
	jmp	.label_264
.label_211:
	mov	rcx, qword ptr [rsp + 8]
.label_213:
	cmp	r14, r11
	jae	.label_245
	mov	byte ptr [rcx + r14], 0
	jmp	.label_245
.label_237:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d8c
	.globl sub_403d8c
	.type sub_403d8c, @function
sub_403d8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d90

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
	.align	16
	#Procedure 0x403dc6
	.globl sub_403dc6
	.type sub_403dc6, @function
sub_403dc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0
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
	.align	16
	#Procedure 0x403e19
	.globl sub_403e19
	.type sub_403e19, @function
sub_403e19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e28
	.globl sub_403e28
	.type sub_403e28, @function
sub_403e28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e30
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e3a
	.globl sub_403e3a
	.type sub_403e3a, @function
sub_403e3a:

	nop	word ptr [rax + rax]
.label_291:
	mov	ecx, 1
.label_290:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403e50
	.globl sub_403e50
	.type sub_403e50, @function
sub_403e50:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e55

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_291
	test	rsi, rsi
	mov	ecx, 1
	je	.label_290
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_290
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e90

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
	.align	16
	#Procedure 0x403ec9
	.globl sub_403ec9
	.type sub_403ec9, @function
sub_403ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0
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
	.align	16
	#Procedure 0x403ee1
	.globl sub_403ee1
	.type sub_403ee1, @function
sub_403ee1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0
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
	.align	16
	#Procedure 0x403f04
	.globl sub_403f04
	.type sub_403f04, @function
sub_403f04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_89
	call	setlocale
	mov	edi, OFFSET FLAT:label_292
	mov	esi, OFFSET FLAT:label_310
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_292
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r15d, r15d
	xor	r12d, r12d
	xor	ebx, ebx
	jmp	.label_301
.label_304:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	r12b, 1
	nop	dword ptr [rax + rax]
.label_301:
	mov	ecx, ebx
.label_299:
	mov	bl, cl
	mov	edx, OFFSET FLAT:label_309
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_296
	mov	cl, 1
	cmp	eax, 0x61
	je	.label_297
	cmp	eax, 0x7a
	je	.label_299
	cmp	eax, 0x73
	je	.label_304
	jmp	.label_294
.label_297:
	mov	r12b, 1
	jmp	.label_301
.label_296:
	cmp	eax, -1
	jne	.label_308
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_312
	test	r12b, r12b
	sete	dl
	lea	ecx, [rax + 2]
	cmp	ecx, ebp
	jge	.label_298
	test	dl, dl
	jne	.label_306
.label_298:
	test	r12b, r12b
	je	.label_293
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x403fe5
	.globl sub_403fe5
	.type sub_403fe5, @function
sub_403fe5:

	nop	word ptr cs:[rax + rax]
.label_300:
	xor	edx, edx
	test	bl, bl
	setne	dl
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	rsi, r15
	call	perform_basename
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_305:
	cmp	eax, ebp
	jl	.label_300
	jmp	.label_311
.label_293:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
	cmp	ecx, ebp
	jne	.label_303
	mov	rsi, qword ptr [r14 + rax*8 + 8]
.label_303:
	xor	edx, edx
	test	bl, bl
	setne	dl
	call	perform_basename
.label_311:
	xor	eax, eax
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_308:
	cmp	eax, 0xffffff7d
	je	.label_313
	cmp	eax, 0xffffff7e
	jne	.label_294
	xor	edi, edi
	call	usage
.label_313:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_138
	mov	edx, OFFSET FLAT:label_29
	mov	r8d, OFFSET FLAT:label_302
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_312:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
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
.label_294:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4040fd
	.globl sub_4040fd
	.type sub_4040fd, @function
sub_4040fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404100
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404108
	.globl sub_404108
	.type sub_404108, @function
sub_404108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404110

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
	je	.label_315
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_316
	jmp	.label_314
.label_315:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_314
.label_316:
	mov	eax, 1
	test	bpl, bpl
	je	.label_314
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
.label_314:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40418d
	.globl sub_40418d
	.type sub_40418d, @function
sub_40418d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041f5
	.globl sub_4041f5
	.type sub_4041f5, @function
sub_4041f5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404202
	.globl sub_404202
	.type sub_404202, @function
sub_404202:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404226
	.globl sub_404226
	.type sub_404226, @function
sub_404226:

	nop	word ptr cs:[rax + rax]
