	.section	.text
	.align	32
	#Procedure 0x401ac9
	.globl sub_401ac9
	.type sub_401ac9, @function
sub_401ac9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401aca
	.globl sub_401aca
	.type sub_401aca, @function
sub_401aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b02
	.globl sub_401b02
	.type sub_401b02, @function
sub_401b02:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b4a
	.globl sub_401b4a
	.type sub_401b4a, @function
sub_401b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b6c
	.globl sub_401b6c
	.type sub_401b6c, @function
sub_401b6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b7d
	.globl sub_401b7d
	.type sub_401b7d, @function
sub_401b7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b96
	.globl sub_401b96
	.type sub_401b96, @function
sub_401b96:

	nop	word ptr cs:[rax + rax]
.label_11:
	xor	eax, eax
	jmp	.label_9
	.section	.text
	.align	32
	#Procedure 0x401ba4
	.globl sub_401ba4
	.type sub_401ba4, @function
sub_401ba4:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba9

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_10
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_11
	mov	qword ptr [rbx + 0x10], rax
.label_10:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_9:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_12
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_12:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c23
	.globl sub_401c23
	.type sub_401c23, @function
sub_401c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_13
	test	rax, rax
	je	.label_14
.label_13:
	pop	rbx
	ret	
.label_14:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c4a
	.globl sub_401c4a
	.type sub_401c4a, @function
sub_401c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c50

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_15
	lea	r13, [r12 + 0x20]
	jmp	.label_16
.label_17:
	xor	ecx, ecx
	test	r14, r14
	je	.label_19
	test	rax, rax
	je	.label_19
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_19:
	mov	qword ptr [r13], rbp
	mov	eax, 1
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x401ca3
	.globl sub_401ca3
	.type sub_401ca3, @function
sub_401ca3:

	nop	word ptr cs:[rax + rax]
.label_16:
	mov	rbp, qword ptr [r12 + 0x20]
	mov	r14, qword ptr [r12 + 0x50]
	sub	r14, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0xc]
	mov	rdx, r14
	mov	rcx, r13
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_17
	mov	ecx, dword ptr [rsp + 0xc]
.label_18:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_16
.label_15:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d03
	.globl sub_401d03
	.type sub_401d03, @function
sub_401d03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_20
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_20:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d4b
	.globl sub_401d4b
	.type sub_401d4b, @function
sub_401d4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_21
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_23:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_22
	cmp	qword ptr [r9 + r10], rdx
	je	.label_24
.label_22:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_23
.label_21:
	mov	rax, -1
.label_24:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d9c
	.globl sub_401d9c
	.type sub_401d9c, @function
sub_401d9c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401da0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_25
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_25
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_26:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_25
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_26
.label_25:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401de5
	.globl sub_401de5
	.type sub_401de5, @function
sub_401de5:

	nop	word ptr cs:[rax + rax]
.label_27:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401df6
	.globl sub_401df6
	.type sub_401df6, @function
sub_401df6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dfb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_27
	test	rdx, rdx
	je	.label_27
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_28:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	eax, edx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e30
	.globl sub_401e30
	.type sub_401e30, @function
sub_401e30:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e3c

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	cmp	cl, 2
	jne	.label_31
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_32
	mov	eax, edx
	and	eax, 1
	jne	.label_30
	mov	esi, ecx
	and	esi, 4
	jne	.label_31
.label_30:
	test	eax, eax
	je	.label_29
	mov	eax, ecx
	and	eax, 8
	jne	.label_31
.label_29:
	test	dl, 2
	jne	.label_28
	mov	eax, ecx
	and	eax, 0x20
	je	.label_28
.label_31:
	xor	eax, eax
.label_32:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e80

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	al, byte ptr [rbx + 0xb0]
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rbx + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	r15d, 0
	jne	.label_33
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [rbx + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [rbx + 0xc0], rax
	mov	r15d, 2
	mov	r14d, 0x80
	test	byte ptr [rbx + 0xb0], 4
	je	.label_33
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xc8], xmm0
.label_35:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_33:
	call	__ctype_b_loc
	lea	rdx, [r14 + r14]
	add	rdx, qword ptr [rax]
.label_38:
	mov	rax, rdx
	xor	ecx, ecx
	nop	
.label_36:
	lea	esi, [r14 + rcx]
	cmp	esi, 0x5f
	je	.label_34
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_37
.label_34:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [rbx + r15*8 + 0xb8], rsi
.label_37:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_36
	inc	r15
	add	r14, 0x40
	sub	rdx, -0x80
	cmp	r15d, 4
	jne	.label_38
	jmp	.label_35
	.section	.text
	.align	32
	#Procedure 0x401f44
	.globl sub_401f44
	.type sub_401f44, @function
sub_401f44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_39:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_39
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f72
	.globl sub_401f72
	.type sub_401f72, @function
sub_401f72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_40
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_45
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_45
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_43
.label_45:
	test	dl, 1
	je	.label_50
	cmp	al, 0x5c
	jne	.label_50
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_50
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_43
.label_40:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_50:
	cmp	al, 0x5c
	jg	.label_47
	cmp	al, 0x2d
	je	.label_48
	cmp	al, 0x5b
	jne	.label_43
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_49
	mov	rsi, qword ptr [rsi + 8]
	mov	cl, byte ptr [rsi + rcx]
	mov	byte ptr [rdi], cl
	cmp	cl, 0x3d
	je	.label_42
	cmp	cl, 0x3a
	je	.label_41
	cmp	cl, 0x2e
	jne	.label_44
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_47:
	cmp	al, 0x5d
	je	.label_46
	cmp	al, 0x5e
	jne	.label_43
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_43:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_48:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_46:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_49:
	mov	byte ptr [rdi], 0
.label_44:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], al
	mov	eax, 1
	ret	
.label_42:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_41:
	test	dl, 4
	je	.label_44
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	32
	#Procedure 0x402070
	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:

	push	rbx
	mov	ebx, esi
	call	mkostemp
	mov	edi, eax
	mov	esi, ebx
	pop	rbx
	jmp	fd_safer_flag
	.section	.text
	.align	32
	#Procedure 0x402082
	.globl sub_402082
	.type sub_402082, @function
sub_402082:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402090

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_51
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_52:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_52
.label_51:
	cmp	rax, r8
	jge	.label_53
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_54
.label_53:
	mov	rax, -1
.label_54:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020fa
	.globl sub_4020fa
	.type sub_4020fa, @function
sub_4020fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402100
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_59
	mov	ecx, OFFSET FLAT:label_60
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402174
	.globl sub_402174
	.type sub_402174, @function
sub_402174:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402180
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402183
	.globl sub_402183
	.type sub_402183, @function
sub_402183:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402190
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_61:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_61
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4021b1
	.globl sub_4021b1
	.type sub_4021b1, @function
sub_4021b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0

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
	#Procedure 0x4021ed
	.globl sub_4021ed
	.type sub_4021ed, @function
sub_4021ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021f0
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
	#Procedure 0x402203
	.globl sub_402203
	.type sub_402203, @function
sub_402203:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402210
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40222b
	.globl sub_40222b
	.type sub_40222b, @function
sub_40222b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402230

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
	jne	.label_63
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
	je	.label_62
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_67
	mov	eax, OFFSET FLAT:label_68
	jmp	.label_66
.label_62:
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
	je	.label_71
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_64
	mov	eax, OFFSET FLAT:label_65
	jmp	.label_66
.label_71:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_69
	mov	eax, OFFSET FLAT:label_70
.label_66:
	cmove	rax, rcx
.label_63:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022ed
	.globl sub_4022ed
	.type sub_4022ed, @function
sub_4022ed:

	nop	dword ptr [rax]
.label_73:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_72
	test	cl, cl
	jne	.label_72
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_72:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40231b
	.globl sub_40231b
	.type sub_40231b, @function
sub_40231b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402325

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
	je	.label_73
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_72
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_72
	.section	.text
	.align	32
	#Procedure 0x402360

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_74
.label_75:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_75
.label_74:
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	mov	qword ptr [r14 + 0x68], 0
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	qword ptr [r14 + 0x20], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023b4
	.globl sub_4023b4
	.type sub_4023b4, @function
sub_4023b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_76
	test	rsi, rsi
	mov	ecx, 1
	je	.label_77
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_77
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_76:
	mov	ecx, 1
.label_77:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40240b
	.globl sub_40240b
	.type sub_40240b, @function
sub_40240b:

	nop	dword ptr [rax + rax]
.label_81:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_78
.label_86:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_78
	test	eax, eax
	je	.label_80
	jmp	.label_78
	.section	.text
	.align	32
	#Procedure 0x40242c
	.globl sub_40242c
	.type sub_40242c, @function
sub_40242c:

	nop	dword ptr [rax]
.label_83:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_78
.label_79:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	mov	bpl, byte ptr [rax + rsi]
	movzx	esi, bpl
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_78
	xor	edx, edx
	cmp	bpl, 0xa
	je	.label_84
	jmp	.label_78
.label_85:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_86
.label_80:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_78
.label_84:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_78:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40248a

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_81
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_83
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_79
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_82:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_85
	dec	rsi
	test	rsi, rsi
	jg	.label_82
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_78
	.section	.text
	.align	32
	#Procedure 0x4024d0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	ecx, esi
	rol	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024f3
	.globl sub_4024f3
	.type sub_4024f3, @function
sub_4024f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_88
	cmp	byte ptr [rax], 0x43
	jne	.label_90
	cmp	byte ptr [rax + 1], 0
	je	.label_87
.label_90:
	mov	esi, OFFSET FLAT:label_89
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_88
.label_87:
	xor	ebx, ebx
.label_88:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402531
	.globl sub_402531
	.type sub_402531, @function
sub_402531:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x88], 0
	mov	qword ptr [rsp + 0x48], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_114
	test	r14, r14
	je	.label_114
	mov	rsi, rbp
	mov	rdi, r12
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	mov	al, byte ptr [r12 + 8]
	cmp	al, 0x19
	je	.label_119
	cmp	al, 2
	je	.label_94
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_121
.label_119:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_122
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_122:
	movsxd	rax, ebp
	mov	rsi, qword ptr [rsp + 0x40]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	call	peek_token_bracket
	mov	ebp, eax
	cmp	byte ptr [r12 + 8], 2
	je	.label_94
	mov	al, 1
	mov	dword ptr [rsp + 0x24], eax
.label_121:
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x38], r13
	mov	eax, dword ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_97
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_97:
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	lea	rdi, [rsp + 8]
	mov	r9d, 1
	mov	r13, qword ptr [rsp + 0x40]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_110
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	lea	rbp, [rsp + 0x48]
	jmp	.label_112
	.section	.text
	.align	32
	#Procedure 0x402694
	.globl sub_402694
	.type sub_402694, @function
sub_402694:

	nop	word ptr cs:[rax + rax]
.label_118:
	cmp	al, 2
	je	.label_104
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_112
	jmp	.label_110
.label_102:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_125
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_126
	.section	.text
	.align	32
	#Procedure 0x40270d
	.globl sub_40270d
	.type sub_40270d, @function
sub_40270d:

	nop	dword ptr [rax]
.label_112:
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 8]
	cmp	eax, 2
	je	.label_95
	cmp	eax, 4
	je	.label_95
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x16
	je	.label_99
	cmp	al, 2
	jne	.label_100
	jmp	.label_104
.label_99:
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x98]
	cmp	cl, 0x15
	je	.label_109
	cmp	cl, 2
	lea	rdx, [rsp + 0x78]
	je	.label_104
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0x80], rcx
	mov	dword ptr [rsp + 0x78], 3
	mov	r9d, 1
	mov	rdi, rdx
	mov	rsi, r13
	lea	rdx, [rsp + 0x90]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_110
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	mov	edx, 0
	cmovg	rdx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0x88]
	lea	r8, [rsp + 8]
	lea	r9, [rsp + 0x78]
	call	build_range_exp
	jmp	.label_92
.label_109:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_100:
	mov	eax, dword ptr [rsp + 8]
.label_95:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_96
	jmp	qword ptr [(rcx * 8) + label_98]
.label_1797:
	movzx	esi, byte ptr [rsp + 0x10]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_101
.label_1798:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 0x30], rbx
	je	.label_102
.label_126:
	mov	eax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rbp, [rsp + 0x48]
	jmp	.label_101
.label_1799:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_92
.label_1800:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_92
.label_1801:
	mov	rdi, qword ptr [r13 + 0x78]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, rbp
	mov	r9, rbx
	call	build_charclass
.label_92:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	test	eax, eax
	jne	.label_117
.label_101:
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_118
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_120
	mov	rdi, r15
	call	bitset_not
.label_120:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	dword ptr [rbx + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x18]
	jl	.label_124
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_124:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_91
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_91
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_91
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_91
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_123
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_91
	test	byte ptr [r14 + 0x20], 1
	jne	.label_91
.label_123:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	jmp	.label_108
.label_91:
	or	byte ptr [rbx + 0xb0], 2
	mov	byte ptr [rsp + 0x58], 6
	mov	qword ptr [rsp + 0x50], r14
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_111
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_116:
	cmp	qword ptr [r15 + rax*8], 0
	jne	.label_115
	inc	rax
	cmp	rax, 3
	jle	.label_116
	mov	rdi, r15
	call	free
	jmp	.label_113
.label_115:
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	test	rax, rax
	je	.label_111
	mov	ecx, 0xa
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_108:
	mov	rbp, rax
	test	rbp, rbp
	je	.label_111
.label_113:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_104:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 7
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_93
.label_110:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
.label_117:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_93
.label_94:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_93
.label_114:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_103
.label_96:
	mov	edi, OFFSET FLAT:label_105
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_107
	call	__assert_fail
.label_125:
	mov	r14, rbp
.label_111:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_93:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_103:
	xor	ebp, ebp
	jmp	.label_113
	.section	.text
	.align	32
	#Procedure 0x402a91
	.globl sub_402a91
	.type sub_402a91, @function
sub_402a91:

	nop	word ptr cs:[rax + rax]
.label_128:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402aa5

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_130
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_128
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_131
.label_130:
	test	rcx, rcx
	jne	.label_129
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_129:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_127
.label_131:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_127:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402b19
	.globl sub_402b19
	.type sub_402b19, @function
sub_402b19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b20
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b23
	.globl sub_402b23
	.type sub_402b23, @function
sub_402b23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	32
	#Procedure 0x402b3d
	.globl sub_402b3d
	.type sub_402b3d, @function
sub_402b3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b48
	.globl sub_402b48
	.type sub_402b48, @function
sub_402b48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b50

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_132
	jmp	btowc
.label_132:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b5d
	.globl sub_402b5d
	.type sub_402b5d, @function
sub_402b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b60

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	jae	.label_136
.label_137:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	jne	.label_133
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_138
.label_133:
	cmp	eax, 6
	sete	cl
.label_138:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_134:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	lea	rcx, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_134
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_134
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_135
	test	rbp, rbp
	je	.label_135
	test	r13, r13
	je	.label_135
	test	rax, rax
	je	.label_135
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_137
.label_135:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_134
	.section	.text
	.align	32
	#Procedure 0x402d25
	.globl sub_402d25
	.type sub_402d25, @function
sub_402d25:

	nop	word ptr cs:[rax + rax]
.label_1914:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
	.section	.text
	.align	32
	#Procedure 0x402d4c

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0xc], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r13, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	jl	.label_142
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
.label_139:
	xor	eax, eax
.label_1238:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_142:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	mov	al, byte ptr [r14 + 8]
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_140
	jmp	qword ptr [(rax * 8) + label_141]
.label_1913:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_140
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 0x20], 0x15
	jne	.label_1238
.label_140:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x402e0d
	.globl sub_402e0d
	.type sub_402e0d, @function
sub_402e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e10

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
	je	.label_152
	mov	edx, OFFSET FLAT:label_158
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_145
.label_152:
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
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
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_153
	jmp	qword ptr [(r12 * 8) + label_154]
.label_1784:
	add	rsp, 8
	jmp	.label_146
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
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
	jmp	.label_146
.label_1785:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
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
.label_1786:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
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
.label_1787:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
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
.label_1788:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
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
	jmp	.label_146
.label_1789:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
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
	jmp	.label_146
.label_1790:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
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
	jmp	.label_146
.label_1791:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
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
	jmp	.label_146
.label_1793:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
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
	jmp	.label_146
.label_1792:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
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
.label_146:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403168
	.globl sub_403168
	.type sub_403168, @function
sub_403168:

	nop	dword ptr [rax + rax]
.label_167:
	mov	rcx, qword ptr [rcx]
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_162
	movsxd	r12, eax
	jmp	.label_164
	.section	.text
	.align	32
	#Procedure 0x403191

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, rbx
	shl	r14, 4
	mov	edi, dword ptr [rax + r14 + 8]
	test	dil, 8
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], rcx
	jne	.label_168
	test	edi, 0x100000
	jne	.label_167
	movzx	ecx, dil
	cmp	ecx, 4
	jne	.label_162
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rdx + rax + 0x10]
	mov	rax, qword ptr [rdx + rax + 0x18]
	mov	r12, rax
	sub	r12, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_171
	cmp	rax, -1
	mov	r13, -1
	je	.label_163
	cmp	rdi, -1
	je	.label_163
	test	r12, r12
	je	.label_172
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, r12
	jl	.label_163
	mov	rax, qword ptr [rbp + 8]
	add	rdi, rax
	add	rsi, rax
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_163
	jmp	.label_164
.label_168:
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdx
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbp, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_163
	lea	rax, [rbx + rbx*2]
	mov	r13, -1
	cmp	qword ptr [rbp + rax*8 + 8], 0
	jle	.label_163
	add	r14, 8
	lea	r15, [rbp + rax*8 + 8]
	mov	r12, qword ptr [rbp + rax*8 + 0x10]
	mov	r13, -1
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_173:
	mov	rbx, qword ptr [r12 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_170
	cmp	r13, -1
	jne	.label_169
	mov	r13, rbx
.label_170:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_173
	jmp	.label_163
.label_169:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_166
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_163
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, rbp
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	jne	.label_166
	jmp	.label_163
.label_171:
	test	r12, r12
	jne	.label_164
.label_172:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_163
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [rbx + rbx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r13, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_163
.label_162:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r13, -1
	mov	r12d, 1
	test	al, al
	je	.label_163
.label_164:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 8]
	add	r12, qword ptr [rax]
	mov	qword ptr [rax], r12
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_165
	mov	r13, -1
	cmp	r12, qword ptr [rbp + 0xa8]
	jg	.label_163
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + r12*8]
	test	rdi, rdi
	je	.label_163
	add	rdi, 8
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_163
.label_165:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], 0
.label_166:
	mov	r13, rbx
.label_163:
	mov	rax, r13
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
	#Procedure 0x403441
	.globl sub_403441
	.type sub_403441, @function
sub_403441:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r13, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	r15d, ecx
	and	r15d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	ebp, ecx
	and	ebp, 0x10
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_174
	.section	.text
	.align	32
	#Procedure 0x403497
	.globl sub_403497
	.type sub_403497, @function
sub_403497:

	nop	word ptr [rax + rax]
.label_1187:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_174:
	movzx	eax, byte ptr [r13 + 8]
	dec	al
	movzx	eax, al
	cmp	al, 0x23
	ja	.label_175
	mov	r14, qword ptr [r12]
	jmp	qword ptr [(rax * 8) + label_176]
.label_1909:
	test	r15, r15
	jne	.label_1185
.label_1906:
	test	rbx, rbx
	jne	.label_1185
	test	rbp, rbp
	jne	.label_1187
.label_1905:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_1189
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_1189
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_1172
.label_1185:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
	jmp	.label_1172
.label_1189:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1193
	jmp	.label_1180
.label_1910:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_662
	mov	ecx, OFFSET FLAT:label_1195
	jmp	.label_1196
.label_1911:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_627
	mov	ecx, OFFSET FLAT:label_697
.label_1196:
	mov	rdi, r14
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_1194
.label_1901:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1180
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_1193
	mov	r15, qword ptr [rsp + 0x10]
.label_1184:
	mov	rax, qword ptr [r15 + 0x48]
	cmp	qword ptr [r15 + 0x68], rax
	jle	.label_1193
	cmp	rax, qword ptr [r15 + 0x30]
	je	.label_1193
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1193
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	ecx, 0x10
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	rbp, rax
	test	rbx, rbx
	je	.label_1180
	test	rbp, rbp
	jne	.label_1184
	jmp	.label_1180
.label_1902:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r14 + 0xa8], rax
	je	.label_1213
	or	qword ptr [r14 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1180
	inc	qword ptr [r14 + 0x98]
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_1193
.label_1903:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1180
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_1193
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_1193
.label_1904:
	mov	r8, qword ptr [rsp + 0x20]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
	jmp	.label_1194
.label_1907:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_1220
	test	byte ptr [r14 + 0xb0], 0x10
	jne	.label_1223
	mov	rdi, r14
	call	init_word_char
.label_1223:
	mov	eax, dword ptr [r13]
.label_1220:
	cmp	eax, 0x200
	je	.label_1226
	cmp	eax, 0x100
	jne	.label_1227
.label_1226:
	cmp	dword ptr [r13], 0x100
	jne	.label_1228
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_1231
.label_1908:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
.label_1194:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1193
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_175
.label_1193:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	r15d, ebx
	and	r15d, 0x1000000
	mov	r12d, 0x8c0800
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1234:
	movzx	eax, byte ptr [r13 + 8]
	cmp	rax, 0x17
	ja	.label_1244
	bt	r12, rax
	jae	.label_1244
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	mov	rcx, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_1249
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_1250
.label_1249:
	test	r15, r15
	mov	rbp, rax
	je	.label_1234
	movzx	ecx, byte ptr [r13 + 8]
	cmp	cl, 0x17
	je	.label_1253
	cmp	cl, 0xb
	mov	rbp, rax
	jne	.label_1234
.label_1253:
	test	rax, rax
	je	.label_1248
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_1248:
	mov	dword ptr [rbx], 0xd
.label_1172:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_175
.label_1244:
	mov	qword ptr [rsp], rbp
.label_175:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1912:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_1172
.label_1227:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	jmp	.label_1175
.label_1228:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_1231:
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_1180
	test	rbp, rbp
	je	.label_1180
.label_1175:
	test	rax, rax
	je	.label_1180
	mov	qword ptr [rsp], rax
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_175
.label_1250:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbp, rbp
	je	.label_175
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbp
	call	postorder
	jmp	.label_175
.label_1180:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_1172
.label_1213:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_1172
	.section	.text
	.align	32
	#Procedure 0x403915
	.globl sub_403915
	.type sub_403915, @function
sub_403915:

	nop	word ptr cs:[rax + rax]
.label_177:
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
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_177
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 8]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_179
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_184
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_184
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_184
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_179
.label_184:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x20], r12
	je	.label_188
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_188
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_180:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r12*8]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_183
	test	rcx, rcx
	jne	.label_178
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_181
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x403a5b
	.globl sub_403a5b
	.type sub_403a5b, @function
sub_403a5b:

	nop	dword ptr [rax + rax]
.label_178:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_181:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_179
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_187
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_183:
	mov	r15b, 1
.label_187:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_180
	jmp	.label_186
.label_188:
	xor	r15d, r15d
.label_186:
	lea	rdi, [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_179
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_182
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_182
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_185
.label_182:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_185:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rdx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rdx], xmm0
	xor	eax, eax
.label_179:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b2b
	.globl sub_403b2b
	.type sub_403b2b, @function
sub_403b2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	dword ptr [rsp + 0xc], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_194
.label_193:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_192
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_189
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 0x10]
	lea	rcx, [rsp + 0xc]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_189
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_189
	test	rbp, rbp
	jne	.label_190
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_190
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_190
	mov	rdi, r14
	call	optimize_utf8
.label_190:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_192
.label_195:
	mov	eax, dword ptr [rsp + 0xc]
.label_191:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_189:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
.label_192:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_195
.label_194:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_191
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_193
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	32
	#Procedure 0x403cb5
	.globl sub_403cb5
	.type sub_403cb5, @function
sub_403cb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cc0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cca
	.globl sub_403cca
	.type sub_403cca, @function
sub_403cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0

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
	je	.label_198
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_196
	jmp	.label_197
.label_198:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_197
.label_196:
	mov	eax, 1
	test	bpl, bpl
	je	.label_197
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
.label_197:
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
	#Procedure 0x403d58
	.globl sub_403d58
	.type sub_403d58, @function
sub_403d58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60

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
	je	.label_199
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_201
	jmp	.label_200
.label_199:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_200
.label_201:
	mov	eax, 1
	test	bpl, bpl
	je	.label_200
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
.label_200:
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
	#Procedure 0x403dd9
	.globl sub_403dd9
	.type sub_403dd9, @function
sub_403dd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403de0

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
	je	.label_204
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_203
	jmp	.label_202
.label_204:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_202
.label_203:
	mov	eax, 1
	test	bpl, bpl
	je	.label_202
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
.label_202:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e43
	.globl sub_403e43
	.type sub_403e43, @function
sub_403e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e50

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
	je	.label_207
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_205
	jmp	.label_206
.label_207:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_206
.label_205:
	mov	eax, 1
	test	bpl, bpl
	je	.label_206
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_206:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403eaf
	.globl sub_403eaf
	.type sub_403eaf, @function
sub_403eaf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403eb0

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
	je	.label_208
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_210
	jmp	.label_209
.label_208:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_209
.label_210:
	mov	eax, 1
	test	bpl, bpl
	je	.label_209
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_209:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ef9
	.globl sub_403ef9
	.type sub_403ef9, @function
sub_403ef9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f00

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
	je	.label_213
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_212
	jmp	.label_211
