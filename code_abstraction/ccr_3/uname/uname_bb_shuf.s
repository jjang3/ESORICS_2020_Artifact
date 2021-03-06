	.section	.text
	.align	16
	#Procedure 0x4012b9
	.globl sub_4012b9
	.type sub_4012b9, @function
sub_4012b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4012ba
	.globl sub_4012ba
	.type sub_4012ba, @function
sub_4012ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4012f2
	.globl sub_4012f2
	.type sub_4012f2, @function
sub_4012f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40133a
	.globl sub_40133a
	.type sub_40133a, @function
sub_40133a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40135c
	.globl sub_40135c
	.type sub_40135c, @function
sub_40135c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40136d
	.globl sub_40136d
	.type sub_40136d, @function
sub_40136d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401386
	.globl sub_401386
	.type sub_401386, @function
sub_401386:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401390

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_9
	test	rsi, rsi
	mov	ecx, 1
	je	.label_10
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_10
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_9:
	mov	ecx, 1
.label_10:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4013db
	.globl sub_4013db
	.type sub_4013db, @function
sub_4013db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013e0
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
	#Procedure 0x401416
	.globl sub_401416
	.type sub_401416, @function
sub_401416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401420
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40142e
	.globl sub_40142e
	.type sub_40142e, @function
sub_40142e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401430

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
	js	.label_14
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_17
	cmp	r12d, 0x7fffffff
	je	.label_12
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
	jne	.label_15
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_15:
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
.label_17:
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
	jbe	.label_13
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_16
.label_13:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_11
	mov	rdi, r14
	call	free
.label_11:
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
.label_16:
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
.label_14:
	call	abort
.label_12:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4015ed
	.globl sub_4015ed
	.type sub_4015ed, @function
sub_4015ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
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
	#Procedure 0x401620

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
	je	.label_20
	test	r15, r15
	je	.label_21
.label_20:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_21:
	call	xalloc_die
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
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401671
	.globl sub_401671
	.type sub_401671, @function
sub_401671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_22
	test	rbx, rbx
	jne	.label_22
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_22:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_24
	test	rax, rax
	je	.label_23
.label_24:
	pop	rbx
	ret	
.label_23:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016b0
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401724
	.globl sub_401724
	.type sub_401724, @function
sub_401724:

	nop	word ptr cs:[rax + rax]
.label_31:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401735
	.globl sub_401735
	.type sub_401735, @function
sub_401735:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401739
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_31
	test	rsi, rsi
	je	.label_31
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
.label_35:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4017ac
	.globl sub_4017ac
	.type sub_4017ac, @function
sub_4017ac:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_35
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_37
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_35
.label_37:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_35
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_36
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_36:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_38:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401825
	.globl sub_401825
	.type sub_401825, @function
sub_401825:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40182b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_39
	test	rax, rax
	je	.label_38
.label_39:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401840

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401859
	.globl sub_401859
	.type sub_401859, @function
sub_401859:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401860
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40186a
	.globl sub_40186a
	.type sub_40186a, @function
sub_40186a:

	nop	word ptr [rax + rax]
.label_41:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_40
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_40:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018a4
	.globl sub_4018a4
	.type sub_4018a4, @function
sub_4018a4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4018a6

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
	jne	.label_42
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_42
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_41
.label_42:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4018e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.section	.text
	.align	16
	#Procedure 0x40194f
	.globl sub_40194f
	.type sub_40194f, @function
sub_40194f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401950
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
	.section	.text
	.align	16
	#Procedure 0x401968
	.globl sub_401968
	.type sub_401968, @function
sub_401968:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401970

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_53
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_55
.label_53:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_55:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_52
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_54
.label_52:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_54:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_50
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_51
.label_50:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_51:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_48
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_49
.label_48:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_49:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_46
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_47
.label_46:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_47:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_43
	cmp	r10d, 0x29
	jae	.label_44
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_45
.label_44:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_45:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_43
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_43:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b52
	.globl sub_401b52
	.type sub_401b52, @function