.label_213:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_211
.label_212:
	mov	eax, 1
	test	bpl, bpl
	je	.label_211
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_211:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f45
	.globl sub_403f45
	.type sub_403f45, @function
sub_403f45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f50

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_216
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_215
	jmp	.label_214
.label_216:
	mov	eax, 1
	test	cl, cl
	je	.label_214
.label_215:
	xor	eax, eax
.label_214:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f7f
	.globl sub_403f7f
	.type sub_403f7f, @function
sub_403f7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_217
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_220:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_218
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_221
.label_218:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_219
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_219:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_220
.label_217:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40403a
	.globl sub_40403a
	.type sub_40403a, @function
sub_40403a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404040
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
	#Procedure 0x404056
	.globl sub_404056
	.type sub_404056, @function
sub_404056:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404060

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rax, rsi
	sar	rax, 0x3f
	shr	rax, 0x3a
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40407e
	.globl sub_40407e
	.type sub_40407e, @function
sub_40407e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404080
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
	#Procedure 0x4040b3
	.globl sub_4040b3
	.type sub_4040b3, @function
sub_4040b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_223:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_224:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_222
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_224
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_222
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_223
.label_222:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404122
	.globl sub_404122
	.type sub_404122, @function
sub_404122:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404130

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp + 8]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_229
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_228
	cmp	qword ptr [rsp + 0x10], 0
	jle	.label_228
	xor	r13d, r13d
	lea	r14, [rsp + 8]
	nop	word ptr [rax + rax]
.label_234:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	rdx, r8
	shl	rdx, 4
	movzx	r9d, byte ptr [rax + rdx + 8]
	cmp	r9d, 4
	jne	.label_231
	cmp	qword ptr [rsp + 0x10], 0
	mov	esi, 0
	jle	.label_225
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rdx, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_226:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	cmp	byte ptr [rdi + rbx + 8], 9
	jne	.label_230
	mov	rbx, qword ptr [rdi + rbx]
	cmp	rbx, qword ptr [rdx]
	je	.label_225
.label_230:
	inc	rsi
	cmp	rsi, rax
	jl	.label_226
.label_225:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 0x10]
	je	.label_231
	test	al, al
	jne	.label_231
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_231
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_229
	nop	word ptr cs:[rax + rax]
.label_231:
	inc	r13
	cmp	r13, qword ptr [rsp + 0x10]
	jl	.label_234
.label_228:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_227
	cmp	byte ptr [rax + 0x68], 0
	js	.label_232
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_233
.label_232:
	lea	rbx, [rsp + 4]
	lea	r14, [rsp + 8]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_227
	test	rax, rax
	je	.label_227
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_227
.label_233:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	xor	eax, eax
.label_229:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_227:
	mov	eax, dword ptr [rsp + 4]
	jmp	.label_229
	.section	.text
	.align	32
	#Procedure 0x404337
	.globl sub_404337
	.type sub_404337, @function
sub_404337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:
	push	rax
	call	mkstemp
	mov	edi, eax
	pop	rax
	jmp	fd_safer
	.section	.text
	.align	32
	#Procedure 0x40434e
	.globl sub_40434e
	.type sub_40434e, @function
sub_40434e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404350

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	xor	r12d, r12d
	jmp	.label_237
	.section	.text
	.align	32
	#Procedure 0x40436c
	.globl sub_40436c
	.type sub_40436c, @function
sub_40436c:

	nop	dword ptr [rax]
.label_235:
	inc	rbx
.label_237:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_238
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_239
.label_238:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_235
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_236
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_235
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_235
.label_236:
	mov	ebx, eax
.label_239:
	mov	eax, ebx
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043db
	.globl sub_4043db
	.type sub_4043db, @function
sub_4043db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_240
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_240:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404437
	.globl sub_404437
	.type sub_404437, @function
sub_404437:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404440

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	jl	.label_241
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_242
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_241:
	test	rax, rax
	jle	.label_243
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_243
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_243:
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	xor	eax, eax
	sub	r14, r15
	mov	cx, 0xffff
	cmovne	cx, ax
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rsi, qword ptr [rbx + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	jge	.label_244
	mov	dword ptr [rbx + 0xe0], r14d
.label_244:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_242:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_244
	.section	.text
	.align	32
	#Procedure 0x4045c0
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
	#Procedure 0x4045cd
	.globl sub_4045cd
	.type sub_4045cd, @function
sub_4045cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	cmp	rcx, rax
	jne	.label_245
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_246
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_245:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r14
	shl	rcx, 4
	lea	r12, [rcx + rcx*2]
	mov	qword ptr [rax + r12], rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + r12 + 8], r13
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r12 + 0x10]
	test	rdi, rdi
	je	.label_246
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_246:
	mov	eax, 0xc
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046ae
	.globl sub_4046ae
	.type sub_4046ae, @function
sub_4046ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4046b0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14d, ecx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	rsi, qword ptr [rbx + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_248
	mov	dword ptr [rsp + 0xc], r14d
	cmp	qword ptr [rbx + 8], 0
	jle	.label_247
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr cs:[rax + rax]
.label_250:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [rbx + rbx*2]
	lea	r12, [rax + rcx*8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	mov	r15d, dword ptr [rsp + 0xc]
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_252
	mov	rdi, r13
	lea	rsi, [rsp + 0x10]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_251
	.section	.text
	.align	32
	#Procedure 0x404758
	.globl sub_404758
	.type sub_404758, @function
sub_404758:

	nop	dword ptr [rax + rax]
.label_252:
	lea	rdi, [rsp + 0x10]
	mov	rsi, r12
	call	re_node_set_merge
.label_251:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_249
	inc	r14
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rbx + 8]
	mov	rbp, qword ptr [rsp + 0x30]
	jl	.label_250
.label_247:
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbx], xmm0
	xor	r15d, r15d
.label_248:
	mov	eax, r15d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_248
	.section	.text
	.align	32
	#Procedure 0x4047c3
	.globl sub_4047c3
	.type sub_4047c3, @function
sub_4047c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047d0

	.globl tac_seekable
	.type tac_seekable, @function
tac_seekable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	r12, rsi
	mov	r14d, edi
	mov	rax, qword ptr [rip + separator]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, byte ptr [rax]
	mov	rax, qword ptr [rip + match_length]
	mov	qword ptr [rsp + 0x18], rax
	xor	edx, edx
	mov	rax, r13
	div	qword ptr [rip + read_size]
	test	rdx, rdx
	mov	dword ptr [rsp], r14d
	je	.label_268
	sub	r13, rdx
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	jns	.label_268
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14d, dword ptr [rsp]
	mov	rdx, rbx
	call	error
.label_268:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, r14d
	call	safe_read
	mov	rbx, rax
	test	r13, r13
	je	.label_253
	nop	
.label_281:
	test	rbx, rbx
	jne	.label_253
	mov	rsi, qword ptr [rip + read_size]
	neg	rsi
	mov	edx, 1
	mov	edi, r14d
	call	lseek
	test	rax, rax
	jns	.label_266
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14d, dword ptr [rsp]
	mov	rdx, rbx
	call	error
.label_266:
	mov	rbp, qword ptr [rip + read_size]
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, r14d
	mov	rdx, rbp
	call	safe_read
	mov	rbx, rax
	sub	r13, rbp
	jne	.label_281
.label_253:
	mov	qword ptr [rsp + 0x10], r12
	mov	rdx, qword ptr [rip + read_size]
	cmp	rbx, rdx
	jne	.label_263
	nop	dword ptr [rax]
.label_278:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, r14d
	call	safe_read
	mov	r12, rax
	cmp	r12, -1
	je	.label_255
	test	r12, r12
	je	.label_263
	add	r13, r12
	mov	rdx, qword ptr [rip + read_size]
	cmp	r12, rdx
	mov	rbx, r12
	je	.label_278
	jmp	.label_283
.label_263:
	cmp	rbx, -1
	mov	r12, rbx
	je	.label_255
.label_283:
	add	r12, qword ptr [rip + G_buffer]
	xor	eax, eax
	cmp	qword ptr [rip + sentinel_length],  0
	je	.label_286
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x18]
	add	rbx, r12
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_264
.label_286:
	mov	cl, 1
	mov	dword ptr [rsp + 4], ecx
	mov	rbx, r12
	jmp	.label_260
.label_255:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_259:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_264:
	mov	rax, qword ptr [rip + sentinel_length]
.label_260:
	mov	qword ptr [rsp + 8], r13
	mov	rcx, qword ptr [rsp + 0x20]
	lea	r13, [rcx + 1]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rbp, [rcx - 1]
	nop	dword ptr [rax]
.label_276:
	test	rax, rax
	je	.label_274
	nop	word ptr cs:[rax + rax]
.label_265:
	dec	rbx
	cmp	byte ptr [rbx], r15b
	jne	.label_265
	test	rbp, rbp
	je	.label_269
	lea	rdi, [rbx + 1]
	mov	rsi, r13
	mov	rdx, rbp
	call	strncmp
	test	eax, eax
	jne	.label_265
	jmp	.label_269
	.section	.text
	.align	32
	#Procedure 0x404a49
	.globl sub_404a49
	.type sub_404a49, @function
sub_404a49:

	nop	dword ptr [rax]
.label_274:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rax, rbx
	sub	rax, rsi
	sub	rbx, rsi
	js	.label_275
	test	rbx, rbx
	je	.label_258
	mov	r8d, 1
	sub	r8, rax
	mov	rcx, rbx
	dec	rcx
	mov	edi, OFFSET FLAT:compiled_separator
	mov	r9d, OFFSET FLAT:regs
	mov	rdx, rbx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_258
	cmp	rax, -2
	je	.label_261
	mov	rax, qword ptr [rip + label_270]
	mov	rax, qword ptr [rax]
	mov	rbx, qword ptr [rip + G_buffer]
	add	rbx, rax
	mov	rcx, qword ptr [rip + label_271]
	mov	rcx, qword ptr [rcx]
	sub	rcx, rax
	mov	qword ptr [rip + match_length],  rcx
	jmp	.label_269
	.section	.text
	.align	32
	#Procedure 0x404ac7
	.globl sub_404ac7
	.type sub_404ac7, @function
sub_404ac7:

	nop	word ptr [rax + rax]
.label_258:
	mov	rbx, qword ptr [rip + G_buffer]
	dec	rbx
.label_269:
	mov	rdi, qword ptr [rip + G_buffer]
	cmp	rbx, rdi
	jb	.label_280
	cmp	byte ptr [rip + separator_ends_record],  1
	jne	.label_277
	mov	r14, qword ptr [rip + match_length]
	add	r14, rbx
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	je	.label_287
	cmp	r14, r12
	je	.label_254
.label_287:
	mov	rdi, r14
	mov	rsi, r12
	call	output
.label_254:
	mov	dword ptr [rsp + 4], 0
	mov	r12, r14
	mov	r14d, dword ptr [rsp]
	jmp	.label_279
	.section	.text
	.align	32
	#Procedure 0x404b26
	.globl sub_404b26
	.type sub_404b26, @function
sub_404b26:

	nop	word ptr cs:[rax + rax]
.label_277:
	mov	rdi, rbx
	mov	rsi, r12
	call	output
	mov	r12, rbx
.label_279:
	cmp	qword ptr [rip + sentinel_length],  0
	mov	eax, 0
	je	.label_276
	mov	eax, 1
	sub	rax, qword ptr [rip + match_length]
	add	rbx, rax
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_264
.label_280:
	mov	rbp, qword ptr [rsp + 8]
	test	rbp, rbp
	je	.label_262
	sub	r12, rdi
	mov	rax, qword ptr [rip + read_size]
	cmp	r12, rax
	jbe	.label_288
	mov	rcx, qword ptr [rip + sentinel_length]
	test	rcx, rcx
	mov	ebx, 1
	cmovne	rbx, rcx
	mov	rcx, qword ptr [rip + G_buffer_size]
	lea	rdx, [rax + rax]
	mov	qword ptr [rip + read_size],  rdx
	lea	rsi, [rax*4 + 2]
	add	rsi, qword ptr [rip + sentinel_length]
	mov	qword ptr [rip + G_buffer_size],  rsi
	cmp	rsi, rcx
	jb	.label_256
	mov	rdi, qword ptr [rip + G_buffer]
	sub	rdi, rbx
	call	xrealloc
	add	rax, rbx
	mov	qword ptr [rip + G_buffer],  rax
.label_288:
	mov	r13, rbp
	sub	r13, qword ptr [rip + read_size]
	jae	.label_284
	mov	qword ptr [rip + read_size],  rbp
	xor	r13d, r13d
.label_284:
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	jns	.label_282
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_282:
	mov	rbp, qword ptr [rip + G_buffer]
	mov	rax, qword ptr [rip + read_size]
	mov	qword ptr [rsp + 8], rax
	lea	rbx, [rbp + rax]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	memmove
	add	r12, rbx
	cmp	qword ptr [rip + sentinel_length],  0
	cmove	rbx, r12
	mov	r14d, dword ptr [rsp]
	mov	edi, r14d
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 8]
	call	safe_read
	cmp	rax, qword ptr [rip + read_size]
	jne	.label_255
	jmp	.label_264
.label_262:
	mov	rsi, r12
	call	output
	mov	bl, 1
	jmp	.label_259
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	jmp	.label_273
.label_261:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
.label_273:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_256:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ce6
	.globl sub_404ce6
	.type sub_404ce6, @function
sub_404ce6:

	nop	word ptr cs:[rax + rax]
.label_292:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_290
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_294:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_292
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_291
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404d69

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_293
	cmp	byte ptr [rip + ignore_EPIPE],  0
	je	.label_294
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_294
.label_293:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_295
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_295:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404db0

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rsp + 8], rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	xor	r12d, r12d
	mov	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	cmp	rax, -1
	je	.label_302
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_302
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x90], rbx
	nop	word ptr [rax + rax]
.label_305:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	mov	rdx, qword ptr [rsp + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_304
	cmp	eax, 4
	jne	.label_297
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_300
	jmp	.label_297
	.section	.text
	.align	32
	#Procedure 0x404ea5
	.globl sub_404ea5
	.type sub_404ea5, @function
sub_404ea5:

	nop	word ptr cs:[rax + rax]
.label_304:
	cmp	eax, 4
	jne	.label_297
.label_300:
	mov	r14, qword ptr [rsp + 0x30]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_303:
	cmp	qword ptr [rbp], r15
	jne	.label_301
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbx, rax
	sub	rbx, rcx
	add	rbx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	je	.label_307
	lea	rax, [r15*8]
	mov	rcx, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rcx + 0x18]
	jmp	.label_298
.label_307:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
.label_298:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_301
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_301
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_308
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_301
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_299
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x70], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_init_copy
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_296
.label_299:
	mov	qword ptr [rsp + 0x50], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	call	re_node_set_insert
	mov	r12d, 0xc
	test	al, al
	je	.label_296
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x40]
	call	sift_states_backward
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_306
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x80]
	call	merge_state_array
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_296
.label_306:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbx
	call	re_node_set_remove_at
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
.label_308:
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_301:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_303
.label_297:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	cmp	rcx, qword ptr [rbx + 8]
	jl	.label_305
.label_296:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_302
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_302:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050f4
	.globl sub_4050f4
	.type sub_4050f4, @function
sub_4050f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405100
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_309
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_309:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40512d
	.globl sub_40512d
	.type sub_40512d, @function
sub_40512d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405130

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_311:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_310
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_312
	.section	.text
	.align	32
	#Procedure 0x405159
	.globl sub_405159
	.type sub_405159, @function
sub_405159:

	nop	dword ptr [rax]
.label_310:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_312:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_313
	inc	r9
	cmp	r9, 0xa
	jb	.label_311
.label_313:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40518f
	.globl sub_40518f
	.type sub_40518f, @function
sub_40518f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405190

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_316
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_316
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_315
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_315
.label_316:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r12
	call	create_tree
	mov	r13, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r12
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_318
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_318:
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_317
	test	r13, r13
	je	.label_317
	test	r14, r14
	je	.label_317
	test	rax, rax
	je	.label_317
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r13 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r13 + 0x30]
	or	edx, ecx
	mov	dword ptr [r13 + 0x30], edx
	jmp	.label_314
.label_315:
	mov	rax, qword ptr [r15 + 8]
.label_314:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_314
	.section	.text
	.align	32
	#Procedure 0x405293
	.globl sub_405293
	.type sub_405293, @function
sub_405293:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052a8
	.globl sub_4052a8
	.type sub_4052a8, @function
sub_4052a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0
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
	#Procedure 0x4052c9
	.globl sub_4052c9
	.type sub_4052c9, @function
sub_4052c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_324
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_324
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_330
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_325
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_330:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_331
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_319
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_321
.label_329:
	dec	rax
.label_326:
	dec	rcx
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x405367
	.globl sub_405367
	.type sub_405367, @function
sub_405367:

	nop	word ptr [rax + rax]
.label_321:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_329
	jge	.label_326
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_328:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_321
.label_319:
	test	rax, rax
	js	.label_323
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_323:
	mov	r9, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_324
	lea	rax, [rsi + r9]
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
.label_327:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_332:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_320
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_332
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x405415
	.globl sub_405415
	.type sub_405415, @function
sub_405415:

	nop	word ptr cs:[rax + rax]
.label_320:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_327
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r12*8]
.label_322:
	call	memcpy
.label_324:
	xor	eax, eax
.label_325:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_331:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	jmp	.label_322
	.section	.text
	.align	32
	#Procedure 0x405463
	.globl sub_405463
	.type sub_405463, @function
sub_405463:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470
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
	#Procedure 0x40547f
	.globl sub_40547f
	.type sub_40547f, @function
sub_40547f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405480

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 0x10], rcx
	mov	qword ptr [rdi + 0x18], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	qword ptr [rdi + 0x30], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40549f
	.globl sub_40549f
	.type sub_40549f, @function
sub_40549f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4054a0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_333
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_334
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_334
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_333
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_334
	mov	qword ptr [rbx + 0x18], rax
.label_333:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_335
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_334
	mov	qword ptr [rbx + 8], rax
.label_335:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_334:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40552a
	.globl sub_40552a
	.type sub_40552a, @function
sub_40552a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405530

	.globl tac_file
	.type tac_file, @function
tac_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_344
	cmp	byte ptr [r14 + 1], 0
	je	.label_336
.label_344:
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r14
	call	open
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_339
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_340
.label_336:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	bpl, 1
.label_339:
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebx
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_338
	mov	edi, ebx
	call	isatty
	test	eax, eax
	je	.label_343
.label_338:
	mov	edi, ebx
	mov	rsi, r14
	call	tac_nonseekable
	jmp	.label_345
.label_343:
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r15
	call	tac_seekable
.label_345:
	mov	r15b, al
	test	bpl, bpl
	jne	.label_337
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_337
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_337:
	test	r15b, r15b
	setne	bl
.label_340:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405664
	.globl sub_405664
	.type sub_405664, @function
sub_405664:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405670

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_346
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_347:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_347
.label_346:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40569d
	.globl sub_40569d
	.type sub_40569d, @function
sub_40569d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056a0

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, -1
	mov	r13d, 0x8000
	jmp	.label_348
.label_351:
	mov	rbx, -2
.label_349:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056d5
	.globl sub_4056d5
	.type sub_4056d5, @function
sub_4056d5:

	nop	word ptr [rax + rax]
.label_350:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	dl, 0x18
	je	.label_349
	cmp	dl, 2
	je	.label_351
	cmp	al, 0x2c
	je	.label_349
	cmp	al, 0x30
	mov	rcx, -2
	jb	.label_348
	cmp	edx, 1
	jne	.label_348
	cmp	rbx, -2
	je	.label_348
	cmp	al, 0x39
	ja	.label_348
	cmp	rbx, -1
	jne	.label_350
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_348
	.section	.text
	.align	32
	#Procedure 0x405750
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_352
	mov	al, 1
	jmp	qword ptr [(rdi * 8) + label_353]
.label_354:
	ret	
.label_352:
	xor	eax, eax
	jmp	.label_354
	.section	.text
	.align	32
	#Procedure 0x405766
	.globl sub_405766
	.type sub_405766, @function
sub_405766:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	ecx, esi
	shl	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	or	qword ptr [rdi + rcx*8], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405791
	.globl sub_405791
	.type sub_405791, @function
sub_405791:

	nop	word ptr cs:[rax + rax]
.label_355:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x4057ac
	.globl sub_4057ac
	.type sub_4057ac, @function
sub_4057ac:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057b9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_355
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	r8, rbx
	cmp	rax, -1
	je	.label_392
	lea	rax, [rax + rax*4]
	shl	rax, 3
	add	rax, qword ptr [r8 + 0xd8]
.label_371:
	mov	dword ptr [rsp + 0xc], 0
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], rcx
	je	.label_361
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_371
.label_392:
	mov	dword ptr [rsp + 0xc], 0
	cmp	qword ptr [r8 + 0xe8], 0
	jle	.label_361
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x30]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x18], r8
	nop	
.label_385:
	mov	rcx, qword ptr [r8 + 0xf8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [rbp + 8]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rdx]
	shl	rcx, 4
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	qword ptr [rdx + rcx], rsi
	jne	.label_388
	mov	r13, qword ptr [rbp]
	cmp	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x10], rbp
	jle	.label_367
	mov	dword ptr [rsp + 0xc], eax
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r15d, r15d
	jmp	.label_372
	.section	.text
	.align	32
	#Procedure 0x4058bc
	.globl sub_4058bc
	.type sub_4058bc, @function
sub_4058bc:

	nop	dword ptr [rax]
.label_388:
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_369
.label_367:
	xor	r15d, r15d
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_358
.label_381:
	mov	edi, 7
	cmp	rsi, qword ptr [r8 + 0x58]
	jle	.label_383
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_370
.label_383:
	mov	qword ptr [rsp + 0x48], rdx
	mov	rdi, r8
	mov	rbx, rdi
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_393
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_357
.label_384:
	mov	edi, 1
	mov	r13, r12
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_363
.label_393:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_370
	.section	.text
	.align	32
	#Procedure 0x40593f
	.globl sub_40593f
	.type sub_40593f, @function
sub_40593f:

	nop	
.label_372:
	mov	rax, qword ptr [rbp + 0x28]
	mov	r14, qword ptr [rax + r15*8]
	mov	r12, qword ptr [r14 + 8]
	mov	rbp, r12
	sub	rbp, r13
	jle	.label_356
	lea	rsi, [rbp + rdx]
	cmp	rsi, qword ptr [r8 + 0x30]
	jg	.label_381
.label_357:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rax + rdx]
	lea	rsi, [rax + r13]
	mov	rbx, rdx
	mov	rdx, rbp
	call	memcmp
	mov	rdx, rbx
	mov	edi, 7
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_356
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_370
	.section	.text
	.align	32
	#Procedure 0x405993
	.globl sub_405993
	.type sub_405993, @function
sub_405993:

	nop	word ptr cs:[rax + rax]
.label_356:
	add	rdx, rbp
	mov	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	mov	edi, 9
	cmp	eax, 1
	je	.label_378
	test	eax, eax
	jne	.label_384
	xor	edi, edi
.label_378:
	mov	r13, r12
.label_363:
	mov	rdx, rbx
.label_370:
	mov	eax, edi
	and	al, 0xf
	je	.label_389
	cmp	al, 9
	jne	.label_391
.label_389:
	inc	r15
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_372
	jmp	.label_358
.label_391:
	cmp	al, 7
	jne	.label_359
	nop	
.label_358:
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_369
	xor	eax, eax
	test	r15, r15
	setg	al
	add	r13, rax
	cmp	r13, qword ptr [rsp + 0x20]
	jle	.label_366
	jmp	.label_369
.label_365:
	test	eax, eax
	jne	.label_375
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	match_ctx_add_sublast
	mov	edi, 1
	test	rax, rax
	je	.label_379
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, rbp
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	cmp	eax, 1
	jne	.label_377
	mov	edi, 0xc
.label_360:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	jmp	.label_362
.label_377:
	test	eax, eax
	mov	rdx, r12
	jne	.label_368
	xor	edi, edi
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_362
.label_364:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	edi, 1
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdx, r12
	jmp	.label_362
.label_387:
	mov	edi, 0xa
	cmp	rdx, qword ptr [r8 + 0x58]
	jge	.label_362
	mov	rbx, rdx
	lea	esi, [rdx + 1]
	mov	rbp, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_390
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_382
.label_375:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_360
.label_379:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, r14
	mov	rdx, r12
	jmp	.label_362
.label_368:
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, 1
	jmp	.label_362
.label_390:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_362
.label_366:
	cmp	r13, qword ptr [rbp]
	jle	.label_376
	cmp	rdx, qword ptr [r8 + 0x30]
	jge	.label_387
.label_382:
	mov	rcx, qword ptr [rsp + 0x28]
	movzx	eax, byte ptr [rcx + rdx]
	inc	rdx
	mov	edi, 0xa
	cmp	al, byte ptr [rcx + r13 - 1]
	jne	.label_362
.label_376:
	mov	rax, qword ptr [r8 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	mov	edi, 0xc
	test	rsi, rsi
	je	.label_362
	mov	r12, rdx
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x50]
	call	find_subexp_node
	mov	r15, rax
	cmp	r15, -1
	je	.label_386
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [rbp + 0x10], 0
	jne	.label_380
	mov	rsi, r13
	sub	rsi, qword ptr [rbp]
	inc	rsi
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_364
.label_380:
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, r15
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	jne	.label_365
.label_386:
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	mov	edi, 0xc
.label_362:
	mov	eax, edi
	and	al, 0xf
	je	.label_374
	cmp	al, 0xc
	jne	.label_373
.label_374:
	cmp	r13, qword ptr [rsp + 0x20]
	lea	r13, [r13 + 1]
	jl	.label_366
	jmp	.label_369
.label_373:
	cmp	al, 0xa
	je	.label_369
.label_359:
	cmp	edi, 6
	je	.label_369
	test	edi, edi
	jne	.label_361
	nop	dword ptr [rax]
.label_369:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], rax
	cmp	rcx, qword ptr [r8 + 0xe8]
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0xc], 0
	jl	.label_385
.label_361:
	mov	eax, dword ptr [rsp + 0xc]
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c9f
	.globl sub_405c9f
	.type sub_405c9f, @function
sub_405c9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405ca0

	.globl tac_nonseekable
	.type tac_nonseekable, @function
tac_nonseekable:
	push	rbx
	sub	rsp, 0x10
	mov	rax, rsi
	mov	ecx, edi
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	mov	edx, ecx
	mov	rcx, rax
	call	copy_to_temp
	mov	rbx, rax
	test	rbx, rbx
	js	.label_395
	mov	rdi, qword ptr [rsp + 8]
	call	fileno
	mov	rsi, qword ptr [rsp]
	mov	edi, eax
	mov	rdx, rbx
	call	tac_seekable
	jmp	.label_394
.label_395:
	xor	eax, eax
.label_394:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ce7
	.globl sub_405ce7
	.type sub_405ce7, @function
sub_405ce7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_396
	xor	eax, eax
.label_396:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d21
	.globl sub_405d21
	.type sub_405d21, @function
sub_405d21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 0x10], 0
	je	.label_401
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_398:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_398
	xor	eax, eax
	test	rdx, rdx
	je	.label_401
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_400:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_397
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_399:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_401
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_399
.label_397:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_400
.label_401:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405de6
	.globl sub_405de6
	.type sub_405de6, @function
sub_405de6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405df0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, qword ptr [rdi + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_410
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb0]
	mov	qword ptr [rsp + 8], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13d, 0xc
	xor	r15d, r15d
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_404
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_409
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_411
	lea	rbp, [rsp + 0x20]
	mov	r13, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp]
	jmp	.label_413
.label_409:
	xor	r15d, r15d
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_407
	xor	r15d, r15d
	cmp	qword ptr [r12], 0
	jne	.label_408
	mov	r13d, 1
	jmp	.label_407
	.section	.text
	.align	32
	#Procedure 0x405eef
	.globl sub_405eef
	.type sub_405eef, @function
sub_405eef:

	nop	
.label_405:
	mov	rdi, rbp
	mov	rdx, rbx
	call	check_halt_state_context
	lea	rbp, [rsp + 0x20]
	mov	r14, qword ptr [rsp]
	mov	r13, rax
.label_413:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	r12, r13
	mov	rcx, r13
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_406
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [r14], 0
	jne	.label_403
	cmp	qword ptr [r15], 0
	jne	.label_403
	mov	r13d, 1
	test	rbx, rbx
	jle	.label_404
	mov	rax, qword ptr [rbp + 0xb8]
	dec	rbx
	nop	dword ptr [rax]
.label_412:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_402
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_405
.label_402:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_412
	mov	r12, qword ptr [rsp]
	jmp	.label_407
.label_403:
	mov	qword ptr [rsp + 8], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	jne	.label_407
.label_408:
	mov	rdi, qword ptr [rbp + 0xb8]
	call	free
	mov	qword ptr [rbp + 0xb8], r12
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbp + 0xb0], rax
	mov	qword ptr [rbp + 0xa8], rbx
	xor	r13d, r13d
	xor	r12d, r12d
	xor	r15d, r15d
.label_407:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
.label_410:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_404:
	mov	r12, qword ptr [rsp]
	jmp	.label_407
.label_406:
	mov	r12, r14
	jmp	.label_407
.label_411:
	mov	r12, qword ptr [rsp]
	jmp	.label_407
	.section	.text
	.align	32
	#Procedure 0x40603b
	.globl sub_40603b
	.type sub_40603b, @function
sub_40603b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406040

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40604a
	.globl sub_40604a
	.type sub_40604a, @function
sub_40604a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40605d
	.globl sub_40605d
	.type sub_40605d, @function
sub_40605d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406060
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
	#Procedure 0x406070
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40607a
	.globl sub_40607a
	.type sub_40607a, @function
sub_40607a:

	nop	word ptr [rax + rax]
.label_417:
	mov	edi, OFFSET FLAT:label_414
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_416
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x406099
	.globl sub_406099
	.type sub_406099, @function
sub_406099:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060a2

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	push	rbx
	mov	r14, r8
	mov	r15, rdi
	mov	rdi, qword ptr [r15]
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	test	rdi, rdi
	jle	.label_417
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [r14 + 0x10], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406120
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
	#Procedure 0x406192
	.globl sub_406192
	.type sub_406192, @function
sub_406192:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061a0

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, r8
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rdi
	mov	rcx, qword ptr [rsi + 0x48]
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 0x17
	mov	qword ptr [rsp], r9
	jne	.label_425
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, rsi
	mov	rsi, r14
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdx, rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_429
	cmp	byte ptr [r14 + 8], 1
	mov	rsi, qword ptr [rsp + 0x10]
	jne	.label_418
	xor	ebx, ebx
	cmp	byte ptr [r14], 0x2c
	je	.label_421
	jmp	.label_418
.label_425:
	xor	ebx, ebx
	cmp	eax, 0x12
	sete	bl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_420:
	mov	rdi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_419
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_432
	test	rbx, rbx
	jg	.label_434
.label_437:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_436
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_436:
	xor	ecx, ecx
	cmp	r13, -1
	sete	cl
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_424
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_427
	inc	rbx
	nop	dword ptr [rax + rax]
.label_435:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	create_tree
	test	r12, r12
	je	.label_424
	test	rax, rax
	je	.label_424
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_424
	inc	rbx
	cmp	rbx, r13
	jl	.label_435
.label_427:
	test	r14, r14
	je	.label_422
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_419
.label_429:
	cmp	rbx, -2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_428
.label_421:
	mov	al, byte ptr [r14 + 8]
	cmp	al, 0x18
	mov	r13, rbx
	je	.label_430
	cmp	al, 1
	jne	.label_428
	cmp	byte ptr [r14], 0x2c
	jne	.label_428
	mov	rdi, rsi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r13, rax
	cmp	r13, -2
	je	.label_428
.label_430:
	cmp	r13, -1
	je	.label_438
	cmp	rbx, r13
	jg	.label_418
.label_438:
	cmp	byte ptr [r14 + 8], 0x18
	jne	.label_418
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_420
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_419
.label_418:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_419
.label_422:
	mov	r14, rbp
	jmp	.label_419
.label_428:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_431
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r14], xmm0
	mov	byte ptr [r14 + 8], 1
	mov	r14, r12
.label_419:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_432:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_419
.label_434:
	cmp	rbx, 1
	jne	.label_423
	mov	r14, r12
	jmp	.label_426
.label_423:
	mov	ebp, 1
	mov	r14, r12
.label_433:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	create_tree
	mov	r14, rax
	test	r12, r12
	je	.label_424
	test	r14, r14
	je	.label_424
	inc	rbp
	cmp	rbp, rbx
	jl	.label_433
.label_426:
	cmp	rbx, r13
	je	.label_419
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_437
.label_424:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
	jmp	.label_419
.label_431:
	xor	eax, eax
	cmp	byte ptr [r14 + 8], 2
	setne	al
	add	eax, 9
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_419
	.section	.text
	.align	32
	#Procedure 0x4064af
	.globl sub_4064af
	.type sub_4064af, @function
sub_4064af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_439
	nop	dword ptr [rax + rax]
.label_440:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	movzx	ecx, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_440
	mov	rax, r8
.label_439:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064fe
	.globl sub_4064fe
	.type sub_4064fe, @function
sub_4064fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406500

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
	#Procedure 0x406536
	.globl sub_406536
	.type sub_406536, @function
sub_406536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406540

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	r13, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_442
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_442
	jmp	.label_441
	.section	.text
	.align	32
	#Procedure 0x406585
	.globl sub_406585
	.type sub_406585, @function
sub_406585:

	nop	word ptr cs:[rax + rax]
.label_446:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_442:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_444
	test	r12, r12
	je	.label_447
	cmp	eax, 9
	je	.label_444
.label_447:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_443
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_445
.label_443:
	test	rbx, rbx
	je	.label_446
	test	r15, r15
	je	.label_446
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_442
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	jmp	.label_441
.label_444:
	mov	r15, rbx
.label_441:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_445:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_441
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_441
	.section	.text
	.align	32
	#Procedure 0x406662
	.globl sub_406662
	.type sub_406662, @function
sub_406662:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406670

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0xc], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	jmp	.label_448
	.section	.text
	.align	32
	#Procedure 0x406696
	.globl sub_406696
	.type sub_406696, @function
sub_406696:

	nop	word ptr cs:[rax + rax]
.label_457:
	mov	rsi, qword ptr [rcx + r13*8 + 0x10]
	mov	rbp, qword ptr [rsi]
	lea	rsi, [rbx + rbx*2]
	mov	r12, rsi
	mov	qword ptr [rcx + rsi*8 + 8], 0
	cmp	rdx, 1
	je	.label_449
	mov	rdi, r15
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_453
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_456
	jmp	.label_450
.label_453:
	mov	rdi, r15
	mov	rbx, rbp
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	duplicate_node
	mov	r14, rax
	mov	ebp, 0xc
	cmp	r14, -1
	je	.label_450
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_450
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rsp + 0xc]
	call	duplicate_node_closure
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_450
.label_456:
	mov	rax, qword ptr [r15 + 0x28]
	mov	rax, qword ptr [rax + r13*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, dword ptr [rsp + 0xc]
.label_458:
	call	duplicate_node
	mov	ebp, 0xc
	cmp	rax, -1
	je	.label_450
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_448
	jmp	.label_450
.label_449:
	cmp	r14, qword ptr [rsp + 0x10]
	jne	.label_455
	cmp	rbx, r14
	jne	.label_459
.label_455:
	mov	rcx, qword ptr [r15]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	edx, dword ptr [rsp + 0xc]
	or	edx, eax
	mov	rdi, r15
	mov	r14, rbp
	mov	rsi, rbp
	mov	dword ptr [rsp + 0xc], edx
	jmp	.label_458
	.section	.text
	.align	32
	#Procedure 0x4067ce
	.globl sub_4067ce
	.type sub_4067ce, @function
sub_4067ce:

	nop	
.label_448:
	mov	rcx, qword ptr [r15]
	mov	rax, r14
	shl	rax, 4
	cmp	byte ptr [rcx + rax + 8], 4
	jne	.label_452
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbp
	mov	r13, r15
	mov	edx, dword ptr [rsp + 0xc]
	mov	r15, rbx
	call	duplicate_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_451
	mov	rax, qword ptr [r13 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r15*8], rcx
	mov	rax, qword ptr [r13 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r14, rbp
	mov	r15, r13
	mov	ebp, 0xc
	jne	.label_448
	jmp	.label_450
	.section	.text
	.align	32
	#Procedure 0x406849
	.globl sub_406849
	.type sub_406849, @function
sub_406849:

	nop	dword ptr [rax]
.label_452:
	mov	rcx, qword ptr [r15 + 0x28]
	lea	r13, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r13*8 + 8]
	test	rdx, rdx
	jne	.label_457
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_454:
	xor	ebp, ebp
.label_450:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_459:
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_454
	jmp	.label_450
.label_451:
	mov	ebp, 0xc
	jmp	.label_450
	.section	.text
	.align	32
	#Procedure 0x4068a7
	.globl sub_4068a7
	.type sub_4068a7, @function
sub_4068a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068b0
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
	#Procedure 0x4068bf
	.globl sub_4068bf
	.type sub_4068bf, @function
sub_4068bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4068c0

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068ce
	.globl sub_4068ce
	.type sub_4068ce, @function
sub_4068ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4068d0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_466
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_462
	cmp	rsi, rax
	jne	.label_465
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_463
	mov	qword ptr [rbx + 0x10], rax
.label_465:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_467
	test	rax, rax
	jle	.label_460
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_464:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_464
	jmp	.label_460
.label_466:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_461
.label_462:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_469
.label_467:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_460
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_468:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_468
.label_460:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_469:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_461:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_463:
	xor	eax, eax
	jmp	.label_461
	.section	.text
	.align	32
	#Procedure 0x4069ae
	.globl sub_4069ae
	.type sub_4069ae, @function
sub_4069ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4069b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_470
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_470:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069c8
	.globl sub_4069c8
	.type sub_4069c8, @function
sub_4069c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069d0

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
	mov	rcx, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x406a3d
	.globl sub_406a3d
	.type sub_406a3d, @function
sub_406a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a40

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x406a4d
	.globl sub_406a4d
	.type sub_406a4d, @function
sub_406a4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x406a57
	.globl sub_406a57
	.type sub_406a57, @function
sub_406a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a60

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rbx + rbx*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_477
	mov	qword ptr [rsp], rdx
	lea	r12, [rax + rcx*8]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_474:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + r14*8]
	cmp	rax, rbx
	je	.label_475
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_475
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	r13, [rax + rax*2]
	mov	rax, qword ptr [rcx + r13*8 + 0x10]
	mov	r15, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + r13*8 + 8], 2
	jl	.label_479
	mov	rbp, qword ptr [rax + 8]
.label_479:
	mov	rdi, r12
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_476
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_480
.label_476:
	test	rbp, rbp
	jle	.label_475
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_475
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_475
.label_480:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + r13*8]
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_482
	nop	word ptr cs:[rax + rax]
.label_475:
	inc	r14
	mov	rax, qword ptr [r12 + 8]
	cmp	r14, rax
	jl	.label_474
	test	rax, rax
	mov	r14, qword ptr [rsp]
	jle	.label_477
	xor	ebx, ebx
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_483:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r15
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_478
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r14
	call	re_node_set_remove_at
.label_478:
	inc	rbx
	cmp	rbx, qword ptr [r12 + 8]
	jl	.label_483
.label_477:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	ebp, ebp
.label_481:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_482:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x406c13
	.globl sub_406c13
	.type sub_406c13, @function
sub_406c13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20

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
	je	.label_484
	cmp	r15, -2
	jb	.label_484
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_484
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_484:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c76
	.globl sub_406c76
	.type sub_406c76, @function
sub_406c76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c80

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r13, rsi
	mov	r14, rdi
	cmp	qword ptr [r13 + 8], 0
	jle	.label_485
	mov	r8, qword ptr [r14 + 0x98]
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 8], r8
	nop	dword ptr [rax + rax]
.label_486:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	mov	r15d, eax
	cmp	al, 4
	jne	.label_490
	mov	eax, r15d
	mov	ebp, eax
	shr	ebp, 8
	test	bp, 0x3ff
	mov	qword ptr [rsp + 0x18], rsi
	je	.label_499
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_string_context_at
	mov	r8, qword ptr [rsp + 8]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_488
	test	ecx, ecx
	je	.label_490
.label_488:
	mov	edx, r15d
	test	dh, 8
	je	.label_494
	test	ecx, ecx
	jne	.label_490
.label_494:
	mov	ecx, r15d
	test	ch, 0x20
	je	.label_496
	mov	ecx, eax
	and	ecx, 2
	je	.label_490
.label_496:
	test	bpl, bpl
	jns	.label_499
	and	eax, 8
	je	.label_490
	nop	word ptr cs:[rax + rax]
.label_499:
	mov	r12, qword ptr [r14 + 0xc8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	call	get_subexp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_495
	cmp	r12, qword ptr [r14 + 0xc8]
	jge	.label_490
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_493:
	mov	rax, qword ptr [r14 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rsi
	jne	.label_492
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_492
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rdi, qword ptr [rax + rbp]
	mov	rbx, qword ptr [r8 + 0x30]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdi
	cmp	rdi, rcx
	jne	.label_491
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rsi + rsi*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_497
.label_491:
	lea	rcx, [rsi*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_497:
	mov	rcx, qword ptr [rcx]
	lea	rbx, [rcx + rcx*2]
	mov	r13, qword ptr [rax + rbp]
	mov	r15, qword ptr [rsp + 0x10]
	add	r13, r15
	sub	r13, qword ptr [rax + rbp - 8]
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	call	re_string_context_at
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r15*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_498
	mov	rdx, qword ptr [rcx + 0x10]
.label_498:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rcx, [rcx + rbx*8]
	test	rsi, rsi
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	je	.label_500
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rbx, [rsp + 0x50]
	mov	rdi, rbx
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_489
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	jne	.label_501
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_495
.label_501:
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_487
.label_500:
	lea	rdi, [rsp + 4]
	mov	r15, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rcx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, r15
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x18]
	jne	.label_487
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_495
	nop	dword ptr [rax]
.label_487:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_492
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_492
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x10]
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_495
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	transit_state_bkref
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_495
.label_492:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r14 + 0xc8]
	jl	.label_493
	nop	word ptr cs:[rax + rax]
.label_490:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_486
.label_485:
	mov	dword ptr [rsp + 4], 0
.label_495:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_489:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	jmp	.label_495
	.section	.text
	.align	32
	#Procedure 0x406ff4
	.globl sub_406ff4
	.type sub_406ff4, @function
sub_406ff4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407000
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_502
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_502:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407026
	.globl sub_407026
	.type sub_407026, @function
sub_407026:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407030

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_503
	test	rbx, rbx
	jne	.label_503
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_503:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_505
	test	rax, rax
	je	.label_504
.label_505:
	pop	rbx
	ret	
.label_504:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407060

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x40706e
	.globl sub_40706e
	.type sub_40706e, @function
sub_40706e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407070
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
	#Procedure 0x40707f
	.globl sub_40707f
	.type sub_40707f, @function
sub_40707f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407080

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	dword ptr [rsp + 8], esi
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r14 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_506
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_532
	test	eax, eax
	je	.label_506
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_533
	test	sil, sil
	jne	.label_533
	mov	rbx, qword ptr [r14 + 0x60]
	jmp	.label_506
.label_532:
	mov	rbx, qword ptr [r14 + 0x50]
.label_506:
	test	rbx, rbx
	je	.label_511
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_513
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	jne	.label_517
.label_513:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_523
.label_531:
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 4]
.label_518:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_508
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 8]
	or	r12b, al
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_525:
	lea	r15, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r15, rax
	jge	.label_507
.label_528:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r15, rax
	jge	.label_535
.label_534:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_522
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_522:
	test	rbx, rbx
	jne	.label_526
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0
	jne	.label_509
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	cmp	al, 1
	jne	.label_508
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_508
.label_526:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_529
.label_512:
	movzx	eax, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_510
	test	al, al
	jns	.label_524
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_524
.label_510:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r14, rbx
	jg	.label_525
	jmp	.label_508
.label_507:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_528
	jmp	.label_530
.label_535:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_534
.label_530:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 4], ecx
	test	ecx, ecx
	jne	.label_537
	jmp	.label_534
.label_529:
	cmp	r14, rbx
	je	.label_514
	mov	dword ptr [rsp + 0xc], 0
.label_514:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r15
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_512
.label_524:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, rdx
	jne	.label_518
	jmp	.label_509
.label_508:
	mov	rcx, qword ptr [rsp + 0x20]
	test	rcx, rcx
	je	.label_527
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_527:
	mov	rax, qword ptr [rsp + 0x18]
.label_509:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_533:
	test	edx, edx
	jne	.label_515
	test	ecx, ecx
	je	.label_506
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_506
.label_515:
	mov	rbx, qword ptr [r14 + 0x58]
	jmp	.label_506
.label_537:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_509
	mov	edi, OFFSET FLAT:label_520
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_521
	call	__assert_fail
.label_511:
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_509
	mov	edi, OFFSET FLAT:label_520
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_521
	call	__assert_fail
.label_523:
	test	al, al
	js	.label_536
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	rdx, r12
	jne	.label_531
	mov	rax, r12
	jmp	.label_509
.label_517:
	lea	r14, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r14
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_516
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_519
	mov	rdi, rbp
	mov	rsi, r14
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_516
.label_519:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_513
.label_536:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	je	.label_531
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	jne	.label_531
	mov	rax, r12
	jmp	.label_509
.label_516:
	cdqe	
	jmp	.label_509
	.section	.text
	.align	32
	#Procedure 0x40740b
	.globl sub_40740b
	.type sub_40740b, @function
sub_40740b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407410
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
	#Procedure 0x407437
	.globl sub_407437
	.type sub_407437, @function
sub_407437:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407440

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x2c], r8d
	mov	qword ptr [rsp + 0x38], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsi, r12
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_542
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x30], rcx
.label_538:
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_552:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_549
	mov	rbp, qword ptr [r15 - 8]
	add	rbp, r12
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, r12
	jne	.label_546
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	mov	rbp, r14
	jne	.label_544
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	r14d, eax
	mov	dword ptr [rsp + 8], r14d
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0x2c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	mov	r13, qword ptr [rsp + 0x18]
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	eax, ebp
	or	eax, ebx
	mov	ecx, 2
	or	eax, r14d
	jne	.label_548
.label_544:
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_541
	.section	.text
	.align	32
	#Procedure 0x40756d
	.globl sub_40756d
	.type sub_40756d, @function
sub_40756d:

	nop	dword ptr [rax]
.label_546:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_551
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_547
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_541
.label_551:
	lea	rbx, [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	je	.label_539
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_541
.label_547:
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_543
	xor	al, 1
	jne	.label_543
.label_539:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, rbx
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_540
	mov	eax, dword ptr [rsp + 0xc]
.label_540:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
.label_541:
	test	ecx, ecx
	je	.label_549
	cmp	ecx, 4
	jne	.label_550
.label_549:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_552
	jmp	.label_542
.label_548:
	test	ebx, ebx
	cmovne	ebp, ebx
	test	r14d, r14d
	cmovne	ebp, r14d
	mov	dword ptr [rsp + 8], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebp
	jmp	.label_544
.label_543:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	ecx, dword ptr [rsp + 8]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0xc], ecx
	mov	dword ptr [rsp + 8], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_541
	.section	.text
	.align	32
	#Procedure 0x4076d1
	.globl sub_4076d1
	.type sub_4076d1, @function
sub_4076d1:

	nop	word ptr cs:[rax + rax]
.label_550:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rsp + 0xc]
	je	.label_538
	jmp	.label_545
.label_542:
	xor	eax, eax
.label_545:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407705
	.globl sub_407705
	.type sub_407705, @function
sub_407705:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407710

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rcx + 8], 0
	jle	.label_561
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_562:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 0x10], rcx
	jge	.label_555
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 8], rcx
	jl	.label_555
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + rax*8]
	mov	rdx, qword ptr [r13]
	shl	rcx, 4
	mov	r14, qword ptr [rdx + rcx]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsi + rax*8 + 0x18], rcx
	jne	.label_557
	cmp	qword ptr [r12 + 8], 0
	jle	.label_555
	mov	r8, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [r13]
	mov	r9, -1
	xor	edi, edi
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_560:
	mov	rbx, qword ptr [rcx + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rdx + rbp + 8]
	cmp	al, 9
	je	.label_554
	cmp	al, 8
	jne	.label_567
	cmp	r14, qword ptr [rdx + rbp]
	cmove	rsi, rbx
	jmp	.label_567
	.section	.text
	.align	32
	#Procedure 0x407802
	.globl sub_407802
	.type sub_407802, @function
sub_407802:

	nop	word ptr cs:[rax + rax]
.label_554:
	mov	rax, qword ptr [r13]
	cmp	r14, qword ptr [rax + rbp]
	cmove	r9, rbx
.label_567:
	inc	rdi
	cmp	rdi, r8
	jl	.label_560
	test	rsi, rsi
	js	.label_564
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	mov	rbx, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbx
	test	eax, eax
	jne	.label_561
.label_564:
	test	r9, r9
	js	.label_555
	cmp	qword ptr [r12 + 8], 0
	jle	.label_555
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], r12
	jmp	.label_558
.label_557:
	cmp	qword ptr [r12 + 8], 0
	jle	.label_555
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	edi, 0xfe
	and	edx, edi
	or	edx, 1
	cmp	edx, 9
	jne	.label_553
	cmp	r14, qword ptr [rax + rcx]
	jne	.label_553
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	jne	.label_561
.label_553:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_559
	jmp	.label_555
.label_556:
	mov	rdi, r12
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 8]
	mov	rdx, r14
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	mov	r9, rbx
	mov	r13, r12
	mov	r12, r14
	jne	.label_561
	dec	rbp
	jmp	.label_566
.label_558:
	mov	rax, qword ptr [r12 + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r9
	mov	r12, r13
	mov	r13, r9
	call	re_node_set_contains
	test	rax, rax
	je	.label_563
	mov	r9, r13
	jmp	.label_565
	.section	.text
	.align	32
	#Procedure 0x40792d
	.globl sub_40792d
	.type sub_40792d, @function
sub_40792d:

	nop	dword ptr [rax]
.label_563:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rbx, r13
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_556
	mov	r9, rbx
.label_565:
	mov	r13, r12
	mov	r12, qword ptr [rsp + 8]
.label_566:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_558
	nop	
.label_555:
	inc	r15
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rcx + 8]
	jl	.label_562
.label_561:
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
	#Procedure 0x407983
	.globl sub_407983
	.type sub_407983, @function
sub_407983:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40799e
	.globl sub_40799e
	.type sub_40799e, @function
sub_40799e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4079a0

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
	js	.label_568
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_571
	cmp	r12d, 0x7fffffff
	je	.label_573
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
	jne	.label_569
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_569:
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
.label_571:
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
	jbe	.label_574
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_570
.label_574:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_572
	mov	rdi, r14
	call	free
.label_572:
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
.label_570:
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
.label_568:
	call	abort
.label_573:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407b5d
	.globl sub_407b5d
	.type sub_407b5d, @function