sub_401b52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_56
	test	rsi, rsi
	je	.label_56
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_56:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401bd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.section	.text
	.align	16
	#Procedure 0x401c24
	.globl sub_401c24
	.type sub_401c24, @function
sub_401c24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x190
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_73
	call	setlocale
	mov	edi, OFFSET FLAT:label_78
	mov	esi, OFFSET FLAT:label_79
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_78
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	cmp	dword ptr [rip + uname_mode],  2
	jne	.label_85
	mov	edx, OFFSET FLAT:label_73
	mov	ecx, OFFSET FLAT:arch_long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	ebx, 0x10
	cmp	eax, -1
	je	.label_92
	cmp	eax, 0xffffff7d
	je	.label_93
	cmp	eax, 0xffffff7e
	jne	.label_95
	xor	edi, edi
	call	usage
.label_85:
	xor	ecx, ecx
	jmp	.label_58
.label_451:
	or	ebx, 0x40
	mov	ecx, ebx
	nop	
.label_58:
	mov	ebx, ecx
	mov	edx, OFFSET FLAT:label_100
	mov	ecx, OFFSET FLAT:uname_long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_105
	add	eax, -0x61
	cmp	eax, 0x15
	ja	.label_88
	mov	ecx, 0xffffffff
	jmp	qword ptr [(rax * 8) + label_104]
.label_452:
	or	ebx, 0x10
	mov	ecx, ebx
	jmp	.label_58
.label_453:
	or	ebx, 2
	mov	ecx, ebx
	jmp	.label_58
.label_456:
	or	ebx, 4
	mov	ecx, ebx
	jmp	.label_58
.label_457:
	or	ebx, 1
	mov	ecx, ebx
	jmp	.label_58
.label_458:
	or	ebx, 8
	mov	ecx, ebx
	jmp	.label_58
.label_454:
	or	ebx, 0x80
	mov	ecx, ebx
	jmp	.label_58
.label_455:
	or	ebx, 0x20
	mov	ecx, ebx
	jmp	.label_58
.label_105:
	cmp	eax, -1
	jne	.label_65
.label_92:
	cmp	dword ptr [rip + optind],  ebp
	jne	.label_72
	test	ebx, ebx
	mov	ebp, 1
	cmovne	ebp, ebx
	test	bpl, 0x1f
	je	.label_74
	lea	rdi, [rsp + 8]
	call	uname
	cmp	eax, -1
	je	.label_82
	test	bpl, 1
	je	.label_84
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_64
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_86
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_64:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	lea	rdi, [rsp + 8]
	call	fputs_unlocked
.label_84:
	test	bpl, 2
	je	.label_98
	lea	rbx, [rsp + 0x49]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_89
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_101
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_89:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_98:
	test	bpl, 4
	je	.label_59
	lea	rbx, [rsp + 0x8a]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_76
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_96
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_76:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_59:
	test	bpl, 8
	je	.label_77
	lea	rbx, [rsp + 0xcb]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_80
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_81
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_80:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_77:
	test	bpl, 0x10
	je	.label_74
	lea	rbx, [rsp + 0x10c]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_103
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_97
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_103:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_74:
	cmp	ebp, -1
	je	.label_90
	mov	eax, ebp
	and	eax, 0x20
	je	.label_90
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_60
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_57
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_60:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:main.unknown
	call	fputs_unlocked
.label_90:
	cmp	ebp, -1
	je	.label_66
	mov	eax, ebp
	and	eax, 0x40
	je	.label_66
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_62
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_75
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_62:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:main.unknown
	call	fputs_unlocked
.label_66:
	test	bpl, bpl
	jns	.label_87
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_63
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_91
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_63:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_94
	call	fputs_unlocked
.label_87:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_99
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_106:
	xor	eax, eax
	add	rsp, 0x190
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_99:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_106
.label_57:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_60
.label_75:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_62
.label_91:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_63
.label_86:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_64
.label_101:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_89
.label_96:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_76
.label_81:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_80
.label_97:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_103
.label_65:
	cmp	eax, 0xffffff7d
	je	.label_83
	cmp	eax, 0xffffff7e
	jne	.label_88
	xor	edi, edi
	call	usage
.label_83:
	mov	rdi, qword ptr [rip + stdout]
	cmp	dword ptr [rip + uname_mode],  1
	mov	eax, OFFSET FLAT:label_67
	mov	esi, OFFSET FLAT:label_68
	cmove	rsi, rax
	mov	rcx, qword ptr [rip + Version]
	mov	edx, OFFSET FLAT:label_29
	mov	r8d, OFFSET FLAT:label_69
	xor	r9d, r9d
.label_71:
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_88:
	mov	edi, 1
	call	usage
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_82:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_93:
	mov	rdi, qword ptr [rip + stdout]
	cmp	dword ptr [rip + uname_mode],  1
	mov	eax, OFFSET FLAT:label_67
	mov	esi, OFFSET FLAT:label_68
	cmove	rsi, rax
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	edx, OFFSET FLAT:label_29
	mov	r8d, OFFSET FLAT:label_69
	mov	r9d, OFFSET FLAT:label_70
	jmp	.label_71
.label_95:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402189
	.globl sub_402189
	.type sub_402189, @function
sub_402189:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402190

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_107
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_107:
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
	#Procedure 0x402213
	.globl sub_402213
	.type sub_402213, @function
sub_402213:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402220
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402228
	.globl sub_402228
	.type sub_402228, @function
sub_402228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230
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
	je	.label_109
	test	r15, r15
	je	.label_108
.label_109:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_108:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402272
	.globl sub_402272
	.type sub_402272, @function
sub_402272:

	nop	word ptr cs:[rax + rax]
.label_110:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402285
	.globl sub_402285
	.type sub_402285, @function
sub_402285:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40228d
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
	je	.label_110
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
	.section	.text
	.align	16
	#Procedure 0x4022f0

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
	jne	.label_112
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_111
	test	cl, cl
	jne	.label_111
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_111
.label_112:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_111
	call	__errno_location
	mov	dword ptr [rax], 0
.label_111:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402350

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_113
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_113
	test	byte ptr [rbx + 1], 1
	je	.label_113
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_113:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402383
	.globl sub_402383
	.type sub_402383, @function
sub_402383:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402390

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_114
	test	rax, rax
	je	.label_115
.label_114:
	pop	rbx
	ret	
.label_115:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4023aa
	.globl sub_4023aa
	.type sub_4023aa, @function
sub_4023aa:

	nop	word ptr [rax + rax]
.label_116:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023b5
	.globl sub_4023b5
	.type sub_4023b5, @function
sub_4023b5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4023b7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_116
	test	rdx, rdx
	je	.label_116
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x402420
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
	#Procedure 0x40242f
	.globl sub_40242f
	.type sub_40242f, @function
sub_40242f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402430
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
	.section	.text
	.align	16
	#Procedure 0x402448
	.globl sub_402448
	.type sub_402448, @function
sub_402448:

	nop	dword ptr [rax + rax]
.label_121:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402455
	.globl sub_402455
	.type sub_402455, @function
sub_402455:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40245e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_123
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_119
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_120
.label_119:
	call	xalloc_die
.label_123:
	test	rcx, rcx
	jne	.label_122
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_122:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_121
.label_120:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_117
	test	rbx, rbx
	jne	.label_117
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_117:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_118
	test	rax, rax
	je	.label_119
.label_118:
	pop	rbx
	ret	
.label_124:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4024f5
	.globl sub_4024f5
	.type sub_4024f5, @function
sub_4024f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024ff
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
	je	.label_125
	test	r14, r14
	je	.label_124