sub_407b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b60
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_575
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_577
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_578
.label_576:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_575
	.section	.text
	.align	32
	#Procedure 0x407bd8
	.globl sub_407bd8
	.type sub_407bd8, @function
sub_407bd8:

	nop	word ptr cs:[rax + rax]
.label_577:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_578:
	mov	al, byte ptr [r15 + 0x38]
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_576
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_575:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c50

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_579
	test	rsi, rsi
	je	.label_579
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_581
	nop	word ptr cs:[rax + rax]
.label_580:
	mov	al, 1
	test	rcx, rcx
	jle	.label_579
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_580
.label_581:
	xor	eax, eax
.label_579:
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c92
	.globl sub_407c92
	.type sub_407c92, @function
sub_407c92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ca0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	test	rcx, rcx
	mov	r14, -1
	js	.label_582
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], r9
	cmp	rcx, rbx
	jg	.label_582
	xor	ebp, ebp
	add	r8, rcx
	js	.label_586
	mov	rbp, r8
.label_586:
	mov	r14, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	rbp, rbx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdi
	jle	.label_583
	test	r12b, 8
	jne	.label_583
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_583
	mov	rdi, qword ptr [rsp]
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp]
.label_583:
	xor	edx, edx
	test	r14, r14
	mov	r13d, 1
	je	.label_585
	mov	al, byte ptr [rdi + 0x38]
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_585
	and	al, 6
	cmp	al, 4
	jne	.label_592
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_584
.label_592:
	mov	r13, qword ptr [rdi + 0x30]
	inc	r13
	mov	rdx, r14
.label_585:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, r13
	shl	rdi, 4
	call	malloc
	mov	rdx, qword ptr [rsp]
	mov	r15, rax
	mov	r14, -2
	test	r15, r15
	mov	rcx, qword ptr [rsp + 8]
	je	.label_582
	mov	eax, r12d
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	sub	rsp, 8
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x28]
	push	r12
	push	r15
	push	r13
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_591
	xor	r14d, r14d
	cmp	eax, 1
	sete	r14b
	or	r14, 0xfffffffffffffffe
.label_589:
	mov	rdi, r15
	call	free
.label_582:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_591:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_593
	mov	rbx, qword ptr [rsp]
	mov	al, byte ptr [rbx + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r15
	mov	rdx, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbx + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	edx, eax
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbx + 0x38], dl
	mov	r14, -2
	je	.label_589
.label_593:
	mov	al, byte ptr [rsp + 0x68]
	mov	r14, qword ptr [r15]
	test	al, al
	je	.label_589
	mov	rax, qword ptr [rsp + 8]
	cmp	r14, rax
	jne	.label_590
	mov	r14, qword ptr [r15 + 8]
	sub	r14, rax
	jmp	.label_589
.label_584:
	xor	edx, edx
	test	rax, rax
	jle	.label_594
	mov	rdx, r14
.label_594:
	mov	r13d, 1
	test	rax, rax
	jle	.label_585
	mov	r13, rax
	jmp	.label_585
.label_590:
	mov	edi, OFFSET FLAT:label_587
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_588
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x407e76
	.globl sub_407e76
	.type sub_407e76, @function
sub_407e76:

	nop	word ptr cs:[rax + rax]
.label_596:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_595
	xor	eax, eax
	cmp	byte ptr [rbx + 0x30], 0xc
	jne	.label_595
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_595:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ed8
	.globl sub_407ed8
	.type sub_407ed8, @function
sub_407ed8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ee4

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_596
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_595
.label_598:
	mov	eax, ebx
.label_597:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f1d
	.globl sub_407f1d
	.type sub_407f1d, @function
sub_407f1d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f2c

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_598
	mov	edi, ebx
	call	dup_safer_flag
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_597
	.section	.text
	.align	32
	#Procedure 0x407f60

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_621
	mov	esi, OFFSET FLAT:label_636
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_645
	mov	esi, OFFSET FLAT:label_647
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_621
.label_645:
	mov	r12d, OFFSET FLAT:label_609
.label_621:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_654
.label_672:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_662
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_666
	mov	esi, OFFSET FLAT:label_668
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_674
	mov	esi, OFFSET FLAT:label_647
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_603
	mov	esi, OFFSET FLAT:label_627
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_606
	mov	esi, OFFSET FLAT:label_609
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_616
	mov	esi, OFFSET FLAT:label_619
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_624
	mov	esi, OFFSET FLAT:label_671
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_633
	mov	esi, OFFSET FLAT:label_636
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_661
	mov	esi, OFFSET FLAT:label_669
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_644
	mov	esi, OFFSET FLAT:label_646
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_650
	mov	esi, OFFSET FLAT:label_652
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_658
	mov	esi, OFFSET FLAT:label_660
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_601
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_657
.label_599:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_604
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_604:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_599
	jmp	.label_601
.label_666:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_638
	nop	word ptr [rax + rax]
.label_622:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_613
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_613:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_622
	jmp	.label_601
.label_674:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_631
	nop	dword ptr [rax + rax]
.label_642:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_639
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_639:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_642
	jmp	.label_601
.label_603:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_620
	nop	dword ptr [rax + rax]
.label_663:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_655
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_655:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_663
	jmp	.label_601
.label_606:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_635
	nop	dword ptr [rax]
.label_600:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_670
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_670:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_600
	jmp	.label_601
.label_616:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_605
	nop	dword ptr [rax]
.label_623:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_659
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_659:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_623
	jmp	.label_601
.label_624:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_632
	nop	dword ptr [rax]
.label_643:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_617
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_617:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_643
	jmp	.label_601
.label_633:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_649
	nop	dword ptr [rax]
.label_626:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_637
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_637:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_626
	jmp	.label_601
.label_661:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_615
	nop	dword ptr [rax]
.label_653:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_618
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_618:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_653
	jmp	.label_601
.label_644:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_640
	nop	dword ptr [rax]
.label_612:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_665
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_665:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_612
	jmp	.label_601
.label_638:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_629
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_629:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_638
	jmp	.label_601
.label_650:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_610
.label_611:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_648
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_648:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_611
	jmp	.label_601
.label_631:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_634
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_634:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_631
	jmp	.label_601
.label_658:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_628
.label_602:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_673
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_673:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_602
.label_601:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_620:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_608
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_608:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_620
	jmp	.label_601
.label_635:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_625
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_625:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_635
	jmp	.label_601
.label_605:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_641
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_641:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_605
	jmp	.label_601
.label_632:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_651
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_651:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_632
	jmp	.label_601
.label_654:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_601
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_672
.label_649:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_607
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_607:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_649
	jmp	.label_601
.label_615:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_614
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_614:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_615
	jmp	.label_601
.label_640:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_630
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_630:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_640
	jmp	.label_601
.label_610:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_667
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_667:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_610
	jmp	.label_601
.label_628:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_656
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_656:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_628
	jmp	.label_601
.label_657:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_664
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_664:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_657
	jmp	.label_601
	.section	.text
	.align	32
	#Procedure 0x408606
	.globl sub_408606
	.type sub_408606, @function
sub_408606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408610
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_675
.label_676:
	ret	
.label_675:
	cmp	edi, 0x7f
	je	.label_676
	xor	eax, eax
	jmp	.label_676
	.section	.text
	.align	32
	#Procedure 0x408621
	.globl sub_408621
	.type sub_408621, @function
sub_408621:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408630

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r14, r14
	jle	.label_679
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_678:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_677
	test	rax, rax
	je	.label_680
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_679
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_680
	jmp	.label_679
	.section	.text
	.align	32
	#Procedure 0x4086b8
	.globl sub_4086b8
	.type sub_4086b8, @function
sub_4086b8:

	nop	dword ptr [rax + rax]
.label_677:
	mov	qword ptr [rbx + rbp*8], rax
.label_680:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_678
.label_679:
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
	#Procedure 0x4086dd
	.globl sub_4086dd
	.type sub_4086dd, @function
sub_4086dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4086e0

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_682
	nop	
.label_684:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	jne	.label_685
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_681:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_683
	test	r12, r12
	jne	.label_685
.label_683:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_681
	jmp	.label_682
.label_685:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_684
.label_682:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40874c
	.globl sub_40874c
	.type sub_40874c, @function
sub_40874c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408750

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_693
	nop	
.label_691:
	mov	edi, OFFSET FLAT:label_686
	call	strcmp
	test	eax, eax
	je	.label_689
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_691
.label_689:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_686
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_694
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_59
	mov	ecx, OFFSET FLAT:label_60
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_687
	mov	esi, OFFSET FLAT:label_688
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_687
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_690
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_687:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_695
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_686
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_60
	mov	ecx, OFFSET FLAT:label_686
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_696
	mov	ecx, OFFSET FLAT:label_697
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
	#Procedure 0x40886a
	.globl sub_40886a
	.type sub_40886a, @function
sub_40886a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408870

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	cmp	qword ptr [r12 + 8], 0
	je	.label_702
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	mov	qword ptr [rsp + 0x10], rbx
	and	rcx, qword ptr [rbx + 0x88]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_704
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_700:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_701
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_699
.label_701:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_700
.label_704:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_698
.label_699:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_698:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_703:
	xor	ebx, ebx
	jmp	.label_699
	.section	.text
	.align	32
	#Procedure 0x40892b
	.globl sub_40892b
	.type sub_40892b, @function
sub_40892b:

	nop	word ptr cs:[rax + rax]
.label_702:
	mov	dword ptr [rdi], 0
	jmp	.label_703
	.section	.text
	.align	32
	#Procedure 0x408940

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rbp, r14
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_705
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	r15d, 8
	and	r15d, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, r15d
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + rbp + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_705:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089c1
	.globl sub_4089c1
	.type sub_4089c1, @function
sub_4089c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089db
	.globl sub_4089db
	.type sub_4089db, @function
sub_4089db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089e0

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
	#Procedure 0x408a19
	.globl sub_408a19
	.type sub_408a19, @function
sub_408a19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a20

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
	#Procedure 0x408a31
	.globl sub_408a31
	.type sub_408a31, @function
sub_408a31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a40
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
	#Procedure 0x408a54
	.globl sub_408a54
	.type sub_408a54, @function
sub_408a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a60
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x408a6a
	.globl sub_408a6a
	.type sub_408a6a, @function
sub_408a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a70

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
	je	.label_706
	mov	qword ptr [rax], rbx
.label_706:
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
	#Procedure 0x408b5c
	.globl sub_408b5c
	.type sub_408b5c, @function
sub_408b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b60

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	call	create_token_tree
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b77
	.globl sub_408b77
	.type sub_408b77, @function
sub_408b77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b80

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_707
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_707
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_710:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_708
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_709
.label_708:
	dec	r10
	test	r10, r10
	jle	.label_707
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_710
	jmp	.label_707
.label_709:
	mov	rax, r10
.label_707:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bfc
	.globl sub_408bfc
	.type sub_408bfc, @function
sub_408bfc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c00

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	je	.label_711
.label_713:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbx + 0xe8]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_712
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_712:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_711:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_712
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_713
	.section	.text
	.align	32
	#Procedure 0x408cc6
	.globl sub_408cc6
	.type sub_408cc6, @function
sub_408cc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cd0

	.globl output
	.type output, @function
output:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [rip + output.bytes_in_buffer]
	mov	ebx, 0x2000
	test	r12, r12
	je	.label_716
	sub	r14, r12
	sub	rbx, rdx
	mov	edi, OFFSET FLAT:output.buffer
	add	rdi, qword ptr [rip + output.bytes_in_buffer]
	cmp	r14, rbx
	jae	.label_718
	mov	r15, rdi
	jmp	.label_715
.label_716:
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	call	fwrite_unlocked
	xor	r14d, r14d
	jmp	.label_714
.label_718:
	mov	r15d, OFFSET FLAT:output.buffer
	nop	dword ptr [rax]
.label_717:
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	sub	r14, rbx
	add	r12, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r14, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	ja	.label_717
.label_715:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	add	r14, qword ptr [rip + output.bytes_in_buffer]
.label_714:
	mov	qword ptr [rip + output.bytes_in_buffer],  r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408da2
	.globl sub_408da2
	.type sub_408da2, @function
sub_408da2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_719
	call	free_dfa_content
.label_719:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408deb
	.globl sub_408deb
	.type sub_408deb, @function
sub_408deb:

	nop	dword ptr [rax + rax]
.label_720:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408df5
	.globl sub_408df5
	.type sub_408df5, @function
sub_408df5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408dff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_720
	call	rpl_calloc
	test	rax, rax
	je	.label_720
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e20

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
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
	cmp	ecx, 2
	je	.label_730
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_731
	test	ecx, ecx
	jne	.label_722
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_725
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_733
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_723
.label_730:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_723
	mov	edi, OFFSET FLAT:label_729
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_728
	call	__assert_fail
.label_731:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_732
.label_723:
	xor	eax, eax
	test	r14, r14
	jle	.label_735
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_734:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_734
	mov	rax, r14
.label_735:
	cmp	rax, qword ptr [r15]
	jae	.label_721
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_726:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_726
.label_721:
	mov	ebp, r12d
.label_725:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_732:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_725
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_724
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_723
.label_733:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_725
.label_722:
	mov	edi, OFFSET FLAT:label_727
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_728
	call	__assert_fail
.label_724:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_725
	.section	.text
	.align	32
	#Procedure 0x408fb9
	.globl sub_408fb9
	.type sub_408fb9, @function
sub_408fb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408fc0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_736
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_736:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_738
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_737
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_739
	test	esi, esi
	jne	.label_738
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_743
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_746
.label_738:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_744
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_739
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_742
.label_737:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_739:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_747
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_749
.label_747:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_749:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_742:
	cmp	eax, 6
	jne	.label_744
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_745
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_748
.label_744:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_741
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_740
.label_743:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_746:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_745:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_748:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_741:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_740:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x409174
	.globl sub_409174
	.type sub_409174, @function
sub_409174:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409180

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	je	.label_750
	cmp	ecx, 4
	je	.label_750
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_750
	cmp	edx, 4
	je	.label_750
	cmp	ecx, 3
	jne	.label_763
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_750
.label_763:
	cmp	dword ptr [rbx], 3
	jne	.label_768
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_750
.label_768:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_751
	test	eax, eax
	jne	.label_753
	mov	al, byte ptr [rbp + 8]
	jmp	.label_754
.label_751:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_754
.label_753:
	xor	eax, eax
.label_754:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_770
	test	ecx, ecx
	jne	.label_758
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_759
.label_770:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_759
.label_758:
	xor	edx, edx
.label_759:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_761
	test	ecx, ecx
	jne	.label_762
.label_761:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_757
.label_762:
	mov	ebp, dword ptr [rbp + 8]
.label_757:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_765
	test	eax, eax
	jne	.label_767
.label_765:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_771
.label_767:
	mov	ebx, dword ptr [rbx + 8]
.label_771:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_750
	cmp	ebx, -1
	je	.label_750
	test	r12d, 0x10000
	je	.label_752
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_750
.label_752:
	test	r14, r14
	je	.label_755
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_756
.label_764:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_755:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_769:
	cmp	rbp, rbx
	ja	.label_766
	cmp	rbx, r14
	ja	.label_766
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_766:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_769
.label_750:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_756:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 8], rsi
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, rax
	test	rax, rax
	je	.label_760
	cmp	qword ptr [rsp + 8], 0
	je	.label_760
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r15], rax
	jmp	.label_764
.label_760:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	eax, 0xc
	jmp	.label_750
	.section	.text
	.align	32
	#Procedure 0x40938c
	.globl sub_40938c
	.type sub_40938c, @function
sub_40938c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409390

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	call	re_node_set_init_1
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_775
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_773
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_776:
	test	rbx, rbx
	jle	.label_772
	mov	rdi, qword ptr [r14]
	inc	r13d
	cmp	qword ptr [rdi + rbx*8], 0
	mov	eax, 0
	cmovne	r13d, eax
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_777
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_774
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_773
.label_774:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_776
	jmp	.label_773
.label_772:
	xor	ebp, ebp
	jmp	.label_773
.label_777:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_773:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_775:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40948d
	.globl sub_40948d
	.type sub_40948d, @function
sub_40948d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409490

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rax
	lea	rdi, [rsi + 0x28]
	call	free_token
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40949e
	.globl sub_40949e
	.type sub_40949e, @function
sub_40949e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_778
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_778:
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
	#Procedure 0x409523
	.globl sub_409523
	.type sub_409523, @function
sub_409523:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409530

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_783
	mov	rax, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_784:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_779
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_780
.label_779:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_782
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_782
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_782
.label_780:
	mov	rcx, qword ptr [rsp + 8]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_785
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_781
.label_785:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_781:
	or	cl, 4
	mov	eax, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_783
.label_782:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_784
.label_783:
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
	#Procedure 0x40968f
	.globl sub_40968f
	.type sub_40968f, @function
sub_40968f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409690

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x48], r8
	mov	r13, rcx
	mov	r14, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rsi + 8]
	mov	qword ptr [rsp + 8], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	qword ptr [rsp + 0x28], r9
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 0x40], rsi
	jle	.label_791
.label_795:
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	rbx, rbx
	cmove	rbx, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], rbx
	lea	rsi, [rbx - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebp, eax
	cmp	rbx, r13
	jne	.label_797
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_788
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0xa0]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_803
	jmp	.label_787
.label_797:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	test	r14, r14
	je	.label_789
	test	byte ptr [r14 + 0x68], 0x40
	jne	.label_793
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	jmp	.label_794
.label_789:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	r14d, r14d
	jmp	.label_796
.label_793:
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_788
.label_794:
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_796
.label_803:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_802
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8d, dword ptr [rsp + 0xa0]
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_787
.label_802:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	ecx, ebp
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_798
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_787
.label_798:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + rbx*8], r14
.label_796:
	cmp	rbx, qword ptr [rsp + 0x28]
	jge	.label_786
	inc	rbx
	lea	r12, [rsp + 0x10]
	mov	r15, rbx
	xor	r13d, r13d
	mov	rbp, qword ptr [rsp + 0x38]
	nop	
.label_790:
	lea	rbx, [r15 - 1]
	mov	rax, qword ptr [rsp + 8]
	movsxd	rax, dword ptr [rax + 0xe0]
	cmp	r13, rax
	jg	.label_786
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rsi, qword ptr [rax + r15*8]
	test	rsi, rsi
	je	.label_792
	add	rsi, 8
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_787
.label_792:
	test	r14, r14
	je	.label_801
	add	r14, 0x20
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r12
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_787
.label_801:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_799
	mov	qword ptr [rsp + 0x60], rbx
	mov	r14, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r12
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xa0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_787
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_787
.label_799:
	mov	rdi, qword ptr [rsp + 8]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, rbx
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_804
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_787
.label_804:
	inc	r13
	test	r14, r14
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + r15*8], r14
	mov	eax, 0
	cmovne	r13, rax
	cmp	r15, qword ptr [rsp + 0x28]
	lea	r15, [r15 + 1]
	jl	.label_790
	dec	r15
	mov	rbx, r15
.label_786:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rdx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rdx + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rdx + 0x48], rax
	je	.label_800
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 0x48]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_788
.label_800:
	mov	r15d, 1
.label_788:
	mov	eax, r15d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_787:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	r15d, dword ptr [rsp + 4]
	jmp	.label_788
.label_791:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_788
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r12, [rax + rcx + 1]
	lea	rbx, [r12 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_788
	mov	rdi, qword ptr [rsi + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_788
	mov	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r12, 3
	xor	esi, esi
	mov	rdx, r12
	call	memset
	mov	rsi, r15
	jmp	.label_795
	.section	.text
	.align	32
	#Procedure 0x409aae
	.globl sub_409aae
	.type sub_409aae, @function
sub_409aae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409ab0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	movabs	rax, 0x555555555555554
	cmp	rbp, rax
	ja	.label_807
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_811:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_811
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	dec	rbx
	mov	qword ptr [r15 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r15 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_805
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_805
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_805
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_805
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_805
	or	byte ptr [r15 + 0xb0], 4
.label_805:
	mov	al, byte ptr [r15 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_809
	test	al, 4
	jne	.label_814
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	test	rax, rax
	je	.label_807
	xor	r14d, r14d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_812:
	xor	ebp, ebp
	mov	ebx, r12d
	nop	word ptr cs:[rax + rax]
.label_808:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_813
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r14*8], rdx
.label_813:
	cmp	ebx, 0x7f
	ja	.label_810
	cmp	ebx, eax
	je	.label_810
	or	byte ptr [r15 + 0xb0], 8
.label_810:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_808
	add	r12d, 0x40
	inc	r14
	cmp	r14, 4
	jne	.label_812
	jmp	.label_809
.label_814:
	mov	qword ptr [r15 + 120], OFFSET FLAT:utf8_sb_map
.label_809:
	cmp	qword ptr [r15], 0
	je	.label_806
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_807
.label_806:
	mov	r14d, 0xc
.label_807:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cb3
	.globl sub_409cb3
	.type sub_409cb3, @function
sub_409cb3:

	nop	word ptr cs:[rax + rax]
.label_817:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_815
.label_816:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_817
	mov	rbx, r15
.label_818:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cff
	.globl sub_409cff
	.type sub_409cff, @function
sub_409cff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409d00

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_817
	jmp	.label_818
.label_815:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_816
	.section	.text
	.align	32
	#Procedure 0x409d28
	.globl sub_409d28
	.type sub_409d28, @function
sub_409d28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d30

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x40]
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_819
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_822
.label_819:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_820
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_820
.label_822:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_821
.label_820:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_821
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_821:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409dae
	.globl sub_409dae
	.type sub_409dae, @function
sub_409dae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409db0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rax
	push	1
	push	qword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x20]
	push	0
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409dc8
	.globl sub_409dc8
	.type sub_409dc8, @function
sub_409dc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409dd0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x409dda
	.globl sub_409dda
	.type sub_409dda, @function
sub_409dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409de0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_823
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_826
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_823
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_824
	xor	r12d, r12d
	test	r14, r14
	jle	.label_827
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x20], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_823
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_824
.label_826:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_825
.label_823:
	mov	rax, -2
	jmp	.label_828
.label_825:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_824
.label_827:
	mov	r13, r15
.label_824:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_828:
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
	#Procedure 0x409eef
	.globl sub_409eef
	.type sub_409eef, @function
sub_409eef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409ef0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_831
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_829:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_830
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_829
.label_831:
	xor	eax, eax
.label_830:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fd2
	.globl sub_409fd2
	.type sub_409fd2, @function
sub_409fd2:

	nop	word ptr cs:[rax + rax]
.label_832:
	mov	qword ptr [rsi + rax + 8], r8
.label_835:
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fe6
	.globl sub_409fe6
	.type sub_409fe6, @function
sub_409fe6:

	nop	word ptr cs:[rax + rax]
.label_834:
	test	ecx, 0x80000
	je	.label_832
	cmp	qword ptr [rdx + rax], -1
	je	.label_832
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
	.section	.text
	.align	32
	#Procedure 0x40a011

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	cmp	cl, 9
	je	.label_833
	cmp	cl, 8
	jne	.label_835
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_835
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_833:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_835
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_834
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
	.section	.text
	.align	32
	#Procedure 0x40a070

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	r14d, 0xc
	test	eax, eax
	jne	.label_839
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_837
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_840:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_838
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_839
.label_838:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_840
.label_837:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_841
.label_836:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_839:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_841:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_839
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_836
	.section	.text
	.align	32
	#Procedure 0x40a153
	.globl sub_40a153
	.type sub_40a153, @function
sub_40a153:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a160

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
	#Procedure 0x40a197
	.globl sub_40a197
	.type sub_40a197, @function
sub_40a197:

	nop	word ptr [rax + rax]
.label_843:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_842
	.section	.text
	.align	32
	#Procedure 0x40a1ad
	.globl sub_40a1ad
	.type sub_40a1ad, @function
sub_40a1ad:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1b7

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 1
	mov	qword ptr [rbx + 8], 1
	mov	edi, 8
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_843
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_842:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1f0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_844
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_844
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_844
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_845:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_845
.label_844:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a223
	.globl sub_40a223
	.type sub_40a223, @function
sub_40a223:

	nop	word ptr cs:[rax + rax]
.label_846:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a233
	.globl sub_40a233
	.type sub_40a233, @function
sub_40a233:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a235
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_846
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a250

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a265
	.globl sub_40a265
	.type sub_40a265, @function
sub_40a265:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a270
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a27a
	.globl sub_40a27a
	.type sub_40a27a, @function
sub_40a27a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl record_or_unlink_tempfile
	.type record_or_unlink_tempfile, @function
record_or_unlink_tempfile:
	jmp	unlink
	.section	.text
	.align	32
	#Procedure 0x40a285
	.globl sub_40a285
	.type sub_40a285, @function
sub_40a285:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_847:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_848:
	xor	eax, eax
.label_849:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2a9

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rdi
	cmp	qword ptr [rbx + 8], 0
	jle	.label_847
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_850
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_848
.label_850:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_849
	.section	.text
	.align	32
	#Procedure 0x40a2fb
	.globl sub_40a2fb
	.type sub_40a2fb, @function
sub_40a2fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a300
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a30a
	.globl sub_40a30a
	.type sub_40a30a, @function
sub_40a30a:

	nop	word ptr [rax + rax]
.label_851:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a315
	.globl sub_40a315
	.type sub_40a315, @function
sub_40a315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a323

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
	je	.label_851
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
	.section	.text
	.align	32
	#Procedure 0x40a370

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_291
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_853:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3ae
	.globl sub_40a3ae
	.type sub_40a3ae, @function
sub_40a3ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3bb

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_853
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_853
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, r12
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
	.section	.text
	.align	32
	#Procedure 0x40a430
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a43f
	.globl sub_40a43f
	.type sub_40a43f, @function