.label_125:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402530

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.section	.text
	.align	16
	#Procedure 0x402585
	.globl sub_402585
	.type sub_402585, @function
sub_402585:

	nop	word ptr cs:[rax + rax]
.label_130:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402595
	.globl sub_402595
	.type sub_402595, @function
sub_402595:

	nop	word ptr cs:[rax + rax]
.label_129:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_126
	mov	qword ptr [rsi], rbx
.label_128:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_127
	test	rax, rax
	je	.label_126
.label_127:
	pop	rbx
	ret	
.label_126:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025ce
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_129
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_130
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_128
	call	free
	xor	eax, eax
	jmp	.label_127
	.section	.text
	.align	16
	#Procedure 0x402600
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
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
	.section	.text
	.align	16
	#Procedure 0x40266e
	.globl sub_40266e
	.type sub_40266e, @function
sub_40266e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402670

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_132
	cmp	byte ptr [rax], 0x43
	jne	.label_134
	cmp	byte ptr [rax + 1], 0
	je	.label_131
.label_134:
	mov	esi, OFFSET FLAT:label_133
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_132
.label_131:
	xor	ebx, ebx
.label_132:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026a1
	.globl sub_4026a1
	.type sub_4026a1, @function
sub_4026a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026b0
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
	je	.label_135
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
.label_135:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402745
	.globl sub_402745
	.type sub_402745, @function
sub_402745:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750

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
	jmp	.label_159
	.section	.text
	.align	16
	#Procedure 0x4027ff
	.globl sub_4027ff
	.type sub_4027ff, @function
sub_4027ff:

	nop	
.label_157:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_136
	or	al, dl
	jne	.label_136
	test	dil, 1
	jne	.label_155
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_136
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_159
	jmp	.label_136
.label_396:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_165
	test	rbp, rbp
	je	.label_190
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_190:
	mov	r14d, 1
	jmp	.label_170
.label_397:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_172
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_173
.label_165:
	xor	r14d, r14d
.label_170:
	mov	eax, OFFSET FLAT:label_172
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_185
	.section	.text
	.align	16
	#Procedure 0x4028cf
	.globl sub_4028cf
	.type sub_4028cf, @function
sub_4028cf:

	nop	
.label_159:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_195
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_200]
.label_398:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_206
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_211
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_399:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_220
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_220
	xor	r14d, r14d
	nop	
.label_234:
	cmp	r14, rbp
	jae	.label_229
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_229:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_234
.label_220:
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
	jmp	.label_173
.label_391:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_173
.label_394:
	mov	al, 1
.label_392:
	mov	r12b, 1
.label_395:
	test	r12b, 1
	mov	cl, 1
	je	.label_249
	mov	ecx, eax
.label_249:
	mov	al, cl
.label_393:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_251
	test	rbp, rbp
	je	.label_256
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_256:
	mov	r14d, 1
	jmp	.label_235
.label_251:
	xor	r14d, r14d
.label_235:
	mov	ecx, OFFSET FLAT:label_211
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_185:
	mov	sil, r12b
.label_173:
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
	jmp	.label_143
	.section	.text
	.align	16
	#Procedure 0x402a91
	.globl sub_402a91
	.type sub_402a91, @function
sub_402a91:

	nop	word ptr cs:[rax + rax]
.label_145:
	inc	r12
.label_143:
	cmp	r11, -1
	je	.label_178
	cmp	r12, r11
	jne	.label_181
	jmp	.label_184
	.section	.text
	.align	16
	#Procedure 0x402ab3
	.globl sub_402ab3
	.type sub_402ab3, @function
sub_402ab3:

	nop	word ptr cs:[rax + rax]
.label_178:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_189
.label_181:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_196
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_199
	cmp	r11, -1
	jne	.label_199
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_199:
	cmp	rbx, r11
	jbe	.label_210
.label_196:
	xor	esi, esi