sub_40a43f:

	nop	
.label_856:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_854
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_854:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a474
	.globl sub_40a474
	.type sub_40a474, @function
sub_40a474:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a476

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
	jne	.label_855
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_855
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_856
.label_855:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x40a4b0

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
.label_935:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_921
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_942]
.label_1852:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_947
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_70
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1853:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_956
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_956
	xor	r14d, r14d
.label_967:
	cmp	r14, r11
	jae	.label_962
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_962:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_967
.label_956:
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
	jmp	.label_871
.label_1845:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_871
.label_1848:
	mov	al, 1
.label_1846:
	mov	r12b, 1
.label_1849:
	test	r12b, 1
	mov	cl, 1
	je	.label_876
	mov	ecx, eax
.label_876:
	mov	al, cl
.label_1847:
	test	r12b, 1
	jne	.label_880
	test	r11, r11
	je	.label_882
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_882:
	mov	r14d, 1
	jmp	.label_887
.label_880:
	xor	r14d, r14d
.label_887:
	mov	ecx, OFFSET FLAT:label_70
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_871
.label_1850:
	test	r12b, 1
	jne	.label_895
	test	r11, r11
	je	.label_952
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_952:
	mov	r14d, 1
	jmp	.label_899
.label_1851:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_69
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_871
.label_895:
	xor	r14d, r14d
.label_899:
	mov	eax, OFFSET FLAT:label_69
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_871:
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
	jmp	.label_916
	.section	.text
	.align	32
	#Procedure 0x40a78c
	.globl sub_40a78c
	.type sub_40a78c, @function
sub_40a78c:

	nop	dword ptr [rax]
.label_934:
	inc	rsi
.label_916:
	cmp	rbp, -1
	je	.label_948
	cmp	rsi, rbp
	jne	.label_929
	jmp	.label_953
	.section	.text
	.align	32
	#Procedure 0x40a7a3
	.globl sub_40a7a3
	.type sub_40a7a3, @function
sub_40a7a3:

	nop	word ptr cs:[rax + rax]
.label_948:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_953
.label_929:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_958
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_960
	cmp	rbp, -1
	jne	.label_960
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
.label_960:
	cmp	rbx, rbp
	jbe	.label_859
.label_958:
	xor	r8d, r8d
.label_888:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_860
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_864]
.label_1925:
	test	rsi, rsi
	jne	.label_858
	jmp	.label_872
	.section	.text
	.align	32
	#Procedure 0x40a83e
	.globl sub_40a83e
	.type sub_40a83e, @function
sub_40a83e:

	nop	
.label_859:
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
	jne	.label_885
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_888
	jmp	.label_896
.label_885:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_888
.label_1929:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_903
	test	rsi, rsi
	jne	.label_904
	cmp	rbp, 1
	je	.label_872
	xor	r13d, r13d
	jmp	.label_865
.label_1918:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_911
	cmp	byte ptr [rsp + 7], 0
	jne	.label_862
	cmp	r12d, 2
	jne	.label_915
	mov	eax, r9d
	and	al, 1
	jne	.label_915
	cmp	r14, r11
	jae	.label_870
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_870:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_922
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_922:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_913
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_913:
	add	r14, 3
	mov	r9b, 1
.label_915:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_933
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_933:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_937
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_937
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_937
	cmp	r14, r11
	jae	.label_868
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_868:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_926
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_926:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_865
.label_1919:
	mov	bl, 0x62
	jmp	.label_955
.label_1920:
	mov	cl, 0x74
	jmp	.label_957
.label_1921:
	mov	bl, 0x76
	jmp	.label_955
.label_1922:
	mov	bl, 0x66
	jmp	.label_955
.label_1923:
	mov	cl, 0x72
	jmp	.label_957
.label_1926:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_961
	cmp	byte ptr [rsp + 7], 0
	jne	.label_862
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
	jae	.label_968
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_968:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_869
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_869:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_873
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_873:
	add	r14, 3
	xor	r9d, r9d
.label_961:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_865
.label_1927:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_883
	cmp	r12d, 2
	jne	.label_858
	cmp	byte ptr [rsp + 7], 0
	je	.label_858
	jmp	.label_862
.label_1928:
	cmp	r12d, 2
	jne	.label_925
	cmp	byte ptr [rsp + 7], 0
	jne	.label_862
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_857
.label_860:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_964
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
.label_889:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_914
	test	r8b, r8b
	je	.label_914
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_865
.label_903:
	test	rsi, rsi
	jne	.label_936
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_936
.label_872:
	mov	dl, 1
.label_1924:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_862
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_865:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_943
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_945
	jmp	.label_944
	.section	.text
	.align	32
	#Procedure 0x40ab84
	.globl sub_40ab84
	.type sub_40ab84, @function
sub_40ab84:

	nop	word ptr cs:[rax + rax]
.label_943:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_944
.label_945:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_949
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_857
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x40abcd
	.globl sub_40abcd
	.type sub_40abcd, @function
sub_40abcd:

	nop	dword ptr [rax]
.label_944:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_909
	jmp	.label_857
.label_949:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_909
.label_911:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_934
	xor	r15d, r15d
	jmp	.label_858
.label_925:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_957
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_857
.label_957:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_862
.label_955:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_865
	nop	word ptr cs:[rax + rax]
.label_909:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_862
	cmp	r12d, 2
	jne	.label_878
	mov	eax, r9d
	and	al, 1
	jne	.label_878
	cmp	r14, r11
	jae	.label_881
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_881:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_946
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_946:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_891
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_891:
	add	r14, 3
	mov	r9b, 1
.label_878:
	cmp	r14, r11
	jae	.label_894
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_894:
	inc	r14
	jmp	.label_897
.label_964:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_900
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_900:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_902:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_920
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_924
	cmp	rbp, -2
	je	.label_928
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_931
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_927:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_917
	bt	rsi, rdx
	jb	.label_896
.label_917:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_927
.label_931:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_901
	xor	r13d, r13d
.label_901:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_902
	jmp	.label_889
.label_937:
	xor	r13d, r13d
	jmp	.label_865
.label_936:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_865
.label_883:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_858
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_858
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_858
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_884
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_923
	cmp	byte ptr [rsp + 7], 0
	jne	.label_862
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_951
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_951:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_969
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_969:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_886
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_886:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_890
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_890:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_865
.label_858:
	xor	eax, eax
.label_904:
	xor	r13d, r13d
	jmp	.label_865
.label_914:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_898
	.section	.text
	.align	32
	#Procedure 0x40aeb3
	.globl sub_40aeb3
	.type sub_40aeb3, @function
sub_40aeb3:

	nop	word ptr cs:[rax + rax]
.label_965:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_898:
	test	r8b, r8b
	je	.label_905
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_906
	cmp	r14, r11
	jae	.label_907
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_907:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_906
	.section	.text
	.align	32
	#Procedure 0x40aefc
	.globl sub_40aefc
	.type sub_40aefc, @function
sub_40aefc:

	nop	dword ptr [rax]
.label_905:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_896
	cmp	r12d, 2
	jne	.label_919
	mov	eax, r9d
	and	al, 1
	jne	.label_919
	cmp	r14, r11
	jae	.label_893
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_893:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_912
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_912:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_932
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_932:
	add	r14, 3
	mov	r9b, 1
.label_919:
	cmp	r14, r11
	jae	.label_966
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_966:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_875
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_875:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_910
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_910:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_906:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_857
	test	r9b, 1
	je	.label_867
	mov	ebx, eax
	and	bl, 1
	jne	.label_867
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_959
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_959:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_963
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_963:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_867:
	cmp	r14, r11
	jae	.label_965
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_965
	.section	.text
	.align	32
	#Procedure 0x40b003
	.globl sub_40b003
	.type sub_40b003, @function
sub_40b003:

	nop	word ptr cs:[rax + rax]
.label_857:
	test	r9b, 1
	je	.label_861
	and	al, 1
	jne	.label_861
	cmp	r14, r11
	jae	.label_863
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_863:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_877
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_877:
	add	r14, 2
	xor	r9d, r9d
.label_861:
	mov	ebx, r15d
.label_897:
	cmp	r14, r11
	jae	.label_874
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_874:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_934
.label_924:
	xor	r13d, r13d
.label_920:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_889
.label_928:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_892
	mov	rsi, qword ptr [rsp + 0x50]
.label_954:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_939
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_954
	xor	r13d, r13d
	jmp	.label_889
.label_892:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_889
.label_939:
	xor	r13d, r13d
	jmp	.label_889
.label_884:
	xor	r13d, r13d
	jmp	.label_865
.label_923:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_865
	.section	.text
	.align	32
	#Procedure 0x40b0d8
	.globl sub_40b0d8
	.type sub_40b0d8, @function
sub_40b0d8:

	nop	dword ptr [rax + rax]
.label_953:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_908
	or	dl, al
	je	.label_896
.label_908:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_918
	or	dl, al
	jne	.label_918
	test	r10b, 1
	jne	.label_930
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_918
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_935
.label_918:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_938
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_941
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_941
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_950:
	cmp	r14, r11
	jae	.label_940
	mov	byte ptr [rcx + r14], al
.label_940:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_950
	jmp	.label_941
.label_862:
	mov	qword ptr [rsp + 0x20], rbp
.label_896:
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
.label_879:
	mov	r14, rax
.label_866:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_930:
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
	jmp	.label_879
.label_938:
	mov	rcx, qword ptr [rsp + 8]
.label_941:
	cmp	r14, r11
	jae	.label_866
	mov	byte ptr [rcx + r14], 0
	jmp	.label_866
.label_921:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b26c
	.globl sub_40b26c
	.type sub_40b26c, @function
sub_40b26c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b270

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_970
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_970
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_970:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x40b296
	.globl sub_40b296
	.type sub_40b296, @function
sub_40b296:

	nop	word ptr cs:[rax + rax]
.label_973:
	cmp	byte ptr [rsi + 0x30], 0x11
	jne	.label_971
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_971
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_971
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_972
	mov	qword ptr [rdx], rsi
.label_972:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_971
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_971:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2f6
	.globl sub_40b2f6
	.type sub_40b2f6, @function
sub_40b2f6:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2ff

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_973
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_973
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b330

	.globl parse
	.type parse, @function
parse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	xor	r8d, r8d
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	mov	rcx, rbx
	mov	r9, r14
	call	parse_reg_exp
	mov	r13, rax
	test	r13, r13
	jne	.label_975
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_976
.label_975:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	rbx, rax
	test	r13, r13
	je	.label_978
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	create_tree
	mov	r12, rax
	jmp	.label_974
.label_977:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_976
.label_978:
	mov	r12, rbx
.label_974:
	test	rbx, rbx
	je	.label_977
	test	r12, r12
	je	.label_977
.label_976:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3f0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x28], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	r15, r15
	je	.label_989
	mov	rbx, r15
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_980
	mov	al, byte ptr [r15 + 0x68]
	mov	ecx, r14d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [r15 + 0x50], rbx
	cmp	qword ptr [rbp + 8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	jle	.label_983
	mov	ebx, r14d
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	eax, ebx
	and	eax, 2
	mov	dword ptr [rsp + 0x24], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x20], ebx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r14d, r14d
	xor	r12d, r12d
	nop	
.label_990:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	ecx, dword ptr [rax + rcx + 8]
	mov	r13d, ecx
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	cl, 1
	jne	.label_991
	test	eax, eax
	je	.label_982
.label_991:
	mov	esi, ecx
	shr	esi, 0x14
	movzx	ebx, byte ptr [r15 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	cl, 4
	je	.label_985
	cmp	cl, 2
	jne	.label_992
	or	bl, 0x10
	jmp	.label_994
.label_985:
	or	bl, 0x40
.label_994:
	mov	byte ptr [r15 + 0x68], bl
.label_992:
	test	eax, eax
	je	.label_982
	mov	rbx, qword ptr [rsp + 0x30]
	cmp	qword ptr [r15 + 0x50], rbx
	jne	.label_986
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_979
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_989
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_986:
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_984
	mov	eax, r13d
	and	eax, 1
	jne	.label_987
.label_984:
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_988
	mov	eax, r13d
	and	eax, 2
	jne	.label_987
.label_988:
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_981
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_987
.label_981:
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_993
	and	r13d, 0x40
	je	.label_993
	nop	word ptr [rax + rax]
.label_987:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, rbx
	call	re_node_set_remove_at
	inc	r12
.label_993:
	mov	rdi, qword ptr [rsp + 0x18]
.label_982:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_990
.label_983:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	call	register_state
	test	eax, eax
	mov	rax, r15
	mov	qword ptr [rsp + 8], rax
	jne	.label_979
.label_989:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_980:
	mov	rdi, r15
	call	free
.label_995:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_989
	.section	.text
	.align	32
	#Procedure 0x40b5f1
	.globl sub_40b5f1
	.type sub_40b5f1, @function
sub_40b5f1:

	nop	dword ptr [rax + rax]
.label_979:
	mov	rdi, r15
	call	free_state
	jmp	.label_995
	.section	.text
	.align	32
	#Procedure 0x40b600

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x40b61a
	.globl sub_40b61a
	.type sub_40b61a, @function
sub_40b61a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b620
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	.section	.text
	.align	32
	#Procedure 0x40b621
	.globl sub_40b621
	.type sub_40b621, @function
sub_40b621:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b630

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	cmp	qword ptr [rdx + 8], 0
	je	.label_997
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rcx, qword ptr [rbp + 0x88]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_996
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_999:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1000
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1000
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp]
	call	re_node_set_compare
	test	al, al
	jne	.label_998
.label_1000:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_999
.label_996:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_998
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_1001
.label_997:
	mov	dword ptr [rdi], 0
.label_1001:
	xor	ebp, ebp
.label_998:
	mov	rax, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b702
	.globl sub_40b702
	.type sub_40b702, @function
sub_40b702:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b710

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_1002
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1003
	lea	r12, [r14*8]
	lea	rdi, [r12 + r12*4]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdi, r12
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rbp, rbp
	je	.label_1003
	test	rax, rax
	je	.label_1003
.label_1002:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_1003:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b7a4
	.globl sub_40b7a4
	.type sub_40b7a4, @function
sub_40b7a4:

	nop	word ptr cs:[rax + rax]
.label_1005:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_1004
	.section	.text
	.align	32
	#Procedure 0x40b7d6
	.globl sub_40b7d6
	.type sub_40b7d6, @function
sub_40b7d6:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7dc

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1009
.label_1006:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1008:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1007
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_1005
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_1008
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_1004
.label_1007:
	mov	rax, qword ptr [rax + r12*8]
.label_1004:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1009:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_1006
	jmp	.label_1004
	.section	.text
	.align	32
	#Procedure 0x40b860

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_697
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1010
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b885
	.globl sub_40b885
	.type sub_40b885, @function
sub_40b885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b890

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	jmp	.label_1016
	.section	.text
	.align	32
	#Procedure 0x40b8a9
	.globl sub_40b8a9
	.type sub_40b8a9, @function
sub_40b8a9:

	nop	dword ptr [rax]
.label_1017:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_1016:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1012
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1011
	cmp	qword ptr [rax + rcx], r14
	je	.label_1013
.label_1011:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1015
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_1014
	test	rcx, rcx
	jne	.label_1017
	jmp	.label_1012
	.section	.text
	.align	32
	#Procedure 0x40b91b
	.globl sub_40b91b
	.type sub_40b91b, @function
sub_40b91b:

	nop	dword ptr [rax + rax]
.label_1014:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_1017
	jmp	.label_1015
.label_1013:
	cmp	r15d, 9
	jne	.label_1012
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1015
.label_1012:
	xor	eax, eax
.label_1015:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b96b
	.globl sub_40b96b
	.type sub_40b96b, @function
sub_40b96b:

	nop	dword ptr [rax + rax]
.label_1022:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1018
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
	.section	.text
	.align	32
	#Procedure 0x40b9a8
	.globl sub_40b9a8
	.type sub_40b9a8, @function
sub_40b9a8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9b3

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_1022
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1019
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1020
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1023
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1024
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1021
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40ba80

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_1028
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_1025
	cmp	byte ptr [r15], 0x2f
	je	.label_1025
	mov	r12b, 0x2f
	jmp	.label_1026
.label_1028:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_1026
.label_1025:
	xor	r12d, r12d
.label_1026:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_1029
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1027
	mov	qword ptr [rax], rbp
.label_1027:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_1029:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb58
	.globl sub_40bb58
	.type sub_40bb58, @function
sub_40bb58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb60

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13d, r8d
	mov	rbp, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1032
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_1040
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	or	al, r13b
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x18]
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1038
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1041
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1033:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1033
.label_1041:
	test	r13b, r13b
	je	.label_1037
	mov	rdi, rbx
	call	bitset_not
.label_1037:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1039
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_1039:
	mov	byte ptr [rsp + 0x10], 3
	mov	qword ptr [rsp + 8], rbx
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1034
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1030
	mov	byte ptr [rsp + 0x10], 6
	mov	qword ptr [rsp + 8], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_1034
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_1031
.label_1030:
	mov	rdi, r12
	call	free_charset
.label_1031:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1034:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_1035
.label_1032:
	mov	dword ptr [r12], 0xc
	jmp	.label_1036
.label_1040:
	mov	rdi, rbx
	call	free
.label_1035:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1036
.label_1038:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_1036:
	xor	ebp, ebp
	jmp	.label_1031
	.section	.text
	.align	32
	#Procedure 0x40bd1c
	.globl sub_40bd1c
	.type sub_40bd1c, @function
sub_40bd1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd20
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd2a
	.globl sub_40bd2a
	.type sub_40bd2a, @function
sub_40bd2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd30

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_1042
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_1042
	push	rbx
	xor	ebx, ebx
	cmp	r11, r8
	sete	bl
	xor	esi, esi
	cmp	r10, r8
	sete	sil
	add	esi, esi
	xor	eax, eax
	or	esi, ebx
	pop	rbx
	je	.label_1042
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1042:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd7a
	.globl sub_40bd7a
	.type sub_40bd7a, @function
sub_40bd7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd80

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1043
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_1058:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_1054
	cmp	al, 8
	je	.label_1045
	cmp	al, 4
	jne	.label_1044
	cmp	r8, -1
	je	.label_1044
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_1053:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_1049
	cmp	rdx, 0x3f
	jg	.label_1050
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_1049
.label_1050:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_1057
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_1056
	.section	.text
	.align	32
	#Procedure 0x40bec8
	.globl sub_40bec8
	.type sub_40bec8, @function
sub_40bec8:

	nop	dword ptr [rax + rax]
.label_1057:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_1056
	test	eax, eax
	jne	.label_1047
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_1048
	jmp	.label_1056
.label_1047:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_1049
.label_1048:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1049:
	mov	ecx, r12d
.label_1056:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_1051
	test	al, al
	jne	.label_1052
.label_1051:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_1053
	jmp	.label_1044
	.section	.text
	.align	32
	#Procedure 0x40bf73
	.globl sub_40bf73
	.type sub_40bf73, @function
sub_40bf73:

	nop	word ptr cs:[rax + rax]
.label_1054:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_1044
	xor	eax, eax
	jmp	.label_1046
	.section	.text
	.align	32
	#Procedure 0x40bf8b
	.globl sub_40bf8b
	.type sub_40bf8b, @function
sub_40bf8b:

	nop	dword ptr [rax + rax]
.label_1045:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_1044
	mov	eax, 0xffffffff
.label_1046:
	cmp	qword ptr [rdi], rdx
	jne	.label_1044
	jmp	.label_1055
.label_1052:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_1055
	nop	dword ptr [rax]
.label_1044:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_1058
.label_1043:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_1055:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfd4
	.globl sub_40bfd4
	.type sub_40bfd4, @function
sub_40bfd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfe0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x40bfe5
	.globl sub_40bfe5
	.type sub_40bfe5, @function
sub_40bfe5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bff0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_697
	call	setlocale
	mov	edi, OFFSET FLAT:label_1063
	mov	esi, OFFSET FLAT:label_1064
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1063
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + separator], OFFSET FLAT:label_1072
	mov	qword ptr [rip + sentinel_length],  1
	mov	byte ptr [rip + separator_ends_record],  1
	jmp	.label_1067
.label_1061:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
	nop	word ptr cs:[rax + rax]
.label_1067:
	mov	edx, OFFSET FLAT:label_1088
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_1060
	cmp	eax, 0x73
	je	.label_1061
	cmp	eax, 0x72
	je	.label_1062
	cmp	eax, 0x62
	jne	.label_1065
	mov	byte ptr [rip + separator_ends_record],  0
	jmp	.label_1067
.label_1062:
	mov	qword ptr [rip + sentinel_length],  0
	jmp	.label_1067
.label_1060:
	cmp	eax, -1
	jne	.label_1070
	mov	rdi, qword ptr [rip + separator]
	mov	cl, byte ptr [rdi]
	cmp	qword ptr [rip + sentinel_length],  0
	je	.label_1073
	mov	eax, 1
	test	cl, cl
	je	.label_1079
	call	strlen
.label_1079:
	mov	qword ptr [rip + sentinel_length],  rax
	mov	qword ptr [rip + match_length],  rax
	jmp	.label_1081
.label_1073:
	test	cl, cl
	je	.label_1082
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + compiled_separator],  xmm0
	mov	qword ptr [rip + label_1085], OFFSET FLAT:compiled_separator_fastmap
	mov	qword ptr [rip + label_1086],  0
	mov	rbp, qword ptr [rip + separator]
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:compiled_separator
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_1076
	mov	rax, qword ptr [rip + sentinel_length]
.label_1081:
	mov	qword ptr [rip + read_size],  0x2000
	mov	ecx, 0x2001
	cmp	rax, 0x1000
	jb	.label_1075
	mov	rax, qword ptr [rip + sentinel_length]
	mov	edx, 0x2000
	movabs	rsi, 0x7ffffffffffffffe
	nop	dword ptr [rax + rax]
.label_1071:
	test	rdx, rdx
	js	.label_1059
	lea	rcx, [rdx + rdx]
	mov	qword ptr [rip + read_size],  rcx
	and	rdx, rsi
	cmp	rax, rdx
	mov	rdx, rcx
	jae	.label_1071
	or	rcx, 1
.label_1075:
	add	rcx, rax
	lea	rdi, [rcx + rcx]
	mov	qword ptr [rip + G_buffer_size],  rdi
	cmp	rcx, rdi
	jae	.label_1059
	cmp	qword ptr [rip + read_size],  rcx
	jae	.label_1059
	call	xmalloc
	mov	qword ptr [rip + G_buffer],  rax
	mov	rdx, qword ptr [rip + sentinel_length]
	test	rdx, rdx
	je	.label_1077
	mov	rsi, qword ptr [rip + separator]
	inc	rdx
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rip + G_buffer]
	add	rax, qword ptr [rip + sentinel_length]
	jmp	.label_1083
.label_1077:
	inc	rax
.label_1083:
	mov	qword ptr [rip + G_buffer],  rax
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r14d
	lea	rax, [rbx + rax*8]
	mov	ebp, OFFSET FLAT:main.default_file_list
	cmovl	rbp, rax
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	rdi, qword ptr [rbp]
	mov	bl, 1
	test	rdi, rdi
	je	.label_1087
	add	rbp, 8
	mov	bl, 1
	nop	
.label_1074:
	call	tac_file
	and	bl, al
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	jne	.label_1074
.label_1087:
	xor	edi, edi
	xor	esi, esi
	call	output
	mov	al, byte ptr [rip + have_read_stdin]
	test	al, al
	je	.label_1080
	xor	edi, edi
	call	close
	test	eax, eax
	jns	.label_1080
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_1084
	xor	eax, eax
	call	error
.label_1080:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1059:
	call	xalloc_die
.label_1070:
	cmp	eax, 0xffffff7d
	je	.label_1066
	cmp	eax, 0xffffff7e
	jne	.label_1065
	xor	edi, edi
	call	usage
.label_1066:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_686
	mov	edx, OFFSET FLAT:label_59
	mov	r8d, OFFSET FLAT:label_1068
	mov	r9d, OFFSET FLAT:label_1069
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1065:
	mov	edi, 1
	call	usage
.label_1082:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1078
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_1076:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_291
	xor	eax, eax
	call	error
	.section	.text
	.align	32
	#Procedure 0x40c330

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	jle	.label_1089
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1091:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	cmp	byte ptr [rax + rcx + 8], 8
	jne	.label_1090
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_1090
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1090
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_1089
	nop	word ptr cs:[rax + rax]
.label_1090:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1091
.label_1089:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c3c5
	.globl sub_40c3c5
	.type sub_40c3c5, @function
sub_40c3c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c3d0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [r14 + 0x30]
	lea	rax, [r12 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	mov	rdi, rbx
	mov	rsi, r15
	call	fetch_token
	xor	r8d, r8d
	cmp	byte ptr [rbx + 8], 9
	je	.label_1096
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1092
	cmp	byte ptr [rbx + 8], 9
	jne	.label_1094
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1092
.label_1096:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_1095
	mov	eax, 1
	mov	ecx, r12d
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_1095:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_1093
	mov	qword ptr [rax + 0x28], r12
.label_1092:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1094:
	test	r8, r8
	je	.label_1097
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_1097:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_1092
	.section	.text
	.align	32
	#Procedure 0x40c4be
	.globl sub_40c4be
	.type sub_40c4be, @function
sub_40c4be:

	nop	word ptr [rax + rax]
.label_1093:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_1092
	.section	.text
	.align	32
	#Procedure 0x40c4d0

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
	#Procedure 0x40c4e7
	.globl sub_40c4e7
	.type sub_40c4e7, @function
sub_40c4e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4f0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_1098
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1100
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1101
.label_1099:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1100:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1101:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1099
.label_1098:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c56a
	.globl sub_40c56a
	.type sub_40c56a, @function
sub_40c56a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c570

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40c57a
	.globl sub_40c57a
	.type sub_40c57a, @function
sub_40c57a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c580
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
	#Procedure 0x40c590

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x40c599
	.globl sub_40c599
	.type sub_40c599, @function
sub_40c599:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c5a0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40c5aa
	.globl sub_40c5aa
	.type sub_40c5aa, @function
sub_40c5aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5b0

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	xor	eax, eax
	test	r12, r12
	je	.label_1103
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1108
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1111
	xor	eax, eax
.label_1105:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	esi, dword ptr [r8 + rbp + 8]
	mov	edi, esi
	and	edi, 0x3ffff
	cmp	edi, 1
	je	.label_1102
	mov	edi, esi
	shr	edi, 0x14
	movzx	ecx, byte ptr [r12 + 0x68]
	mov	ebx, ecx
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	sil, 0xc
	je	.label_1107
	cmp	sil, 4
	je	.label_1104
	cmp	sil, 2
	jne	.label_1106
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1102
.label_1110:
	mov	rdi, r12
	call	free_state
.label_1109:
	xor	eax, eax
	jmp	.label_1103
	.section	.text
	.align	32
	#Procedure 0x40c67e
	.globl sub_40c67e
	.type sub_40c67e, @function
sub_40c67e:

	nop	word ptr cs:[rax + rax]
.label_1106:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1102
.label_1107:
	or	byte ptr [r12 + 0x68], 0x80
.label_1102:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_1105
.label_1111:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_1110
.label_1103:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1104:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1102
.label_1108:
	mov	rdi, r12
	call	free
	jmp	.label_1109
	.section	.text
	.align	32
	#Procedure 0x40c6e0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1112
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1112:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1113
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1113:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1114
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1114:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7a1
	.globl sub_40c7a1
	.type sub_40c7a1, @function
sub_40c7a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7b0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x30]
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [rbx + 0x8a], 0
	jne	.label_1144
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1144
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1155
.label_1144:
	mov	rdi, qword ptr [rbx + 0x38]
	jmp	.label_1122
.label_1155:
	cmp	r13, r15
	jle	.label_1159
	lea	r14, [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], r13
	jmp	.label_1134
.label_1116:
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_1117
	cmp	r12, -2
	jne	.label_1120
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1120
.label_1117:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r12, -1
	jne	.label_1123
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
	jmp	.label_1123
	.section	.text
	.align	32
	#Procedure 0x40c85e
	.globl sub_40c85e
	.type sub_40c85e, @function
sub_40c85e:

	nop	
.label_1134:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_1132
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1132
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1123:
	mov	rax, r15
	jmp	.label_1141
	.section	.text
	.align	32
	#Procedure 0x40c8af
	.globl sub_40c8af
	.type sub_40c8af, @function
sub_40c8af:

	nop	
.label_1132:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	lea	rdi, [rsp + 0xc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	r12, rax
	lea	rax, [r12 - 1]
	cmp	rax, -4
	ja	.label_1116
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0xc]
	lea	rbp, [rsp + 0x30]
	jne	.label_1158
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	jmp	.label_1115
	.section	.text
	.align	32
	#Procedure 0x40c913
	.globl sub_40c913
	.type sub_40c913, @function
sub_40c913:

	nop	word ptr cs:[rax + rax]
.label_1158:
	mov	rdi, rbp
	mov	esi, r13d
	lea	rdx, [rsp + 0x18]
	call	wcrtomb
	cmp	r12, rax
	jne	.label_1125
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1115:
	mov	rdx, r12
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r12 + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_1141
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [r12*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_1141:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1134
	jmp	.label_1136
.label_1125:
	mov	rdi, r15
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1137
.label_1120:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
.label_1159:
	mov	rax, r15
.label_1136:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1140
.label_1122:
	cmp	r15, r13
	jge	.label_1143
.label_1137:
	mov	rdx, r13
	sub	rdx, r15
	lea	r12, [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [rbx + 0x78], 0
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], rdi
	jne	.label_1145
	mov	rbp, qword ptr [rbx]
	add	rbp, qword ptr [rbx + 0x28]
	add	rbp, rdi
.label_1130:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rcx, r12
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r13, [r14 - 1]
	cmp	r13, -4
	ja	.label_1146
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	cmp	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0x24], eax
	je	.label_1118
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x18]
	mov	esi, eax
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1124
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1126
.label_1145:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [rbx + 0x90], 0
	jle	.label_1130
	xor	eax, eax
.label_1147:
	cmp	rax, rdx
	jge	.label_1130
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, rdi
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rsp + rax + 0x30], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1147
	jmp	.label_1130
.label_1146:
	mov	rsi, r12
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1138
	cmp	r14, -2
	jne	.label_1139
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1139
.label_1138:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rsp + 0x28]
	add	rax, rdi
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1121
.label_1128:
	movzx	eax, al
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	jne	.label_1150
.label_1156:
	inc	rdi
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1157
	mov	r12, r15
	jmp	.label_1122
.label_1124:
	cmp	rcx, -1
	je	.label_1118
	mov	rsi, r12
	lea	r12, [rcx + r15]
	mov	rdi, qword ptr [rbx + 0x40]
	cmp	r12, rdi
	jbe	.label_1151
.label_1139:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	rdi, qword ptr [rsp + 0x28]
.label_1143:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], rdi
.label_1140:
	xor	eax, eax
.label_1152:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1118:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1126:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_1129
.label_1153:
	add	rdi, r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	lea	r12, [r14 + r15]
	inc	r15
	cmp	r15, r12
	jge	.label_1133
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rdi
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rdi, rbp
	mov	r15, r12
	jmp	.label_1122
.label_1133:
	mov	r12, r15
	jmp	.label_1122
.label_1129:
	lea	rax, [r15*8]
	add	rax, qword ptr [rbx + 0x18]
	mov	rcx, rdi
	mov	rdx, r14
.label_1149:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_1149
	jmp	.label_1153
.label_1151:
	mov	qword ptr [rsp + 0x10], rax
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_1154
	shl	rdi, 3
	mov	rbp, rcx
	call	malloc
	mov	rcx, rbp
	mov	qword ptr [rbx + 0x18], rax
	test	rax, rax
	je	.label_1160
.label_1154:
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1127
	mov	rdx, rcx
	test	r15, r15
	je	.label_1119
	mov	rax, qword ptr [rbx + 0x18]
	xor	ecx, ecx
.label_1148:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r15, rcx
	jne	.label_1148
.label_1119:
	mov	byte ptr [rbx + 0x8c], 1
	mov	rcx, rdx
.label_1127:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	mov	rbp, rcx
	call	memcpy
	mov	rsi, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + r15*8], rdi
	cmp	rsi, 2
	jb	.label_1131
	lea	rax, [r15*4]
	add	rax, qword ptr [rbx + 0x10]
	shl	r15, 3
	add	r15, qword ptr [rbx + 0x18]
	mov	ecx, 1
.label_1135:
	cmp	rcx, r14
	mov	rdx, r13
	cmovb	rdx, rcx
	add	rdx, rdi
	mov	qword ptr [r15 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rsi, rcx
	jne	.label_1135
.label_1131:
	mov	rbp, qword ptr [rsp + 0x10]
	add	qword ptr [rbx + 0x58], rbp
	cmp	qword ptr [rbx + 0x60], rdi
	jle	.label_1142
	add	qword ptr [rbx + 0x68], rbp
.label_1142:
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	add	rdi, r14
	mov	r15, r12
	jmp	.label_1122
.label_1160:
	mov	eax, 0xc
	jmp	.label_1152
.label_1121:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1128
.label_1150:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + r15*8], rdi
	jmp	.label_1156
.label_1157:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	r12, r15
	jmp	.label_1122
	.section	.text
	.align	32
	#Procedure 0x40cd05
	.globl sub_40cd05
	.type sub_40cd05, @function
sub_40cd05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd10

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1161
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1161:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd45
	.globl sub_40cd45
	.type sub_40cd45, @function
sub_40cd45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd50

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x18]
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1162
.label_1163:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_1164
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1164:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1162:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1164
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1163
.label_1165:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1166:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1168
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_1169
	.section	.text
	.align	32
	#Procedure 0x40cdfe
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_1167
	test	bl, 4
	jne	.label_1165
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1166
.label_1168:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_1169:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1167:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce65
	.globl sub_40ce65
	.type sub_40ce65, @function
sub_40ce65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce70

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbx
	mov	rbx, rdi
	call	match_ctx_clean
	mov	rdi, qword ptr [rbx + 0xf8]
	call	free
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40ce92
	.globl sub_40ce92
	.type sub_40ce92, @function
sub_40ce92:

	nop	word ptr cs:[rax + rax]
.label_1827:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 9
	jmp	.label_1170
.label_1882:
	and	r15d, 0xffffff00
	or	r15d, 0x14
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
	.section	.text
	.align	32
	#Procedure 0x40cedf

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r12, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1222
	mov	qword ptr [rsp], rdx
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
	mov	byte ptr [r12], bl
	mov	eax, dword ptr [r12 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r12 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1225
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_1225
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4], -1
	je	.label_1230
.label_1225:
	cmp	bl, 0x5c
	jne	.label_1232
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1233
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r15d, eax
	mov	byte ptr [r12], r15b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r12 + 8]
	or	ebx, 1
	mov	dword ptr [r12 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1236
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r12 + 8]
	jmp	.label_1242
.label_1883:
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_1246
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_1246
	test	ch, 8
	je	.label_1170
	mov	rcx, qword ptr [rbp + 8]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_1170
.label_1246:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x10
	jmp	.label_1170
.label_1885:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_1170
	test	ax, ax
	jns	.label_1170
.label_1171:
	and	r15d, 0xffffff00
	or	r15d, 0xa
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1879:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_1170
	and	r15d, 0xffffff00
	or	r15d, 0x12
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1837:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_1170
	test	ax, ax
	js	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1877:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_1170
	and	r15d, 0xffffff00
	or	r15d, 9
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1825:
	mov	rcx, qword ptr [rsp]
	test	ch, 0x40
	jne	.label_1170
	mov	byte ptr [r12 + 8], 4
	add	rax, -0x31
	mov	qword ptr [r12], rax
	jmp	.label_1170
.label_1834:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1835:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1829:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x200
	jmp	.label_1170
.label_1880:
	and	r15d, 0xffffff00
	or	r15d, 5
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1836:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1824:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1828:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1831:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1821:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x80
	jmp	.label_1170
.label_1886:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_1170
	and	r15d, 0xffffff00
	or	r15d, 0x18
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1222:
	mov	byte ptr [r12 + 8], 2
	xor	r14d, r14d
.label_1170:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1830:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1233:
	mov	byte ptr [r12 + 8], 0x24
	mov	r14d, 1
	jmp	.label_1170
.label_1875:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_1216
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_1216
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1170
.label_1216:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x20
	jmp	.label_1170
.label_1881:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_1170
	and	r15d, 0xffffff00
	or	r15d, 0x13
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1884:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_1170
	and	r15d, 0xffffff00
	or	r15d, 0x17
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1236:
	movzx	ebp, r15b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	r15b, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_1242:
	or	ebx, eax
	mov	dword ptr [r12 + 8], ebx
	movzx	eax, r15b
	mov	r14d, 2
	add	r15b, 0xd9
	movzx	ecx, r15b
	cmp	cl, 0x56
	ja	.label_1170
	jmp	qword ptr [(rcx * 8) + label_1235]
.label_1838:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
	nop	word ptr cs:[rax + rax]
.label_1832:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x40
	jmp	.label_1170
.label_1876:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_1170
	and	r15d, 0xffffff00
	or	r15d, 8
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1878:
	and	r15d, 0xffffff00
	or	r15d, 0xb
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_1170
.label_1833:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x100
	jmp	.label_1170
.label_1874:
	mov	rax, qword ptr [rsp]
	test	ah, 8
	je	.label_1170
	jmp	.label_1171
.label_1823:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
.label_1252:
	movzx	r14d, byte ptr [r12]
	xor	r13d, r13d
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	shr	eax, 3
	and	eax, 1
	or	eax, r13d
	shl	eax, 0x16
	and	r15d, 0xffbfff01
.label_1192:
	or	r15d, eax
	mov	dword ptr [r12 + 8], r15d
	mov	r14d, 1
	add	bl, 0xf6
	movzx	eax, bl
	cmp	al, 0x73
	ja	.label_1170
	jmp	qword ptr [(rax * 8) + label_1179]
.label_1232:
	mov	r15d, 0xffffff00
	and	r15d, dword ptr [r12 + 8]
	or	r15d, 1
	mov	dword ptr [r12 + 8], r15d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1252
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	r14d, eax
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	r15d, 0xffbfffff
	and	r15d, dword ptr [r12 + 8]
	jmp	.label_1192
.label_1230:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r12 + 8], eax
	mov	r14d, 1
	jmp	.label_1170
.label_1826:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 6
	jmp	.label_1170
.label_1822:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_1170
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_1170
	.section	.text
	.align	32
	#Procedure 0x40d560

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_1254
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_1254:
	cmp	eax, 3
	jne	.label_1255
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_1255:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d580

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_1256
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1256:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d5e0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40d610

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbx
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1260
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1260
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1261
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1260
	mov	qword ptr [rbx + 0xb8], rcx
.label_1261:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1258
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_1257
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1221
	jmp	.label_1260
.label_1258:
	cmp	eax, 2
	jl	.label_1259
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1221
.label_1259:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1221
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_1221:
	xor	eax, eax
.label_1260:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
.label_1257:
	call	build_upper_buffer
	jmp	.label_1221
	.section	.text
	.align	32
	#Procedure 0x40d6e0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
	xor	r12d, r12d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1264
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x58], r13
	nop	dword ptr [rax + rax]
.label_1251:
	mov	rax, qword ptr [r13 + 0x18]
	mov	qword ptr [rsp + 8], r15
	mov	rbx, qword ptr [rax + r15*8]
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	lea	rbp, [r14 + rbx]
	mov	r15d, dword ptr [r14 + rbx + 8]
	movzx	eax, r15b
	mov	dword ptr [rsp + 0x14], eax
	cmp	eax, 1
	mov	qword ptr [rsp + 0x18], rbp
	jne	.label_1273
	movzx	esi, byte ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_set
.label_1268:
	shr	r15d, 8
	mov	eax, r15d
	and	eax, 0x3ff
	je	.label_1279
	test	r15b, 0x20
	je	.label_1289
	mov	esi, 0xa
	lea	rbp, [rsp + 0x20]
	mov	rdi, rbp
	call	bitset_contain
	mov	r13d, eax
	mov	rdi, rbp
	call	bitset_empty
	test	r13b, r13b
	je	.label_1295
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	r13, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x18]
.label_1289:
	test	r15b, r15b
	js	.label_1283
	lea	rax, [r14 + rbx + 8]
	test	r15b, 4
	je	.label_1270
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_1302
	test	byte ptr [rax + 2], 0x40
	je	.label_1283
.label_1302:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 1
	jle	.label_1305
	mov	rdx, qword ptr [rbp + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	dword ptr [rax]
.label_1265:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [rbp + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x20]
	mov	qword ptr [rsp + rsi*8 + 0x20], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_1265
	jmp	.label_1274
	nop	word ptr [rax + rax]
.label_1273:
	cmp	r15b, 7
	je	.label_1277
	cmp	r15b, 5
	je	.label_1278
	cmp	r15b, 3
	jne	.label_1276
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_1268
.label_1295:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x58]
	jmp	.label_1203
.label_1277:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	rax, qword ptr [rsp]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1287
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_1287:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	jns	.label_1268
	jmp	.label_1296
.label_1278:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 2
	jl	.label_1297
	mov	rsi, qword ptr [rbp + 0x78]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_1272
.label_1297:
	lea	rdi, [rsp + 0x20]
	call	bitset_set_all
.label_1272:
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_1301
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_1301:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jns	.label_1268
.label_1296:
	xor	esi, esi
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
	jmp	.label_1268
.label_1305:
	xor	ecx, ecx
	xor	edx, edx
	nop	
.label_1269:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x20]
	and	rsi, qword ptr [rbp + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1269
.label_1274:
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1276
.label_1270:
	test	r15b, 8
	je	.label_1279
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_1282
	test	byte ptr [rax + 2], 0x40
	jne	.label_1283
.label_1282:
	mov	rdi, qword ptr [rsp]
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_1275
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1288:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1288
	jmp	.label_1294
	nop	word ptr [rax + rax]
.label_1283:
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
.label_1276:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1203
.label_1275:
	xor	eax, eax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1300:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1300
.label_1294:
	test	rax, rax
	je	.label_1276
	nop	word ptr cs:[rax + rax]
.label_1279:
	test	r12, r12
	jle	.label_1262
	mov	rbx, qword ptr [rsp + 0x50]
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1263
.label_1262:
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1266
.label_1298:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1281
	nop	dword ptr [rax + rax]
.label_1263:
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_1286
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	movzx	esi, byte ptr [rbp]
	call	bitset_contain
	mov	ecx, 0x13
	test	al, al
	je	.label_1280
.label_1286:
	mov	rcx, rbx
	xor	eax, eax
	xor	edx, edx
.label_1284:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_1284
	mov	ecx, 0x13
	test	rax, rax
	je	.label_1280
	xor	ebp, ebp
	xor	eax, eax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1293:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x20]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x60], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_1293
	test	rax, rax
	je	.label_1304
	mov	rdi, r12
	shl	rdi, 5
	mov	r15, qword ptr [rsp + 0x50]
	add	rdi, r15
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, r15
	lea	rsi, [rsp + 0x80]
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	lea	rax, [r14 + r14*2]
	lea	rsi, [rcx + rax*8]
	call	re_node_set_init_copy
	mov	ecx, 0x1a
	test	eax, eax
	jne	.label_1298
	inc	r12
	mov	r15, qword ptr [rsp + 8]
.label_1304:
	lea	rax, [r14 + r14*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_insert
	mov	ecx, 0x1a
	test	al, al
	je	.label_1281
	test	rbp, rbp
	mov	ecx, 0
	mov	eax, 0x11
	cmove	ecx, eax
.label_1281:
	mov	rbp, qword ptr [rsp + 0x18]
.label_1280:
	mov	eax, ecx
	and	al, 0x1f
	je	.label_1291
	cmp	al, 0x13
	jne	.label_1285
.label_1291:
	inc	r14
	add	rbx, 0x20
	cmp	r14, r12
	jl	.label_1263
	jmp	.label_1266
.label_1285:
	cmp	al, 0x11
	jne	.label_1290
	nop	dword ptr [rax]
.label_1266:
	cmp	r14, r12
	jne	.label_1292
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	lea	rbx, [rsp + 0x20]
	mov	r14, rbx
	mov	rsi, r14
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rbx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_init_1
	test	eax, eax
	mov	rbp, qword ptr [rsp]
	jne	.label_1299
	inc	r12
	mov	rdi, r14
	call	bitset_empty
	jmp	.label_1203
.label_1290:
	and	cl, 0x1f
	jne	.label_1303
.label_1292:
	mov	rbp, qword ptr [rsp]
.label_1203:
	inc	r15
	cmp	r15, qword ptr [r13 + 0x10]
	jl	.label_1251
.label_1264:
	mov	rax, r12
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1303:
	cmp	cl, 0x1a
	mov	rbx, qword ptr [rsp + 0x48]
	jne	.label_1264
.label_1299:
	test	r12, r12
	jle	.label_1267
	add	rbx, 0x10
	nop	
.label_1271:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1271
.label_1267:
	mov	r12, -1
	jmp	.label_1264
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc40

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x188
	mov	r12, rdi
	mov	rdi, qword ptr [rsp + 0x1c0]
	mov	r10, qword ptr [r12]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x118], r10
	mov	rax, qword ptr [r12 + 0x20]
	xor	r14d, r14d
	test	rax, rax
	je	.label_1323
	mov	bl, byte ptr [r12 + 0x38]
	and	bl, 9
	xor	ebp, ebp
	cmp	bl, 8
	cmovne	rax, rbp
	cmp	rcx, r8
	cmove	rax, rbp
	mov	r14, rax
.label_1323:
	mov	rax, qword ptr [r12 + 0x30]
	lea	r15, [rdi - 1]
	mov	rbp, r15
	sub	rbp, rax
	xor	ebx, ebx
	cmp	rax, rdi
	cmovb	rbx, rbp
	mov	r13d, 1
	cmp	qword ptr [r12 + 0x10], 0
	je	.label_1310
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_1310
	mov	r11, qword ptr [r10 + 0x50]
	test	r11, r11
	je	.label_1310
	mov	qword ptr [rsp + 0x38], r9
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_1310
	mov	qword ptr [rsp + 0x30], rcx
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_1310
	mov	rcx, qword ptr [r12 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1338
	cmp	qword ptr [r11 + 0x10], 0
	jne	.label_1338
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1341
	cmp	byte ptr [r12 + 0x38], 0
	js	.label_1338
.label_1341:
	xor	ebp, ebp
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1343
	test	r8, r8
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	jne	.label_1310
	jmp	.label_1308
.label_1338:
	mov	rbp, r8
.label_1308:
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x68], rbx
	sub	rdi, rbx
	mov	qword ptr [rsp + 0x28], rdi
	mov	byte ptr [rsp + 0x17], 1
	jne	.label_1348
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 0x17]
.label_1348:
	mov	rcx, qword ptr [r10 + 0x10]
	inc	rcx
	mov	r8, qword ptr [r12 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r12 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp], r10
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x60], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1317
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r12 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1317
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1339
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1339
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1344
.label_1339:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_1317
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_1317
.label_1344:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rdi
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, rbp
	cmp	rax, rdi
	mov	r9d, 0xffffffff
	mov	ecx, 1
	cmovge	r9d, ecx
	mov	r13, rdi
	cmovle	r13, rax
	mov	r15, rax
	cmovl	r15, rdi
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rcx + 0xb4]
	mov	dword ptr [rsp + 0x38], ecx
	mov	edx, 8
	test	r14, r14
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1358
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_1329
	mov	edx, 0x400000
	xor	ecx, ecx
	test	rbx, rbx
	jne	.label_1331
	and	rdx, qword ptr [r12 + 0x18]
	jne	.label_1331
.label_1329:
	mov	ecx, 4
.label_1331:
	xor	edx, edx
	cmp	rdi, rax
	setle	dl
	xor	esi, esi
	test	rbx, rbx
	setne	sil
	lea	edx, [rsi + rdx*2]
	or	edx, ecx
.label_1358:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_1340
	cmp	r15, rcx
	jl	.label_1340
	xor	ecx, ecx
	cmp	rdi, rax
	lea	rsi, [rsp + 0x18]
	cmovg	rsi, rcx
	mov	qword ptr [rsp + 0x30], rsi
	movsxd	rdi, r9d
	add	edx, -4
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x78], rdx
	mov	qword ptr [rsp + 0x70], rdi
.label_1328:
	cmp	edx, 4
	ja	.label_1326
	jmp	qword ptr [(rdx * 8) + label_1354]
.label_1862:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_1307
	nop	word ptr cs:[rax + rax]
.label_1327:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_1361
	movzx	eax, byte ptr [rbp + rcx]
.label_1361:
	test	rbx, rbx
	je	.label_1363
	movzx	eax, byte ptr [rbx + rax]
.label_1363:
	cmp	byte ptr [r14 + rax], 0
	jne	.label_1307
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x18], rcx
	cmp	rax, r13
	jg	.label_1327
.label_1307:
	cmp	qword ptr [rsp + 0x18], r13
	jge	.label_1316
	jmp	.label_1318
	nop	
.label_1349:
	mov	rax, qword ptr [rsp + 0x18]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_1320
	cmp	rax, r15
	jle	.label_1326
	jmp	.label_1320
.label_1342:
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1317
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x70]
	jmp	.label_1336
	nop	
.label_1326:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_1342
.label_1336:
	cmp	qword ptr [rsp + 0x18], r8
	mov	ecx, 0
	jge	.label_1364
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_1364:
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1349
	jmp	.label_1316
.label_1863:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1352
	nop	word ptr cs:[rax + rax]
.label_1359:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_1352:
	cmp	rax, r15
	jge	.label_1312
	movzx	ecx, byte ptr [rbp + rax]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1359
	jmp	.label_1312
.label_1864:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1362
	nop	word ptr cs:[rax + rax]
.label_1315:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_1362:
	cmp	rax, r15
	jge	.label_1312
	movzx	ecx, byte ptr [rbp + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_1315
.label_1312:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r15
	je	.label_1319
.label_1316:
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1311
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_1333
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_1333
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_1337
.label_1333:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x17]
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	check_matching
	cmp	rax, -1
	je	.label_1345
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_1317
	mov	qword ptr [rsp + 0x128], rax
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	rdx, 2
	jb	.label_1350
	mov	cl, byte ptr [r12 + 0x38]
	and	cl, 0x10
	je	.label_1356
.label_1350:
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_1325
.label_1356:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdi, rbx
	mov	rdx, rax
	call	check_halt_state_context
	mov	rdx, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x130], rax
.label_1325:
	cmp	rdx, 2
	jb	.label_1314
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_1314
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1306
.label_1314:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1321
.label_1306:
	mov	rdi, rbx
	call	prune_impossible_nodes
	mov	r13d, eax
	xor	ebp, ebp
	test	r13d, r13d
	je	.label_1321
	cmp	r13d, 1
	jne	.label_1317
.label_1345:
	mov	rdi, rbx
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x48]
.label_1337:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x70]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_1318
	cmp	r15, rax
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x78]
	jge	.label_1328
	jmp	.label_1318