.label_187:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_212
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_217]
.label_436:
	test	r12, r12
	jne	.label_168
	jmp	.label_222
	.section	.text
	.align	16
	#Procedure 0x402b46
	.globl sub_402b46
	.type sub_402b46, @function
sub_402b46:

	nop	word ptr cs:[rax + rax]
.label_210:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_233
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_187
	jmp	.label_161
.label_233:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_187
.label_440:
	xor	eax, eax
	cmp	r11, -1
	je	.label_245
	test	r12, r12
	jne	.label_248
	cmp	r11, 1
	je	.label_222
	xor	r13d, r13d
	jmp	.label_152
.label_429:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_253
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_161
	cmp	r8d, 2
	jne	.label_258
	mov	eax, r9d
	and	al, 1
	jne	.label_258
	cmp	r14, rbp
	jae	.label_261
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_261:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_138
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_138:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_146
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	add	r14, 3
	mov	r9b, 1
.label_258:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_153
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_153:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_163
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_163
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_163
	cmp	r14, rbp
	jae	.label_180
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_180:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_208
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_208:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_152
.label_430:
	mov	bl, 0x62
	jmp	.label_154
.label_431:
	mov	cl, 0x74
	jmp	.label_142
.label_432:
	mov	bl, 0x76
	jmp	.label_154
.label_433:
	mov	bl, 0x66
	jmp	.label_154
.label_434:
	mov	cl, 0x72
	jmp	.label_142
.label_437:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_193
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_137
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
	jae	.label_201
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_201:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_214
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_214:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_219
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	add	r14, 3
	xor	r9d, r9d
.label_193:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_152
.label_438:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_225
	cmp	r8d, 2
	jne	.label_168
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_168
	jmp	.label_137
.label_439:
	cmp	r8d, 2
	jne	.label_237
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_137
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_226
.label_212:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_242
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_216
.label_245:
	test	r12, r12
	jne	.label_259
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_259
.label_222:
	mov	dl, 1
.label_435:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_137
	xor	eax, eax
	mov	r13b, dl
.label_152:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_144
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_147
	jmp	.label_150
	.section	.text
	.align	16
	#Procedure 0x402e24
	.globl sub_402e24
	.type sub_402e24, @function
sub_402e24:

	nop	word ptr cs:[rax + rax]
.label_144:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_150
.label_147:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_156
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_160
	.section	.text
	.align	16
	#Procedure 0x402e5d
	.globl sub_402e5d
	.type sub_402e5d, @function
sub_402e5d:

	nop	dword ptr [rax]
.label_150:
	test	sil, sil
.label_160:
	mov	ebx, r15d
	je	.label_164
	jmp	.label_167
.label_156:
	mov	ebx, r15d
	jmp	.label_167
.label_253:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_145
	xor	r15d, r15d
	jmp	.label_168
.label_237:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_142
	xor	eax, eax
	mov	r15b, 0x5c
.label_226:
	xor	r13d, r13d
	jmp	.label_164
.label_142:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_137
.label_154:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_152
	nop	
.label_167:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_161
	cmp	r8d, 2
	jne	.label_194
	mov	eax, r9d
	and	al, 1
	jne	.label_194
	cmp	r14, rbp
	jae	.label_198
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_202:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_205
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	add	r14, 3
	mov	r9b, 1
.label_194:
	cmp	r14, rbp
	jae	.label_243
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_243:
	inc	r14
	jmp	.label_192
.label_242:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_218
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_218:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_260
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_230:
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
	je	.label_238
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_247
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_224
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_203
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_174:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_240
	bt	rsi, rdx
	jb	.label_137
.label_240:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_174
.label_203:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_151
	xor	r13d, r13d
.label_151:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_230
	jmp	.label_162
.label_163:
	xor	r13d, r13d
	jmp	.label_152
.label_259:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_152
.label_225:
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
	ja	.label_176
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_262
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_188
	cmp	r14, rbp
	jae	.label_191
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_191:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_197
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_197:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_232
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_232:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_254
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_254:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_262:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_152
.label_168:
	xor	eax, eax
.label_248:
	xor	r13d, r13d
	jmp	.label_152
.label_260:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_244:
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
	je	.label_175
	cmp	rbp, -1
	je	.label_236
	cmp	rbp, -2
	je	.label_238
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_241
	xor	r13d, r13d
.label_241:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_244
	jmp	.label_162
.label_238:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_223
	lea	rax, [r10 + r12]
.label_250:
	cmp	byte ptr [rax + rsi], 0
	je	.label_223
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_250
.label_223:
	mov	qword ptr [rsp + 0x40], rsi
.label_247:
	xor	r13d, r13d
	jmp	.label_224
.label_236:
	xor	r13d, r13d
.label_175:
	mov	r10, qword ptr [rsp + 0x28]
.label_224:
	mov	r12, qword ptr [rsp + 0x40]
.label_162:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_216:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_141
	test	al, al
	je	.label_141
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_152
.label_141:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x403257
	.globl sub_403257
	.type sub_403257, @function
sub_403257:

	nop	word ptr [rax + rax]
.label_177:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_158:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_166
	test	sil, 1
	je	.label_183
	cmp	r14, rbp
	jae	.label_169
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_169:
	inc	r14
	xor	esi, esi
	jmp	.label_183
	.section	.text
	.align	16
	#Procedure 0x403295
	.globl sub_403295
	.type sub_403295, @function
sub_403295:

	nop	word ptr cs:[rax + rax]
.label_166:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_161
	cmp	r8d, 2
	jne	.label_182
	mov	eax, r9d
	and	al, 1
	jne	.label_182
	cmp	r14, rbp
	jae	.label_186
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_148
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_148:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_221
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_221:
	add	r14, 3
	mov	r9b, 1
.label_182:
	cmp	r14, rbp
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_140
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_140:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_215
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_215:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_183:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_164
	test	r9b, 1
	je	.label_227
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_179
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_231
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_231:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_239
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_239:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_227
	.section	.text
	.align	16
	#Procedure 0x4033a6
	.globl sub_4033a6
	.type sub_4033a6, @function
sub_4033a6:

	nop	word ptr cs:[rax + rax]
.label_179:
	mov	rbx, rcx
.label_227:
	cmp	r14, rbp
	jae	.label_177
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_177
	.section	.text
	.align	16
	#Procedure 0x4033ce
	.globl sub_4033ce
	.type sub_4033ce, @function
sub_4033ce:

	nop	
.label_164:
	test	r9b, 1
	je	.label_252
	and	al, 1
	jne	.label_252
	cmp	r14, rbp
	jae	.label_255
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_255:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	add	r14, 2
	xor	r9d, r9d
.label_252:
	mov	ebx, r15d
.label_192:
	cmp	r14, rbp
	jae	.label_139
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_139:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_145
.label_176:
	xor	r13d, r13d
	jmp	.label_152
	.section	.text
	.align	16
	#Procedure 0x403431
	.globl sub_403431
	.type sub_403431, @function
sub_403431:

	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rcx, r12
.label_189:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_157
	or	al, dl
	jne	.label_157
	mov	r11, rcx
	jmp	.label_161
.label_137:
	mov	eax, 2
.label_149:
	mov	qword ptr [rsp + 0x38], rax
.label_161:
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
.label_257:
	mov	r14, rax
.label_228:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_213
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_171
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_171
	inc	rdx
	nop	dword ptr [rax + rax]
.label_209:
	cmp	r14, rbp
	jae	.label_207
	mov	byte ptr [rcx + r14], al
.label_207:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_209
	jmp	.label_171
.label_155:
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
	jmp	.label_257
.label_213:
	mov	rcx, qword ptr [rsp + 0x10]