.label_1319:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_1347
	mov	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rax + rcx]
.label_1347:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_1351
	mov	rcx, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rcx + rax]
.label_1351:
	cmp	byte ptr [r14 + rax], 0
	mov	r13, qword ptr [rsp + 0x48]
	jne	.label_1316
	mov	r13d, 1
	jmp	.label_1317
.label_1340:
	mov	r13d, 1
	jmp	.label_1317
.label_1321:
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	je	.label_1311
	cmp	rcx, 1
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_1309
	lea	rdi, [r14 + 0x10]
	cmp	rcx, 2
	mov	edx, 2
	cmova	rdx, rcx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
	mov	rcx, qword ptr [rsp + 0x28]
.label_1309:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [r14 + 8], rax
	cmp	rcx, 2
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	jb	.label_1334
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_1334
	test	byte ptr [r8 + 0xb0], 1
	jne	.label_1324
	xor	eax, eax
	jmp	.label_1355
.label_1320:
	mov	r13d, 1
	jmp	.label_1317
.label_1318:
	mov	r13d, 1
	jmp	.label_1317
.label_1324:
	cmp	qword ptr [r8 + 0x98], 0
	setg	al
.label_1355:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r12
	mov	rdx, rcx
	mov	rcx, r14
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1317
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_1322
.label_1334:
	mov	al, byte ptr [rsp + 0x10c]
	lea	r9, [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [r14 + 8]
	mov	rdi, rcx
	jmp	.label_1335
.label_1343:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1308
.label_1330:
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi - 8], rbx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi], rbx
	jmp	.label_1332
	nop	word ptr cs:[rax + rax]
.label_1335:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_1357
	test	al, al
	jne	.label_1330
.label_1332:
	mov	rbx, qword ptr [rsp + 0x18]
	add	qword ptr [rsi - 8], rbx
	add	qword ptr [rsi], rbx
.label_1357:
	add	rsi, 0x10
	dec	rdi
	jne	.label_1335
.label_1322:
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	jle	.label_1346
	mov	rdi, rcx
	shl	rdi, 4
	add	rdi, r14
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
.label_1346:
	cmp	qword ptr [r8 + 0xe0], 0
	je	.label_1311
	cmp	rcx, 2
	jb	.label_1311
	mov	rax, qword ptr [r8 + 0xe0]
	sub	r10, rdx
	lea	rcx, [r14 + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1360:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1353
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [r8 + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1353:
	inc	rdx
	add	rcx, 0x10
	cmp	r10, rdx
	jne	.label_1360
.label_1311:
	mov	r13d, ebp
.label_1317:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1313
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_1313:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_1310:
	mov	eax, r13d
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e560

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1365
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e590

	.globl copy_to_temp
	.type copy_to_temp, @function
copy_to_temp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rcx
	mov	ebp, edx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	temp_stream
	mov	r15, -1
	test	al, al
	je	.label_1367
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, qword ptr [rsp + 8]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1366:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, ebp
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_1372
	cmp	r14, -1
	je	.label_1373
	mov	rdi, qword ptr [rip + G_buffer]
	mov	esi, 1
	mov	rdx, r14
	mov	rcx, rbx
	call	fwrite_unlocked
	add	r15, r14
	cmp	rax, r14
	je	.label_1366
	jmp	.label_1370
.label_1372:
	mov	rdi, qword ptr [rsp + 8]
	call	fflush_unlocked
	test	eax, eax
	je	.label_1371
.label_1370:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1369
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [rsp]
	xor	edi, edi
	mov	esi, 3
	jmp	.label_1368
.label_1371:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r13], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r12], rax
	jmp	.label_1367
	nop	word ptr cs:[rax + rax]
.label_1373:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
.label_1368:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r15, -1
.label_1367:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e6d0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r15, rsi
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1410
	lea	r12, [r14 + 0x1800]
	lea	r13, [r15 + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x58], xmm0
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x90], r15
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, r12
	call	group_nodes_into_DFAstates
	mov	r15, rax
	test	r15, r15
	jle	.label_1381
	lea	rsi, [r15 + 1]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	ja	.label_1380
	test	eax, eax
	jne	.label_1380
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	mov	qword ptr [rbp - 0x98], r13
	ja	.label_1391
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x44], 0
	jmp	.label_1396
.label_1391:
	call	malloc
	test	rax, rax
	je	.label_1380
	mov	cl, 1
	mov	dword ptr [rbp - 0x44], ecx
.label_1396:
	mov	qword ptr [rbp - 0x40], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x58], r15
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rbp - 0xc0]
	call	bitset_empty
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], r14
	mov	qword ptr [rbp - 0x68], r12
	nop	word ptr [rax + rax]
.label_1384:
	mov	qword ptr [rbp - 0x80], 0
	lea	rax, [r15 + r15*2]
	cmp	qword ptr [r14 + rax*8 + 8], 0
	jle	.label_1408
	mov	rcx, qword ptr [rbp - 0x60]
	lea	r12, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1386:
	mov	rax, qword ptr [r13 + r14*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_1379
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_1186
.label_1379:
	inc	r14
	cmp	r14, qword ptr [r12]
	jl	.label_1386
.label_1408:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1393
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1186
.label_1393:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1397
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_1191
	nop	
.label_1397:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1182
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1186
.label_1182:
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_1198
	cmp	dword ptr [rbx + 0xb4], 1
	mov	al, 1
	jg	.label_1197
	mov	rax, qword ptr [rbp - 0x50]
.label_1197:
	mov	qword ptr [rbp - 0x50], rax
.label_1198:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1191
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	jne	.label_1186
	nop	dword ptr [rax]
.label_1191:
	mov	rsi, r15
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x68]
	add	rsi, r12
	lea	rdi, [rbp - 0xc0]
	call	bitset_merge
	inc	r15
	cmp	r15, qword ptr [rbp - 0x58]
	mov	r14, qword ptr [rbp - 0x60]
	jl	.label_1384
	mov	rax, qword ptr [rbp - 0x50]
	and	al, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	edi, 8
	jne	.label_1387
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_1186
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x68]
	mov	r9, r12
	xor	r13d, r13d
	mov	r15, qword ptr [rbp - 0x58]
	nop	dword ptr [rax]
.label_1378:
	mov	rdi, qword ptr [rbp + r13*8 - 0xc0]
	test	rdi, rdi
	je	.label_1409
	mov	rcx, r14
	mov	edx, 1
	jmp	.label_1376
.label_1406:
	mov	r11, r9
	mov	r10, r8
	nop	dword ptr [rax]
.label_1402:
	add	r10, 8
	test	qword ptr [r11], rdx
	lea	r11, [r11 + 0x20]
	je	.label_1402
	test	qword ptr [rbx + r13*8 + 0xb8], rdx
	je	.label_1383
	mov	rax, qword ptr [r10 + r15*8]
	jmp	.label_1405
.label_1383:
	mov	rax, qword ptr [r10]
.label_1405:
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + rcx*8], rax
	jmp	.label_1394
	nop	word ptr [rax + rax]
.label_1376:
	test	dil, 1
	jne	.label_1406
.label_1394:
	add	rdx, rdx
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_1376
.label_1409:
	inc	r13
	add	r14, 0x40
	add	r9, 8
	cmp	r13, 4
	jne	.label_1378
.label_1403:
	lea	rdi, [rbp - 0xc0]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	je	.label_1382
	test	r15, r15
	jle	.label_1382
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1390:
	mov	esi, 0xa
	mov	rdi, r12
	call	bitset_contain
	test	al, al
	jne	.label_1389
	inc	rbx
	add	r12, 0x20
	cmp	rbx, r15
	jl	.label_1390
	jmp	.label_1382
.label_1389:
	mov	rax, r15
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x50], rcx
	je	.label_1382
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x850], rax
.label_1382:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	je	.label_1398
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1398:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_1401
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1404:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1404
.label_1401:
	mov	rdi, r14
	call	free
	mov	al, 1
.label_1377:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1410:
	xor	eax, eax
	jmp	.label_1377
.label_1381:
	mov	rdi, r14
	call	free
	test	r15, r15
	je	.label_1374
	xor	eax, eax
	jmp	.label_1377
.label_1387:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rax + 0x60], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_1186
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	ebx, ebx
	mov	r12, qword ptr [rbp - 0x68]
	mov	r11, r12
	xor	esi, esi
	mov	r15, qword ptr [rbp - 0x58]
.label_1400:
	mov	rdi, qword ptr [rbp + rsi*8 - 0xc0]
	test	rdi, rdi
	je	.label_1385
	mov	rcx, rbx
	mov	eax, 1
	jmp	.label_1388
.label_1399:
	mov	r10, r11
	mov	r9, r8
.label_1392:
	add	r9, 8
	test	qword ptr [r10], rax
	lea	r10, [r10 + 0x20]
	je	.label_1392
	mov	rdx, qword ptr [r9]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx*8], rdx
	mov	rdx, qword ptr [r9 + r15*8]
	mov	qword ptr [r10 + rcx*8 + 0x800], rdx
	jmp	.label_1395
	nop	word ptr cs:[rax + rax]
.label_1388:
	test	dil, 1
	jne	.label_1399
.label_1395:
	add	rax, rax
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_1388
.label_1385:
	inc	rsi
	add	rbx, 0x40
	add	r11, 8
	cmp	rsi, 4
	jne	.label_1400
	jmp	.label_1403
.label_1186:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	mov	r15, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x40]
	je	.label_1380
	call	free
.label_1380:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_1407
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_1375:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1375
.label_1407:
	mov	rdi, r14
	call	free
	xor	eax, eax
	jmp	.label_1377
.label_1374:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1377
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ec40

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1411
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_1417:
	mov	rsi, rax
	shl	rsi, 4
	mov	cl, byte ptr [r11 + rsi + 8]
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0xb
	ja	.label_1419
	lea	rdx, [r11 + rsi]
	jmp	qword ptr [(rcx * 8) + label_1424]
.label_1867:
	cmp	byte ptr [rdx], 0
	mov	cl, 1
	js	.label_1418
	mov	ecx, r10d
.label_1418:
	mov	r10b, cl
	jmp	.label_1413
.label_1868:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	ecx, 2
.label_1416:
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_1414
	inc	rcx
	cmp	rcx, 3
	jle	.label_1416
	jmp	.label_1413
.label_1869:
	mov	r9b, 1
	jmp	.label_1413
.label_1870:
	mov	ecx, dword ptr [rdx]
	lea	edx, [rcx - 0x10]
	cmp	edx, 0x30
	ja	.label_1425
	bt	r8, rdx
	jb	.label_1413
.label_1425:
	cmp	ecx, 0x80
	jne	.label_1414
	nop	word ptr [rax + rax]
.label_1413:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_1417
	jmp	.label_1422
.label_1411:
	xor	r10d, r10d
	xor	r9d, r9d
.label_1422:
	mov	r8d, r9d
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1415
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1415
	xor	eax, eax
	mov	ecx, 8
	nop	word ptr cs:[rax + rax]
.label_1420:
	mov	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + rcx]
	cmp	dl, 1
	jne	.label_1412
	cmp	byte ptr [rsi + rcx - 8], 0
	js	.label_1423
.label_1412:
	mov	rdx, qword ptr [rdi]
	mov	esi, dword ptr [rdx + rcx]
	cmp	sil, 5
	jne	.label_1421
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [rdx + rcx], esi
	jmp	.label_1421
.label_1423:
	and	edx, 0xffdfffff
	mov	dword ptr [rsi + rcx], edx
	nop	word ptr cs:[rax + rax]
.label_1421:
	inc	rax
	add	rcx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_1420
.label_1415:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_1414:
	ret	
.label_1419:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl calc_next
	.type calc_next, @function
calc_next:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x10
	je	.label_1200
	cmp	al, 0xb
	jne	.label_1201
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
.label_1200:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1202
.label_1201:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1205
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1205:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_1206
.label_1202:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1206:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee00

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1426
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1430
.label_1426:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_1427
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_1429
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1432
	xor	eax, eax
	jmp	.label_1428
.label_1427:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1430
.label_1429:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_1432:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1430
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1430:
	test	rbx, rbx
	je	.label_1431
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1431
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1428
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1428
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1428
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1428
.label_1431:
	mov	rax, rbx
.label_1428:
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
	#Procedure 0x40ef50

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_1443
	mov	rcx, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1443
	add	rcx, rdx
	mov	rax, qword ptr [r14 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r14]
	cmp	rax, rbx
	jle	.label_1449
	add	rbx, rcx
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1443
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
.label_1449:
	mov	rcx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsi, qword ptr [r12 + 0x10]
	lea	r9, [rdx + rcx]
	mov	r10, qword ptr [r15 + 8]
	mov	r8, qword ptr [r15 + 0x10]
	add	r9, r10
	dec	rcx
.label_1437:
	dec	rdx
	mov	rdi, r10
.label_1445:
	lea	r10, [rdi - 1]
	mov	rbx, qword ptr [r8 + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_1448:
	cmp	qword ptr [rsi + rdx*8], rbx
	je	.label_1446
	jl	.label_1447
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_1448
	jmp	.label_1434
	nop	word ptr cs:[rax + rax]
.label_1447:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_1445
	jmp	.label_1434
	nop	dword ptr [rax + rax]
.label_1446:
	test	rcx, rcx
	js	.label_1440
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1435:
	cmp	qword ptr [rbx + rcx*8], rax
	jle	.label_1433
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1435
	jmp	.label_1440
.label_1433:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rbx + rdx*8]
	je	.label_1441
	nop	word ptr cs:[rax + rax]
.label_1440:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_1441:
	test	rdx, rdx
	jle	.label_1434
	cmp	rdi, 2
	jge	.label_1437
.label_1434:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	add	rdx, rax
	lea	r10, [rcx + rdx - 1]
	mov	rcx, r10
	sub	rcx, r9
	lea	r8, [rcx + 1]
	lea	rdx, [rcx + rax + 1]
	mov	qword ptr [r14 + 8], rdx
	test	rax, rax
	jle	.label_1436
	test	rcx, rcx
	js	.label_1436
	dec	rax
	mov	rdi, qword ptr [r14 + 0x10]
	xor	edx, edx
.label_1439:
	lea	rcx, [rax + r8]
	lea	rbx, [rdi + rcx*8]
	nop	word ptr [rax + rax]
.label_1442:
	mov	rcx, qword ptr [rdi + r10*8]
	mov	rsi, qword ptr [rdi + rax*8]
	cmp	rcx, rsi
	jg	.label_1444
	mov	qword ptr [rbx], rsi
	add	rbx, -8
	test	rax, rax
	lea	rax, [rax - 1]
	jg	.label_1442
	jmp	.label_1436
	nop	
.label_1444:
	dec	r10
	dec	r8
	mov	qword ptr [rbx], rcx
	jne	.label_1439
	jmp	.label_1438
.label_1436:
	mov	rdx, r8
.label_1438:
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1443:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f130

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	movzx	r15d, byte ptr [r14 + rbx + 8]
	cmp	r15d, 7
	je	.label_1460
	mov	rdi, r13
	mov	r12, rcx
	mov	rsi, rcx
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1473
	xor	eax, eax
	cmp	esi, 2
	jl	.label_1453
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_1474
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0xa
	je	.label_1453
.label_1474:
	cmp	byte ptr [rbp + 0xd8], 0
	js	.label_1455
	mov	eax, esi
	jmp	.label_1453
.label_1473:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_1453
	test	cl, cl
	je	.label_1453
	mov	rbx, qword ptr [r14 + rbx]
	cmp	qword ptr [rbx + 0x40], 0
	jne	.label_1464
	cmp	qword ptr [rbx + 0x48], 0
	jne	.label_1464
	xor	r14d, r14d
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_1469
.label_1464:
	mov	rdi, r13
	mov	ebp, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebp
	mov	r14d, eax
.label_1469:
	cmp	qword ptr [rbx + 0x28], 0
	jle	.label_1475
	mov	rax, qword ptr [rbx]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1465:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1450
	inc	rcx
	cmp	rcx, qword ptr [rbx + 0x28]
	jl	.label_1465
.label_1475:
	mov	r15d, esi
	cmp	qword ptr [rbx + 0x48], 0
	jle	.label_1470
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1459:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_1458
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x48]
	jl	.label_1459
.label_1470:
	xor	ecx, ecx
	cmp	qword ptr [rbx + 0x40], 0
	mov	esi, r15d
	jle	.label_1452
	mov	rax, qword ptr [rbx + 8]
	xor	edx, edx
	nop	
.label_1471:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1468
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_1450
.label_1468:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbx + 0x40]
	jl	.label_1471
	jmp	.label_1452
.label_1455:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_1453
	mov	eax, esi
	jmp	.label_1453
.label_1458:
	mov	esi, r15d
.label_1450:
	mov	ecx, esi
.label_1452:
	test	byte ptr [rbx + 0x20], 1
	jne	.label_1454
	mov	eax, ecx
	jmp	.label_1453
.label_1454:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_1453
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_1453:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1460:
	mov	rsi, qword ptr [r13 + 8]
	mov	dl, byte ptr [rsi + rcx]
	xor	eax, eax
	cmp	dl, 0xc2
	jb	.label_1453
	mov	rdi, rcx
	lea	rcx, [rcx + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1463
	xor	eax, eax
	jmp	.label_1453
.label_1463:
	mov	cl, byte ptr [rsi + rdi + 1]
	cmp	dl, 0xdf
	ja	.label_1466
	cmp	cl, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_1453
.label_1466:
	cmp	dl, 0xef
	ja	.label_1472
	mov	eax, 3
	cmp	dl, 0xe0
	jne	.label_1456
	cmp	cl, 0xa0
	jae	.label_1456
	xor	eax, eax
	jmp	.label_1453
.label_1472:
	cmp	dl, 0xf7
	ja	.label_1451
	mov	eax, 4
	cmp	dl, 0xf0
	jne	.label_1456
	cmp	cl, 0x90
	jae	.label_1456
	xor	eax, eax
	jmp	.label_1453
.label_1451:
	cmp	dl, 0xfb
	ja	.label_1457
	mov	eax, 5
	cmp	dl, 0xf8
	jne	.label_1456
	cmp	cl, 0x88
	jae	.label_1456
	xor	eax, eax
	jmp	.label_1453
.label_1457:
	cmp	dl, 0xfd
	ja	.label_1462
	mov	eax, 6
	cmp	dl, 0xfc
	jne	.label_1456
	cmp	cl, 0x84
	jae	.label_1456
	xor	eax, eax
	jmp	.label_1453
.label_1456:
	mov	ecx, eax
	lea	rdx, [rcx + rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_1467
	xor	eax, eax
	jmp	.label_1453
.label_1467:
	add	rdi, qword ptr [r13 + 8]
	mov	edx, 1
.label_1461:
	movzx	ebx, byte ptr [rdi + rdx]
	test	bl, bl
	jns	.label_1462
	cmp	bl, 0xbf
	ja	.label_1462
	inc	rdx
	cmp	rdx, rcx
	jl	.label_1461
	jmp	.label_1453
.label_1462:
	xor	eax, eax
	jmp	.label_1453
	nop	dword ptr [rax]
.label_1239:
	inc	rax
	mov	sil, dl
.label_1476:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_1239
	test	cl, cl
	je	.label_1241
	mov	edx, esi
	and	dl, 1
	je	.label_1243
	xor	esi, esi
.label_1243:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_1239
	.section	.text
	.align	32
	#Procedure 0x40f3b7

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_1477:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_1477
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_1476
	nop	word ptr cs:[rax + rax]
.label_1241:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408700

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
	mov	rax, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	nop	dword ptr [rax + rax]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f4a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1478
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1480
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1478
.label_1480:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1478
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1479
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1479:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1478:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f520

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1481:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_1481
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f540

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1482
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1482:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f590

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	je	.label_1485
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1485
	xor	r15d, r15d
	xor	ebx, ebx
	nop	
.label_1492:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1492
.label_1485:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1486
	xor	r15d, r15d
	mov	ebx, 0x10
.label_1487:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_1488
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1488:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_1491
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1491:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_1483
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1483:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_1487
.label_1486:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_1484
	xor	r15d, r15d
.label_1493:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1489
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1494:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_1494
.label_1489:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1493
.label_1484:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1490
	call	free
.label_1490:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
.label_1224:
	mov	eax, ebx
.label_1229:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

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
	ja	.label_1224
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
	jmp	.label_1229
	.section	.text
	.align	32
	#Procedure 0x40f730

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1502
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1501
	test	rax, rax
	jle	.label_1501
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1505
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1495
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebp, 0
	mov	ebx, 0
	jle	.label_1497
	xor	esi, esi
	xor	edx, edx
	xor	r13d, r13d
.label_1507:
	mov	rbx, rsi
	mov	rbp, rdx
	nop	word ptr [rax + rax]
.label_1503:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1497
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_1498
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1503
	jmp	.label_1497
.label_1498:
	sete	dl
	movzx	edx, dl
	add	rdx, rbp
	inc	r13
	lea	rsi, [rbx + 1]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	qword ptr [rdi + rbx*8], rcx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1507
	xor	edx, edx
	cmp	rcx, rax
	sete	dl
	inc	rbx
	add	rbp, rdx
.label_1497:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_1496
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_1499
.label_1505:
	mov	rax, qword ptr [r12 + 8]
.label_1501:
	test	rax, rax
	jle	.label_1502
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_1504
.label_1502:
	test	r15, r15
	je	.label_1506
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1506
	mov	rdi, r14
	mov	rsi, r15
.label_1504:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1506:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1500
.label_1496:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_1499
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1499:
	mov	qword ptr [r14 + 8], rbx
.label_1500:
	xor	eax, eax
.label_1495:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f900

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r13d, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x90], 0
	movzx	r8d, r13b
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_string_construct_common
	test	r15, r15
	jle	.label_1513
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1509
.label_1513:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1516
	mov	rbp, qword ptr [rbx + 8]
.label_1516:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_1508
	cmp	eax, 2
	jl	.label_1512
	nop	
.label_1510:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1509
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_1509
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_1509
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_1510
	jmp	.label_1509
.label_1508:
	cmp	eax, 2
	jl	.label_1511
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1514
.label_1512:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1514
.label_1511:
	test	r12, r12
	je	.label_1515
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1514
.label_1515:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_1514:
	xor	eax, eax
.label_1509:
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
	#Procedure 0x40fa20

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rsp], rdx
	mov	r15, qword ptr [rdi]
	cmp	dword ptr [r15 + 0xb4], 1
	mov	qword ptr [rsp + 0x10], rdi
	jne	.label_1528
	mov	r14b, byte ptr [rdi + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1536
.label_1528:
	xor	r14d, r14d
.label_1536:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1532
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], r15
	nop	
.label_1517:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [r15]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	add	rcx, rbp
	cmp	al, 1
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_1538
	cmp	al, 6
	je	.label_1539
	cmp	al, 3
	jne	.label_1527
	xor	r13d, r13d
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rbp
	nop	word ptr cs:[rax + rax]
.label_1523:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + rbp]
	mov	rbp, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp]
	lea	r12, [rax + rbx]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1519:
	bt	rbp, r15
	jae	.label_1537
	mov	byte ptr [r12 + r15], 1
	test	r14b, r14b
	je	.label_1537
	lea	edi, [rbx + r15]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1537:
	inc	r15
	cmp	r15, 0x40
	jne	.label_1519
	inc	r13
	add	rbx, 0x40
	cmp	r13, 4
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x38]
	jne	.label_1523
	jmp	.label_1521
	nop	dword ptr [rax + rax]
.label_1538:
	movzx	edi, byte ptr [rcx]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1534
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1534:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_1521
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1521
	mov	rax, qword ptr [r15]
	mov	al, byte ptr [rax + rbp]
	mov	byte ptr [rsp + 0x40], al
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x10]
	lea	r13, [rsp + 0x41]
	jae	.label_1524
	add	rbp, 0x18
	lea	r13, [rsp + 0x41]
	nop	dword ptr [rax]
.label_1530:
	mov	rax, qword ptr [r15]
	mov	ecx, dword ptr [rax + rbp]
	mov	edx, 0x2000ff
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_1524
	movzx	eax, byte ptr [rax + rbp - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbx
	add	rbp, 0x10
	cmp	rbx, qword ptr [r15 + 0x10]
	jb	.label_1530
.label_1524:
	mov	qword ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	sub	r13, rbx
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbx
	mov	rdx, r13
	lea	rbp, [rsp + 8]
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1521
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbx
	mov	esi, eax
	mov	rdx, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_1521
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_1521
	nop	word ptr cs:[rax + rax]
.label_1539:
	mov	r12, qword ptr [rcx]
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_1529
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1535
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1535
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1529
.label_1535:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1526:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_1522
	movzx	eax, byte ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1522:
	inc	byte ptr [rsp + 8]
	jne	.label_1526
	jmp	.label_1521
	nop	dword ptr [rax]
.label_1527:
	cmp	al, 7
	ja	.label_1521
	movzx	ecx, al
	mov	edx, 0xa4
	bt	edx, ecx
	jae	.label_1521
	jmp	.label_1533
.label_1529:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1521
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1525:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1520
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1520
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_1520:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_1518
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1518
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x40]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1518
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	nop	dword ptr [rax + rax]
.label_1518:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1525
	nop	
.label_1521:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_1517
.label_1532:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1533:
	movaps	xmm0, xmmword ptr [rip + label_1531]
	mov	rcx, qword ptr [rsp]
	movups	xmmword ptr [rcx + 0xf0], xmm0
	movups	xmmword ptr [rcx + 0xe0], xmm0
	movups	xmmword ptr [rcx + 0xd0], xmm0
	movups	xmmword ptr [rcx + 0xc0], xmm0
	movups	xmmword ptr [rcx + 0xb0], xmm0
	movups	xmmword ptr [rcx + 0xa0], xmm0
	movups	xmmword ptr [rcx + 0x90], xmm0
	movups	xmmword ptr [rcx + 0x80], xmm0
	movups	xmmword ptr [rcx + 0x70], xmm0
	movups	xmmword ptr [rcx + 0x60], xmm0
	movups	xmmword ptr [rcx + 0x50], xmm0
	movups	xmmword ptr [rcx + 0x40], xmm0
	movups	xmmword ptr [rcx + 0x30], xmm0
	movups	xmmword ptr [rcx + 0x20], xmm0
	movups	xmmword ptr [rcx + 0x10], xmm0
	movups	xmmword ptr [rcx], xmm0
	cmp	eax, 2
	jne	.label_1532
	mov	rax, qword ptr [rsp + 0x10]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_1532
	nop	
.label_1540:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe2e

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_1540
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe40

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe60

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1541
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	push	rax
	push	0
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40feb0

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	lea	rdi, [rsp + 4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	jne	.label_1542
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1544
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_1542
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1544
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1543:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1542
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1543
.label_1544:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_1542:
	mov	eax, r13d
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
	#Procedure 0x40ff70

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, r8
	mov	rbp, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rax, rdi
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	check_node_accept_bytes
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1546
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_1546
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_1545
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1546
.label_1545:
	xor	ebx, ebx
.label_1546:
	mov	eax, ebx
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
	#Procedure 0x40fff0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edx
.label_1818:
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r14
	jle	.label_1590
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1552
	mov	qword ptr [rbx + 0x20], 0
.label_1552:
	mov	rcx, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	jne	.label_1556
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1556:
	test	r13, r13
	je	.label_1563
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1571
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1573
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1578
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1578:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1582
.label_1570:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_1553:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1563
	add	qword ptr [rbx + 8], r13
.label_1563:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1565
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1592
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1549
	jmp	.label_1550
.label_1565:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1551
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1550
.label_1592:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1550:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1549:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1590:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_1556
.label_1571:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1566
.label_1558:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1568
	mov	qword ptr [rsp + 0x18], rdx
	mov	dword ptr [rsp + 8], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1572
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, rcx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rax, r13
	sub	rax, rsi
	add	rax, rdx
	cmp	rax, rcx
	cmovb	rax, rcx
	lea	r12, [rdx + r13]
	mov	rbp, r12
.label_1583:
	dec	rbp
	cmp	rbp, rax
	jb	.label_1548
	movzx	ecx, byte ptr [rbp]
	and	cl, 0xc0
	cmp	cl, 0x80
	je	.label_1583
	add	rdx, qword ptr [rbx + 0x58]
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1586
.label_1567:
	mov	qword ptr [rsp + 0x20], 0
	lea	rdi, [rsp + 0xc]
	lea	rcx, [rsp + 0x20]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_1548
	cmp	rax, -3
	ja	.label_1548
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 8], eax
.label_1548:
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	jne	.label_1554
.label_1572:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	je	.label_1559
.label_1554:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1564
	mov	ecx, dword ptr [rsp + 8]
.label_1588:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_1562
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8d], 0
	setne	al
	add	eax, eax
	jmp	.label_1562
.label_1573:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
.label_1591:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_1574
	jge	.label_1579
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1574:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1591
.label_1579:
	mov	rax, qword ptr [rbx + 0x18]
	xor	edx, edx
	cmp	qword ptr [rax + rcx*8], r13
	setl	dl
	lea	rbp, [rdx + rcx]
	lea	rsi, [rdx + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1585
	cmp	rbp, r13
	jne	.label_1585
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1585
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	test	rax, rax
	jle	.label_1553
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
.label_1569:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1569
	jmp	.label_1553
.label_1582:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1570
.label_1585:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1576:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1575
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1576
.label_1575:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_1580
	mov	rcx, qword ptr [rbx + 0x10]
.label_1560:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1580
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_1560
.label_1580:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1581
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1561
.label_1551:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1587
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1550
.label_1568:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	bpl, byte ptr [rcx + rax - 1]
	movzx	eax, bpl
	mov	qword ptr [rbx + 0x38], 0
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	je	.label_1589
	mov	bpl, byte ptr [rcx + rax]
.label_1589:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	esi, bpl
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_1555
	xor	ecx, ecx
	cmp	bpl, 0xa
	jne	.label_1555
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1555:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1553
.label_1581:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_1561
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1557
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1557:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_1561
.label_1587:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1550
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1550
.label_1559:
	mov	rsi, qword ptr [rsp + 0x18]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_1562:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_1584
.label_1561:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1553
.label_1566:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1558
.label_1584:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1547
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1547:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1557
	jmp	.label_1561
.label_1564:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_1562
	mov	ecx, dword ptr [rsp + 8]
	cmp	ecx, 0x5f
	jne	.label_1588
	jmp	.label_1562
.label_1586:
	lea	rsi, [rsp + 0x12]
	cmp	rdx, 7
	mov	eax, 6
	cmovl	rax, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1567
	movsxd	r10, eax
	lea	r8, [rsp + r10 + 0x11]
	lea	r9, [rbp + r10 - 1]
	xor	ecx, ecx
.label_1577:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	movzx	eax, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1577
	jmp	.label_1567
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4105c0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	je	.label_1593
.label_1596:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	je	.label_1595
	mov	qword ptr [r12], rax
.label_1595:
	test	r14, r14
	je	.label_1594
	mov	qword ptr [r14], rax
.label_1594:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1593:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1594
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1596
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410680

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1597
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1604:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1601
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1606
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1599
	test	ecx, ecx
	je	.label_1601
.label_1599:
	test	bh, 8
	je	.label_1603
	test	ecx, ecx
	jne	.label_1601
.label_1603:
	test	bh, 0x20
	je	.label_1605
	mov	ecx, eax
	and	ecx, 2
	je	.label_1601
.label_1605:
	test	bpl, bpl
	jns	.label_1606
	and	eax, 8
	je	.label_1601
	nop	word ptr cs:[rax + rax]
.label_1606:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1601
	mov	rbp, r12
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	mov	ecx, dword ptr [r15 + 0xe0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	mov	rsi, r12
	call	clean_state_log_if_needed
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1597
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1598
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_1602
	jmp	.label_1597
.label_1598:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1602:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1600
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1600:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_1601
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1597
	nop	word ptr cs:[rax + rax]
.label_1601:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_1604
.label_1597:
	add	rsp, 0x28
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
	#Procedure 0x410880

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1607
	mov	rax, qword ptr [rbx + 0x48]
.label_1612:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_1609:
	mov	bpl, byte ptr [rcx + rax]
.label_1610:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1608:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_1609
.label_1607:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1608
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_1611
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1612
.label_1611:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1613
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1610
.label_1613:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1610
	nop	word ptr cs:[rax + rax]
	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410940

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410990

	.globl analyze
	.type analyze, @function
analyze:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_1615
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_1615
	test	rcx, rcx
	je	.label_1615
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_1615
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_1619
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1620
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1618:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_1618
.label_1620:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1614
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_1616:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_1614
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_1616
.label_1614:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_1619
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_1619:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_1615
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_1615
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_1615
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_1615
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_1617
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1617
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_1621
.label_1617:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1615
.label_1621:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_1615
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_1615:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1237
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1240:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1240
.label_1237:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1209
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1245], OFFSET FLAT:slot0
.label_1209:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1247
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1247:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c10

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	mov	cl, byte ptr [rbx + 8]
	xor	eax, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 6
	ja	.label_1174
	jmp	qword ptr [(rcx * 8) + label_1622]
.label_1889:
	cmp	byte ptr [rbx], sil
	je	.label_1173
	xor	eax, eax
	jmp	.label_1174
.label_1890:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_1173
	xor	eax, eax
	jmp	.label_1174
.label_1892:
	test	sil, sil
	js	.label_1176
.label_1891:
	test	sil, sil
	je	.label_1177
	cmp	sil, 0xa
	jne	.label_1173
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1173
	xor	eax, eax
	jmp	.label_1174
.label_1177:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1178
.label_1173:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_1174
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_1181
	test	ecx, ecx
	jne	.label_1181
	xor	eax, eax
	jmp	.label_1174
.label_1181:
	mov	edx, ebp
	test	dh, 8
	je	.label_1183
	test	ecx, ecx
	je	.label_1183
.label_1176:
	xor	eax, eax
	jmp	.label_1174
.label_1183:
	test	dh, 0x20
	je	.label_1188
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1188
.label_1178:
	xor	eax, eax
	jmp	.label_1174
.label_1188:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1174:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1624:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1190
.label_1623:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1190
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
.label_1190:
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
	#Procedure 0x410d5b

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
	je	.label_1624
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1623
	jmp	.label_1190
.label_1857:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	js	.label_1199
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_1204
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_1199:
	mov	edi, OFFSET FLAT:label_1207
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1208
	call	__assert_fail
.label_1215:
	mov	edi, OFFSET FLAT:label_1210
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1208
	call	__assert_fail
.label_1854:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1211
	mov	edi, OFFSET FLAT:label_1212
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1208
	call	__assert_fail
.label_1204:
	mov	edi, OFFSET FLAT:label_1214
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1208
	call	__assert_fail
.label_1218:
	test	al, 8
	jne	.label_1215
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1211:
	xor	eax, eax
	pop	rcx
	ret	
.label_1855:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1211
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1217
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	eax, dword ptr [rsi + 0x30]
	mov	edx, eax
	add	dl, 0xfe
	movzx	edx, dl
	cmp	dl, 0xe
	ja	.label_1218
	jmp	qword ptr [(rdx * 8) + label_1219]
.label_1856:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_1217:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
	.section	.text
	.align	32
	#Procedure 0x410ee0

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	je	.label_1625
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1625
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1625
	mov	qword ptr [rax], rbx
.label_1625:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1626
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1626
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1626
	mov	qword ptr [rax], rbx
.label_1626:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f4e
	.globl sub_410f4e
	.type sub_410f4e, @function
sub_410f4e:

	nop	
.label_1630:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1628
	.section	.text
	.align	32
	#Procedure 0x410f5c

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1631
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1630
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1630
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1627
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	jmp	.label_1628
.label_1631:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1628:
	test	ebx, ebx
	js	.label_1627
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	jne	.label_1627
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1629
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1627
.label_1629:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1627:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411013
	.globl sub_411013
	.type sub_411013, @function
sub_411013:

	nop	word ptr cs:[rax + rax]
.label_1632:
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_1634
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_1634
	mov	rdi, qword ptr [rcx + 0x10]
	cmp	rdi, rbx
	mov	rbx, rcx
	je	.label_1632
	test	rdi, rdi
	mov	rbx, rcx
	je	.label_1632
	jmp	.label_1633
.label_1635:
	mov	rdi, qword ptr [rbx + 0x10]
.label_1633:
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_1633
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_1632
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_1633
	jmp	.label_1635
	.section	.text
	.align	32
	#Procedure 0x41106f
	.globl sub_41106f
	.type sub_41106f, @function
sub_41106f:

	nop	word ptr cs:[rax + rax]
.label_1634:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x411083
	.globl sub_411083
	.type sub_411083, @function
sub_411083:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411090

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_1633
	.section	.text
	.align	32
	#Procedure 0x41109d
	.globl sub_41109d
	.type sub_41109d, @function
sub_41109d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4110a0

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx]
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1636
	lea	r13, [rsp]
	xor	r14d, r14d
.label_1638:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_1642
	lea	r13, [r12 + 8]
	jmp	.label_1639
	.section	.text
	.align	32
	#Procedure 0x4110fd
	.globl sub_4110fd
	.type sub_4110fd, @function
sub_4110fd:

	nop	dword ptr [rax]
.label_1640:
	mov	r14, qword ptr [rsp]
.label_1636:
	mov	rax, r14
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
	#Procedure 0x411116
	.globl sub_411116
	.type sub_411116, @function
sub_411116:

	nop	dword ptr [rax]
.label_1642:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1643:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1637
	test	rbp, rbp
	jne	.label_1641
.label_1637:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_1643
	jmp	.label_1640
	.section	.text
	.align	32
	#Procedure 0x41114b
	.globl sub_41114b
	.type sub_41114b, @function
sub_41114b:

	nop	word ptr cs:[rax + rax]
.label_1641:
	lea	r13, [r12 + 0x10]
.label_1639:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_1638
	jmp	.label_1636
	.section	.text
	.align	32
	#Procedure 0x411180

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	r15, qword ptr [rsp + 0x30]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, r8
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1644
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1646
	mov	r12, qword ptr [r13 + 8]
.label_1646:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1645
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	cmovg	r14, rcx
	mov	rcx, r14
.label_1645:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1644:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x411241
	.globl sub_411241
	.type sub_411241, @function
sub_411241:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411250

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1647:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1647
	ret	
	.section	.text
	.align	32
	#Procedure 0x411272
	.globl sub_411272
	.type sub_411272, @function
sub_411272:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411280

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_1649:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_1648
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_1649
.label_1648:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112a6
	.globl sub_4112a6
	.type sub_4112a6, @function
sub_4112a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4112b0

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_1652
	mov	r13b, byte ptr [r12]
	mov	rbp, -1
	nop	
.label_1656:
	cmp	byte ptr [r12 + 8], 0x1e
	jne	.label_1650
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1651
	.section	.text
	.align	32
	#Procedure 0x4112f2
	.globl sub_4112f2
	.type sub_4112f2, @function
sub_4112f2:

	nop	word ptr cs:[rax + rax]
.label_1655:
	mov	dword ptr [r15], 2
	jmp	.label_1652
	.section	.text
	.align	32
	#Procedure 0x411309
	.globl sub_411309
	.type sub_411309, @function
sub_411309:

	nop	
.label_1650:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
.label_1651:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1652
	cmp	al, r13b
	jne	.label_1654
	mov	rdx, qword ptr [rbx + 8]
	cmp	byte ptr [rdx + rcx], 0x5d
	je	.label_1653
.label_1654:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1656
.label_1652:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1653:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	al, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	al, 0x1e
	je	.label_1657
	cmp	al, 0x1c
	je	.label_1655
	cmp	al, 0x1a
	jne	.label_1652
	mov	dword ptr [r15], 3
	jmp	.label_1652
.label_1657:
	mov	dword ptr [r15], 4
	jmp	.label_1652
	.section	.text
	.align	32
	#Procedure 0x411390

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13, rdx
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], r8
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_1663
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1662
.label_1663:
	mov	r14, qword ptr [rsp]
	or	r14, 0x800000
	nop	dword ptr [rax + rax]
.label_1664:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1658
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	edx, 0
	je	.label_1660
	cmp	qword ptr [rsp + 8], 0
	je	.label_1665
	cmp	eax, 9
	mov	edx, 0
	je	.label_1660
.label_1665:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1659
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1661
.label_1659:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [rbp + 0xa8], rax
	nop	
.label_1660:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1664
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_1662
.label_1658:
	mov	r14, rbx
.label_1662:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1661:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1662
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_1662
	.section	.text
	.align	32
	#Procedure 0x4114da
	.globl sub_4114da
	.type sub_4114da, @function
sub_4114da:

	nop	word ptr [rax + rax]
.label_1673:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1671
.label_1669:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [r13 + 0x78]
	test	rcx, rcx
	jne	.label_1673
.label_1671:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1672:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1668
	mov	rcx, qword ptr [r13 + 0x10]
	lea	rdi, [rcx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1668:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1666
	jmp	.label_1667
.label_1675:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1670
	xor	eax, eax
.label_1674:
	cmp	rax, rdx
	jge	.label_1676
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_1674
	lea	rsi, [rsp + 0x10]
	jmp	.label_1670
.label_1676:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1670
.label_1666:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1675
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1670:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1669
	cmp	rax, -2
	jne	.label_1672
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1669
	mov	qword ptr [r14], rbp
.label_1677:
	mov	rcx, rbx
.label_1667:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41161a
	.globl sub_41161a
	.type sub_41161a, @function
sub_41161a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411620

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_1677
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1666
	.section	.text
	.align	32
	#Procedure 0x41165b
	.globl sub_41165b
	.type sub_41165b, @function
sub_41165b:

	nop	dword ptr [rax + rax]
.label_1680:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x411666
	.globl sub_411666
	.type sub_411666, @function
sub_411666:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41166a

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_1680
	cmp	qword ptr [r14], 0
	jle	.label_1679
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1678:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1678
.label_1679:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_1683:
	inc	rax
.label_1685:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_1682
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	jne	.label_1681
	jmp	.label_1682
	.section	.text
	.align	32
	#Procedure 0x4116dd
	.globl sub_4116dd
	.type sub_4116dd, @function
sub_4116dd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116e9

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_1684
.label_1681:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rax + rcx + 1]
.label_1682:
	ret	
.label_1684:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_1686
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_1681
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_1686
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_1681
.label_1686:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_1683
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_1685
	.section	.text
	.align	32
	#Procedure 0x411740

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_1699]
	mov	qword ptr [rbp - 0x70], rax
	movups	xmm0, xmmword ptr [rip + label_1700]
	movaps	xmmword ptr [rbp - 0x80], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_1701
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x70], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1688
	lea	rax, [rbp - 0x80]
.label_1701:
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x68], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	qword ptr [rbp - 0x50], 0
	mov	r14, rbx
	shl	r14, 4
	cmp	r14, 0xfbf
	ja	.label_1693
	mov	rdi, rsp
	lea	rax, [r14 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_1704
.label_1691:
	cmp	r15, -2
	je	.label_1706
	mov	rdi, qword ptr [rbp - 0x40]
	test	rdi, rdi
	je	.label_1708
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_1689
	.section	.text
	.align	32
	#Procedure 0x41181c
	.globl sub_41181c
	.type sub_41181c, @function
sub_41181c:

	nop	
.label_1693:
	mov	rdi, r14
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1694
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
.label_1704:
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x48], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1702
	lea	r14, [r12 + 8]
	jmp	.label_1692
.label_1692:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1687
	cmp	r15, qword ptr [r13 + 0xb0]
	jne	.label_1687
	mov	r15, qword ptr [rbp - 0x40]
	test	r15, r15
	je	.label_1698
	test	rbx, rbx
	mov	eax, 0
	je	.label_1690
	mov	rcx, r14
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1707:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1696
	cmp	qword ptr [rcx], -1
	je	.label_1690
.label_1696:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1707
.label_1690:
	cmp	rax, rbx
	je	.label_1703
	mov	rdi, r15
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
.label_1687:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x48]
	mov	r8, r15
	lea	r9, [rbp - 0x60]
	push	qword ptr [rbp - 0x40]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_1691
.label_1689:
	mov	r8, qword ptr [rbp - 0x48]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1692
.label_1702:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1697
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1697:
	mov	rdi, qword ptr [rbp - 0x40]
.label_1709:
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_1688
.label_1708:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r14d, 1
	jmp	.label_1705
.label_1706:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1694
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1694:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_1688:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41199c
	.globl sub_41199c
	.type sub_41199c, @function
sub_41199c:

	nop	dword ptr [rax + rax]
.label_1703:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1695
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1695:
	mov	rdi, r15
	jmp	.label_1709
.label_1698:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	xor	r14d, r14d
.label_1705:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1688
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_1688
	.section	.text
	.align	32
	#Procedure 0x4119e0

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1713
	cmp	r14, r15
	jne	.label_1710
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1711
.label_1712:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_1711:
	xor	eax, eax
.label_1713:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x411a39
	.globl sub_411a39
	.type sub_411a39, @function
sub_411a39:

	nop	word ptr cs:[rax + rax]
.label_1710:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_1712
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1711
	.section	.text
	.align	32
	#Procedure 0x411a60

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x411a6f
	.globl sub_411a6f
	.type sub_411a6f, @function
sub_411a6f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x411a70

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	byte ptr [rdx + 0x88], r8b
	test	rcx, rcx
	setne	al
	or	al, r8b
	mov	byte ptr [rdx + 0x8b], al
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rdx + 0x89], al
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	and	al, 1
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ad3
	.globl sub_411ad3
	.type sub_411ad3, @function
sub_411ad3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ae0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1714
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1716
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1718
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1716
	mov	esi, OFFSET FLAT:label_1717
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1719
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1719:
	mov	rbx, r14
.label_1716:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1714:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1715
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x411b81
	.globl sub_411b81
	.type sub_411b81, @function
sub_411b81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b90

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r15d, eax
	xor	ebp, ebp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1720
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1721:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1720
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_1721
.label_1720:
	mov	rax, rbp
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
	#Procedure 0x411c07
	.globl sub_411c07
	.type sub_411c07, @function
sub_411c07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c10

	.globl temp_stream
	.type temp_stream, @function
temp_stream:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	qword ptr [rip + temp_stream.tempfile],  0
	je	.label_1722
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	clearerr_unlocked
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	xor	esi, esi
	xor	edx, edx
	call	rpl_fseeko
	test	eax, eax
	js	.label_1723
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	fileno
	xor	esi, esi
	mov	edi, eax
	call	ftruncate
	test	eax, eax
	jns	.label_1729
.label_1723:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1734
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_1724
.label_1736:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_1724
.label_1722:
	mov	edi, OFFSET FLAT:label_1728
	call	getenv
	test	rax, rax
	mov	ebp, OFFSET FLAT:label_1730
	cmovne	rbp, rax
	mov	esi, OFFSET FLAT:label_1731
	xor	edx, edx
	mov	rdi, rbp
	call	mfile_name_concat
	mov	qword ptr [rip + temp_stream.tempfile],  rax
	test	rbp, rbp
	je	.label_1736
	mov	rdi, rax
	call	mkstemp_safer
	mov	r15d, eax
	test	r15d, r15d
	js	.label_1726
	mov	esi, OFFSET FLAT:label_1727
	mov	edi, r15d
	call	fdopen
	mov	qword ptr [rip + temp_stream.tmp_fp],  rax
	test	rax, rax
	je	.label_1733
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	record_or_unlink_tempfile
.label_1729:
	mov	rax, qword ptr [rip + temp_stream.tmp_fp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rip + temp_stream.tempfile]
	mov	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_1724
.label_1726:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1725
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_1732
.label_1733:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1735
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	edi, r15d
	call	close
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	unlink
.label_1732:
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	free
	mov	qword ptr [rip + temp_stream.tempfile],  0
	xor	ebx, ebx
.label_1724:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411e10

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	rbp, rdx
	mov	rcx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1740
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x28], rbp
	nop	word ptr [rax + rax]
.label_1744:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13]
	mov	rbx, r15
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_1746
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r12
	mov	rbp, r12
	mov	r12, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1743
	mov	rcx, qword ptr [r13 + 0x18]
	mov	r13, qword ptr [rcx + r15*8]
	movsxd	rbx, eax
	add	rbx, r12
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x18], 0
	test	rsi, rsi
	mov	r12, rbp
	lea	rbp, [rsp + 0x10]
	je	.label_1745
	add	rsi, 8
	mov	rdi, rbp
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1737
.label_1745:
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_1742
	lea	rdi, [rsp + 0xc]
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	rdx, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_1741
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1741
	jmp	.label_1737
	.section	.text
	.align	32
	#Procedure 0x411f47
	.globl sub_411f47
	.type sub_411f47, @function
sub_411f47:

	nop	word ptr [rax + rax]
.label_1737:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	jmp	.label_1739
	.section	.text
	.align	32
	#Procedure 0x411f60
	.globl sub_411f60
	.type sub_411f60, @function
sub_411f60:

	nop	
.label_1743:
	test	eax, eax
	mov	rcx, r12
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_1741
	nop	
.label_1746:
	add	rbx, qword ptr [r13]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	call	check_node_accept
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_1738
.label_1741:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rdi, qword ptr [rsp + 0x40]
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_1742
.label_1738:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1744
.label_1740:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	eax, eax
.label_1739:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1742:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, 0xc
	jmp	.label_1739
	.section	.text
	.align	32
	#Procedure 0x411fe0

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	cmp	al, 0x11
	jne	.label_1747
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_1747
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_1747:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ff8
	.globl sub_411ff8
	.type sub_411ff8, @function
sub_411ff8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412000
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1748
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1748
.label_1749:
	ret	
.label_1748:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1749
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x412026
	.globl sub_412026
	.type sub_412026, @function
sub_412026:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412030

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_1751:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1750
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1751
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_1750
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_1751
.label_1750:
	mov	rax, rbp
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
	#Procedure 0x4120b7
	.globl sub_4120b7
	.type sub_4120b7, @function
sub_4120b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120c0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	mov	r15, rdx
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_1752
	test	r14, r14
	mov	qword ptr [rsp + 0x10], rsi
	je	.label_1753
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1756
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1753
	lea	rcx, [rcx + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1756
.label_1753:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1754
	jmp	.label_1756
.label_1752:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_1754:
	test	r14, r14
	je	.label_1755
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1755
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1756
.label_1755:
	xor	eax, eax
.label_1756:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4121c5
	.globl sub_4121c5
	.type sub_4121c5, @function
sub_4121c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4121d0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1757
	xor	edx, edx
	dec	r9
	je	.label_1759
	mov	r8, qword ptr [rdi + 0x10]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1758:
	lea	rax, [r9 + rdx]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rsi
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_1758
.label_1759:
	mov	rcx, qword ptr [rdi + 0x10]
	xor	eax, eax
	cmp	qword ptr [rcx + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmove	rax, rcx
.label_1757:
	ret	
	.section	.text
	.align	32
	#Procedure 0x41221f
	.globl sub_41221f
	.type sub_41221f, @function
sub_41221f:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412292
	.globl sub_412292
	.type sub_412292, @function
sub_412292:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4122b6
	.globl sub_4122b6
	.type sub_4122b6, @function
sub_4122b6:

	nop	word ptr cs:[rax + rax]