.label_171:
	cmp	r14, rbp
	jae	.label_228
	mov	byte ptr [rcx + r14], 0
	jmp	.label_228
.label_188:
	mov	eax, 5
	jmp	.label_149
.label_195:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403580
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
	je	.label_263
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
.label_263:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035e1
	.globl sub_4035e1
	.type sub_4035e1, @function
sub_4035e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
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
	je	.label_264
	mov	qword ptr [rax], rbx
.label_264:
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
	#Procedure 0x4036dc
	.globl sub_4036dc
	.type sub_4036dc, @function
sub_4036dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036e0
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
	.section	.text
	.align	16
	#Procedure 0x4037a1
	.globl sub_4037a1
	.type sub_4037a1, @function
sub_4037a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037b0

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
	je	.label_265
	cmp	r15, -2
	jb	.label_265
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_265
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_265:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403806
	.globl sub_403806
	.type sub_403806, @function
sub_403806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403810
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403829
	.globl sub_403829
	.type sub_403829, @function
sub_403829:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403830

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	test	r14d, r14d
	jne	.label_281
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	cmp	dword ptr [rip + uname_mode],  1
	jne	.label_282
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	jmp	.label_270
.label_281:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, r14d
	call	exit
.label_282:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
.label_270:
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	cmp	dword ptr [rip + uname_mode],  1
	mov	eax, OFFSET FLAT:label_67
	mov	ebx, OFFSET FLAT:label_68
	cmove	rbx, rax
	mov	esi, OFFSET FLAT:label_271
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:emit_ancillary_info.infomap
	test	eax, eax
	je	.label_274
	mov	esi, OFFSET FLAT:label_78
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_285
	test	eax, eax
	je	.label_274
	mov	esi, OFFSET FLAT:label_290
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_294
	test	eax, eax
	je	.label_274
	mov	esi, OFFSET FLAT:label_268
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_275
	test	eax, eax
	je	.label_274
	mov	esi, OFFSET FLAT:label_276
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_286
	test	eax, eax
	je	.label_274
	mov	esi, OFFSET FLAT:label_291
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_266
	mov	ecx, OFFSET FLAT:label_267
	cmove	rcx, rax
.label_274:
	mov	rbp, qword ptr [rcx + 8]
	test	rbp, rbp
	cmove	rbp, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
	je	.label_287
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_287
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_287:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbp, rbx
	mov	eax, OFFSET FLAT:label_284
	mov	ecx, OFFSET FLAT:label_73
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbp
	call	__printf_chk
	mov	edi, r14d
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403ab7
	.globl sub_403ab7
	.type sub_403ab7, @function
sub_403ab7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ac0
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
	#Procedure 0x403ad3
	.globl sub_403ad3
	.type sub_403ad3, @function
sub_403ad3:

	nop	word ptr cs:[rax + rax]
.label_295:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ae5
	.globl sub_403ae5
	.type sub_403ae5, @function
sub_403ae5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ae9
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
	je	.label_295
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
	.section	.text
	.align	16
	#Procedure 0x403b50
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
	#Procedure 0x403b83
	.globl sub_403b83
	.type sub_403b83, @function
sub_403b83:

	nop	word ptr cs:[rax + rax]
.label_300:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_296
	mov	eax, OFFSET FLAT:label_297
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x403b9f
	.globl sub_403b9f
	.type sub_403b9f, @function
sub_403b9f:

	nop	word ptr cs:[rax + rax]
.label_303:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_299
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_299
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_299
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_299
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_299
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_299
	cmp	byte ptr [rax + 7], 0
	je	.label_300
.label_299:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_172
	mov	eax, OFFSET FLAT:label_211
.label_298:
	cmove	rax, rcx
.label_304:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bf2

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
	jne	.label_304
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_303
	cmp	ecx, 0x55
	jne	.label_299
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_299
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_299
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_299
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_299
	cmp	byte ptr [rax + 5], 0
	jne	.label_299
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_301
	mov	eax, OFFSET FLAT:label_302
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x403c60
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
	je	.label_305
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
.label_305:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403cc8
	.globl sub_403cc8
	.type sub_403cc8, @function
sub_403cc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_308
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_307
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_307
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_311
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_311:
	mov	rbx, r14
.label_307:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_308:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_309
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d71
	.globl sub_403d71
	.type sub_403d71, @function
sub_403d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d80

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_73
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_312
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403da5
	.globl sub_403da5
	.type sub_403da5, @function
sub_403da5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0
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
	.section	.text
	.align	16
	#Procedure 0x403e25
	.globl sub_403e25
	.type sub_403e25, @function
sub_403e25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_313
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_315:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_315
.label_313:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_316
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_317], OFFSET FLAT:slot0
.label_316:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_314
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_314:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ec1
	.globl sub_403ec1
	.type sub_403ec1, @function
sub_403ec1:

	nop	word ptr cs:[rax + rax]
.label_318:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ed5
	.globl sub_403ed5
	.type sub_403ed5, @function
sub_403ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403edf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_318
	call	rpl_calloc
	test	rax, rax
	je	.label_318
	pop	rcx
	ret	
.label_319:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f06
	.globl sub_403f06
	.type sub_403f06, @function
sub_403f06:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f0b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_319
	test	rdx, rdx
	je	.label_319
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403f3a
	.globl sub_403f3a
	.type sub_403f3a, @function
sub_403f3a:

	nop	word ptr [rax + rax]
.label_322:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_321
.label_320:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f59
	.globl sub_403f59
	.type sub_403f59, @function
sub_403f59:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f61
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_321
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_322
	test	rbx, rbx
	jne	.label_322
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f90

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
	#Procedure 0x403fa7
	.globl sub_403fa7
	.type sub_403fa7, @function
sub_403fa7:

	nop	word ptr [rax + rax]
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403fb5
	.globl sub_403fb5
	.type sub_403fb5, @function
sub_403fb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_323
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_324
	test	rax, rax
	je	.label_323
.label_324:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ff0
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
	#Procedure 0x403fff
	.globl sub_403fff
	.type sub_403fff, @function
sub_403fff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404000
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_32]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_34]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_325
	test	rdx, rdx
	je	.label_325
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_325:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40406a
	.globl sub_40406a
	.type sub_40406a, @function
sub_40406a:

	nop	word ptr [rax + rax]
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
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
	jmp	.label_327
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
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
.label_327:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404114
	.globl sub_404114
	.type sub_404114, @function
sub_404114:

	nop	dword ptr [rax + rax]
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
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
	jmp	.label_327
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	jmp	.label_327
.label_357:
	add	rsp, 8
	jmp	.label_327
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
	jmp	.label_327
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
	jmp	.label_327
	.section	.text
	.align	16
	#Procedure 0x4042d9

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
	je	.label_332
	mov	edx, OFFSET FLAT:label_342
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_334
.label_332:
	mov	edx, OFFSET FLAT:label_330
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_337
	jmp	qword ptr [(r12 * 8) + label_340]
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	jmp	.label_327
	.section	.text
	.align	16
	#Procedure 0x4043d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043d8
	.globl sub_4043d8
	.type sub_4043d8, @function
sub_4043d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_348
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_346
	cmp	dword ptr [rbp], 0x20
	jne	.label_346
.label_348:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_350
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_349
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_349:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_347
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_350:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4044a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_351:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_351
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4044c1
	.globl sub_4044c1
	.type sub_4044c1, @function
sub_4044c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404535
	.globl sub_404535
	.type sub_404535, @function
sub_404535:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404542
	.globl sub_404542
	.type sub_404542, @function
sub_404542:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404566
	.globl sub_404566
	.type sub_404566, @function
sub_404566:

	nop	word ptr cs:[rax + rax]
