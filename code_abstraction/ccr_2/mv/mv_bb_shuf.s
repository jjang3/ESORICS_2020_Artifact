	.section	.text
	.align	16
	#Procedure 0x4028b9
	.globl sub_4028b9
	.type sub_4028b9, @function
sub_4028b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4028ba
	.globl sub_4028ba
	.type sub_4028ba, @function
sub_4028ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f2
	.globl sub_4028f2
	.type sub_4028f2, @function
sub_4028f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40293a
	.globl sub_40293a
	.type sub_40293a, @function
sub_40293a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40295c
	.globl sub_40295c
	.type sub_40295c, @function
sub_40295c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40296d
	.globl sub_40296d
	.type sub_40296d, @function
sub_40296d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402986
	.globl sub_402986
	.type sub_402986, @function
sub_402986:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r15d, esi
	mov	r14, rdi
	test	ebp, ebp
	jns	.label_12
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_9
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_12:
	cmp	ebp, 0x11
	jne	.label_9
	xor	bl, 1
	jne	.label_9
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_13
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_11
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_10
.label_13:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_9
.label_11:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_10
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_10:
	cmp	r12, rbx
	je	.label_9
	mov	rdi, r12
	call	free
.label_9:
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a83
	.globl sub_402a83
	.type sub_402a83, @function
sub_402a83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a90
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
	#Procedure 0x402ab7
	.globl sub_402ab7
	.type sub_402ab7, @function
sub_402ab7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_14
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_16]]
.label_14:
	xor	eax, eax
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x402ad5
	.globl sub_402ad5
	.type sub_402ad5, @function
sub_402ad5:

	nop	word ptr cs:[rax + rax]
.label_15:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	qword ptr [rbx + 0x18], 0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402aff
	.globl sub_402aff
	.type sub_402aff, @function
sub_402aff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	je	.label_17
	pop	rax
	ret	
.label_17:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_18
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_18:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b56
	.globl sub_402b56
	.type sub_402b56, @function
sub_402b56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_19
	test	rbx, rbx
	jne	.label_19
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_19:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_21
	test	rax, rax
	je	.label_20
.label_21:
	pop	rbx
	ret	
.label_20:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	and	esi, 0xf000
	mov	bl, 1
	cmp	esi, 0xa000
	je	.label_22
	call	can_write_any_file
	test	al, al
	jne	.label_22
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	sete	bl
.label_22:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bcc
	.globl sub_402bcc
	.type sub_402bcc, @function
sub_402bcc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x402bdd
	.globl sub_402bdd
	.type sub_402bdd, @function
sub_402bdd:

	nop	dword ptr [rax]
.label_25:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402be3
	.globl sub_402be3
	.type sub_402be3, @function
sub_402be3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402be9

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	al, 1
	cmp	edi, 0x16
	ja	.label_24
	mov	ecx, 0x500004
	bt	ecx, edi
	jb	.label_23
.label_24:
	cmp	edi, 0x54
	jne	.label_25
.label_23:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_26:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_26
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c20

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	cmp	rax, qword ptr [rsi + 8]
	seta	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c36
	.globl sub_402c36
	.type sub_402c36, @function
sub_402c36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_27
	nop	
.label_40:
	mov	edi, OFFSET FLAT:label_31
	call	strcmp
	test	eax, eax
	je	.label_38
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_40
.label_38:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_31
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	je	.label_28
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_28
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_31
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:label_35
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
	#Procedure 0x402d5a
	.globl sub_402d5a
	.type sub_402d5a, @function
sub_402d5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d60

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_41
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_42
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_42:
	add	rax, rcx
.label_41:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d88
	.globl sub_402d88
	.type sub_402d88, @function
sub_402d88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_45
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_50
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_48
.label_50:
	cmp	r13, r12
	jb	.label_43
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_46
	add	r12, r12
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x402e23
	.globl sub_402e23
	.type sub_402e23, @function
sub_402e23:

	nop	word ptr cs:[rax + rax]
.label_46:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_51
.label_47:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_44
	jmp	.label_45
.label_43:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_45
.label_51:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_49
.label_48:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_49:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_45:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x402e91
	.globl sub_402e91
	.type sub_402e91, @function
sub_402e91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_52:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_52
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_55
	.section	.text
	.align	16
	#Procedure 0x402ec1
	.globl sub_402ec1
	.type sub_402ec1, @function
sub_402ec1:

	nop	word ptr cs:[rax + rax]
.label_54:
	inc	rax
	mov	sil, dl
.label_55:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_54
	test	cl, cl
	je	.label_56
	mov	edx, esi
	and	dl, 1
	je	.label_53
	xor	esi, esi
.label_53:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_54
.label_56:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402efb
	.globl sub_402efb
	.type sub_402efb, @function
sub_402efb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f0a
	.globl sub_402f0a
	.type sub_402f0a, @function
sub_402f0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10
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
	#Procedure 0x402f82
	.globl sub_402f82
	.type sub_402f82, @function
sub_402f82:

	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
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
	#Procedure 0x402fc8
	.globl sub_402fc8
	.type sub_402fc8, @function
sub_402fc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fcd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_backup_suffix_note
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_66
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_67
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_67:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_66:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403137
	.globl sub_403137
	.type sub_403137, @function
sub_403137:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	mov	qword ptr [rdi + 0x30], -1
	ret	
	.section	.text
	.align	16
	#Procedure 0x403149
	.globl sub_403149
	.type sub_403149, @function
sub_403149:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403150
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	.section	.text
	.align	16
	#Procedure 0x40315b
	.globl sub_40315b
	.type sub_40315b, @function
sub_40315b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	.section	.text
	.align	16
	#Procedure 0x403175
	.globl sub_403175
	.type sub_403175, @function
sub_403175:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	ebp, r8d
	mov	rbx, rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14d, edi
	mov	r12, qword ptr [r13 + 0x58]
	mov	r15, qword ptr [rbx + 0x58]
	mov	rdi, r13
	call	get_stat_mtime_ns
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	get_stat_mtime_ns
	mov	rbx, rax
	test	bpl, 1
	je	.label_84
	cmp	r12, r15
	jne	.label_87
	xor	ecx, ecx
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	je	.label_75
.label_87:
	lea	rax, [r15 - 2]
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jle	.label_75
	lea	rax, [r12 - 2]
	mov	ecx, 1
	cmp	r15, rax
	jle	.label_75
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	jne	.label_74
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rax
	test	rax, rax
	je	.label_81
.label_74:
	cmp	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jne	.label_83
	mov	edi, 0x10
	call	malloc
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rax
	xor	ecx, ecx
	test	rax, rax
	je	.label_69
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_83:
	mov	rax, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	qword ptr [rsi], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	call	hash_insert
	mov	rcx, rax
	test	rcx, rcx
	je	.label_69
	cmp	rcx,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_72
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_72
.label_69:
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	je	.label_88
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsp + 0x30]
	call	hash_lookup
	mov	rcx, rax
.label_88:
	test	rcx, rcx
	jne	.label_72
.label_81:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rcx, [rsp + 0x30]
.label_72:
	cmp	byte ptr [rcx + 0xc], 0
	je	.label_90
	mov	edi, dword ptr [rcx + 8]
	jmp	.label_92
.label_90:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, qword ptr [r13 + 0x48]
	mov	eax, dword ptr [r13 + 0x68]
	mov	dword ptr [rsp + 8], eax
	mov	rdi, r13
	call	get_stat_atime_ns
	mov	rbp, rax
	mov	rdi, r13
	call	get_stat_ctime_ns
	mov	r9, rbp
	mov	r8, rbx
	mov	ecx, r8d
	or	ecx, r12d
	or	ecx, dword ptr [rsp + 8]
	and	ecx, 1
	movsxd	rdx, r9d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	movsxd	rsi, eax
	imul	rdi, rsi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	esi, edi
	mov	rbx, qword ptr [rsp]
	movsxd	rdi, ebx
	imul	rdi, rdi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ebx
	sub	ebp, edi
	or	ebp, edx
	or	ebp, esi
	je	.label_77
	mov	r10, qword ptr [rsp + 0x20]
	mov	dword ptr [r10 + 8], 1
	mov	edi, 1
.label_70:
	mov	dword ptr [r10 + 8], edi
	mov	byte ptr [r10 + 0xc], 1
	mov	rbx, qword ptr [rsp + 0x18]
.label_92:
	xor	eax, eax
	cmp	edi, 0x77359400
	sete	al
	not	rax
	and	r15, rax
	mov	eax, ebx
	cdq	
	idiv	edi
	sub	ebx, edx
.label_84:
	mov	ecx, 0xffffffff
	cmp	r12, r15
	jl	.label_75
	mov	ecx, 1
	jg	.label_75
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	mov	ecx, 0xffffffff
	jl	.label_75
	setg	al
	movzx	ecx, al
.label_75:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_77:
	mov	r10, qword ptr [rsp + 0x20]
	cmp	dword ptr [r10 + 8], 0xb
	jl	.label_68
	mov	qword ptr [rsp + 8], r8
	mov	r13d, 0xa
	mov	qword ptr [rsp + 0x28], r9
	mov	edx, r9d
	mov	rsi, qword ptr [rsp]
	mov	r11d, esi
	mov	rsi, qword ptr [rsp + 0x10]
.label_91:
	movsxd	rdi, r11d
	imul	r11, rdi, 0x66666667
	mov	rdi, r11
	shr	rdi, 0x3f
	sar	r11, 0x22
	add	r11d, edi
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x22
	add	eax, edi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	movsxd	r8, edx
	imul	rdi, r8, 0x66666667
	mov	rbx, rdi
	shr	rbx, 0x3f
	sar	rdi, 0x22
	add	edi, ebx
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	r8d, edi
	movsxd	r9, eax
	imul	rbx, r9, 0x66666667
	mov	rbp, rbx
	shr	rbp, 0x3f
	sar	rbx, 0x22
	add	ebx, ebp
	add	ebx, ebx
	lea	ebp, [rbx + rbx*4]
	sub	r9d, ebp
	or	r9d, r8d
	movsxd	rbp, r11d
	imul	rbx, rbp, 0x66666667
	mov	rdi, rbx
	shr	rdi, 0x3f
	sar	rbx, 0x22
	add	ebx, edi
	add	ebx, ebx
	lea	edi, [rbx + rbx*4]
	sub	ebp, edi
	or	ebp, r9d
	jne	.label_82
	cmp	r13d, 0x3b9aca00
	mov	ebx, r14d
	je	.label_80
	add	r13d, r13d
	lea	r13d, [r13 + r13*4]
	cmp	r13d, dword ptr [r10 + 8]
	jl	.label_91
.label_82:
	mov	dword ptr [r10 + 8], r13d
	cmp	r13d, 2
	mov	edi, r13d
	mov	ebx, r14d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	jl	.label_70
	jmp	.label_76
.label_68:
	mov	dword ptr [r10 + 8], 0xa
	mov	r13d, 0xa
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ebx, r14d
	jmp	.label_76
.label_80:
	xor	ecx, 1
	shl	r13d, cl
	mov	dword ptr [r10 + 8], r13d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
.label_76:
	xor	edi, edi
	cmp	r13d, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r15, r12
	jl	.label_75
	cmp	r12, r15
	setne	al
	mov	rdx, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, edx
	jg	.label_85
	test	al, al
	je	.label_75
.label_85:
	mov	rax, rdi
	not	rax
	and	rax, r15
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jl	.label_75
	jne	.label_73
	mov	rbp, qword ptr [rsp + 0x18]
	mov	eax, ebp
	cdq	
	idiv	r13d
	mov	eax, ebp
	sub	eax, edx
	mov	rdx, qword ptr [rsp]
	cmp	edx, eax
	jl	.label_75
.label_73:
	mov	qword ptr [rsp + 0x40], r8
	movsxd	rax, r9d
	mov	qword ptr [rsp + 0x48], rax
	or	rdi, r12
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r13d
	imul	rax, rax, 0x38e38e39
	shr	rax, 0x21
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	cdqe	
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebx
	call	utimensat
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_75
	lea	rdx, [rsp + 0x68]
	mov	ecx, 0x100
	mov	edi, ebx
	call	fstatat
	mov	r14d, eax
	cdqe	
	mov	ebp, ebx
	mov	rbx, qword ptr [rsp + 0xc0]
	xor	rbx, r12
	or	rbx, rax
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rsp]
	movsxd	rcx, ecx
	xor	rax, rcx
	or	rax, rbx
	je	.label_79
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x10]
	call	utimensat
.label_79:
	test	r14d, r14d
	je	.label_89
	mov	ecx, 0xfffffffe
	jmp	.label_75
.label_89:
	mov	ebx, dword ptr [rsp + 0xc0]
	and	ebx, 1
	neg	ebx
	and	ebx, 0x3b9aca00
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	add	rax, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	mov	edi, 1
	cmp	ecx, edx
	jne	.label_71
	mov	ecx, 1
.label_78:
	mov	edi, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_71
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, r13d
	je	.label_86
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	edi, ecx
	je	.label_78
.label_71:
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_70
.label_86:
	mov	edi, ecx
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x40371e
	.globl sub_40371e
	.type sub_40371e, @function
sub_40371e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403752
	.globl sub_403752
	.type sub_403752, @function
sub_403752:

	nop	word ptr cs:[rax + rax]
.label_96:
	add	r14, 0x10
.label_102:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_94
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_96
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_95
	jmp	.label_96
	.section	.text
	.align	16
	#Procedure 0x403793

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_98
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_98
	mov	r14, qword ptr [r15]
	jmp	.label_101
	.section	.text
	.align	16
	#Procedure 0x4037ae
	.globl sub_4037ae
	.type sub_4037ae, @function
sub_4037ae:

	nop	dword ptr [rax + rax]
.label_98:
	mov	r14, qword ptr [r15]
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x4037b8
	.globl sub_4037b8
	.type sub_4037b8, @function
sub_4037b8:

	nop	word ptr [rax + rax]
.label_94:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_93
	nop	dword ptr [rax]
.label_97:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_97
.label_93:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4037f4
	.globl sub_4037f4
	.type sub_4037f4, @function
sub_4037f4:

	nop	word ptr cs:[rax + rax]
.label_100:
	add	r14, 0x10
.label_101:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_98
	cmp	qword ptr [r14], 0
	je	.label_100
	test	r14, r14
	je	.label_100
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_99:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_99
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x403830
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403843
	.globl sub_403843
	.type sub_403843, @function
sub_403843:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_103
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_103:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403885
	.globl sub_403885
	.type sub_403885, @function
sub_403885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403890

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_107
	test	rbx, rbx
	je	.label_104
	mov	esi, OFFSET FLAT:label_105
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_106
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_106
.label_107:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_104:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_106:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40393d
	.globl sub_40393d
	.type sub_40393d, @function
sub_40393d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403940

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40396b
	.globl sub_40396b
	.type sub_40396b, @function
sub_40396b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	cmp	dword ptr [dword ptr [rip + cached_umask.mask]],  -1
	jne	.label_108
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	add	rsp, 8
.label_108:
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403999
	.globl sub_403999
	.type sub_403999, @function
sub_403999:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039ab
	.globl sub_4039ab
	.type sub_4039ab, @function
sub_4039ab:

	nop	dword ptr [rax + rax]
.label_109:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039b3
	.globl sub_4039b3
	.type sub_4039b3, @function
sub_4039b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c1

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_109
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
	.section	.text
	.align	16
	#Procedure 0x4039e0
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	.section	.text
	.align	16
	#Procedure 0x4039e7
	.globl sub_4039e7
	.type sub_4039e7, @function
sub_4039e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_113
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_114
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_115
.label_114:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_111
	mov	rax, qword ptr [rax + 8]
	jmp	.label_113
.label_110:
	mov	rdi, rbp
	call	free
.label_112:
	mov	rax, qword ptr [rsp]
.label_113:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a88
	.globl sub_403a88
	.type sub_403a88, @function
sub_403a88:

	nop	word ptr [rax + rax]
.label_111:
	mov	r12b, 1
	mov	r14, rbp
.label_115:
	xor	eax, eax
	test	r15d, r15d
	js	.label_113
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_113
	test	r12b, r12b
	je	.label_112
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_112
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_110
	cmp	rax, rbp
	je	.label_112
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_116
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_118
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_116
.label_118:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_116
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_117
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_117:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_116:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403b67
	.globl sub_403b67
	.type sub_403b67, @function
sub_403b67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70
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
	#Procedure 0x403b86
	.globl sub_403b86
	.type sub_403b86, @function
sub_403b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rdi
	movzx	edx, bl
	shl	edx, 9
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_130
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	cmp	ebx, 0x1e
	jne	.label_121
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rdx, [rsp + 8]
	call	lstatat
	test	eax, eax
	je	.label_125
	cmp	dword ptr [r13], 2
	je	.label_126
.label_125:
	mov	dword ptr [r13], 0x1e
.label_126:
	mov	ebx, dword ptr [r13]
.label_121:
	mov	rdi, r12
	mov	esi, ebx
	call	ignorable_missing
	mov	r15d, 2
	test	al, al
	jne	.label_120
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	jne	.label_119
	mov	eax, ebx
	cmp	ebx, 0x27
	ja	.label_119
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_119
	mov	eax, dword ptr [r14 + 0x40]
	cmp	eax, 0xd
	je	.label_127
	cmp	eax, 1
	jne	.label_119
.label_127:
	mov	eax, dword ptr [r14 + 0x40]
	mov	dword ptr [r13], eax
.label_119:
	mov	ebx, dword ptr [r13]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r15d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdi, r14
	call	mark_ancestor_dirs
	jmp	.label_120
.label_124:
	mov	esi, OFFSET FLAT:label_123
.label_129:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_120:
	mov	eax, r15d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cdf
	.globl sub_403cdf
	.type sub_403cdf, @function
sub_403cdf:

	nop	word ptr [rax + rax]
.label_130:
	mov	r15d, 2
	cmp	byte ptr [r12 + 0x1a], 0
	je	.label_120
	xor	edi, edi
	test	bl, bl
	je	.label_124
	mov	esi, OFFSET FLAT:label_128
	jmp	.label_129
	.section	.text
	.align	16
	#Procedure 0x403d00

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_131
	ret	
.label_131:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403d13
	.globl sub_403d13
	.type sub_403d13, @function
sub_403d13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d20

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 3
	mov	rdx, rcx
	mov	rcx, rax
	call	fallocate
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_132
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	is_ENOTSUP
	xor	ecx, ecx
	cmp	ebp, 0x26
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
.label_132:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d63
	.globl sub_403d63
	.type sub_403d63, @function
sub_403d63:

	nop	word ptr cs:[rax + rax]
.label_135:
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, rbx
	call	cache_fstatat
	mov	ecx, eax
	mov	eax, 0xffffffff
	test	ecx, ecx
	jne	.label_133
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_134
	xor	eax, eax
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x403d9b

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	call	can_write_any_file
	test	al, al
	je	.label_135
	xor	eax, eax
	jmp	.label_133
.label_134:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, ebp
	mov	rsi, r14
	call	faccessat
	test	eax, eax
	mov	eax, 0
	je	.label_133
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_133:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403deb
	.globl sub_403deb
	.type sub_403deb, @function
sub_403deb:

	nop	dword ptr [rax + rax]
.label_139:
	cmp	rax, 0x58465342
	je	.label_136
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_137
.label_138:
	xor	ecx, ecx
.label_136:
	mov	eax, ecx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e08

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_140
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_139
	cmp	rax, 0x52654973
	je	.label_136
	cmp	rax, 0x5346414f
	je	.label_138
	jmp	.label_137
.label_140:
	test	rax, rax
	je	.label_138
	cmp	rax, 0x6969
	je	.label_138
	cmp	rax, 0x9fa0
	je	.label_138
	jmp	.label_137
.label_137:
	mov	ecx, 1
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x403e53
	.globl sub_403e53
	.type sub_403e53, @function
sub_403e53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e60
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e6a
	.globl sub_403e6a
	.type sub_403e6a, @function
sub_403e6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_141
	cmp	ecx, 0x11
	jne	.label_142
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_141:
	ret	
.label_142:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e8e
	.globl sub_403e8e
	.type sub_403e8e, @function
sub_403e8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e90

	.globl movefile
	.type movefile, @function
movefile:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jne	.label_143
	mov	rdi, rbx
	call	strip_trailing_slashes
.label_143:
	test	bpl, bpl
	je	.label_144
	mov	rdi, rbx
	call	last_component
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rax
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, rbp
	call	strip_trailing_slashes
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	do_move
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	jmp	.label_145
.label_144:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	do_move
	mov	ebx, eax
.label_145:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f0f
	.globl sub_403f0f
	.type sub_403f0f, @function
sub_403f0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f10

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_146
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_147:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_146
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_147
.label_146:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f5c
	.globl sub_403f5c
	.type sub_403f5c, @function
sub_403f5c:

	nop	dword ptr [rax]
.label_154:
	mov	edi, OFFSET FLAT:label_148
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0xb8a
	mov	ecx, OFFSET FLAT:label_150
	call	__assert_fail
.label_157:
	mov	edi, OFFSET FLAT:label_159
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0xb87
	mov	ecx, OFFSET FLAT:label_150
	call	__assert_fail
.label_161:
	mov	edi, OFFSET FLAT:label_155
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0xb8d
	mov	ecx, OFFSET FLAT:label_150
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403fab
	.globl sub_403fab
	.type sub_403fab, @function
sub_403fab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fb0
	.globl valid_options
	.type valid_options, @function
valid_options:

	push	rax
	test	rdi, rdi
	je	.label_153
	cmp	dword ptr [rdi], 4
	jae	.label_157
	mov	eax, dword ptr [rdi + 0xc]
	dec	eax
	cmp	eax, 3
	jae	.label_160
	cmp	dword ptr [rdi + 0x38], 3
	jae	.label_163
	cmp	byte ptr [rdi + 0x17], 0
	je	.label_152
	cmp	byte ptr [rdi + 0x2c], 0
	jne	.label_154
.label_152:
	cmp	dword ptr [rdi + 0x38], 2
	jne	.label_162
	cmp	dword ptr [rdi + 0xc], 2
	jne	.label_161
.label_162:
	pop	rax
	ret	
.label_153:
	mov	edi, OFFSET FLAT:label_151
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0xb86
	mov	ecx, OFFSET FLAT:label_150
	call	__assert_fail
.label_160:
	mov	edi, OFFSET FLAT:label_156
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0xb88
	mov	ecx, OFFSET FLAT:label_150
	call	__assert_fail
.label_163:
	mov	edi, OFFSET FLAT:label_158
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0xb89
	mov	ecx, OFFSET FLAT:label_150
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40403c
	.globl sub_40403c
	.type sub_40403c, @function
sub_40403c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404040

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_167
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_164
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_164
.label_167:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_168
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_164:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_166
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_168:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_166:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_169
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_171:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_172
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_171
.label_172:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404140

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_173
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_173
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_173:
	mov	r15d, 0x400
	nop	dword ptr [rax + rax]
.label_175:
	mov	al, 1
	test	rbx, rbx
	je	.label_174
	movzx	eax,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	ebp, 0x20000
	cmovne	rbp, r15
	cmp	rbp, rbx
	cmovae	rbp, rbx
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, r14d
	mov	rdx, rbp
	call	full_write
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, rbp
	mov	edx, 0
	cmove	rdx, rbp
	sub	rbx, rdx
	cmp	rcx, rbp
	je	.label_175
.label_174:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041f6
	.globl sub_4041f6
	.type sub_4041f6, @function
sub_4041f6:

	nop	word ptr cs:[rax + rax]
.label_176:
	mov	al, 0x6c
	ret	
	.section	.text
	.align	16
	#Procedure 0x404203
	.globl sub_404203
	.type sub_404203, @function
sub_404203:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404208

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xfffff000
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_178
	cmp	eax, 0x3fff
	jg	.label_180
	movzx	eax, di
	cmp	eax, 0x1000
	je	.label_182
	cmp	eax, 0x2000
	jne	.label_177
	mov	al, 0x63
	ret	
.label_178:
	mov	al, 0x2d
	movzx	ecx, di
	cmp	ecx, 0x8000
	je	.label_179
	cmp	ecx, 0xa000
	je	.label_176
	cmp	ecx, 0xc000
	jne	.label_177
	mov	al, 0x73
	ret	
.label_182:
	mov	al, 0x70
	ret	
.label_177:
	mov	al, 0x3f
.label_179:
	ret	
.label_181:
	mov	al, 0x62
	ret	
.label_180:
	movzx	eax, di
	cmp	eax, 0x6000
	je	.label_181
	cmp	eax, 0x4000
	jne	.label_177
	mov	al, 0x64
	ret	
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	mov	ecx, dword ptr [rdi + 4]
	mov	al, 1
	cmp	ecx, 4
	je	.label_183
	cmp	ecx, 3
	sete	al
	and	al, sil
.label_183:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404284
	.globl sub_404284
	.type sub_404284, @function
sub_404284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404290
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
	#Procedure 0x40429d
	.globl sub_40429d
	.type sub_40429d, @function
sub_40429d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_184
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_185]]
	jbe	.label_186
	movss	xmm1,  dword ptr [dword ptr [rip + label_189]]
	ucomiss	xmm1, xmm0
	jbe	.label_186
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_188]]
	jbe	.label_186
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_186
	addss	xmm1,  dword ptr [dword ptr [rip + label_185]]
	ucomiss	xmm0, xmm1
	jbe	.label_186
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_187]]
	ucomiss	xmm2, xmm0
	jb	.label_186
	ucomiss	xmm0, xmm1
	ja	.label_184
.label_186:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_184:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404314
	.globl sub_404314
	.type sub_404314, @function
sub_404314:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404320

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	qword ptr [rsp + 0x28], rsi
	mov	r14, qword ptr [rsi]
	mov	qword ptr [rsp + 0x48], r8
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	test	r12, r12
	mov	qword ptr [rsp], r13
	je	.label_205
	mov	rdi, r12
	call	rewinddir
	jmp	.label_206
.label_205:
	mov	rcx, qword ptr [rsp + 0x90]
	movzx	r13d, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_192
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_206:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_208
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_199
.label_201:
	mov	r13d, 1
.label_198:
	cmp	al, 0x7e
	jne	.label_193
	mov	rax, qword ptr [rsp]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [rbp + r13 + 1], 0
	jne	.label_193
	cmp	qword ptr [rsp + 0x18], r13
	jb	.label_197
	jne	.label_193
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_197
.label_193:
	mov	r15, r14
	mov	r13, qword ptr [rsp]
	jmp	.label_191
.label_197:
	movzx	edx, bl
	lea	rcx, [rdx + r13]
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rax + rcx]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rsi
	jae	.label_202
	mov	rax, rsi
	shr	rax, 0x3e
	sete	cl
	shl	rsi, cl
	mov	rdi, r14
	mov	rbx, rsi
	mov	r15, rdx
	call	realloc
	mov	rdx, r15
	mov	r15, rax
	test	r15, r15
	jne	.label_203
	jmp	.label_194
.label_202:
	mov	r15, r14
.label_203:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	mov	cl, byte ptr [r13 + rbx + 1]
	cmp	cl, 0x39
	jne	.label_204
	mov	r13, qword ptr [rsp]
	nop	dword ptr [rax]
.label_207:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
	cmp	cl, 0x39
	je	.label_207
	jmp	.label_209
.label_204:
	mov	r13, qword ptr [rsp]
.label_209:
	inc	cl
	mov	byte ptr [rax], cl
	jmp	.label_191
	.section	.text
	.align	16
	#Procedure 0x40450e
	.globl sub_40450e
	.type sub_40450e, @function
sub_40450e:

	nop	
.label_199:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_195
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_195
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_195
	lea	rcx, [rbp + r13 + 0x13]
	cmp	al, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_201
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_190:
	cmp	al, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_190
	inc	r13
	jmp	.label_198
	.section	.text
	.align	16
	#Procedure 0x4045a1
	.globl sub_4045a1
	.type sub_4045a1, @function
sub_4045a1:

	nop	word ptr cs:[rax + rax]
.label_195:
	mov	r15, r14
.label_191:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_199
	jmp	.label_200
.label_208:
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r14
.label_200:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x10]
.label_196:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_192:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_196
.label_194:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_196
	.section	.text
	.align	16
	#Procedure 0x40462e
	.globl sub_40462e
	.type sub_40462e, @function
sub_40462e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404630
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404633
	.globl sub_404633
	.type sub_404633, @function
sub_404633:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	.section	.text
	.align	16
	#Procedure 0x404656
	.globl sub_404656
	.type sub_404656, @function
sub_404656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_210
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_210
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_210:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046ae
	.globl sub_4046ae
	.type sub_4046ae, @function
sub_4046ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4046b0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046b5
	.globl sub_4046b5
	.type sub_4046b5, @function
sub_4046b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r14, r9
	mov	r15, r8
	mov	rbx, rcx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_224
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rbx]
	mov	byte ptr [r14], 0
	jne	.label_230
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_234
	mov	byte ptr [r14], 1
	mov	r12b, 1
	jmp	.label_211
.label_224:
	mov	byte ptr [r14], 0
.label_230:
	xor	r13d, r13d
.label_234:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_216
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_217
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rsi, rbp
	jne	.label_220
	mov	rsi, rdx
	call	same_name
	test	al, al
	jne	.label_226
	mov	r12b, 1
	cmp	dword ptr [r15], 0
	jne	.label_211
	test	r13b, r13b
	je	.label_226
	mov	byte ptr [r14], 1
	jmp	.label_225
.label_216:
	mov	r12b, 1
	test	r13b, r13b
	je	.label_211
	mov	qword ptr [rsp + 8], rdi
	lea	rbx, [rsp + 0xa8]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	r13, rdx
	call	lstat
	test	eax, eax
	jne	.label_211
	mov	qword ptr [rsp + 0x10], r13
	lea	r13, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	lstat
	test	eax, eax
	jne	.label_211
	mov	rcx, r13
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_223
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	sete	r13b
	jmp	.label_229
.label_217:
	mov	rsi, rbp
.label_220:
	cmp	dword ptr [r15], 0
	je	.label_231
	test	r13b, r13b
	je	.label_233
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	jmp	.label_211
.label_231:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_214
	cmp	byte ptr [r15 + 0x15], 0
	je	.label_222
.label_214:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_211
	test	r13b, r13b
	je	.label_222
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_222
	mov	r13, rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, rdx
	mov	r12, rdx
	call	same_name
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rdx, r12
	test	al, al
	je	.label_225
.label_222:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	je	.label_221
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_221
	mov	rax, qword ptr [rsi + 8]
	mov	r12b, 1
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_211
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_211
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_221
	mov	byte ptr [r14], 1
	jmp	.label_211
.label_233:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_215
	cmp	dword ptr [r15 + 4], 2
	je	.label_215
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_215
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_228
.label_215:
	mov	r12b, 1
	jmp	.label_211
.label_226:
	xor	al, 1
	mov	r12b, al
	jmp	.label_211
.label_221:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_212
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0xa000
	jne	.label_212
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_212
	mov	rbp, rdi
	mov	r12, rdx
	mov	r13, rsi
	call	canonicalize_file_name
	mov	rsi, r13
	mov	rdi, rbp
	mov	rdx, r12
	mov	rbp, rax
	test	rbp, rbp
	je	.label_212
	mov	rdi, rbp
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	mov	rdi, rbp
	call	free
	jmp	.label_211
.label_212:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_227
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_211
.label_227:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_228
	mov	rbp, rdx
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_232
	lea	rsi, [rsp + 0x18]
	call	stat
	mov	r12b, 1
	test	eax, eax
	mov	rdi, rbp
	jne	.label_211
	jmp	.label_218
.label_225:
	cmp	byte ptr [r15 + 0x18], 0
	sete	r12b
	jmp	.label_211
.label_223:
	xor	r13d, r13d
.label_229:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rcx
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x30]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_220
	and	eax, dword ptr [rsp + 0xc0]
	cmp	eax, 0xa000
	jne	.label_220
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_211
	jmp	.label_220
.label_232:
	lea	rdi, [rsp + 0x18]
	mov	edx, 0x90
	call	memcpy
	mov	rdi, rbp
.label_218:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_213
	lea	rsi, [rsp + 0xa8]
	call	stat
	mov	r12b, 1
	test	eax, eax
	jne	.label_211
	jmp	.label_219
.label_213:
	lea	rdi, [rsp + 0xa8]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
.label_219:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12b, 1
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_211
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	jne	.label_211
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_228
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	setne	byte ptr [r14]
	jmp	.label_211
.label_228:
	xor	r12d, r12d
.label_211:
	mov	eax, r12d
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a92
	.globl sub_404a92
	.type sub_404a92, @function
sub_404a92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404aaa
	.globl sub_404aaa
	.type sub_404aaa, @function
sub_404aaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_236
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 2
	je	.label_235
	test	ebp, ebp
	jne	.label_237
.label_236:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_238
.label_235:
	xor	eax, eax
.label_238:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b40
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
	#Procedure 0x404b53
	.globl sub_404b53
	.type sub_404b53, @function
sub_404b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbx
	mov	rbx, rdi
	call	cp_options_default
	mov	byte ptr [rbx + 0x14], 0
	mov	dword ptr [rbx + 0x38], 1
	mov	dword ptr [rbx + 4], 2
	mov	byte ptr [rbx + 0x15], 0
	mov	byte ptr [rbx + 0x16], 0
	mov	byte ptr [rbx + 0x17], 0
	mov	dword ptr [rbx + 8], 4
	mov	byte ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x19], 0
	mov	byte ptr [rbx + 0x1c], 0
	mov	byte ptr [rbx + 0x1d], 1
	mov	byte ptr [rbx + 0x22], 1
	mov	byte ptr [rbx + 0x1e], 1
	mov	byte ptr [rbx + 0x1f], 1
	mov	byte ptr [rbx + 0x20], 0
	mov	byte ptr [rbx + 0x25], 0
	mov	byte ptr [rbx + 0x21], 0
	mov	byte ptr [rbx + 0x29], 0
	mov	byte ptr [rbx + 0x23], 1
	mov	byte ptr [rbx + 0x24], 0
	mov	byte ptr [rbx + 0x26], 0
	mov	byte ptr [rbx + 0x27], 1
	mov	byte ptr [rbx + 0x28], 0
	mov	byte ptr [rbx + 0x2a], 1
	mov	dword ptr [rbx + 0xc], 2
	mov	byte ptr [rbx + 0x2c], 0
	mov	byte ptr [rbx + 0x2b], 0
	mov	dword ptr [rbx + 0x10], 0
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rbx + 0x2f]
	mov	byte ptr [rbx + 0x30], 0
	mov	byte ptr [rbx + 0x2d], 0
	mov	byte ptr [rbx + 0x2e], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c0a
	.globl sub_404c0a
	.type sub_404c0a, @function
sub_404c0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	mov	eax, 0xffffffff
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c16
	.globl sub_404c16
	.type sub_404c16, @function
sub_404c16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_240
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_242:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_242
.label_240:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_243
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_244]], OFFSET FLAT:slot0
.label_243:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_241
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_241:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cb1
	.globl sub_404cb1
	.type sub_404cb1, @function
sub_404cb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_245
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_246
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_246
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_247
.label_246:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_247
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_247
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_247
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_247
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_247:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e59
	.globl sub_404e59
	.type sub_404e59, @function
sub_404e59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e60
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e73
	.globl sub_404e73
	.type sub_404e73, @function
sub_404e73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_250
	cmp	ebp, -2
	jne	.label_251
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_249
.label_250:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_249:
	call	error
.label_251:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f02
	.globl sub_404f02
	.type sub_404f02, @function
sub_404f02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f10

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_277
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_267
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_269
.label_277:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_283
	mov	edi, dword ptr [rbx + 0x2c]
.label_283:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_288
	test	al, 1
	je	.label_292
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_288
.label_292:
	mov	edx, 0x20000
.label_288:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_297
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_299
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_256
.label_267:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_297:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_301
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_270
.label_299:
	test	byte ptr [rbx + 0x49], 1
	je	.label_256
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_263
.label_256:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_269
	cmp	ebp, 2
	jne	.label_280
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_281
.label_280:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_284
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_284
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_286
.label_263:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_270
.label_284:
	mov	r15, rbx
	xor	r12d, r12d
.label_286:
	xor	r12b, 1
.label_281:
	cmp	ebp, 3
	je	.label_300
	test	r12b, r12b
	jne	.label_300
	mov	dword ptr [rsp + 4], r12d
.label_253:
	mov	rbx, r15
	jmp	.label_269
.label_300:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_303
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_303:
	test	ebx, ebx
	js	.label_307
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_253
.label_307:
	cmp	ebp, 3
	jne	.label_255
	test	r12b, r12b
	je	.label_255
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_255:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_260
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_260
	call	close
.label_260:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_269:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_275
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_275:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_252:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_289
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_274:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_259
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_261
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_261
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_285
	test	al, al
	je	.label_279
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x405241
	.globl sub_405241
	.type sub_405241, @function
sub_405241:

	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_261
.label_279:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_274
	jmp	.label_264
	.section	.text
	.align	16
	#Procedure 0x405263
	.globl sub_405263
	.type sub_405263, @function
sub_405263:

	nop	word ptr cs:[rax + rax]
.label_261:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_294
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_295
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_296
	.section	.text
	.align	16
	#Procedure 0x4052bc
	.globl sub_4052bc
	.type sub_4052bc, @function
sub_4052bc:

	nop	dword ptr [rax]
.label_295:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_294
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_291
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_305
.label_291:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_305:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_296:
	add	rbp, rdx
	jb	.label_262
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_266
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_276
	.section	.text
	.align	16
	#Procedure 0x405373
	.globl sub_405373
	.type sub_405373, @function
sub_405373:

	nop	word ptr cs:[rax + rax]
.label_266:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_276:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_272
	test	byte ptr [rbx + 0x49], 4
	jne	.label_272
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_302
	.section	.text
	.align	16
	#Procedure 0x4053d4
	.globl sub_4053d4
	.type sub_4053d4, @function
sub_4053d4:

	nop	word ptr cs:[rax + rax]
.label_272:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_304
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_298
.label_304:
	xor	ebx, ebx
.label_298:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_302:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_254
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_254:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_258
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_258
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_258:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_252
	jmp	.label_289
.label_259:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_278
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_278:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_289
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_289
.label_264:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_289:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_306
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_306:
	test	byte ptr [rbx + 0x48], 4
	je	.label_257
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_257:
	test	r13, r13
	jne	.label_265
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_265
	cmp	r15d, 1
	je	.label_268
	test	rdx, rdx
	jne	.label_265
.label_268:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_271
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_273
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_282
.label_271:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_282:
	mov	rdx, r12
	test	eax, eax
	je	.label_265
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_287
.label_265:
	test	rdx, rdx
	je	.label_290
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_293
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_293:
	cmp	rdx, 2
	jb	.label_301
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_301
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_301
.label_290:
	cmp	r15d, 3
	jne	.label_287
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_287
	movzx	eax, ax
	cmp	eax, 7
	je	.label_287
	mov	word ptr [r14 + 0x70], 6
.label_287:
	mov	rdi, rbp
	call	fts_lfree
.label_270:
	xor	ebp, ebp
.label_301:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_294:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_270
.label_262:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x40569d
	.globl sub_40569d
	.type sub_40569d, @function
sub_40569d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_314
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_310:
	test	rbp, rbp
	je	.label_312
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_309
.label_312:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_315
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_311
	.section	.text
	.align	16
	#Procedure 0x405733
	.globl sub_405733
	.type sub_405733, @function
sub_405733:

	nop	word ptr cs:[rax + rax]
.label_309:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_313
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_311:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_310
.label_314:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	16
	#Procedure 0x40579e
	.globl sub_40579e
	.type sub_40579e, @function
sub_40579e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4057a0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057b3
	.globl sub_4057b3
	.type sub_4057b3, @function
sub_4057b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_317
	cmp	byte ptr [rax], 0x43
	jne	.label_319
	cmp	byte ptr [rax + 1], 0
	je	.label_316
.label_319:
	mov	esi, OFFSET FLAT:label_318
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_317
.label_316:
	xor	ebx, ebx
.label_317:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057f1
	.globl sub_4057f1
	.type sub_4057f1, @function
sub_4057f1:

	nop	word ptr cs:[rax + rax]
.label_320:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405803
	.globl sub_405803
	.type sub_405803, @function
sub_405803:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40580c

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_320
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40582e
	.globl sub_40582e
	.type sub_40582e, @function
sub_40582e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405830

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
	ja	.label_321
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
	jmp	.label_322
.label_321:
	mov	eax, ebx
.label_322:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405871
	.globl sub_405871
	.type sub_405871, @function
sub_405871:

	nop	word ptr cs:[rax + rax]
.label_323:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405885
	.globl sub_405885
	.type sub_405885, @function
sub_405885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405893

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
	je	.label_323
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
	.align	16
	#Procedure 0x4058e0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_325:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_324
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_325
.label_324:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40591b
	.globl sub_40591b
	.type sub_40591b, @function
sub_40591b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405920

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebp, 2
	cmp	qword ptr [rdi], 0
	je	.label_326
	cmp	byte ptr [r14 + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	rbx, rax
	mov	eax, 2
	nop	word ptr [rax + rax]
.label_330:
	mov	ebp, eax
.label_327:
	mov	rdi, rbx
	call	rpl_fts_read
	test	rax, rax
	je	.label_332
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, r14
	call	rm_fts
	lea	ecx, [rax - 2]
	cmp	ecx, 2
	jae	.label_333
	cmp	ebp, 2
	jne	.label_327
	cmp	eax, 3
	jne	.label_327
	jmp	.label_330
	.section	.text
	.align	16
	#Procedure 0x405991
	.globl sub_405991
	.type sub_405991, @function
sub_405991:

	nop	word ptr cs:[rax + rax]
.label_333:
	cmp	eax, 4
	mov	eax, 4
	je	.label_330
	mov	edi, OFFSET FLAT:label_334
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_336
	call	__assert_fail
.label_332:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	je	.label_328
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_328:
	mov	rdi, rbx
	call	rpl_fts_close
	test	eax, eax
	je	.label_326
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_326:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a39
	.globl sub_405a39
	.type sub_405a39, @function
sub_405a39:

	nop	dword ptr [rax]
.label_337:
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a44
	.globl sub_405a44
	.type sub_405a44, @function
sub_405a44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a53

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbx
	call	lutimens
	mov	ebx, eax
	test	ebx, ebx
	je	.label_337
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0x26
	cmove	ebx, ecx
	mov	eax, ebx
	pop	rbx
	ret	
.label_338:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a76
	.globl sub_405a76
	.type sub_405a76, @function
sub_405a76:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a7b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_338
	test	rdx, rdx
	je	.label_338
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405aa0

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [r13 + 0x18]
	mov	rdi, r14
	call	writable_destination
	test	al, al
	je	.label_339
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	jmp	.label_345
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	jmp	.label_341
	.section	.text
	.align	16
	#Procedure 0x405b1f
	.globl sub_405b1f
	.type sub_405b1f, @function
sub_405b1f:

	nop	word ptr cs:[rax + rax]
.label_339:
	mov	edi, dword ptr [r13 + 0x18]
	lea	rsi, [rsp + 0xc]
	call	strmode
	mov	byte ptr [rsp + 0x16], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [rbx + 0x18], 0
	jne	.label_343
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_343
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_344
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
.label_341:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbp,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	r9d, dword ptr [r13 + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0xd]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	__fprintf_chk
.label_345:
	call	yesno
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
	#Procedure 0x405bc0

	.globl forget_created
	.type forget_created, @function
forget_created:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_347
	mov	rdi, rax
	call	src_to_dest_free
.label_347:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bf8
	.globl sub_405bf8
	.type sub_405bf8, @function
sub_405bf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbx
	mov	rbx, rdi
	mov	edx, 4
	call	rpl_fts_set
	mov	rdi, rbx
	pop	rbx
	jmp	rpl_fts_read
	.section	.text
	.align	16
	#Procedure 0x405c17
	.globl sub_405c17
	.type sub_405c17, @function
sub_405c17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c20
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c30

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_357
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_356
	test	rbx, rbx
	je	.label_351
	mov	qword ptr [rbx], rax
	jmp	.label_351
.label_356:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_361
	cvtsi2ss	xmm0, rcx
	jmp	.label_349
.label_361:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_349:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_355
	cvtsi2ss	xmm1, rax
	jmp	.label_360
.label_355:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_360:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_362
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_353
	cvtsi2ss	xmm2, rcx
	jmp	.label_358
.label_353:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_358:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_364
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_352
.label_364:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_352:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_362
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_363
	mulss	xmm0, xmm1
.label_363:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_350]]
	jae	.label_351
	movss	xmm1,  dword ptr [dword ptr [rip + label_354]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_351
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_357
.label_362:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_359
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_351
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_348
.label_359:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_348:
	mov	ebp, 1
.label_351:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_357:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405e02
	.globl sub_405e02
	.type sub_405e02, @function
sub_405e02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e10

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
	#Procedure 0x405e49
	.globl sub_405e49
	.type sub_405e49, @function
sub_405e49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

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
	#Procedure 0x405e61
	.globl sub_405e61
	.type sub_405e61, @function
sub_405e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70
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
	#Procedure 0x405e84
	.globl sub_405e84
	.type sub_405e84, @function
sub_405e84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e95
	.globl sub_405e95
	.type sub_405e95, @function
sub_405e95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ea0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405eb3
	.globl sub_405eb3
	.type sub_405eb3, @function
sub_405eb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_365
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_366:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_366
.label_365:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ef3
	.globl sub_405ef3
	.type sub_405ef3, @function
sub_405ef3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_368:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_367
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x405f29
	.globl sub_405f29
	.type sub_405f29, @function
sub_405f29:

	nop	dword ptr [rax]
.label_367:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_369:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_370
	inc	r9
	cmp	r9, 0xa
	jb	.label_368
.label_370:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f5f
	.globl sub_405f5f
	.type sub_405f5f, @function
sub_405f5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405f60

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_371
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_374
	mov	esi, OFFSET FLAT:label_372
	jmp	.label_373
.label_374:
	mov	esi, OFFSET FLAT:label_375
.label_373:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_371:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405fbe
	.globl sub_405fbe
	.type sub_405fbe, @function
sub_405fbe:

	nop	
.label_377:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405fc5
	.globl sub_405fc5
	.type sub_405fc5, @function
sub_405fc5:

	nop	dword ptr [rax + rax]
.label_379:
	test	esi, esi
	js	.label_376
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_376
	mov	edi, esi
.label_380:
	call	close
.label_376:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fe7

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_378
	cmp	esi, -0x64
	jne	.label_377
.label_378:
	test	dl, dl
	je	.label_379
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_376
	mov	edi, eax
	jmp	.label_380
	.section	.text
	.align	16
	#Procedure 0x406010

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_382
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_381
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_381
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_381
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_382
.label_381:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_382:
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
	#Procedure 0x4060ec
	.globl sub_4060ec
	.type sub_4060ec, @function
sub_4060ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060f0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_385
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_386:
	cmp	r15, 0x800
	jb	.label_383
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_386
	jmp	.label_384
.label_383:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_385:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_384:
	mov	qword ptr [r14], r12
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
	#Procedure 0x40619a
	.globl sub_40619a
	.type sub_40619a, @function
sub_40619a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061a9
	.globl sub_4061a9
	.type sub_4061a9, @function
sub_4061a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061b0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_389
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_391
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_391
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_387
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_388
.label_391:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_388
.label_389:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_388:
	test	ebx, ebx
	js	.label_387
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_387
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_390
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_387
.label_390:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_387:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406273
	.globl sub_406273
	.type sub_406273, @function
sub_406273:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_392:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_392
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4062a1
	.globl sub_4062a1
	.type sub_4062a1, @function
sub_4062a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_393
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_393
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_393:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4062d6
	.globl sub_4062d6
	.type sub_4062d6, @function
sub_4062d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062f3
	.globl sub_4062f3
	.type sub_4062f3, @function
sub_4062f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406300

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	.section	.text
	.align	16
	#Procedure 0x406311
	.globl sub_406311
	.type sub_406311, @function
sub_406311:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406320

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x406325
	.globl sub_406325
	.type sub_406325, @function
sub_406325:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_394
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_394:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40634a
	.globl sub_40634a
	.type sub_40634a, @function
sub_40634a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x406357
	.globl sub_406357
	.type sub_406357, @function
sub_406357:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x20], r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	rbx, qword ptr [rsp + 0xc8]
	lea	r14, [rsp + 0x48]
	mov	dword ptr [rsp + 0x14], edi
	mov	rsi, r14
	call	extent_scan_init
	mov	byte ptr [rbx], 0
	xor	r12d, r12d
	cmp	dword ptr [rsp + 0xb0], 3
	cmovne	rbp, r12
	mov	qword ptr [rsp + 0x38], rbp
	mov	al, 1
	mov	dword ptr [rsp + 0x10], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_411:
	mov	rdi, r14
	call	extent_scan_read
	test	al, al
	je	.label_412
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_414
	mov	r14d, 1
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_421:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rax + rcx*8 + 8]
	lea	rax, [rbx + r15]
	cmp	rax, rsi
	jle	.label_423
	cmp	r15, rsi
	cmovg	r15, rsi
	mov	rbx, rsi
	sub	rbx, r15
.label_423:
	mov	rbp, r15
	sub	rbp, r13
	sub	rbp, r12
	je	.label_400
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, r15
	call	lseek
	test	rax, rax
	js	.label_407
	mov	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 1
	jne	.label_409
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	write_zeros
	test	al, al
	je	.label_413
.label_400:
	xor	ebp, ebp
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x40645e
	.globl sub_40645e
	.type sub_40645e, @function
sub_40645e:

	nop	
.label_409:
	xor	edx, edx
	cmp	eax, 3
	sete	dl
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rcx, rbp
	call	create_hole
	mov	bpl, 1
	test	al, al
	je	.label_410
.label_408:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rsp + 0x1c]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rax, [rsp + 0x13]
	push	rax
	lea	rax, [rsp + 0x50]
	push	rax
	push	rbx
	push	qword ptr [rsp + 0xe0]
	push	qword ptr [rsp + 0xe0]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_410
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdx + r15]
	movzx	eax, byte ptr [rsp + 0xb]
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdi, rsi
	je	.label_425
	mov	dword ptr [rsp + 0x10], ebp
	mov	ecx, r14d
	inc	r14d
	cmp	rcx, qword ptr [rsp + 0x60]
	mov	r13, r15
	mov	r12, rbx
	jb	.label_421
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	lea	r14, [rsp + 0x48]
	je	.label_399
	mov	dword ptr [rsp + 0x10], eax
	jmp	.label_399
	.section	.text
	.align	16
	#Procedure 0x40651c
	.globl sub_40651c
	.type sub_40651c, @function
sub_40651c:

	nop	dword ptr [rax]
.label_414:
	mov	r15, r13
	mov	rbx, r12
	jmp	.label_399
.label_425:
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	je	.label_403
	mov	bpl, al
.label_403:
	mov	dword ptr [rsp + 0x10], ebp
	mov	byte ptr [rsp + 0x69], 1
	lea	r14, [rsp + 0x48]
.label_399:
	mov	rdi, r14
	call	extent_scan_free
	cmp	byte ptr [rsp + 0x69], 0
	mov	r12, rbx
	mov	r13, r15
	je	.label_411
	jmp	.label_404
.label_407:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xb8]
	call	quotearg_style
	jmp	.label_416
.label_413:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xc0]
	call	quotearg_n_style_colon
.label_416:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_410:
	lea	rdi, [rsp + 0x48]
	call	extent_scan_free
.label_395:
	xor	r14d, r14d
.label_401:
	mov	eax, r14d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_412:
	cmp	byte ptr [rsp + 0x69], 0
	je	.label_422
.label_404:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rsi, rcx
	jl	.label_424
	mov	eax, dword ptr [rsp + 0x10]
	and	al, 1
	je	.label_396
.label_424:
	cmp	dword ptr [rsp + 0xb0], 1
	jne	.label_397
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	write_zeros
	mov	r14b, 1
	test	al, al
	jne	.label_401
	jmp	.label_406
.label_422:
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_402
	mov	rax, qword ptr [rsp + 0xc8]
	mov	byte ptr [rax], 1
	jmp	.label_395
.label_397:
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	ftruncate
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_396
.label_406:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	jmp	.label_420
.label_396:
	cmp	dword ptr [rsp + 0xb0], 3
	mov	r14b, 1
	jne	.label_401
	cmp	rsi, rcx
	jge	.label_401
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rdx, rcx
	call	punch_hole
	test	eax, eax
	jns	.label_401
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
.label_420:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	jmp	.label_415
.label_402:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xb8]
	call	quotearg_n_style_colon
.label_415:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_401
	.section	.text
	.align	16
	#Procedure 0x40671f
	.globl sub_40671f
	.type sub_40671f, @function
sub_40671f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406720

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40673a
	.globl sub_40673a
	.type sub_40673a, @function
sub_40673a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406740

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_426
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_426:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406755
	.globl sub_406755
	.type sub_406755, @function
sub_406755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	cmp	edi, 0x5f
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x406767
	.globl sub_406767
	.type sub_406767, @function
sub_406767:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406770

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40679a
	.globl sub_40679a
	.type sub_40679a, @function
sub_40679a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_427
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_427:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067eb
	.globl sub_4067eb
	.type sub_4067eb, @function
sub_4067eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f0

	.globl clone_file
	.type clone_file, @function
clone_file:
	mov	ecx, esi
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edx, ecx
	jmp	ioctl
	.section	.text
	.align	16
	#Procedure 0x406800

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40680a
	.globl sub_40680a
	.type sub_40680a, @function
sub_40680a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_428
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_435
	cmp	ecx, 0x5f
	je	.label_435
	cmp	ecx, 0x26
	jne	.label_428
.label_435:
	test	r13d, r13d
	je	.label_436
	cmp	r13d, 1
	jne	.label_439
	mov	rbx, rax
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_432
	mov	rax, rbx
	mov	ecx, dword ptr [rax]
	mov	r13b, 1
	cmp	ecx, 2
	je	.label_433
	mov	ebx, 0xffffffff
	cmp	ecx, 0x4b
	jne	.label_428
.label_432:
	mov	edi, 0x11
	jmp	.label_438
.label_436:
	xor	r13d, r13d
.label_433:
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_430
	test	rax, rax
	je	.label_430
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_437
	cmp	byte ptr [r12 + rax - 1], 0x2f
	jne	.label_430
.label_437:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_428
	test	r13b, r13b
	je	.label_434
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_430
	mov	edi, 2
	jmp	.label_429
.label_439:
	mov	edi, 0x5f
.label_438:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_428
.label_434:
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_440
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_428
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_430
	jmp	.label_428
.label_440:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_441
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_431
.label_430:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_428:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_441:
	mov	edi, 0x14
	jmp	.label_429
.label_431:
	mov	edi, 0x15
.label_429:
	call	errno_fail
	jmp	.label_428
	.section	.text
	.align	16
	#Procedure 0x4069d7
	.globl sub_4069d7
	.type sub_4069d7, @function
sub_4069d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069e0

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_449
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_445
	mov	edx, dword ptr [r9 + 0x18]
	jmp	.label_447
.label_445:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_448
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_449
.label_448:
	mov	edx, dword ptr [r9 + 0x18]
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_447
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_452
.label_447:
	add	rcx, 0x18
.label_456:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_449
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, ebx
	call	qset_acl
	test	eax, eax
	je	.label_449
	mov	rdi, r15
	call	owner_failure_ok
	test	al, al
	jne	.label_453
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_453:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_444
.label_452:
	lea	rcx, [r15 + 0x10]
	jmp	.label_456
	.section	.text
	.align	16
	#Procedure 0x406ac5
	.globl sub_406ac5
	.type sub_406ac5, @function
sub_406ac5:

	nop	word ptr cs:[rax + rax]
.label_449:
	cmp	ebx, -1
	je	.label_446
	mov	edi, ebx
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_444
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	eax, 0x16
	je	.label_454
	cmp	eax, 1
	jne	.label_442
.label_454:
	mov	r13d, dword ptr [rbp]
	mov	esi, 0xffffffff
	mov	edi, ebx
	mov	edx, r12d
	call	fchown
	mov	dword ptr [rbp], r13d
	jmp	.label_442
.label_446:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_444
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	cmp	eax, 0x16
	je	.label_455
	cmp	eax, 1
	jne	.label_442
.label_455:
	mov	ebp, dword ptr [rbx]
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
	mov	dword ptr [rbx], ebp
.label_442:
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	jne	.label_451
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_444
.label_451:
	xor	eax, eax
.label_444:
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
	#Procedure 0x406bc0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebx, r9d
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_457
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	r12, rcx
	mov	dword ptr [rsp + 4], r8d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_458
	call	__errno_location
	mov	rcx, r12
	mov	ebp, dword ptr [rax]
	mov	r8d, dword ptr [rsp + 4]
.label_457:
	cmp	ebp, 0x11
	jne	.label_458
	mov	r12d, r8d
	xor	bl, 1
	jne	.label_458
	lea	rsi, [rsp + 0x20]
	mov	rbp, rcx
	mov	rdi, rcx
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_462
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0x18], r13d
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, rbx
	call	try_tempname_len
	test	eax, eax
	je	.label_460
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_461
.label_462:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_458
.label_460:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_459
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_459:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_461:
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_458
	mov	rdi, rbx
	call	free
.label_458:
	mov	eax, ebp
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cdc
	.globl sub_406cdc
	.type sub_406cdc, @function
sub_406cdc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ce0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_463
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_464:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_464
.label_463:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d0e
	.globl sub_406d0e
	.type sub_406d0e, @function
sub_406d0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406d10
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d19
	.globl sub_406d19
	.type sub_406d19, @function
sub_406d19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406d20

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, 0x3b9aca00
	jb	.label_465
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_469
.label_465:
	mov	rax, qword ptr [rdi + 0x18]
	cmp	rax, 0x3b9aca00
	jb	.label_466
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	je	.label_466
.label_469:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	add	rsp, 8
	ret	
.label_466:
	mov	rax, qword ptr [rdi + 8]
	and	rax, 0xfffffffffffffffe
	xor	edx, edx
	cmp	rax, 0x3ffffffe
	mov	ecx, 0
	jne	.label_467
	mov	qword ptr [rdi], 0
	xor	ecx, ecx
	cmp	qword ptr [rdi + 8], 0x3ffffffe
	sete	cl
	mov	edx, 1
.label_467:
	mov	rax, qword ptr [rdi + 0x18]
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_468
	mov	qword ptr [rdi + 0x10], 0
	xor	eax, eax
	cmp	qword ptr [rdi + 0x18], 0x3ffffffe
	sete	al
	add	ecx, eax
	mov	edx, 1
.label_468:
	xor	eax, eax
	cmp	ecx, 1
	sete	al
	add	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406dcd
	.globl sub_406dcd
	.type sub_406dcd, @function
sub_406dcd:

	nop	dword ptr [rax]
.label_472:
	xor	ebx, ebx
.label_471:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406de3
	.globl sub_406de3
	.type sub_406de3, @function
sub_406de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406df0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_472
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_470
	mov	byte ptr [rcx + rax - 1], 0
.label_470:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_471
.label_474:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_473:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406e51
	.globl sub_406e51
	.type sub_406e51, @function
sub_406e51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e5b

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_474
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_473
	cmp	rax, rbx
	je	.label_474
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
	.section	.text
	.align	16
	#Procedure 0x406ec0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x28]
	movabs	r12, 0x7fffffffffffffff
	xor	r14d, r14d
.label_492:
	xor	esi, esi
	mov	edx, 0xff0
	lea	rdi, [rsp + 0x18]
	call	memset
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	ecx, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x20], 0x48
	not	rax
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	lea	rdx, [rsp + 8]
	call	ioctl
	test	eax, eax
	js	.label_479
	mov	eax, dword ptr [rsp + 0x1c]
	test	rax, rax
	je	.label_494
	mov	rsi, qword ptr [r13 + 0x18]
	mov	rcx, rax
	not	rcx
	cmp	rsi, rcx
	ja	.label_475
	add	rsi, rax
	mov	qword ptr [r13 + 0x18], rsi
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r15, rdi
	mov	edx, 0x18
	call	xnrealloc
	mov	qword ptr [r13 + 0x28], rax
	add	r15, rax
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_491
	xor	eax, eax
	mov	r8d, dword ptr [rsp + 0x1c]
	nop	word ptr cs:[rax + rax]
.label_490:
	mov	ecx, eax
	imul	rsi, rcx, 0x38
	mov	rcx, qword ptr [rsp + rsi + 0x28]
	mov	rdi, qword ptr [rsp + rsi + 0x38]
	mov	rdx, r12
	sub	rdx, rdi
	cmp	rcx, rdx
	ja	.label_480
	lea	rdx, [rsp + rsi + 0x28]
	test	r14d, r14d
	je	.label_493
	mov	ebp, dword ptr [rsp + rsi + 0x50]
	and	ebp, 0xfffffffe
	cmp	dword ptr [r15 + 0x10], ebp
	jne	.label_477
	mov	rbp, qword ptr [r15 + 8]
	mov	rbx, qword ptr [r15]
	add	rbx, rbp
	cmp	rbx, rcx
	jne	.label_477
	lea	rcx, [rsp + rsi + 0x50]
	add	rbp, rdi
	mov	qword ptr [r15 + 8], rbp
	mov	ecx, dword ptr [rcx]
	mov	dword ptr [r15 + 0x10], ecx
	jmp	.label_482
	.section	.text
	.align	16
	#Procedure 0x406fec
	.globl sub_406fec
	.type sub_406fec, @function
sub_406fec:

	nop	dword ptr [rax]
.label_477:
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_485
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	jmp	.label_489
	.section	.text
	.align	16
	#Procedure 0x407005
	.globl sub_407005
	.type sub_407005, @function
sub_407005:

	nop	word ptr cs:[rax + rax]
.label_493:
	mov	rcx, qword ptr [r13 + 8]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_485
	mov	rcx, qword ptr [r13 + 8]
.label_489:
	mov	rsi, rcx
	sub	rsi, qword ptr [rdx]
	cmp	rsi, qword ptr [rdx + 0x10]
	jb	.label_483
	mov	qword ptr [rdx], rcx
	sub	qword ptr [rdx + 0x10], rsi
	dec	eax
	jmp	.label_482
	.section	.text
	.align	16
	#Procedure 0x407038
	.globl sub_407038
	.type sub_407038, @function
sub_407038:

	nop	dword ptr [rax + rax]
.label_485:
	mov	rcx, qword ptr [r13 + 0x28]
	mov	edi, r14d
	lea	rdi, [rdi + rdi*2]
	lea	r15, [rcx + rdi*8]
	mov	rbp, qword ptr [rdx]
	mov	qword ptr [rcx + rdi*8], rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + rdi*8 + 8], rdx
	mov	edx, dword ptr [rsp + rsi + 0x50]
	mov	dword ptr [rcx + rdi*8 + 0x10], edx
	inc	r14d
.label_482:
	inc	eax
	cmp	eax, r8d
	jb	.label_490
.label_491:
	test	byte ptr [r15 + 0x10], 1
	je	.label_495
	mov	byte ptr [r13 + 0x21], 1
.label_495:
	cmp	r14d, 0x49
	jb	.label_478
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_478
	mov	rax, qword ptr [r13 + 0x28]
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r15, [rax + rcx*8 - 0x18]
	nop	
.label_478:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_484
	mov	rax, qword ptr [r15 + 8]
	add	rax, qword ptr [r15]
	mov	qword ptr [r13 + 8], rax
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_492
	jmp	.label_476
.label_483:
	cmp	qword ptr [r13 + 8], 0
	je	.label_481
	xor	eax, eax
	jmp	.label_476
.label_479:
	cmp	qword ptr [r13 + 8], 0
	je	.label_481
	xor	eax, eax
	jmp	.label_476
.label_481:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	jmp	.label_476
.label_494:
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	jmp	.label_476
.label_484:
	mov	al, 1
.label_476:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_480:
	mov	edi, OFFSET FLAT:label_496
	mov	esi, OFFSET FLAT:label_487
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_488
	call	__assert_fail
.label_475:
	mov	edi, OFFSET FLAT:label_486
	mov	esi, OFFSET FLAT:label_487
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_488
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40713b
	.globl sub_40713b
	.type sub_40713b, @function
sub_40713b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140

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
	je	.label_501
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_497
	cmp	byte ptr [r15], 0x2f
	je	.label_497
	mov	r12b, 0x2f
	jmp	.label_498
.label_501:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_498
.label_497:
	xor	r12d, r12d
.label_498:
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
	je	.label_500
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_499
	mov	qword ptr [rax], rbp
.label_499:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_500:
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
	#Procedure 0x407218
	.globl sub_407218
	.type sub_407218, @function
sub_407218:

	nop	dword ptr [rax + rax]
.label_502:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_504:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_503
	cmp	qword ptr [rax + 0x20], 0
	je	.label_502
.label_503:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40723b
	.globl sub_40723b
	.type sub_40723b, @function
sub_40723b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407240

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	mov	rax, qword ptr [rdi + 8]
	jmp	.label_504
	.section	.text
	.align	16
	#Procedure 0x407246
	.globl sub_407246
	.type sub_407246, @function
sub_407246:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407250

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rbx + 0x30]
	cmp	rcx, -1
	jne	.label_505
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_507
	mov	qword ptr [rbx + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	qword ptr [rbx + 8], rax
.label_507:
	mov	rcx, qword ptr [rbx + 0x30]
.label_505:
	xor	eax, eax
	test	rcx, rcx
	jns	.label_506
	mov	ebx, dword ptr [rbx + 8]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_506:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40729f
	.globl sub_40729f
	.type sub_40729f, @function
sub_40729f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4072a0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072b4
	.globl sub_4072b4
	.type sub_4072b4, @function
sub_4072b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072c0

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	cmp	esi, -1
	je	.label_508
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_508:
	mov	esi, edx
	jmp	chmod
	.section	.text
	.align	16
	#Procedure 0x4072d5
	.globl sub_4072d5
	.type sub_4072d5, @function
sub_4072d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072e0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072e5
	.globl sub_4072e5
	.type sub_4072e5, @function
sub_4072e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072f0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_509
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x407312
	.globl sub_407312
	.type sub_407312, @function
sub_407312:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407320
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40732d
	.globl sub_40732d
	.type sub_40732d, @function
sub_40732d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407330

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_511
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_510
.label_511:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_510
	xor	r12b, 1
	jne	.label_510
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_510:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40741a
	.globl sub_40741a
	.type sub_40741a, @function
sub_40741a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407420

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_518
	mov	cl, 0x2d
.label_518:
	mov	byte ptr [r14 + 1], cl
	mov	ecx, ebx
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_520
	mov	cl, 0x2d
.label_520:
	test	al, 8
	jne	.label_517
	mov	dl, cl
.label_517:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_515
	mov	cl, 0x2d
.label_515:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_521
	mov	cl, 0x2d
.label_521:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_514
	mov	cl, 0x2d
.label_514:
	test	al, 4
	jne	.label_513
	mov	dil, cl
.label_513:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_516
	mov	sil, 0x2d
.label_516:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_519
	mov	dl, 0x2d
.label_519:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_523
	mov	r8b, 0x2d
.label_523:
	test	al, 2
	je	.label_522
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8d, ebx
.label_522:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074ed
	.globl sub_4074ed
	.type sub_4074ed, @function
sub_4074ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4074f0

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_524
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_525
.label_524:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_525:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407551
	.globl sub_407551
	.type sub_407551, @function
sub_407551:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407560

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x407575
	.globl sub_407575
	.type sub_407575, @function
sub_407575:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407580

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
	je	.label_526
	cmp	r15, -2
	jb	.label_526
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_526
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_526:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075d6
	.globl sub_4075d6
	.type sub_4075d6, @function
sub_4075d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075e0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	.section	.text
	.align	16
	#Procedure 0x4075ea
	.globl sub_4075ea
	.type sub_4075ea, @function
sub_4075ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_527
.label_528:
	ret	
.label_527:
	cmp	edi, 0x7f
	je	.label_528
	xor	eax, eax
	jmp	.label_528
	.section	.text
	.align	16
	#Procedure 0x407601
	.globl sub_407601
	.type sub_407601, @function
sub_407601:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_529
	mov	edi, OFFSET FLAT:label_532
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_530
	test	rbx, rbx
	je	.label_531
.label_529:
	mov	eax, OFFSET FLAT:label_530
	cmp	byte ptr [rbx], 0
	je	.label_531
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_530
	cmove	rax, rbx
.label_531:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407657
	.globl sub_407657
	.type sub_407657, @function
sub_407657:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407660

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407664
	.globl sub_407664
	.type sub_407664, @function
sub_407664:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407670
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_533
	xor	eax, eax
.label_536:
	cmp	qword ptr [r8], 0
	je	.label_534
	test	r8, r8
	je	.label_534
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_535:
	cmp	rax, rdx
	jae	.label_533
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_535
.label_534:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_536
.label_533:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076b3
	.globl sub_4076b3
	.type sub_4076b3, @function
sub_4076b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076c0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_537
	test	byte ptr [r14 + 0x48], 1
	je	.label_537
	mov	dl, 1
.label_537:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_544
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_544
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_538
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_540
.label_544:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_538
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_543
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_546
.label_543:
	mov	eax, dword ptr [r14]
.label_540:
	mov	dword ptr [r15 + 0x40], eax
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
	mov	ax, 0xa
.label_539:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_538:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_547
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_539
	cmp	ecx, 0x4000
	jne	.label_542
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_541
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_541
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_541:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_539
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_545
	cmp	cl, 0x2e
	jne	.label_539
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_539
.label_545:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_539
.label_547:
	mov	ax, 8
	jmp	.label_539
.label_542:
	mov	ax, 3
	jmp	.label_539
.label_546:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_539
	.section	.text
	.align	16
	#Procedure 0x407848
	.globl sub_407848
	.type sub_407848, @function
sub_407848:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407850
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40785a
	.globl sub_40785a
	.type sub_40785a, @function
sub_40785a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407860

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_548
	cmp	byte ptr [rsi], 0
	je	.label_548
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_548:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407898
	.globl sub_407898
	.type sub_407898, @function
sub_407898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078a0

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_549
	cmp	byte ptr [rsi], 0
	je	.label_549
	jmp	get_version
.label_549:
	push	rax
	mov	edi, OFFSET FLAT:label_550
	call	getenv
	mov	edi, OFFSET FLAT:label_551
	mov	rsi, rax
	pop	rax
	jmp	get_version
	.section	.text
	.align	16
	#Procedure 0x4078c2
	.globl sub_4078c2
	.type sub_4078c2, @function
sub_4078c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078d0

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
	je	.label_554
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_552
	jmp	.label_553
.label_554:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_553
.label_552:
	mov	eax, 1
	test	bpl, bpl
	je	.label_553
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
.label_553:
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
	#Procedure 0x407958
	.globl sub_407958
	.type sub_407958, @function
sub_407958:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407960

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
	je	.label_555
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_557
	jmp	.label_556
.label_555:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_556
.label_557:
	mov	eax, 1
	test	bpl, bpl
	je	.label_556
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
.label_556:
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
	#Procedure 0x4079d9
	.globl sub_4079d9
	.type sub_4079d9, @function
sub_4079d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4079e0

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
	je	.label_560
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_559
	jmp	.label_558
.label_560:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_558
.label_559:
	mov	eax, 1
	test	bpl, bpl
	je	.label_558
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
.label_558:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a43
	.globl sub_407a43
	.type sub_407a43, @function
sub_407a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a50

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
	je	.label_563
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_561
	jmp	.label_562
.label_563:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_562
.label_561:
	mov	eax, 1
	test	bpl, bpl
	je	.label_562
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_562:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407aaf
	.globl sub_407aaf
	.type sub_407aaf, @function
sub_407aaf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407ab0

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
	je	.label_564
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_566
	jmp	.label_565
.label_564:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_565
.label_566:
	mov	eax, 1
	test	bpl, bpl
	je	.label_565
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_565:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407af9
	.globl sub_407af9
	.type sub_407af9, @function
sub_407af9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407b00

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
	je	.label_569
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_568
	jmp	.label_567
.label_569:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_567
.label_568:
	mov	eax, 1
	test	bpl, bpl
	je	.label_567
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_567:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b45
	.globl sub_407b45
	.type sub_407b45, @function
sub_407b45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b50

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_572
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_571
	jmp	.label_570
.label_572:
	mov	eax, 1
	test	cl, cl
	je	.label_570
.label_571:
	xor	eax, eax
.label_570:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b7f
	.globl sub_407b7f
	.type sub_407b7f, @function
sub_407b7f:

	nop	
.label_573:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b83
	.globl sub_407b83
	.type sub_407b83, @function
sub_407b83:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b8c

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_573
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ba0

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
	je	.label_574
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_575
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_575
.label_574:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_575
	test	cl, cl
	jne	.label_575
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_575:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c06
	.globl sub_407c06
	.type sub_407c06, @function
sub_407c06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c10
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c23
	.globl sub_407c23
	.type sub_407c23, @function
sub_407c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c30
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_576]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c44
	.globl sub_407c44
	.type sub_407c44, @function
sub_407c44:

	nop	word ptr cs:[rax + rax]
.label_577:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c53
	.globl sub_407c53
	.type sub_407c53, @function
sub_407c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c61

	.globl dot_or_dotdot_0
	.type dot_or_dotdot_0, @function
dot_or_dotdot_0:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_577
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
	.section	.text
	.align	16
	#Procedure 0x407c80

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c93
	.globl sub_407c93
	.type sub_407c93, @function
sub_407c93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ca0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_579:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_578
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_579
.label_578:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cc6
	.globl sub_407cc6
	.type sub_407cc6, @function
sub_407cc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cd0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cd5
	.globl sub_407cd5
	.type sub_407cd5, @function
sub_407cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ce0

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	test	edi, edi
	js	.label_580
	mov	esi, edx
	jmp	fchmod
.label_580:
	mov	rdi, rsi
	mov	esi, edx
	jmp	chmod
	.section	.text
	.align	16
	#Procedure 0x407cf5
	.globl sub_407cf5
	.type sub_407cf5, @function
sub_407cf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d00

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	.section	.text
	.align	16
	#Procedure 0x407d0a
	.globl sub_407d0a
	.type sub_407d0a, @function
sub_407d0a:

	nop	word ptr [rax + rax]
.label_582:
	mov	ecx, 1
.label_581:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x407d20
	.globl sub_407d20
	.type sub_407d20, @function
sub_407d20:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d25

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_582
	test	rsi, rsi
	mov	ecx, 1
	je	.label_581
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_581
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_586:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_583:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_354]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_350]]
	jae	.label_585
.label_584:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_585:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dc7
	.globl sub_407dc7
	.type sub_407dc7, @function
sub_407dc7:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407dc9

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_584
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_586
	cvtsi2ss	xmm0, rdi
	jmp	.label_583
	.section	.text
	.align	16
	#Procedure 0x407de0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_587
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_587:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_588
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_590
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_589
.label_590:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_589:
	mov	edx, dword ptr [rax]
.label_588:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ea4
	.globl sub_407ea4
	.type sub_407ea4, @function
sub_407ea4:

	nop	word ptr cs:[rax + rax]
.label_595:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_591
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407ed0
	.globl sub_407ed0
	.type sub_407ed0, @function
sub_407ed0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407edf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_595
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_593
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_596
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_593
	mov	esi, OFFSET FLAT:label_594
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_592
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_592:
	mov	rbx, r14
.label_593:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f60
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	.section	.text
	.align	16
	#Procedure 0x407f6b
	.globl sub_407f6b
	.type sub_407f6b, @function
sub_407f6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f70

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f79
	.globl sub_407f79
	.type sub_407f79, @function
sub_407f79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407f80

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_597
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_598:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_598
	inc	r14
.label_597:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fc6
	.globl sub_407fc6
	.type sub_407fc6, @function
sub_407fc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fd0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fdb
	.globl sub_407fdb
	.type sub_407fdb, @function
sub_407fdb:

	nop	dword ptr [rax + rax]
.label_603:
	mov	rcx, qword ptr [rdx]
.label_601:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fee
	.globl sub_407fee
	.type sub_407fee, @function
sub_407fee:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ff8
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_602:
	cmp	qword ptr [rcx], rbx
	jne	.label_599
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_603
.label_599:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_602
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_600:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_601
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_600
	jmp	.label_601
	.section	.text
	.align	16
	#Procedure 0x408050

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_604
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_605
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_605:
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	putchar_unlocked
	.section	.text
	.align	16
	#Procedure 0x4080e3
	.globl sub_4080e3
	.type sub_4080e3, @function
sub_4080e3:

	nop	word ptr cs:[rax + rax]
.label_608:
	add	rcx, 0x10
.label_610:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_607
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_608
.label_609:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408103
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_609
	mov	rcx, qword ptr [rdi]
	jmp	.label_610
	.section	.text
	.align	16
	#Procedure 0x408111
	.globl sub_408111
	.type sub_408111, @function
sub_408111:

	nop	
.label_607:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408119
	.globl sub_408119
	.type sub_408119, @function
sub_408119:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408120
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408129
	.globl sub_408129
	.type sub_408129, @function
sub_408129:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408130

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	.section	.text
	.align	16
	#Procedure 0x40813a
	.globl sub_40813a
	.type sub_40813a, @function
sub_40813a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408140

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
	#Procedure 0x408189
	.globl sub_408189
	.type sub_408189, @function
sub_408189:

	nop	dword ptr [rax]
.label_611:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_612:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40819a
	.globl sub_40819a
	.type sub_40819a, @function
sub_40819a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081a8

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_611
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_612
	jmp	hash_free
	.section	.text
	.align	16
	#Procedure 0x4081c0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081d0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_613
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_613:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081fc
	.globl sub_4081fc
	.type sub_4081fc, @function
sub_4081fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408200

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
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_620
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_614:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_618
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_616
	cmp	qword ptr [rsp + 8], -1
	je	.label_617
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_619
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_618
.label_619:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_618
.label_617:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_618:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_614
	jmp	.label_615
.label_620:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_615:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_616:
	mov	rax, rbp
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
	#Procedure 0x4082fd
	.globl sub_4082fd
	.type sub_4082fd, @function
sub_4082fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408300

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408308
	.globl sub_408308
	.type sub_408308, @function
sub_408308:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408310

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_622
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_622
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_622:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_621
	test	eax, eax
	jne	.label_621
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_621:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_624
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_623
.label_624:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_169
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_623:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083e0

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	je	.label_626
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_627
.label_626:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_627:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x408424
	.globl sub_408424
	.type sub_408424, @function
sub_408424:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408430

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, r9
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r12, rcx
	mov	r15d, edx
	mov	r14, rsi
	mov	ebp, dword ptr [rdi + 0x2c]
	mov	rbx, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	je	.label_640
	mov	dword ptr [r13], 2
.label_640:
	lea	rdi, [rsp + 0x28]
	call	cache_stat_init
	test	r13, r13
	mov	dword ptr [rsp + 0xc], ebp
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_653
	mov	edi, ebp
	mov	rsi, rbx
	call	is_empty_dir
	mov	bl, al
	movzx	eax, bl
	add	eax, 3
	mov	dword ptr [r13], eax
	jmp	.label_633
.label_653:
	xor	ebx, ebx
.label_633:
	mov	ebp, 3
	cmp	qword ptr [r14 + 0x20], 0
	jne	.label_634
	mov	eax, dword ptr [r12 + 4]
	cmp	eax, 5
	je	.label_638
	xor	r14d, r14d
	cmp	byte ptr [r12], 0
	jne	.label_642
	cmp	eax, 3
	je	.label_644
	cmp	byte ptr [r12 + 0x19], 0
	je	.label_642
.label_644:
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	write_protected_non_symlink
	mov	ebp, eax
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	ebp, ebp
	jne	.label_651
.label_642:
	cmp	dword ptr [r12 + 4], 3
	mov	ebp, 0
	jne	.label_638
.label_651:
	movzx	r13d, r15b
	shl	r13d, 2
	test	ebp, ebp
	js	.label_631
	xor	r15b, 1
	je	.label_631
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_639
	call	__errno_location
	mov	r15d, dword ptr [rax]
	jmp	.label_641
.label_631:
	mov	r15d, r14d
.label_630:
	mov	r14d, r13d
.label_650:
	mov	r13d, ebp
	test	ebp, ebp
	mov	ebp, 3
	js	.label_641
	mov	eax, r14d
	and	al, 0xf
	cmp	al, 4
	je	.label_647
	cmp	al, 0xa
	jne	.label_635
	cmp	dword ptr [r12 + 4], 3
	je	.label_635
	jmp	.label_638
.label_639:
	mov	r15d, r14d
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r14d, 0xa
	cmp	eax, 0xa000
	je	.label_650
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
	jmp	.label_630
.label_647:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_635
	cmp	byte ptr [r12 + 0xa], 0
	mov	r15d, 0x15
	je	.label_641
	mov	eax, ebx
	xor	al, 1
	jne	.label_641
.label_635:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r15, rax
	cmp	r14d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	bl, cl
	je	.label_643
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_649
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	ebp, 4
	jmp	.label_634
.label_641:
	mov	ebp, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_634
.label_643:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_652
	mov	esi, OFFSET FLAT:label_628
	jmp	.label_629
.label_649:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_632
	mov	esi, OFFSET FLAT:label_636
	jmp	.label_637
.label_652:
	mov	esi, OFFSET FLAT:label_648
.label_629:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	call	__fprintf_chk
	jmp	.label_645
.label_632:
	mov	esi, OFFSET FLAT:label_646
.label_637:
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, r15
	call	__fprintf_chk
.label_645:
	call	yesno
	test	al, al
	je	.label_634
.label_638:
	mov	ebp, 2
.label_634:
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40872f
	.globl sub_40872f
	.type sub_40872f, @function
sub_40872f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_654
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_659:
	cmp	qword ptr [r15], 0
	je	.label_656
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_661
	nop	word ptr cs:[rax + rax]
.label_655:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_657
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_658
	.section	.text
	.align	16
	#Procedure 0x4087a6
	.globl sub_4087a6
	.type sub_4087a6, @function
sub_4087a6:

	nop	word ptr cs:[rax + rax]
.label_657:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_658:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_655
.label_661:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_656
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_660
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_662
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_663
.label_660:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_663:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_656:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_659
	mov	al, 1
.label_654:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_662:
	xor	eax, eax
	jmp	.label_654
	.section	.text
	.align	16
	#Procedure 0x408845
	.globl sub_408845
	.type sub_408845, @function
sub_408845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408850
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40885f
	.globl sub_40885f
	.type sub_40885f, @function
sub_40885f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408860
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
	je	.label_664
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_665:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_664
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_665
.label_664:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088c3
	.globl sub_4088c3
	.type sub_4088c3, @function
sub_4088c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088d0

	.globl copy
	.type copy, @function
copy:
	push	rbx
	sub	rsp, 0x10
	mov	r11, r9
	mov	r10, r8
	mov	rax, rcx
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0xf], 0
	lea	rbx, [rsp + 0xf]
	movzx	edx, dl
	mov	ecx, 0
	mov	r8d, 0
	mov	r9, rax
	push	r11
	push	r10
	push	rbx
	push	1
	call	copy_internal
	add	rsp, 0x30
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408919
	.globl sub_408919
	.type sub_408919, @function
sub_408919:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408920
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	.section	.text
	.align	16
	#Procedure 0x40892c
	.globl sub_40892c
	.type sub_40892c, @function
sub_40892c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408930

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, word ptr [r15 + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 0xc
	ja	.label_671
	jmp	qword ptr [word ptr [+ (rax * 8) + label_676]]
.label_1733:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_678
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_686
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_686
.label_678:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_675
	mov	rdi, qword ptr [r15 + 0x30]
	call	last_component
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, al
	je	.label_688
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_689
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp], rax
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_692
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_273
	call	quotearg_n_style
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	mov	rcx, r13
	mov	r8, r12
	mov	r9, rbx
	call	error
	jmp	.label_669
.label_1734:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_698
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_674
.label_1735:
	cmp	byte ptr [r12 + 8], 0
	je	.label_677
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_677
	mov	rax, qword ptr [r15 + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_681
.label_677:
	movzx	ebx, word ptr [r15 + 0x70]
	or	ebx, 2
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_668
	movzx	eax, bx
	xor	ecx, ecx
	cmp	eax, 6
	sete	cl
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	excise
.label_1736:
	mov	ebx, dword ptr [r15 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_696
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_674:
	call	error
.label_691:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
	mov	ebp, 4
	jmp	.label_668
.label_686:
	cmp	byte ptr [r12 + 0xa], 0
	mov	eax, 0x27
	mov	ebx, 0x15
	cmovne	ebx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r12
	call	error
	jmp	.label_682
.label_681:
	mov	rdi, r15
	call	mark_ancestor_dirs
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_680
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_668
.label_688:
	mov	rax, qword ptr [r12 + 0x10]
	test	rax, rax
	je	.label_690
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_690
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_690
	mov	rax, qword ptr [r15 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_694
	cmp	byte ptr [rax + 1], 0
	je	.label_695
.label_694:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_697
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_667
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_672
	jmp	.label_673
.label_690:
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_675
	mov	rdi, qword ptr [r15 + 0x30]
	mov	esi, OFFSET FLAT:label_273
	xor	edx, edx
	call	file_name_concat
	mov	rbp, rax
	test	rbp, rbp
	je	.label_679
	lea	rsi, [rsp + 8]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_684
.label_679:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_685
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_691
.label_684:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [r14 + 0x18]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_683
.label_675:
	lea	r9, [rsp + 8]
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_666
	cmp	dword ptr [rsp + 8], 4
	jne	.label_666
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	call	excise
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_666:
	cmp	ebp, 2
	je	.label_668
.label_682:
	mov	rdi, r15
	call	mark_ancestor_dirs
.label_669:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_668:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_683:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_680
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_687
.label_673:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_691
.label_695:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_693
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_699
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_700
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r15 + 0x70]
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_670
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408e48
	.globl sub_408e48
	.type sub_408e48, @function
sub_408e48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e50

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_701
	jmp	readsource
.label_701:
	add	rdi, 0x18
	jmp	readisaac
	.section	.text
	.align	16
	#Procedure 0x408e61
	.globl sub_408e61
	.type sub_408e61, @function
sub_408e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e70

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_703
	.section	.text
	.align	16
	#Procedure 0x408e9f
	.globl sub_408e9f
	.type sub_408e9f, @function
sub_408e9f:

	nop	
.label_702:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_703:
	sub	r13, rbx
	jne	.label_702
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ee5
	.globl sub_408ee5
	.type sub_408ee5, @function
sub_408ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ef0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_704
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_704:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f24
	.globl sub_408f24
	.type sub_408f24, @function
sub_408f24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f30

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_705
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_707
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_705
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_708
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_707
.label_706:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409010
	.globl sub_409010
	.type sub_409010, @function
sub_409010:

	nop	dword ptr [rax + rax]
.label_708:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_706
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_706
	mov	rdi, qword ptr [rsp]
	call	free
.label_705:
	xor	r14d, r14d
.label_707:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409060
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409073
	.globl sub_409073
	.type sub_409073, @function
sub_409073:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409080

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_710:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_710
	xor	ecx, ecx
	nop	
.label_709:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_709
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40939c
	.globl sub_40939c
	.type sub_40939c, @function
sub_40939c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_711
	cmp	ecx, 0x3fff
	jg	.label_724
	cmp	eax, 0x1000
	je	.label_727
	cmp	eax, 0x2000
	jne	.label_715
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_721
	mov	edx, 5
	jmp	dcgettext
.label_711:
	cmp	eax, 0x8000
	je	.label_713
	cmp	eax, 0xa000
	je	.label_718
	cmp	eax, 0xc000
	jne	.label_715
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 5
	jmp	dcgettext
.label_724:
	cmp	eax, 0x4000
	je	.label_717
	cmp	eax, 0x6000
	jne	.label_715
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_723
	mov	edx, 5
	jmp	dcgettext
.label_727:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_716
	mov	edx, 5
	jmp	dcgettext
.label_713:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_725
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_726
	mov	edx, 5
	jmp	dcgettext
.label_718:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_720
	mov	edx, 5
	jmp	dcgettext
.label_717:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_712
	mov	edx, 5
	jmp	dcgettext
.label_715:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_722
	mov	edx, 5
	jmp	dcgettext
.label_725:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_714
	mov	edx, 5
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x409494
	.globl sub_409494
	.type sub_409494, @function
sub_409494:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094a0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	.section	.text
	.align	16
	#Procedure 0x4094ba
	.globl sub_4094ba
	.type sub_4094ba, @function
sub_4094ba:

	nop	word ptr [rax + rax]
.label_728:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	.section	.text
	.align	16
	#Procedure 0x4094ca
	.globl sub_4094ca
	.type sub_4094ca, @function
sub_4094ca:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4094ce

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_728
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_729:
	test	ebp, ebp
	sete	bl
.label_730:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094fc
	.globl sub_4094fc
	.type sub_4094fc, @function
sub_4094fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409500

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_730
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_731
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
	je	.label_729
	xor	ebx, ebx
	jmp	.label_730
.label_731:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_730
.label_734:
	mov	rbx, r14
	jmp	.label_732
	.section	.text
	.align	16
	#Procedure 0x409565

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_732
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_734
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_736
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	rbx, rbx
	jne	.label_735
	mov	edi, ebp
	call	close
	jmp	.label_733
.label_736:
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_733:
	xor	ebx, ebx
.label_735:
	mov	rdi, r14
	call	closedir
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_732:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095eb
	.globl sub_4095eb
	.type sub_4095eb, @function
sub_4095eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095f0
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
	#Procedure 0x4095ff
	.globl sub_4095ff
	.type sub_4095ff, @function
sub_4095ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409600

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_737
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_737
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_744
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_747
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_737
.label_744:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_747
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_758
	test	byte ptr [r14 + 0x48], 4
	jne	.label_758
	mov	esi, OFFSET FLAT:label_692
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_766
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_745
.label_747:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_767
	movzx	eax, ax
	cmp	eax, 4
	je	.label_768
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_769
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_768
.label_769:
	cmp	qword ptr [r14 + 8], 0
	je	.label_774
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_775
	cmp	qword ptr [r14 + 8], 0
	je	.label_774
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_741
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_773
	.section	.text
	.align	16
	#Procedure 0x409737
	.globl sub_409737
	.type sub_409737, @function
sub_409737:

	nop	word ptr [rax + rax]
.label_767:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_748
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_749
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_752
.label_748:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_757
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_767
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_764
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_743
	test	byte ptr [r14 + 0x48], 4
	jne	.label_743
	mov	esi, OFFSET FLAT:label_692
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_770
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_743
.label_755:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_773:
	test	rax, rax
	jne	.label_755
	jmp	.label_741
.label_768:
	test	byte ptr [rbx + 0x72], 2
	je	.label_776
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_776:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_739
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_739:
	mov	word ptr [rbx + 0x70], 6
.label_738:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_737
.label_758:
	mov	r15, rbx
	jmp	.label_745
.label_757:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_750
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_737
.label_749:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_759
	mov	rdi, rbx
	call	free
	jmp	.label_764
.label_750:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_745
.label_775:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_774:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_771
.label_741:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_764
.label_771:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_737
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_738
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_738
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_738
.label_766:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_745
.label_759:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_737
.label_752:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_751
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_753
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_756
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_762
	test	al, 1
	jne	.label_763
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_273
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_746
.label_751:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_737
.label_756:
	mov	rdi, r14
	call	restore_initial_cwd
.label_746:
	test	eax, eax
	je	.label_763
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_763
.label_762:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_740
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_772
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_740
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_740
.label_770:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_743:
	mov	word ptr [r15 + 0x74], 3
.label_764:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_745:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_761
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_765
	cmp	rax, 2
	jne	.label_753
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_760
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_760
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_765
.label_760:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_761
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_765
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_765
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_765:
	mov	ax, word ptr [r15 + 0x70]
.label_761:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_737
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_742
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_742:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_737
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_737
.label_772:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_740:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_763:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_754
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_754
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_754:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_737:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_753:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409ba7
	.globl sub_409ba7
	.type sub_409ba7, @function
sub_409ba7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bb0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bbc
	.globl sub_409bbc
	.type sub_409bbc, @function
sub_409bbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409bc0

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_785
	mov	bpl, 1
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_778
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_789
	xor	r15d, r15d
	jmp	.label_788
.label_785:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_782
	xor	cl, 1
	jne	.label_782
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_782
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_783
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_782
.label_778:
	xor	r15d, r15d
	jmp	.label_788
.label_789:
	cmp	byte ptr [rbx + 0x29], 0
	sete	r15b
	xor	ebp, ebp
.label_788:
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
	test	eax, eax
	js	.label_790
	mov	rdi, qword ptr [rsp]
	call	setfscreatecon
	test	eax, eax
	jns	.label_787
	test	bpl, bpl
	jne	.label_791
	test	r15b, r15b
	je	.label_777
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_777
.label_791:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_784
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_777:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_787
	mov	rdi, qword ptr [rsp]
	call	freecon
	xor	ebx, ebx
	jmp	.label_782
.label_787:
	mov	rdi, qword ptr [rsp]
	call	freecon
	jmp	.label_786
.label_790:
	test	bpl, bpl
	jne	.label_779
	test	r15b, r15b
	je	.label_781
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_781
.label_779:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_780
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
.label_781:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_786
	xor	ebx, ebx
	jmp	.label_782
.label_786:
	mov	bl, 1
.label_782:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d5a
	.globl sub_409d5a
	.type sub_409d5a, @function
sub_409d5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d60

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d73
	.globl sub_409d73
	.type sub_409d73, @function
sub_409d73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d84
	.globl sub_409d84
	.type sub_409d84, @function
sub_409d84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d90

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdi
	mov	ecx, esi
	xor	r15d, r15d
	test	r13, r13
	je	.label_798
	mov	rax,  qword ptr [word ptr [+ (rcx * 8) + comparison_function_table]]
	mov	qword ptr [rsp + 0x30], rax
	dec	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	r14d, r14d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_792
.label_795:
	mov	rdi, rbx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx + rcx], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rdx + rcx + 8], rax
	inc	r12
	add	r14, rbp
	nop	dword ptr [rax]
.label_792:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_800
	cmp	byte ptr [r15 + 0x13], 0x2e
	mov	eax, 0
	jne	.label_803
	xor	eax, eax
	cmp	byte ptr [r15 + 0x14], 0x2e
	sete	al
	inc	rax
.label_803:
	cmp	byte ptr [r15 + rax + 0x13], 0
	je	.label_792
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_799
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r12
	jne	.label_795
	mov	qword ptr [rsp + 8], rax
	mov	edx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_795
.label_799:
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, r14
	cmp	rax, rbp
	mov	rax, qword ptr [rsp + 0x10]
	ja	.label_801
	mov	rcx, rbp
	add	rcx, r14
	mov	qword ptr [rsp + 8], rcx
	jb	.label_804
	mov	edx, 1
	mov	rdi, rax
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rcx
.label_801:
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rax + r14]
	mov	rsi, rbx
	mov	rdx, rbp
	call	memcpy
	add	r14, rbp
	jmp	.label_792
.label_800:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_793
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r15d, r15d
	jmp	.label_798
.label_793:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp]
	ja	.label_802
	test	r12, r12
	je	.label_805
	mov	edx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x30]
	call	qsort
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
	mov	rbx, r13
	nop	dword ptr [rax]
.label_794:
	lea	rbp, [r15 + r14]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r14
	sub	r14, rbp
	add	r14, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_794
	jmp	.label_796
.label_802:
	cmp	qword ptr [rsp + 0x18], r14
	jne	.label_797
	lea	rsi, [r14 + 1]
	mov	rdi, r15
	call	xrealloc
	mov	r15, rax
	jmp	.label_797
.label_805:
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
.label_796:
	mov	rdi, r13
	call	free
.label_797:
	mov	byte ptr [r15 + r14], 0
.label_798:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_804:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409fe8
	.globl sub_409fe8
	.type sub_409fe8, @function
sub_409fe8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ff0
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
	#Procedure 0x409fff
	.globl sub_409fff
	.type sub_409fff, @function
sub_409fff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a000

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a018
	.globl sub_40a018
	.type sub_40a018, @function
sub_40a018:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a020

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_806
	test	rbx, rbx
	je	.label_806
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_808:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_807
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_807
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_808
	jmp	.label_806
.label_807:
	mov	r15, qword ptr [rbx]
.label_806:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a080

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x100
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	test	rdx, rdx
	lea	rax, [rsp + 0x50]
	cmove	rax, rdx
	mov	qword ptr [rsp + 8], rax
	je	.label_809
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_817
.label_809:
	test	r15d, r15d
	jns	.label_831
	test	r14, r14
	jne	.label_831
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebx, 0xffffffff
.label_817:
	mov	eax, ebx
	add	rsp, 0x100
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_831:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_824
	cmp	ebp, 2
	jne	.label_815
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_832
	mov	edi, r15d
	call	fstat
	jmp	.label_823
.label_832:
	mov	rdi, r14
	call	stat
.label_823:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_817
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_833
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_813
.label_833:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_813
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_813:
	inc	ebp
.label_815:
	test	r15d, r15d
	jns	.label_837
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_816
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_818
.label_816:
	je	.label_822
.label_818:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_822
.label_837:
	test	r15d, r15d
	js	.label_824
	mov	rsi, qword ptr [rsp + 8]
	mov	edi, r15d
	call	futimens
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_827
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_825
.label_822:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_817
.label_827:
	je	.label_826
.label_825:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_826
.label_824:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_828
	cmp	ebp, 3
	je	.label_811
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_814
	mov	edi, r15d
	call	fstat
	jmp	.label_820
.label_826:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_817
.label_814:
	mov	rdi, r14
	call	stat
.label_820:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_817
.label_811:
	cmp	qword ptr [rsp + 8], 0
	je	.label_828
	lea	rdi, [rsp + 0x70]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	jne	.label_817
.label_828:
	mov	rax, qword ptr [rsp + 8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_829
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x30], rax
	mov	rsi, qword ptr [rsp + 8]
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsi + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, rcx
	imul	qword ptr [rdx + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x48], rdx
	lea	rbp, [rsp + 0x30]
.label_829:
	test	r15d, r15d
	js	.label_830
	xor	ebx, ebx
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
	test	eax, eax
	je	.label_835
	mov	ebx, 0xffffffff
	test	r14, r14
	je	.label_817
	mov	rdi, r14
	mov	rsi, rbp
	call	utimes
	jmp	.label_836
.label_830:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, rbp
	call	futimesat
.label_836:
	mov	ebx, eax
	jmp	.label_817
.label_835:
	test	rbp, rbp
	je	.label_817
	mov	r12, qword ptr [rbp + 8]
	mov	r14, qword ptr [rbp + 0x18]
	cmp	r12, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_817
	lea	rsi, [rsp + 0x70]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	jne	.label_817
	lea	rcx, [rbp + 0x10]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0xc8]
	sub	rax, qword ptr [rbp]
	sub	rbx, qword ptr [rbp + 0x10]
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	xor	ebp, ebp
	cmp	r12, 0x7a120
	jl	.label_821
	cmp	rax, 1
	jne	.label_821
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime_ns
	xor	ebp, ebp
	test	rax, rax
	jne	.label_821
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], 0
.label_821:
	cmp	r14, 0x7a120
	jl	.label_810
	cmp	rbx, 1
	jne	.label_810
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime_ns
	test	rax, rax
	je	.label_812
.label_810:
	test	rbp, rbp
	jne	.label_834
	jmp	.label_819
.label_812:
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], 0
.label_834:
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
.label_819:
	xor	ebx, ebx
	jmp	.label_817
	.section	.text
	.align	16
	#Procedure 0x40a3fe
	.globl sub_40a3fe
	.type sub_40a3fe, @function
sub_40a3fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a400
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a414
	.globl sub_40a414
	.type sub_40a414, @function
sub_40a414:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a420

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a448
	.globl sub_40a448
	.type sub_40a448, @function
sub_40a448:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a450

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a45c
	.globl sub_40a45c
	.type sub_40a45c, @function
sub_40a45c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a460

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a474
	.globl sub_40a474
	.type sub_40a474, @function
sub_40a474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a480

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_838
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_838:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4a2
	.globl sub_40a4a2
	.type sub_40a4a2, @function
sub_40a4a2:

	nop	word ptr cs:[rax + rax]
.label_840:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_841:
	xor	eax, eax
.label_839:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4c5
	.globl sub_40a4c5
	.type sub_40a4c5, @function
sub_40a4c5:

	nop	
.label_842:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_840
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_839
	.section	.text
	.align	16
	#Procedure 0x40a4e1

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_842
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_841
	.section	.text
	.align	16
	#Procedure 0x40a510

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
	#Procedure 0x40a547
	.globl sub_40a547
	.type sub_40a547, @function
sub_40a547:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a550

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
	je	.label_849
	mov	edx, OFFSET FLAT:label_858
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_845
.label_849:
	mov	edx, OFFSET FLAT:label_847
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_845:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
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
	mov	esi, OFFSET FLAT:label_848
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_853
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_854]]
.label_1845:
	add	rsp, 8
	jmp	.label_846
.label_853:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_861
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
	jmp	.label_846
.label_1846:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
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
.label_1847:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_843
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
.label_1848:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_859
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
.label_1849:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_856
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
	jmp	.label_846
.label_1850:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_855
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
	jmp	.label_846
.label_1851:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_857
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
	jmp	.label_846
.label_1852:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_860
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
	jmp	.label_846
.label_1854:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_844
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
	jmp	.label_846
.label_1853:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_850
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
.label_846:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8a8
	.globl sub_40a8a8
	.type sub_40a8a8, @function
sub_40a8a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8b0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_870
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_867
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_867
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_867:
	test	eax, eax
	sete	r15b
	jmp	.label_871
.label_870:
	xor	r15d, r15d
.label_871:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_873
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_862
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_862
	and	eax, 0x200
	je	.label_862
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_862
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_862:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_864
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_865
.label_864:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_874
	test	rbx, rbx
	je	.label_866
	cmp	byte ptr [rbx], 0x2e
	jne	.label_866
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_866
	cmp	byte ptr [rbx + 2], 0
	jne	.label_866
.label_874:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_869
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_868
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_868
.label_866:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_872
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_863
.label_873:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_865
	and	eax, 0x200
	je	.label_865
	mov	edi, r13d
	call	close
	jmp	.label_865
.label_872:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_865
.label_868:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_869:
	mov	ebp, 0xffffffff
.label_863:
	test	r13d, r13d
	jns	.label_865
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_865:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa36
	.globl sub_40aa36
	.type sub_40aa36, @function
sub_40aa36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa40
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa53
	.globl sub_40aa53
	.type sub_40aa53, @function
sub_40aa53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa60
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa6a
	.globl sub_40aa6a
	.type sub_40aa6a, @function
sub_40aa6a:

	nop	word ptr [rax + rax]
.label_876:
	xor	eax, eax
.label_877:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa74
	.globl sub_40aa74
	.type sub_40aa74, @function
sub_40aa74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa82

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_875
	cmp	eax, 1
	jne	.label_876
.label_875:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_877
	.section	.text
	.align	16
	#Procedure 0x40aaa0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_890
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_880
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_883
	cvtsi2ss	xmm0, rax
	jmp	.label_887
.label_879:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_881:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_880
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_882
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_885
.label_883:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_887:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_879
	cvtsi2ss	xmm1, rcx
	jmp	.label_881
.label_882:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_885:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_888
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_878
.label_888:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_878:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_880
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_889
	mulss	xmm0, dword ptr [rcx + 8]
.label_889:
	movss	xmm1,  dword ptr [dword ptr [rip + label_354]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_880
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_884
	nop	dword ptr [rax + rax]
.label_886:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_886
.label_884:
	mov	qword ptr [r15 + 0x48], 0
.label_880:
	mov	rax, r14
.label_890:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac26
	.globl sub_40ac26
	.type sub_40ac26, @function
sub_40ac26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_891
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_670
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_893
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_892
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x40aca4
	.globl sub_40aca4
	.type sub_40aca4, @function
sub_40aca4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acb0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_894
	nop	dword ptr [rax]
.label_896:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_895
	call	closedir
.label_895:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_896
.label_894:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40acea
	.globl sub_40acea
	.type sub_40acea, @function
sub_40acea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acf0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40acfa
	.globl sub_40acfa
	.type sub_40acfa, @function
sub_40acfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad00

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad3b
	.globl sub_40ad3b
	.type sub_40ad3b, @function
sub_40ad3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40ad4e
	.globl sub_40ad4e
	.type sub_40ad4e, @function
sub_40ad4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40ad50

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
	js	.label_900
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_903
	cmp	r12d, 0x7fffffff
	je	.label_898
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
	jne	.label_901
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_901:
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
.label_903:
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
	jbe	.label_899
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_902
.label_899:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_897
	mov	rdi, r14
	call	free
.label_897:
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
.label_902:
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
.label_900:
	call	abort
.label_898:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40af0d
	.globl sub_40af0d
	.type sub_40af0d, @function
sub_40af0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40af10

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_904
	mov	rax, qword ptr [rcx + 0x10]
.label_904:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x40af40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40af4a
	.globl sub_40af4a
	.type sub_40af4a, @function
sub_40af4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af50
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40af5d
	.globl sub_40af5d
	.type sub_40af5d, @function
sub_40af5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40af60
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
	#Procedure 0x40af70

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	base_len
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_908
	cmp	qword ptr [r12], 0
	jne	.label_905
	test	ebp, ebp
	js	.label_907
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_906
.label_907:
	movzx	eax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	call	pathconf
	cmp	dword ptr [rbp], 1
	sbb	rax, 0
	movzx	ecx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_906:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_905:
	mov	rax, qword ptr [r12]
.label_908:
	cmp	rax, r13
	jae	.label_909
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_909:
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
	#Procedure 0x40b068
	.globl sub_40b068
	.type sub_40b068, @function
sub_40b068:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b070
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_910
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_910:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40b093
	.globl sub_40b093
	.type sub_40b093, @function
sub_40b093:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_911
	test	rax, rax
	je	.label_912
.label_911:
	pop	rbx
	ret	
.label_912:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40b0ba
	.globl sub_40b0ba
	.type sub_40b0ba, @function
sub_40b0ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0c0

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_913
	test	rsi, rsi
	je	.label_916
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_914:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_914
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_916
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	jne	.label_916
	jmp	.label_915
.label_913:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_916:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_915:
	mov	rax, rcx
	ret	
.label_917:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40b136
	.globl sub_40b136
	.type sub_40b136, @function
sub_40b136:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40b138

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_917
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b150

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_918
	pop	rcx
	ret	
.label_918:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40b162
	.globl sub_40b162
	.type sub_40b162, @function
sub_40b162:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b170

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40b17a
	.globl sub_40b17a
	.type sub_40b17a, @function
sub_40b17a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b180
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
	#Procedure 0x40b190

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x40b199
	.globl sub_40b199
	.type sub_40b199, @function
sub_40b199:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b1a0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40b1aa
	.globl sub_40b1aa
	.type sub_40b1aa, @function
sub_40b1aa:

	nop	word ptr [rax + rax]
.label_922:
	mov	bl, byte ptr [rcx + 0x29]
	call	restorecon
	cmp	bl, 0
	jne	.label_920
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	je	.label_919
	jmp	.label_920
	.section	.text
	.align	16
	#Procedure 0x40b1cf
	.globl sub_40b1cf
	.type sub_40b1cf, @function
sub_40b1cf:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b1d6

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_923
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_922
.label_923:
	call	restorecon
.label_919:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_921
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_920:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b230

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b23d
	.globl sub_40b23d
	.type sub_40b23d, @function
sub_40b23d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b240

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
	#Procedure 0x40b257
	.globl sub_40b257
	.type sub_40b257, @function
sub_40b257:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b260
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
	#Procedure 0x40b26d
	.globl sub_40b26d
	.type sub_40b26d, @function
sub_40b26d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b270

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	.section	.text
	.align	16
	#Procedure 0x40b27b
	.globl sub_40b27b
	.type sub_40b27b, @function
sub_40b27b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b280

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b296
	.globl sub_40b296
	.type sub_40b296, @function
sub_40b296:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2a0

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b2c6
	.globl sub_40b2c6
	.type sub_40b2c6, @function
sub_40b2c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2d0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x40b2d9
	.globl sub_40b2d9
	.type sub_40b2d9, @function
sub_40b2d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b2e0

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
	mov	rax,  qword ptr [word ptr [rip + label_924]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_925]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_926]]
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
	#Procedure 0x40b348
	.globl sub_40b348
	.type sub_40b348, @function
sub_40b348:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b350

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebp, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	test	rax, rax
	js	.label_927
	mov	r15b, 1
	test	r12b, r12b
	je	.label_928
	sub	rax, rbx
	mov	edi, ebp
	mov	rsi, rax
	mov	rdx, rbx
	call	punch_hole
	test	eax, eax
	jns	.label_928
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	jmp	.label_929
.label_927:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
.label_929:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_928:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3ec
	.globl sub_40b3ec
	.type sub_40b3ec, @function
sub_40b3ec:

	nop	dword ptr [rax]
.label_931:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_930
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3fb
	.globl sub_40b3fb
	.type sub_40b3fb, @function
sub_40b3fb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b405
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_931
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_931
.label_930:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b420

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xc0
	mov	r14, rdi
	xor	ebp, ebp
	test	rsi, rsi
	lea	rax, [rsp + 0x10]
	cmove	rax, rsi
	mov	qword ptr [rsp + 8], rax
	je	.label_939
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_934
.label_939:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_941
	cmp	ebp, 2
	jne	.label_944
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_934
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_937
	lea	rdi, [rsp + 0x30]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_936
.label_937:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_936
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_936:
	inc	ebp
.label_944:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_942
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_940
.label_942:
	je	.label_933
.label_940:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_933
.label_941:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_935
	cmp	ebp, 3
	je	.label_938
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_934
.label_938:
	cmp	qword ptr [rsp + 8], 0
	je	.label_943
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	je	.label_943
	jmp	.label_934
.label_933:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_934
.label_935:
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_934
.label_943:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x48]
	cmp	eax, 0xa000
	jne	.label_932
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	ebx, 0xffffffff
	jmp	.label_934
.label_932:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebx, eax
.label_934:
	mov	eax, ebx
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5cb
	.globl sub_40b5cb
	.type sub_40b5cb, @function
sub_40b5cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5d0

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
	#Procedure 0x40b5fd
	.globl sub_40b5fd
	.type sub_40b5fd, @function
sub_40b5fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b600

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
	#Procedure 0x40b613
	.globl sub_40b613
	.type sub_40b613, @function
sub_40b613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b620
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_945
	pop	rcx
	ret	
.label_945:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40b634
	.globl sub_40b634
	.type sub_40b634, @function
sub_40b634:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b640

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_946
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_946:
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
	#Procedure 0x40b6a8
	.globl sub_40b6a8
	.type sub_40b6a8, @function
sub_40b6a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6b0

	.globl freecon
	.type freecon, @function
freecon:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b6b1
	.globl sub_40b6b1
	.type sub_40b6b1, @function
sub_40b6b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6c0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	.section	.text
	.align	16
	#Procedure 0x40b6d8
	.globl sub_40b6d8
	.type sub_40b6d8, @function
sub_40b6d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6e0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_950
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_948
.label_950:
	xor	ebp, ebp
.label_949:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_948:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_947
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_947:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_953
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_953:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_951
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_952
.label_951:
	xor	ebp, ebp
.label_952:
	mov	rdi, rbx
	call	free
	jmp	.label_949
	.section	.text
	.align	16
	#Procedure 0x40b81a
	.globl sub_40b81a
	.type sub_40b81a, @function
sub_40b81a:

	nop	word ptr [rax + rax]
.label_954:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	overwrite_ok
	xor	al, 1
.label_955:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b836

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_956
	mov	ecx, dword ptr [rbx + 8]
	mov	al, 1
	cmp	ecx, 2
	je	.label_955
	cmp	ecx, 3
	je	.label_954
	cmp	ecx, 4
	jne	.label_959
	cmp	byte ptr [rbx + 0x2f], 0
	je	.label_959
	mov	esi, dword ptr [r14 + 0x18]
	mov	rdi, r15
	call	writable_destination
	test	al, al
	je	.label_954
.label_959:
	xor	eax, eax
	jmp	.label_955
.label_956:
	mov	edi, OFFSET FLAT:label_957
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 0x6d2
	mov	ecx, OFFSET FLAT:label_958
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40b891
	.globl sub_40b891
	.type sub_40b891, @function
sub_40b891:

	nop	word ptr cs:[rax + rax]
.label_961:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_960
	mov	qword ptr [r14], r14
.label_963:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_960
	.section	.text
	.align	16
	#Procedure 0x40b8c0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_961
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_962
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_960
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_962
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_963
.label_962:
	xor	ebp, ebp
.label_960:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b93b
	.globl sub_40b93b
	.type sub_40b93b, @function
sub_40b93b:

	nop	dword ptr [rax + rax]
.label_966:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_964
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_964:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b974
	.globl sub_40b974
	.type sub_40b974, @function
sub_40b974:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40b976

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
	jne	.label_965
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_965
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_966
.label_965:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x40b9b0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9c4
	.globl sub_40b9c4
	.type sub_40b9c4, @function
sub_40b9c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b9d0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_968
	cmp	rbx, r15
	jne	.label_967
	cmp	byte ptr [rbx + 1], 0
	je	.label_968
.label_967:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_968:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba5a
	.globl sub_40ba5a
	.type sub_40ba5a, @function
sub_40ba5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba60

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_969
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_969:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_970
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_971
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_972
.label_971:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_972:
	mov	ecx, dword ptr [rax]
.label_970:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb1e
	.globl sub_40bb1e
	.type sub_40bb1e, @function
sub_40bb1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40bb20

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	eax, dword ptr [rdi]
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, eax
	call	chmod_or_fchmod
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb35
	.globl sub_40bb35
	.type sub_40bb35, @function
sub_40bb35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb40

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbp, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	call	strlen
	mov	r15, rax
	mov	qword ptr [rsp + 0x10], rbp
	mov	rdi, rbp
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	mov	r13,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, r13
	call	strlen
	mov	r12, rax
	lea	rax, [r12 + rbp]
	cmp	r15, rax
	jne	.label_973
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	jne	.label_973
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	jne	.label_973
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [r12 + rbx + 1]
	call	xmalloc
	mov	rbp, rax
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	call	strcpy
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbp
	call	stat
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	jne	.label_973
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_973
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	al
	jmp	.label_974
.label_973:
	xor	eax, eax
.label_974:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc53
	.globl sub_40bc53
	.type sub_40bc53, @function
sub_40bc53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc60

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40bc6e
	.globl sub_40bc6e
	.type sub_40bc6e, @function
sub_40bc6e:

	nop	
.label_976:
	xor	eax, eax
.label_977:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc74
	.globl sub_40bc74
	.type sub_40bc74, @function
sub_40bc74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc82

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_975
	cmp	eax, 1
	jne	.label_976
.label_975:
	cmp	byte ptr [rbx + 0x1b], 0
	sete	al
	jmp	.label_977
	.section	.text
	.align	16
	#Procedure 0x40bca0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	.section	.text
	.align	16
	#Procedure 0x40bca8
	.globl sub_40bca8
	.type sub_40bca8, @function
sub_40bca8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcb0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcc3
	.globl sub_40bcc3
	.type sub_40bcc3, @function
sub_40bcc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcd0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcde
	.globl sub_40bcde
	.type sub_40bcde, @function
sub_40bcde:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40bce0
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd06
	.globl sub_40bd06
	.type sub_40bd06, @function
sub_40bd06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bd10

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
	mov	rcx,  qword ptr [word ptr [rip + label_924]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_925]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_926]]
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
	#Procedure 0x40bd7d
	.globl sub_40bd7d
	.type sub_40bd7d, @function
sub_40bd7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bd80

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40bd8d
	.globl sub_40bd8d
	.type sub_40bd8d, @function
sub_40bd8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bd90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x40bd97
	.globl sub_40bd97
	.type sub_40bd97, @function
sub_40bd97:

	nop	word ptr [rax + rax]
.label_978:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40bda5
	.globl sub_40bda5
	.type sub_40bda5, @function
sub_40bda5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bdb3

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_978
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdc0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_979
	cmp	rcx, 0x1021994
	je	.label_979
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_979
	mov	al, 1
.label_979:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdeb
	.globl sub_40bdeb
	.type sub_40bdeb, @function
sub_40bdeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bdf0

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rax, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdf5
	.globl sub_40bdf5
	.type sub_40bdf5, @function
sub_40bdf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be00
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
	#Procedure 0x40be19
	.globl sub_40be19
	.type sub_40be19, @function
sub_40be19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40be20

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbp, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15d, edx
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbx, rdi
	movups	xmm0, xmmword ptr [rbp + 0x40]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmm3, xmmword ptr [rbp + 0x30]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	esi, 2
	call	savedir
	test	rax, rax
	je	.label_980
	cmp	dword ptr [rbp + 4], 3
	jne	.label_981
	mov	dword ptr [rsp + 0x34], 2
.label_981:
	cmp	byte ptr [rax], 0
	mov	qword ptr [rsp + 8], rax
	mov	r14b, 1
	je	.label_983
	xor	ebp, ebp
	movzx	ecx, r15b
	mov	dword ptr [rsp + 4], ecx
	mov	r13, rax
	mov	qword ptr [rsp + 0x10], rbx
	nop	word ptr [rax + rax]
.label_982:
	mov	byte ptr [rsp + 2], r14b
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r13
	call	file_name_concat
	mov	r15, rax
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	file_name_concat
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xc0]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rsp + 1], al
	mov	rdi, r15
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r9, [rsp + 0x30]
	push	0
	lea	rax, [rsp + 0xb]
	push	rax
	lea	rax, [rsp + 0x11]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r14d, eax
	and	r14b, byte ptr [rsp + 2]
	movzx	ebx, byte ptr [rsp + 3]
	mov	rax, qword ptr [rsp + 0xc8]
	or	byte ptr [rax], bl
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	test	bl, bl
	jne	.label_984
	or	bpl, byte ptr [rsp + 1]
	mov	rdi, r13
	call	strlen
	cmp	byte ptr [r13 + rax + 1], 0
	lea	r13, [r13 + rax + 1]
	mov	rbx, qword ptr [rsp + 0x10]
	jne	.label_982
	jmp	.label_984
.label_980:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_986
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_985
.label_983:
	xor	ebp, ebp
.label_984:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], bpl
	test	r14b, r14b
	setne	bpl
.label_985:
	mov	eax, ebp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bfe9
	.globl sub_40bfe9
	.type sub_40bfe9, @function
sub_40bfe9:

	nop	dword ptr [rax]
.label_987:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40bff5
	.globl sub_40bff5
	.type sub_40bff5, @function
sub_40bff5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c000

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_987
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c020
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c027
	.globl sub_40c027
	.type sub_40c027, @function
sub_40c027:

	nop	word ptr [rax + rax]
.label_988:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c040
	.globl sub_40c040
	.type sub_40c040, @function
sub_40c040:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c04e

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_988
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c060

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_667
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_989
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_989:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c09d
	.globl sub_40c09d
	.type sub_40c09d, @function
sub_40c09d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c0a0

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	mov	rax, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0a5
	.globl sub_40c0a5
	.type sub_40c0a5, @function
sub_40c0a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c0b0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_995
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1001
	nop	word ptr cs:[rax + rax]
.label_991:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_994
	mov	rbx, qword ptr [rdi + 8]
.label_994:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_991
	jmp	.label_996
.label_1001:
	mov	rbx, rdi
.label_996:
	mov	rdi, rbx
	call	free
.label_995:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_999
	call	fts_lfree
.label_999:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1000
	xor	ebx, ebx
	test	al, 4
	jne	.label_990
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_998
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_998:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_993
	jmp	.label_990
.label_1000:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_990
	call	close
.label_993:
	test	eax, eax
	je	.label_990
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_990:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_997
	call	hash_free
.label_997:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_992
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_992:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1a8
	.globl sub_40c1a8
	.type sub_40c1a8, @function
sub_40c1a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1b0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1c3
	.globl sub_40c1c3
	.type sub_40c1c3, @function
sub_40c1c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1d0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1d9
	.globl sub_40c1d9
	.type sub_40c1d9, @function
sub_40c1d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c1e0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1e3
	.globl sub_40c1e3
	.type sub_40c1e3, @function
sub_40c1e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1f0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1fd
	.globl sub_40c1fd
	.type sub_40c1fd, @function
sub_40c1fd:

	nop	dword ptr [rax]
.label_1002:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c203
	.globl sub_40c203
	.type sub_40c203, @function
sub_40c203:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40c205
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1002
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c220
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
	#Procedure 0x40c253
	.globl sub_40c253
	.type sub_40c253, @function
sub_40c253:

	nop	word ptr cs:[rax + rax]
.label_1003:
	xor	eax, eax
	ret	
.label_1004:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c266
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1004
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1003
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c290

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	byte ptr [rbx], 0
	mov	byte ptr [rbx + 0xa], 1
	mov	byte ptr [rbx + 9], 1
	mov	byte ptr [rbx + 8], 0
	mov	dword ptr [rbx + 4], 5
	mov	word ptr [rbx + 0x19], 0
	mov	byte ptr [rbx + 0x1b], 1
	mov	edi, OFFSET FLAT:rm_option_init.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1005
	mov	byte ptr [rbx + 0x18], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1005:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1006
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_667
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c320

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
	.section	.text
	.align	16
	#Procedure 0x40c337
	.globl sub_40c337
	.type sub_40c337, @function
sub_40c337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c340

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_1007
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_1008]]
.label_1007:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c357
	.globl sub_40c357
	.type sub_40c357, @function
sub_40c357:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c360

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x40c36d
	.globl sub_40c36d
	.type sub_40c36d, @function
sub_40c36d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c370
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1010
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1009
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_1011]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_1012]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_1013]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1014
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1015
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x40c45c
	.globl sub_40c45c
	.type sub_40c45c, @function
sub_40c45c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c460

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	.section	.text
	.align	16
	#Procedure 0x40c46a
	.globl sub_40c46a
	.type sub_40c46a, @function
sub_40c46a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c470

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_1016
	.section	.text
	.align	16
	#Procedure 0x40c476
	.globl sub_40c476
	.type sub_40c476, @function
sub_40c476:

	nop	word ptr cs:[rax + rax]
.label_1018:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c482
	.globl sub_40c482
	.type sub_40c482, @function
sub_40c482:

	nop	word ptr cs:[rax + rax]
.label_1017:
	mov	edi, eax
	call	close
.label_1016:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1018
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1017
	jmp	.label_1016
	.section	.text
	.align	16
	#Procedure 0x40c4b0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_1019
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1024:
	cmp	qword ptr [rsi], 0
	je	.label_1021
	mov	rax, rsi
	nop	dword ptr [rax]
.label_1022:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_1022
	inc	rdx
.label_1021:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_1024
.label_1019:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_1020
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_1023
.label_1020:
	xor	eax, eax
.label_1023:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c509
	.globl sub_40c509
	.type sub_40c509, @function
sub_40c509:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c510
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c517
	.globl sub_40c517
	.type sub_40c517, @function
sub_40c517:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c520

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_1025
	.section	.text
	.align	16
	#Procedure 0x40c52a
	.globl sub_40c52a
	.type sub_40c52a, @function
sub_40c52a:

	nop	word ptr [rax + rax]
.label_1029:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_1030
	nop	word ptr cs:[rax + rax]
.label_1031:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_1028
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_1028:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_1026
	mov	rcx, qword ptr [rsi + 8]
.label_1026:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_1031
.label_1030:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c57d
	.globl sub_40c57d
	.type sub_40c57d, @function
sub_40c57d:

	nop	word ptr [rax + rax]
.label_1027:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1025:
	test	rcx, rcx
	je	.label_1029
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_1027
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1027
	.section	.text
	.align	16
	#Procedure 0x40c5b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1032
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c5e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1033
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1033:
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
	#Procedure 0x40c663
	.globl sub_40c663
	.type sub_40c663, @function
sub_40c663:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c670

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_1035
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_1035
	mov	dword ptr [rsp + 0x14], r12d
	mov	qword ptr [rsp + 0x18], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1034
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x18]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_1039:
	test	r14, r14
	je	.label_1037
	mov	rbx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_1040:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1040
.label_1037:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1036
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_1038
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, qword ptr [rsp + 0x18]
	jbe	.label_1039
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_1041
.label_1035:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_1041:
	mov	r12d, 0xffffffff
.label_1034:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1036:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0x14]
	mov	dword ptr [rax], ecx
.label_1038:
	mov	rbp, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_1034
	.section	.text
	.align	16
	#Procedure 0x40c7ca
	.globl sub_40c7ca
	.type sub_40c7ca, @function
sub_40c7ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7d0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7d9
	.globl sub_40c7d9
	.type sub_40c7d9, @function
sub_40c7d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c7e0

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7e5
	.globl sub_40c7e5
	.type sub_40c7e5, @function
sub_40c7e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7f0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1043
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1042
	mov	dword ptr [r14], ebp
	jmp	.label_1043
.label_1042:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_1043:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c83f
	.globl sub_40c83f
	.type sub_40c83f, @function
sub_40c83f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40c840

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_1044:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_1044
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_1045:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_1045
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x40cbd2
	.globl sub_40cbd2
	.type sub_40cbd2, @function
sub_40cbd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbe0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_1046
	.section	.text
	.align	16
	#Procedure 0x40cbed
	.globl sub_40cbed
	.type sub_40cbed, @function
sub_40cbed:

	nop	dword ptr [rax]
.label_1052:
	add	r14, 0x10
.label_1046:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_1051
	cmp	qword ptr [r14], 0
	je	.label_1052
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_1047
	nop	word ptr cs:[rax + rax]
.label_1049:
	test	cl, 1
	je	.label_1048
	mov	rdi, qword ptr [rbx]
	call	rax
.label_1048:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_1049
.label_1047:
	test	cl, cl
	je	.label_1050
	mov	rdi, qword ptr [r14]
	call	rax
.label_1050:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_1052
.label_1051:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc73
	.globl sub_40cc73
	.type sub_40cc73, @function
sub_40cc73:

	nop	word ptr cs:[rax + rax]
.label_1054:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40cc85
	.globl sub_40cc85
	.type sub_40cc85, @function
sub_40cc85:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cc89

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_1054
	xor	eax, eax
	cmp	r14, rbx
	je	.label_1053
	mov	rdi, rbx
	call	src_to_dest_free
	mov	rax, qword ptr [r14 + 0x10]
.label_1053:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccf0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccfa
	.globl sub_40ccfa
	.type sub_40ccfa, @function
sub_40ccfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd00
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	mov	eax, 0xffffffff
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd06
	.globl sub_40cd06
	.type sub_40cd06, @function
sub_40cd06:

	nop	word ptr cs:[rax + rax]
.label_1057:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1055
.label_1056:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1055
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
.label_1055:
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
	#Procedure 0x40cd58
	.globl sub_40cd58
	.type sub_40cd58, @function
sub_40cd58:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cd5b

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
	je	.label_1057
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1056
	jmp	.label_1055
	.section	.text
	.align	16
	#Procedure 0x40cd90

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd95
	.globl sub_40cd95
	.type sub_40cd95, @function
sub_40cd95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cda0

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
	#Procedure 0x40cdd3
	.globl sub_40cdd3
	.type sub_40cdd3, @function
sub_40cdd3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cde0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1059
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1058
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1059:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce38
	.globl sub_40ce38
	.type sub_40ce38, @function
sub_40ce38:

	nop	dword ptr [rax + rax]
.label_1061:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_1062:
	xor	eax, eax
.label_1060:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce6c
	.globl sub_40ce6c
	.type sub_40ce6c, @function
sub_40ce6c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ce6f

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1062
	test	ah, 2
	jne	.label_1061
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1060
	.section	.text
	.align	16
	#Procedure 0x40ce90

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	jne	.label_1067
	mov	al, 1
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1064
	mov	rax, qword ptr [rbx + 8]
.label_1067:
	cmp	rax, 0x3fffffff
	jne	.label_1063
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1063
	mov	qword ptr [rsi], 0
	jmp	.label_1066
.label_1068:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1066:
	xor	eax, eax
.label_1064:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ceeb
	.globl sub_40ceeb
	.type sub_40ceeb, @function
sub_40ceeb:

	nop	
.label_1069:
	mov	rdi, rbx
	call	gettime
.label_1065:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, 0x3fffffff
	je	.label_1068
	cmp	rax, 0x3ffffffe
	jne	.label_1066
	mov	rdi, r14
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
	jmp	.label_1066
.label_1063:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3fffffff
	je	.label_1069
	cmp	rax, 0x3ffffffe
	jne	.label_1065
	mov	rdi, r14
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1065
	.section	.text
	.align	16
	#Procedure 0x40cf40
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf53
	.globl sub_40cf53
	.type sub_40cf53, @function
sub_40cf53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf60
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_1070
	xor	ebx, ebx
.label_1072:
	cmp	qword ptr [r13], 0
	je	.label_1071
	test	r13, r13
	je	.label_1071
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_1073:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_1070
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_1073
.label_1071:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_1072
.label_1070:
	mov	rax, rbx
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
	#Procedure 0x40cfd7
	.globl sub_40cfd7
	.type sub_40cfd7, @function
sub_40cfd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cfe0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfe8
	.globl sub_40cfe8
	.type sub_40cfe8, @function
sub_40cfe8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cff0

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1074
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_1074:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d07a
	.globl sub_40d07a
	.type sub_40d07a, @function
sub_40d07a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d080
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d088
	.globl sub_40d088
	.type sub_40d088, @function
sub_40d088:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d090
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d0a3
	.globl sub_40d0a3
	.type sub_40d0a3, @function
sub_40d0a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d0b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_35
	call	setlocale
	mov	edi, OFFSET FLAT:label_1120
	mov	esi, OFFSET FLAT:label_1121
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1120
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 0x18]
	call	cp_option_init
	call	priv_set_remove_linkdir
	xor	r13d, r13d
	mov	r14d, 0xf000
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	xor	ecx, ecx
	jmp	.label_1077
.label_1101:
	mov	cl, r15b
.label_1077:
	mov	r15d, ecx
	mov	edx, OFFSET FLAT:label_1085
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x52
	jle	.label_1095
	add	eax, -0x53
	cmp	eax, 0x2d
	ja	.label_1090
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1096]]
.label_1812:
	mov	r13b, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1101
.label_1813:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	r13b, 1
	mov	cl, r15b
	jmp	.label_1077
.label_1814:
	mov	dword ptr [rsp + 0x20], 1
	mov	cl, r15b
	jmp	.label_1077
.label_1815:
	mov	dword ptr [rsp + 0x20], 3
	mov	cl, r15b
	jmp	.label_1077
.label_1817:
	test	r12, r12
	jne	.label_1113
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x68]
	call	stat
	test	eax, eax
	jne	.label_1117
	mov	eax, dword ptr [rsp + 0x80]
	and	eax, r14d
	cmp	eax, 0x4000
	jne	.label_1118
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	cl, r15b
	jmp	.label_1077
.label_1818:
	mov	byte ptr [rsp + 0x45], 1
	mov	cl, r15b
	jmp	.label_1077
.label_1819:
	mov	byte ptr [rsp + 0x46], 1
	mov	cl, r15b
	jmp	.label_1077
.label_1820:
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	mov	cl, r15b
	jmp	.label_1077
.label_1816:
	mov	dword ptr [rsp + 0x20], 2
	mov	cl, r15b
	jmp	.label_1077
.label_1095:
	cmp	eax, -1
	jne	.label_1087
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	rbp, ebp
	sub	rbp, rax
	lea	r14, [rbx + rax*8]
	xor	eax, eax
	test	r12, r12
	sete	al
	cmp	ebp, eax
	jle	.label_1091
	test	r15b, r15b
	je	.label_1089
	test	r12, r12
	jne	.label_1100
	xor	r12d, r12d
	cmp	ebp, 3
	jl	.label_1078
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1104
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_1089:
	test	r12, r12
	jne	.label_1078
	cmp	ebp, 1
	jle	.label_1114
	cmp	ebp, 2
	jne	.label_1115
	mov	rsi, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_1103
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_1103:
	mov	dword ptr [rsp + 0x4c], ecx
.label_1115:
	cmp	dword ptr [rsp + 0x4c], 0
	je	.label_1076
	mov	rdi, qword ptr [r14 + rbp*8 - 8]
	call	target_directory_operand
	test	al, al
	je	.label_1076
	mov	dword ptr [rsp + 0x4c], 0xffffffff
	mov	r12, qword ptr [r14 + rbp*8 - 8]
	dec	rbp
	jmp	.label_1078
.label_1076:
	cmp	ebp, 3
	jge	.label_1083
.label_1078:
	cmp	dword ptr [rsp + 0x20], 2
	jne	.label_1084
	mov	byte ptr [rsp + 0x45], 0
.label_1084:
	test	r13b, r13b
	je	.label_1086
	cmp	dword ptr [rsp + 0x20], 2
	je	.label_1088
.label_1086:
	xor	eax, eax
	test	r13b, r13b
	je	.label_1092
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1094
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	xget_version
.label_1092:
	mov	dword ptr [rsp + 0x18], eax
	mov	rdi, qword ptr [rsp + 0x10]
	call	set_simple_backup_suffix
	call	hash_init
	test	r12, r12
	je	.label_1105
	cmp	ebp, 2
	jl	.label_1106
	lea	rdi, [rsp + 0x18]
	call	dest_info_init
	jmp	.label_1107
.label_1105:
	mov	byte ptr [rsp + 0x49], 1
	mov	rdi, qword ptr [r14]
	mov	rsi, qword ptr [r14 + 8]
	lea	rcx, [rsp + 0x18]
	xor	edx, edx
	call	movefile
	mov	ebx, eax
	jmp	.label_1112
.label_1106:
	mov	bl, 1
	cmp	ebp, 1
	jne	.label_1112
.label_1107:
	mov	ebp, ebp
	mov	bl, 1
	lea	r15, [rsp + 0x18]
	nop	dword ptr [rax]
.label_1119:
	cmp	rbp, 1
	sete	byte ptr [rsp + 0x49]
	mov	rdi, qword ptr [r14]
	mov	edx, 1
	mov	rsi, r12
	mov	rcx, r15
	call	movefile
	and	bl, al
	add	r14, 8
	dec	rbp
	test	ebp, ebp
	jne	.label_1119
.label_1112:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1087:
	cmp	eax, 0xffffff7d
	je	.label_1075
	cmp	eax, 0xffffff7e
	jne	.label_1090
	xor	edi, edi
	call	usage
.label_1075:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_31
	mov	edx, OFFSET FLAT:label_29
	mov	r8d, OFFSET FLAT:label_1080
	mov	r9d, OFFSET FLAT:label_1081
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_1082
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_1090:
	mov	edi, 1
	call	usage
.label_1113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1097
	jmp	.label_1098
.label_1117:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_1118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1099
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
.label_1116:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_1091:
	xor	edi, edi
	test	ebp, ebp
	jg	.label_1122
	mov	esi, OFFSET FLAT:label_1108
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
.label_1088:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1079
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
.label_1100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1093
.label_1098:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_1122:
	mov	esi, OFFSET FLAT:label_1102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_1114:
	mov	edi, OFFSET FLAT:label_1109
	mov	esi, OFFSET FLAT:label_1110
	mov	edx, 0x1c9
	mov	ecx, OFFSET FLAT:label_1111
	call	__assert_fail
.label_1083:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1099
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rsi, qword ptr [r14 + rax*8 - 8]
	jmp	.label_1116
	.section	.text
	.align	16
	#Procedure 0x40d5dc
	.globl sub_40d5dc
	.type sub_40d5dc, @function
sub_40d5dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5e0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1123
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1125
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1125:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d626
	.globl sub_40d626
	.type sub_40d626, @function
sub_40d626:

	nop	word ptr cs:[rax + rax]
.label_1123:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1124
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1124
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1125
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1124
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1124
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_1124:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d680
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d694
	.globl sub_40d694
	.type sub_40d694, @function
sub_40d694:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6a0

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1126
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1130]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1126:
	mov	edi, OFFSET FLAT:label_1127
	mov	esi, OFFSET FLAT:label_1128
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1129
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40d6da
	.globl sub_40d6da
	.type sub_40d6da, @function
sub_40d6da:

	nop	word ptr [rax + rax]
.label_1131:
	mov	eax, 0x20000
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6e6
	.globl sub_40d6e6
	.type sub_40d6e6, @function
sub_40d6e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6f5

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_1131
	or	al, dl
	jne	.label_1131
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d740
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_1132
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_1133
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1136
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1133
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_1133
.label_1132:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1133
.label_1136:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_1138
	call	fts_lfree
.label_1138:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_1140
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_1140:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_1135
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_1135
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1135
	mov	esi, OFFSET FLAT:label_692
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1139
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_1141
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1137
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1133
.label_1135:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_1133:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1139:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_1133
.label_1141:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_1134
.label_1137:
	mov	edi, ebp
	call	close
.label_1134:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_1133
	.section	.text
	.align	16
	#Procedure 0x40d872
	.globl sub_40d872
	.type sub_40d872, @function
sub_40d872:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d880

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d894
	.globl sub_40d894
	.type sub_40d894, @function
sub_40d894:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d8a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40d8aa
	.globl sub_40d8aa
	.type sub_40d8aa, @function
sub_40d8aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d8b0

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x8000
	jne	.label_1142
	mov	rax, qword ptr [rdi + 0x30]
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x37
	add	rcx, rax
	sar	rcx, 9
	cmp	qword ptr [rdi + 0x40], rcx
	setl	al
	ret	
.label_1142:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8e0

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8ef
	.globl sub_40d8ef
	.type sub_40d8ef, @function
sub_40d8ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40d8f0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x40d8f5
	.globl sub_40d8f5
	.type sub_40d8f5, @function
sub_40d8f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d900

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_1143
	cmp	rsi, r13
	je	.label_1146
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_1148
.label_1146:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_1143
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_1144
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_1147
.label_1145:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_1143
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_1147:
	mov	rdi, r14
	call	free_entry
.label_1143:
	mov	rax, r15
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
	#Procedure 0x40d987
	.globl sub_40d987
	.type sub_40d987, @function
sub_40d987:

	nop	word ptr [rax + rax]
.label_1148:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_1143
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_1149:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_1145
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1145
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_1149
	jmp	.label_1143
.label_1144:
	mov	qword ptr [rbx], 0
	jmp	.label_1143
	.section	.text
	.align	16
	#Procedure 0x40d9d0

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
	je	.label_1150
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1152:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_1150
	test	rax, rax
	je	.label_1151
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_1152
	jmp	.label_1150
.label_1151:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_1150:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da2e
	.globl sub_40da2e
	.type sub_40da2e, @function
sub_40da2e:

	nop	
.label_1153:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da33
	.globl sub_40da33
	.type sub_40da33, @function
sub_40da33:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da3b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1153
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da50

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x198
	mov	qword ptr [rsp + 0x28], r9
	mov	r14d, r8d
	mov	r13d, ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rax + 0x18]
	mov	dword ptr [rsp + 0x44], eax
	mov	al, byte ptr [r12 + 0x23]
	mov	byte ptr [rsp + 0x18], al
	xor	esi, esi
	cmp	dword ptr [r12 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1175
	mov	qword ptr [rsp + 0x30], r15
	lea	rsi, [rsp + 0x108]
	mov	edi, ebx
	call	fstat
	test	eax, eax
	mov	dword ptr [rsp + 0x14], ebx
	je	.label_1181
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1167
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_1189
.label_1175:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1190
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_1180
.label_1181:
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x110]
	jne	.label_1196
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x108]
	jne	.label_1196
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_1168
	mov	dword ptr [rsp + 0x38], r13d
	cmp	byte ptr [r12 + 0x23], 0
	mov	eax, 0x201
	mov	esi, 1
	cmovne	esi, eax
	xor	eax, eax
	mov	qword ptr [rsp], rbp
	mov	rdi, rbp
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 0x10], eax
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_1212
	test	r15d, r15d
	jns	.label_1164
	jmp	.label_1207
.label_1196:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1208
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
.label_1171:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_1188:
	mov	rdx, rbx
.label_1189:
	call	error
	xor	ebp, ebp
.label_1195:
	mov	edi, dword ptr [rsp + 0x14]
	call	close
	test	eax, eax
	jns	.label_1154
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1155
	mov	edx, 5
	call	dcgettext
	mov	rbx, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	rbp, rbx
	call	error
.label_1154:
	mov	rdi, rbp
	call	free
	and	r13b, 1
.label_1180:
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1212:
	test	r15d, r15d
	js	.label_1170
	mov	al, byte ptr [r12 + 0x25]
	test	al, al
	je	.label_1170
.label_1164:
	movzx	esi, byte ptr [r12 + 0x25]
	xor	ebp, ebp
	xor	edx, edx
	mov	rdi, qword ptr [rsp]
	mov	rcx, r12
	call	set_file_security_ctx
	xor	r13d, r13d
	cmp	byte ptr [r12 + 0x26], 0
	jne	.label_1159
.label_1170:
	test	r15d, r15d
	jns	.label_1177
.label_1207:
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_1177
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	call	unlink
	test	eax, eax
	je	.label_1184
	mov	r14d, dword ptr [rbx]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	jmp	.label_1185
.label_1184:
	cmp	byte ptr [r12 + 0x2e], 0
	je	.label_1186
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
.label_1186:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_1193
	mov	ecx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp]
	mov	r8, r12
	call	set_process_security_ctx
	xor	r13d, r13d
	test	al, al
	mov	ebp, 0
	je	.label_1195
.label_1177:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rsp + 0x10]
	jne	.label_1168
	jmp	.label_1201
.label_1193:
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
.label_1168:
	mov	rdi, rbp
	mov	eax, r13d
	mov	edx, r14d
	not	edx
	and	edx, eax
	mov	esi, 0xc1
	xor	eax, eax
	mov	dword ptr [rsp], edx
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ebx, dword ptr [rax]
	test	r15d, r15d
	mov	dword ptr [rsp + 0xc], r15d
	jns	.label_1205
	cmp	ebx, 0x11
	jne	.label_1205
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_1205
	lea	rsi, [rsp + 0x78]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_1211
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_1205
.label_1211:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x90]
	cmp	eax, 0xa000
	mov	r15d, dword ptr [rsp + 0xc]
	jne	.label_1205
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_1215
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, rbp
	mov	edx, dword ptr [rsp]
	call	open_safer
	mov	r15d, eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rax]
.label_1205:
	cmp	ebx, 0x15
	jne	.label_1156
	test	r15d, r15d
	jns	.label_1156
	cmp	byte ptr [rbp], 0
	je	.label_1156
	mov	rdi, rbp
	call	strlen
	cmp	byte ptr [rbp + rax - 1], 0x2f
	mov	eax, 0x14
	cmove	ebx, eax
.label_1156:
	mov	ecx, r14d
.label_1201:
	test	r15d, r15d
	js	.label_1161
	mov	dword ptr [rsp + 0x10], ecx
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsp + 0x78]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_1165
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1167
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_1159
.label_1161:
	cmp	ebx, 2
	jne	.label_1176
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_1176
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_1179
.label_1176:
	xor	r13d, r13d
	xor	edi, edi
	mov	r14d, ebx
	mov	esi, OFFSET FLAT:label_1182
.label_1185:
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
	jmp	.label_1188
.label_1165:
	mov	dword ptr [rsp + 0x38], r13d
	mov	r13b, 1
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0x18], 0
	je	.label_1178
	cmp	dword ptr [r12 + 0x38], 0
	je	.label_1191
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0x14]
	call	clone_file
	xor	ebp, ebp
	test	eax, eax
	je	.label_1178
	cmp	dword ptr [r12 + 0x38], 2
	jne	.label_1191
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x28], eax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1198
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x28]
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_1159
.label_1191:
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0x48], rax
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x108]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0xb0]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rsp + 0x70], rdx
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 0x14]
	call	fdadvise
	lea	rdi, [rsp + 0x108]
	call	is_probably_sparse
	mov	r13d, 0xf000
	mov	ecx, dword ptr [rsp + 0x90]
	and	ecx, r13d
	cmp	ecx, 0x8000
	mov	dword ptr [rsp + 0xc], r15d
	mov	byte ptr [rsp + 0x26], al
	jne	.label_1187
	mov	ecx, dword ptr [r12 + 0xc]
	cmp	ecx, 2
	sete	dl
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rsp + 0x40], ecx
	je	.label_1163
	and	dl, al
	jne	.label_1163
.label_1187:
	movabs	rbp, 0x7fffffffffffffff
	sub	rbp, qword ptr [rsp + 0x48]
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x198]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, rbp
	call	buffer_lcm
	mov	rcx, rax
	and	r13d, dword ptr [rsp + 0x120]
	cmp	r13d, 0x8000
	jne	.label_1214
	mov	rax, qword ptr [rsp + 0x138]
	cmp	rax, r14
	lea	rax, [rax + 1]
	cmovb	r14, rax
.label_1214:
	lea	r14, [rcx + r14 - 1]
	xor	edx, edx
	mov	rax, r14
	div	rcx
	sub	r14, rdx
	lea	rax, [r14 - 1]
	cmp	rax, rbp
	cmovae	r14, rcx
	mov	dword ptr [rsp + 0x40], 0
.label_1163:
	mov	r13, qword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rbx]
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	ptr_align
	cmp	byte ptr [rsp + 0x26], 0
	mov	edi, ebp
	mov	ebx, dword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 0x70]
	je	.label_1172
	mov	r11d, 1
	mov	r9, qword ptr [rsp + 0x138]
	test	bl, bl
	je	.label_1194
	mov	r11d, dword ptr [r12 + 0xc]
.label_1194:
	lea	r10, [rsp + 0x50]
	mov	esi, dword ptr [rsp + 0xc]
	mov	qword ptr [rsp + 0x48], rax
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	r10
	mov	r15, r13
	push	r13
	push	qword ptr [rsp + 0x40]
	push	r11
	call	extent_copy
	add	rsp, 0x20
	test	al, al
	je	.label_1200
	mov	r13b, 1
	mov	ecx, 5
	jmp	.label_1202
.label_1179:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	mov	r14d, ecx
	jmp	.label_1168
.label_1200:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1204
	mov	r13, r15
	mov	rax, qword ptr [rsp + 0x48]
	mov	edi, dword ptr [rsp + 0x14]
.label_1172:
	xor	ecx, ecx
	test	bl, bl
	cmove	rbp, rcx
	xor	r9d, r9d
	cmp	dword ptr [r12 + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rbx, [rsp + 0x2f]
	lea	r10, [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	rbx
	push	r10
	push	-1
	push	r13
	push	qword ptr [rsp + 0x58]
	call	sparse_copy
	add	rsp, 0x30
	mov	ecx, 3
	test	al, al
	je	.label_1213
	mov	r13b, 1
	cmp	byte ptr [rsp + 0x27], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1216
	mov	rsi, qword ptr [rsp + 0x50]
	mov	r15d, dword ptr [rsp + 0xc]
	mov	edi, r15d
	call	ftruncate
	test	eax, eax
	mov	ecx, 0
	jns	.label_1158
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	mov	ecx, 3
	jmp	.label_1158
.label_1215:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1169
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	jmp	.label_1171
.label_1216:
	xor	ecx, ecx
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_1158
.label_1204:
	mov	ecx, 3
.label_1213:
	xor	r13d, r13d
.label_1202:
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x18]
.label_1158:
	cmp	ecx, 5
	je	.label_1178
	cmp	ecx, 3
	je	.label_1159
	test	ecx, ecx
	jne	.label_1180
.label_1178:
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [r12 + 0x1f], 0
	je	.label_1183
	mov	rbp, qword ptr [rsp + 0x1d0]
	mov	rdi, rbp
	call	get_stat_atime
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rdx
	mov	rdi, rbp
	call	get_stat_mtime
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [rsp + 0x50]
	mov	edi, r15d
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	call	fdutimens
	test	eax, eax
	je	.label_1183
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1192
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	jne	.label_1209
.label_1183:
	cmp	byte ptr [r12 + 0x1d], 0
	je	.label_1197
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rcx + 0x1c]
	cmp	eax, dword ptr [rsp + 0x94]
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_1199
	mov	eax, dword ptr [rcx + 0x20]
	cmp	eax, dword ptr [rsp + 0x98]
	je	.label_1203
.label_1199:
	mov	rax, qword ptr [rsp + 0x28]
	movzx	r8d, byte ptr [rax]
	lea	r9, [rsp + 0x78]
	mov	rdi, r12
	mov	rsi, qword ptr [rsp]
	mov	edx, r15d
	call	set_owner
	cmp	eax, -1
	je	.label_1209
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x10]
	jne	.label_1206
	and	dword ptr [rsp + 0x44], 0xfffff1ff
	jmp	.label_1206
.label_1209:
	xor	r13d, r13d
	jmp	.label_1162
.label_1197:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1203:
	mov	ecx, dword ptr [rsp + 0x10]
.label_1206:
	cmp	byte ptr [r12 + 0x27], 0
	je	.label_1210
	cmp	byte ptr [rsp + 0x90], 0
	js	.label_1210
	call	geteuid
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_1210
	mov	edx, 0x180
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_1210
	mov	edx, ecx
	not	edx
	and	edx, dword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
.label_1210:
	cmp	byte ptr [r12 + 0x1e], 0
	jne	.label_1157
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_1160
.label_1157:
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp]
	mov	ecx, r15d
	mov	r8d, dword ptr [rsp + 0x44]
	call	copy_acl
	test	eax, eax
	je	.label_1162
	cmp	byte ptr [r12 + 0x24], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1159
	xor	r13d, r13d
	jmp	.label_1159
.label_1160:
	cmp	byte ptr [r12 + 0x2b], 0
	je	.label_1166
	mov	edx, dword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	call	set_acl
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1159
	xor	r13d, r13d
	jmp	.label_1159
.label_1166:
	cmp	byte ptr [r12 + 0x20], 0
	je	.label_1173
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	je	.label_1173
	call	cached_umask
	not	eax
	and	eax, 0x1b6
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	mov	edx, eax
	call	set_acl
	test	eax, eax
	je	.label_1162
	xor	r13d, r13d
	jmp	.label_1162
.label_1173:
	test	ecx, ecx
	mov	ebp, ecx
	je	.label_1162
	call	cached_umask
	not	eax
	test	ebp, eax
	je	.label_1162
	mov	ebp, r15d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	mov	edx, dword ptr [rsp + 0x38]
	call	fchmod_or_lchmod
	test	eax, eax
	je	.label_1174
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_1174
	xor	r13d, r13d
.label_1174:
	mov	r15d, ebp
.label_1162:
	mov	rbp, qword ptr [rsp + 0x18]
.label_1159:
	mov	edi, r15d
	call	close
	test	eax, eax
	jns	.label_1195
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1155
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_1195
	.section	.text
	.align	16
	#Procedure 0x40e58e
	.globl sub_40e58e
	.type sub_40e58e, @function
sub_40e58e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40e590
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e594
	.globl sub_40e594
	.type sub_40e594, @function
sub_40e594:

	nop	word ptr cs:[rax + rax]
.label_1218:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5a3
	.globl sub_40e5a3
	.type sub_40e5a3, @function
sub_40e5a3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e5a8

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1217
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1218
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_1217:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5d0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40e5da
	.globl sub_40e5da
	.type sub_40e5da, @function
sub_40e5da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e5e0

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
	je	.label_1219
	mov	qword ptr [rax], rbx
.label_1219:
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
	#Procedure 0x40e6cc
	.globl sub_40e6cc
	.type sub_40e6cc, @function
sub_40e6cc:

	nop	dword ptr [rax]
.label_1221:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e6d3

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_1220
	dec	rcx
	mov	rsi, rdi
.label_1222:
	cmp	byte ptr [rsi], 0
	jne	.label_1221
	test	rcx, rcx
	je	.label_1220
	inc	rsi
	mov	edx, ecx
	dec	rcx
	test	dl, 0xf
	jne	.label_1222
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_1220:
	ret	
.label_1223:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e71a
	.globl sub_40e71a
	.type sub_40e71a, @function
sub_40e71a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e720

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1223
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
	.section	.text
	.align	16
	#Procedure 0x40e750

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
.label_1333:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1336
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1228]]
.label_1864:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_1233
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_1242
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1865:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1251
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1251
	xor	r14d, r14d
.label_1267:
	cmp	r14, r11
	jae	.label_1261
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1261:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1267
.label_1251:
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
	jmp	.label_1225
.label_1857:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1225
.label_1860:
	mov	al, 1
.label_1858:
	mov	r12b, 1
.label_1861:
	test	r12b, 1
	mov	cl, 1
	je	.label_1285
	mov	ecx, eax
.label_1285:
	mov	al, cl
.label_1859:
	test	r12b, 1
	jne	.label_1288
	test	r11, r11
	je	.label_1290
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1290:
	mov	r14d, 1
	jmp	.label_1294
.label_1288:
	xor	r14d, r14d
.label_1294:
	mov	ecx, OFFSET FLAT:label_1242
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1225
.label_1862:
	test	r12b, 1
	jne	.label_1301
	test	r11, r11
	je	.label_1231
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1231:
	mov	r14d, 1
	jmp	.label_1303
.label_1863:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1305
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_1225
.label_1301:
	xor	r14d, r14d
.label_1303:
	mov	eax, OFFSET FLAT:label_1305
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1225:
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
	jmp	.label_1318
	.section	.text
	.align	16
	#Procedure 0x40ea2c
	.globl sub_40ea2c
	.type sub_40ea2c, @function
sub_40ea2c:

	nop	dword ptr [rax]
.label_1262:
	inc	rsi
.label_1318:
	cmp	rbp, -1
	je	.label_1241
	cmp	rsi, rbp
	jne	.label_1244
	jmp	.label_1246
	.section	.text
	.align	16
	#Procedure 0x40ea43
	.globl sub_40ea43
	.type sub_40ea43, @function
sub_40ea43:

	nop	word ptr cs:[rax + rax]
.label_1241:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1246
.label_1244:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1254
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1256
	cmp	rbp, -1
	jne	.label_1256
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
.label_1256:
	cmp	rbx, rbp
	jbe	.label_1270
.label_1254:
	xor	r8d, r8d
.label_1248:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1271
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_1277]]
.label_1893:
	test	rsi, rsi
	jne	.label_1265
	jmp	.label_1281
	.section	.text
	.align	16
	#Procedure 0x40eade
	.globl sub_40eade
	.type sub_40eade, @function
sub_40eade:

	nop	
.label_1270:
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
	jne	.label_1292
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1248
	jmp	.label_1232
.label_1292:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1248
.label_1897:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1239
	test	rsi, rsi
	jne	.label_1309
	cmp	rbp, 1
	je	.label_1281
	xor	r13d, r13d
	jmp	.label_1247
.label_1886:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_1314
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1263
	cmp	r12d, 2
	jne	.label_1317
	mov	eax, r9d
	and	al, 1
	jne	.label_1317
	cmp	r14, r11
	jae	.label_1319
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1319:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1323
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1323:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1327
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1327:
	add	r14, 3
	mov	r9b, 1
.label_1317:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1326
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1326:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1226
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1226
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1226
	cmp	r14, r11
	jae	.label_1278
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1278:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1307
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1307:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1247
.label_1887:
	mov	bl, 0x62
	jmp	.label_1249
.label_1888:
	mov	cl, 0x74
	jmp	.label_1253
.label_1889:
	mov	bl, 0x76
	jmp	.label_1249
.label_1890:
	mov	bl, 0x66
	jmp	.label_1249
.label_1891:
	mov	cl, 0x72
	jmp	.label_1253
.label_1894:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1260
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1263
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
	jae	.label_1268
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1268:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1279
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1279:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1282
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1282:
	add	r14, 3
	xor	r9d, r9d
.label_1260:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1247
.label_1895:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1291
	cmp	r12d, 2
	jne	.label_1265
	cmp	byte ptr [rsp + 7], 0
	je	.label_1265
	jmp	.label_1263
.label_1896:
	cmp	r12d, 2
	jne	.label_1299
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1263
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1250
.label_1271:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_1320
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
.label_1258:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_1316
	test	r8b, r8b
	je	.label_1316
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_1247
.label_1239:
	test	rsi, rsi
	jne	.label_1259
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1259
.label_1281:
	mov	dl, 1
.label_1892:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1263
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_1247:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1229
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1230
	jmp	.label_1235
	.section	.text
	.align	16
	#Procedure 0x40ee24
	.globl sub_40ee24
	.type sub_40ee24, @function
sub_40ee24:

	nop	word ptr cs:[rax + rax]
.label_1229:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1235
.label_1230:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1243
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1250
	jmp	.label_1257
	.section	.text
	.align	16
	#Procedure 0x40ee6d
	.globl sub_40ee6d
	.type sub_40ee6d, @function
sub_40ee6d:

	nop	dword ptr [rax]
.label_1235:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1257
	jmp	.label_1250
.label_1243:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1257
.label_1314:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1262
	xor	r15d, r15d
	jmp	.label_1265
.label_1299:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_1253
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1250
.label_1253:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1263
.label_1249:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_1247
	nop	word ptr cs:[rax + rax]
.label_1257:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1263
	cmp	r12d, 2
	jne	.label_1286
	mov	eax, r9d
	and	al, 1
	jne	.label_1286
	cmp	r14, r11
	jae	.label_1289
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1289:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1238
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1238:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1296
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1296:
	add	r14, 3
	mov	r9b, 1
.label_1286:
	cmp	r14, r11
	jae	.label_1300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1300:
	inc	r14
	jmp	.label_1315
.label_1320:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1304
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1304:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_1298:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1321
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1325
	cmp	rbp, -2
	je	.label_1280
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1330
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1338:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1308
	bt	rsi, rdx
	jb	.label_1232
.label_1308:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1338
.label_1330:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1245
	xor	r13d, r13d
.label_1245:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_1298
	jmp	.label_1258
.label_1226:
	xor	r13d, r13d
	jmp	.label_1247
.label_1259:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1247
.label_1291:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1265
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1265
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1265
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1272
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1334
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1263
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_1283
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1283:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1236
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1236:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1293
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1293:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1295
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_1295:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_1247
.label_1265:
	xor	eax, eax
.label_1309:
	xor	r13d, r13d
	jmp	.label_1247
.label_1316:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1302
	.section	.text
	.align	16
	#Procedure 0x40f153
	.globl sub_40f153
	.type sub_40f153, @function
sub_40f153:

	nop	word ptr cs:[rax + rax]
.label_1266:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1302:
	test	r8b, r8b
	je	.label_1310
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_1311
	cmp	r14, r11
	jae	.label_1312
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1312:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_1311
	.section	.text
	.align	16
	#Procedure 0x40f19c
	.globl sub_40f19c
	.type sub_40f19c, @function
sub_40f19c:

	nop	dword ptr [rax]
.label_1310:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1232
	cmp	r12d, 2
	jne	.label_1237
	mov	eax, r9d
	and	al, 1
	jne	.label_1237
	cmp	r14, r11
	jae	.label_1324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1324:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1276
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1276:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1331
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1331:
	add	r14, 3
	mov	r9b, 1
.label_1237:
	cmp	r14, r11
	jae	.label_1335
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1335:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1322
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1322:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1269
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1269:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1311:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_1250
	test	r9b, 1
	je	.label_1252
	mov	ebx, eax
	and	bl, 1
	jne	.label_1252
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1255
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1255:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1274
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1274:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1252:
	cmp	r14, r11
	jae	.label_1266
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1266
	.section	.text
	.align	16
	#Procedure 0x40f2a3
	.globl sub_40f2a3
	.type sub_40f2a3, @function
sub_40f2a3:

	nop	word ptr cs:[rax + rax]
.label_1250:
	test	r9b, 1
	je	.label_1234
	and	al, 1
	jne	.label_1234
	cmp	r14, r11
	jae	.label_1275
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1275:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1273
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1273:
	add	r14, 2
	xor	r9d, r9d
.label_1234:
	mov	ebx, r15d
.label_1315:
	cmp	r14, r11
	jae	.label_1284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1284:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1262
.label_1325:
	xor	r13d, r13d
.label_1321:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1258
.label_1280:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_1297
	mov	rsi, qword ptr [rsp + 0x50]
.label_1264:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_1332
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1264
	xor	r13d, r13d
	jmp	.label_1258
.label_1297:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1258
.label_1332:
	xor	r13d, r13d
	jmp	.label_1258
.label_1272:
	xor	r13d, r13d
	jmp	.label_1247
.label_1334:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_1247
	.section	.text
	.align	16
	#Procedure 0x40f378
	.globl sub_40f378
	.type sub_40f378, @function
sub_40f378:

	nop	dword ptr [rax + rax]
.label_1246:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_1313
	or	dl, al
	je	.label_1232
.label_1313:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_1328
	or	dl, al
	jne	.label_1328
	test	r10b, 1
	jne	.label_1329
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1328
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_1333
.label_1328:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_1337
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1227
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1227
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1306:
	cmp	r14, r11
	jae	.label_1240
	mov	byte ptr [rcx + r14], al
.label_1240:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1306
	jmp	.label_1227
.label_1263:
	mov	qword ptr [rsp + 0x20], rbp
.label_1232:
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
.label_1287:
	mov	r14, rax
.label_1224:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1329:
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
	jmp	.label_1287
.label_1337:
	mov	rcx, qword ptr [rsp + 8]
.label_1227:
	cmp	r14, r11
	jae	.label_1224
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1224
.label_1336:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f50c
	.globl sub_40f50c
	.type sub_40f50c, @function
sub_40f50c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f510

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_35
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1339
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f535
	.globl sub_40f535
	.type sub_40f535, @function
sub_40f535:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f540
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f548
	.globl sub_40f548
	.type sub_40f548, @function
sub_40f548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f550
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f56d
	.globl sub_40f56d
	.type sub_40f56d, @function
sub_40f56d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f570

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	cmp	byte ptr [rdi], 0
	je	.label_1340
	push	rax
	mov	edi, esi
	call	nonexistent_file_errno
	add	rsp, 8
	ret	
.label_1340:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f585
	.globl sub_40f585
	.type sub_40f585, @function
sub_40f585:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f590

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x40f59d
	.globl sub_40f59d
	.type sub_40f59d, @function
sub_40f59d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f5a0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_1341
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_1342
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_1342:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_1341:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f5d7
	.globl sub_40f5d7
	.type sub_40f5d7, @function
sub_40f5d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5e0

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	test	rsi, rsi
	je	.label_1343
	mov	rcx, qword ptr [rdi + 8]
	nop	dword ptr [rax]
.label_1346:
	cmp	qword ptr [rsi + 8], rcx
	jne	.label_1344
	mov	rdx, qword ptr [rsi + 0x10]
	mov	al, 1
	cmp	rdx, qword ptr [rdi]
	je	.label_1345
.label_1344:
	mov	rsi, qword ptr [rsi]
	test	rsi, rsi
	jne	.label_1346
.label_1343:
	xor	eax, eax
.label_1345:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f60c
	.globl sub_40f60c
	.type sub_40f60c, @function
sub_40f60c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f610

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_1347
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1349:
	cmp	qword ptr [rcx], 0
	je	.label_1348
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_1350:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_1350
	cmp	rsi, rax
	cmova	rax, rsi
.label_1348:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_1349
.label_1347:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f65d
	.globl sub_40f65d
	.type sub_40f65d, @function
sub_40f65d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f660

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_1354:
	cmp	rbx, r13
	jae	.label_1351
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1355:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_1355
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_1353:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_1353
.label_1351:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_1352
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_1354
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_1356
.label_1352:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_1356:
	mov	rax, rcx
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
	#Procedure 0x40f77c
	.globl sub_40f77c
	.type sub_40f77c, @function
sub_40f77c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f780

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_1357
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1363
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_1363
	mov	qword ptr [r15 + 0x10], rax
.label_1357:
	test	rbx, rbx
	je	.label_1359
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_1361:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1361
.label_1359:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_1362
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_1358:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_1358
	lea	rax, [rax + r8*8]
.label_1362:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_1360
.label_1363:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_1360:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f85d
	.globl sub_40f85d
	.type sub_40f85d, @function
sub_40f85d:

	nop	dword ptr [rax]
.label_1365:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1364
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f892

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbx
	xor	edi, edi
	call	setfscreatecon
	test	eax, eax
	jne	.label_1365
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8a0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8aa
	.globl sub_40f8aa
	.type sub_40f8aa, @function
sub_40f8aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f8b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1366
	call	rpl_calloc
	test	rax, rax
	je	.label_1366
	pop	rcx
	ret	
.label_1366:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40f8d6
	.globl sub_40f8d6
	.type sub_40f8d6, @function
sub_40f8d6:

	nop	word ptr cs:[rax + rax]
.label_1367:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40f8e5
	.globl sub_40f8e5
	.type sub_40f8e5, @function
sub_40f8e5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f8ea

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_1368
	pop	rcx
	ret	
.label_1368:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1367
	mov	edi, OFFSET FLAT:label_1369
	mov	esi, OFFSET FLAT:label_1370
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_1371
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40f920
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
	#Procedure 0x40f92f
	.globl sub_40f92f
	.type sub_40f92f, @function
sub_40f92f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40f930

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1373
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1375
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1376
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1372
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1373
.label_1372:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1374
.label_1375:
	mov	rax, rbx
	jmp	.label_1373
.label_1376:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1374:
	xor	eax, eax
.label_1373:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9b6
	.globl sub_40f9b6
	.type sub_40f9b6, @function
sub_40f9b6:

	nop	word ptr cs:[rax + rax]
.label_1377:
	add	rbx, 2
.label_1379:
	cmp	rbx, -1
	je	.label_1378
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_1377
	mov	r14, rbx
.label_1378:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9e4
	.globl sub_40f9e4
	.type sub_40f9e4, @function
sub_40f9e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f9f0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_1379
	.section	.text
	.align	16
	#Procedure 0x40fa0e
	.globl sub_40fa0e
	.type sub_40fa0e, @function
sub_40fa0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40fa10

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa15
	.globl sub_40fa15
	.type sub_40fa15, @function
sub_40fa15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa20

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1380
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1381
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x40fa62
	.globl sub_40fa62
	.type sub_40fa62, @function
sub_40fa62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa70

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
	jne	.label_1386
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
	je	.label_1382
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1387
	mov	eax, OFFSET FLAT:label_1388
	jmp	.label_1385
.label_1382:
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
	je	.label_1389
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1383
	mov	eax, OFFSET FLAT:label_1384
	jmp	.label_1385
.label_1389:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_1305
	mov	eax, OFFSET FLAT:label_1242
.label_1385:
	cmove	rax, rcx
.label_1386:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb2d
	.globl sub_40fb2d
	.type sub_40fb2d, @function
sub_40fb2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fb30

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	.section	.text
	.align	16
	#Procedure 0x40fb4b
	.globl sub_40fb4b
	.type sub_40fb4b, @function
sub_40fb4b:

	nop	dword ptr [rax + rax]
.label_1390:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb53
	.globl sub_40fb53
	.type sub_40fb53, @function
sub_40fb53:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40fb55
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1390
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb70

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_1396
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1396
	test	r14b, 0x12
	je	.label_1396
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1408
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_1401
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_1402
	mov	esi, OFFSET FLAT:label_35
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1406
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_1402:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_1412
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_1412:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_1394
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_1397
.label_1396:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1409:
	xor	eax, eax
.label_1408:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fce6
	.globl sub_40fce6
	.type sub_40fce6, @function
sub_40fce6:

	nop	word ptr cs:[rax + rax]
.label_1411:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_1410
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_1400
.label_1410:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_1400:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1403
	mov	qword ptr [rbp + 0x10], rbx
.label_1393:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_1405
.label_1403:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_1407
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_1405:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_1397
	jmp	.label_1391
.label_1407:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1393
	.section	.text
	.align	16
	#Procedure 0x40fd94
	.globl sub_40fd94
	.type sub_40fd94, @function
sub_40fd94:

	nop	word ptr cs:[rax + rax]
.label_1397:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_1398
	cmp	rax, 3
	jb	.label_1398
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1398
	nop	dword ptr [rax + rax]
.label_1404:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_1398
	dec	rax
	cmp	rax, 1
	ja	.label_1404
	nop	word ptr cs:[rax + rax]
.label_1398:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1411
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1399
.label_1391:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1392
	cmp	r12, 2
	jb	.label_1392
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_1392:
	mov	r12, qword ptr [rsp + 0x18]
.label_1394:
	mov	esi, OFFSET FLAT:label_35
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_1399
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_1413
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_1395
	mov	esi, OFFSET FLAT:label_692
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_1395
	or	byte ptr [r13 + 0x48], 4
.label_1395:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_1408
.label_1399:
	mov	rbx, qword ptr [rsp + 0x10]
.label_1413:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_1406:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_1401:
	mov	rdi, r13
	call	free
	jmp	.label_1409
	.section	.text
	.align	16
	#Procedure 0x40fee4
	.globl sub_40fee4
	.type sub_40fee4, @function
sub_40fee4:

	nop	word ptr cs:[rax + rax]
.label_1417:
	mov	esi, OFFSET FLAT:label_1414
.label_1416:
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
	.align	16
	#Procedure 0x40ff43

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
	je	.label_1417
	mov	esi, OFFSET FLAT:label_1415
	jmp	.label_1416
	.section	.text
	.align	16
	#Procedure 0x40ff60

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_1418
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1419
	jmp	.label_1420
.label_1421:
	xor	r14d, r14d
	jmp	.label_1420
	.section	.text
	.align	16
	#Procedure 0x40ffa0
	.globl sub_40ffa0
	.type sub_40ffa0, @function
sub_40ffa0:

	nop	dword ptr [rax]
.label_1418:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1421
	mov	rdi, rax
	call	cycle_check_init
.label_1419:
	mov	r14b, 1
.label_1420:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ffd0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x24], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x20], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
.label_1771:
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_1422
	xor	edi, edi
	call	set_simple_backup_suffix
.label_1422:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x28], rax
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x30], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_1424
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	qword ptr [rsp + 0x40], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x38], rax
	nop	
.label_1434:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	cmp	ebx, 1
	jne	.label_1426
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
	jmp	.label_1431
	.section	.text
	.align	16
	#Procedure 0x4100b7
	.globl sub_4100b7
	.type sub_4100b7, @function
sub_4100b7:

	nop	word ptr [rax + rax]
.label_1426:
	lea	rax, [rsp + 0xc]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x18]
	call	numbered_backup
	cmp	eax, 1
	je	.label_1429
	cmp	eax, 2
	je	.label_1430
	cmp	eax, 3
	jne	.label_1431
	jmp	.label_1423
.label_1430:
	cmp	ebx, 2
	jne	.label_1429
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
.label_1429:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 0xc]
	mov	rsi, r12
	lea	rcx, [rsp + 0x40]
	call	check_extension
.label_1431:
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_1427
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_1433
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	xor	ebp, ebp
.label_1433:
	xor	r8d, r8d
	cmp	ebx, 1
	setne	r8b
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_1427
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_1434
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_1432
	call	closedir
.label_1432:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [r15], r14d
	jmp	.label_1425
.label_1427:
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_1428
	call	closedir
.label_1428:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1424
.label_1423:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1425:
	xor	eax, eax
.label_1424:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4101e3
	.globl sub_4101e3
	.type sub_4101e3, @function
sub_4101e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4101f0

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x1c], r9d
	mov	r15, r8
	mov	r13, rdx
	mov	dword ptr [rsp + 4], esi
	mov	dword ptr [rsp + 0x3c], edi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	r14, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r15, r15
	mov	rax, rcx
	cmovne	rax, r15
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_1457
.label_1455:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], r14b
	mov	r14, qword ptr [rsp + 0x90]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	nop	dword ptr [rax + rax]
.label_1457:
	cmp	rsi, rcx
	mov	r12, rcx
	cmovb	r12, rsi
	mov	qword ptr [rsp + 0x30], rsi
	nop	
.label_1449:
	test	rsi, rsi
	je	.label_1448
	mov	edi, dword ptr [rsp + 0x3c]
	mov	rsi, r13
	mov	rdx, r12
	call	read
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_1447
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_1449
	jmp	.label_1451
	.section	.text
	.align	16
	#Procedure 0x4102d6
	.globl sub_4102d6
	.type sub_4102d6, @function
sub_4102d6:

	nop	word ptr cs:[rax + rax]
.label_1447:
	je	.label_1448
	sub	qword ptr [rsp + 0x30], rbx
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rax], rbx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r14d, r8d
	and	r14b, 1
	mov	qword ptr [rsp + 0x20], r13
	mov	rdi, r13
	mov	r12, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x40], r15
	nop	dword ptr [rax]
.label_1453:
	mov	r9d, r14d
	cmp	r12, rbx
	cmovae	r12, rbx
	test	r15, r15
	je	.label_1444
	test	r12, r12
	je	.label_1444
	mov	rsi, r12
	mov	r14, rdi
	mov	r13d, r9d
	call	is_nul
	mov	r9d, r13d
	mov	rdi, r14
	mov	r8b, al
.label_1444:
	mov	r14d, r8d
	and	r14b, 1
	cmp	r14b, r9b
	setne	al
	mov	rsi, rbp
	test	rbp, rbp
	setne	r13b
	cmp	rbx, r12
	sete	cl
	test	r14b, r14b
	sete	dl
	and	dl, cl
	test	r12, r12
	sete	bpl
	or	bpl, dl
	and	r13b, al
	jne	.label_1450
	test	bpl, bpl
	jne	.label_1450
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	mov	rbp, rsi
	cmp	rbp, rax
	mov	r13, qword ptr [rsp + 0x28]
	ja	.label_1436
	add	rbp, r12
	jmp	.label_1445
	.section	.text
	.align	16
	#Procedure 0x4103aa
	.globl sub_4103aa
	.type sub_4103aa, @function
sub_4103aa:

	nop	word ptr [rax + rax]
.label_1450:
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], r8
	test	r13b, 1
	mov	r15, r12
	mov	eax, 0
	cmovne	r15, rax
	add	r15, rsi
	test	r9b, r9b
	je	.label_1446
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, r15
	call	create_hole
	test	al, al
	jne	.label_1456
	jmp	.label_1458
.label_1446:
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_1437
.label_1456:
	test	bpl, bpl
	je	.label_1454
	test	r12, r12
	cmove	rbx, r12
	and	r13b, 1
	mov	rax, r12
	mov	ecx, 0
	cmovne	rax, rcx
	test	r13b, r13b
	cmove	r12, rcx
	mov	rbp, r12
	mov	r12, rax
	jmp	.label_1441
	.section	.text
	.align	16
	#Procedure 0x41043b
	.globl sub_41043b
	.type sub_41043b, @function
sub_41043b:

	nop	dword ptr [rax + rax]
.label_1454:
	mov	rbp, r12
.label_1441:
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rdi
	mov	r15, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_1445:
	add	rdi, r12
	sub	rbx, r12
	jne	.label_1453
	jmp	.label_1455
.label_1448:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_1439
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 8]
	call	create_hole
	test	al, al
	je	.label_1440
.label_1439:
	mov	r14b, 1
	jmp	.label_1438
.label_1451:
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1443
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	jmp	.label_1435
.label_1440:
	xor	r14d, r14d
	jmp	.label_1438
.label_1436:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1452
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_1435
.label_1458:
	xor	r14d, r14d
	jmp	.label_1438
.label_1437:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1442
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_1435:
	call	error
.label_1438:
	mov	eax, r14d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410568
	.globl sub_410568
	.type sub_410568, @function
sub_410568:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410570

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	.section	.text
	.align	16
	#Procedure 0x410571
	.globl sub_410571
	.type sub_410571, @function
sub_410571:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410580

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x41058f
	.globl sub_41058f
	.type sub_41058f, @function
sub_41058f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x410590
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x41059a
	.globl sub_41059a
	.type sub_41059a, @function
sub_41059a:

	nop	word ptr [rax + rax]
.label_1464:
	mov	edi, OFFSET FLAT:label_1459
	mov	esi, OFFSET FLAT:label_1460
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_1461
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4105b9
	.globl sub_4105b9
	.type sub_4105b9, @function
sub_4105b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4105bc

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_1464
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_1462
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_1462
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_1463
.label_1462:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_1465
	mov	al, 1
	test	rbx, rbx
	je	.label_1463
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_1465:
	xor	eax, eax
.label_1463:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x410620

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41062c
	.globl sub_41062c
	.type sub_41062c, @function
sub_41062c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410630

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41065f
	.globl sub_41065f
	.type sub_41065f, @function
sub_41065f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x410660

	.globl safe_write
	.type safe_write, @function
safe_write:
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
.label_1467:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1466
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1467
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
	jb	.label_1466
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_1467
.label_1466:
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
	.align	16
	#Procedure 0x4106e7
	.globl sub_4106e7
	.type sub_4106e7, @function
sub_4106e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106f0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x410703
	.globl sub_410703
	.type sub_410703, @function
sub_410703:

	nop	word ptr cs:[rax + rax]
.label_1472:
	call	xalloc_die
.label_1470:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x41071a
	.globl sub_41071a
	.type sub_41071a, @function
sub_41071a:

	nop	dword ptr [rax]
.label_1469:
	test	rcx, rcx
	jne	.label_1468
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_1468:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_1470
.label_1471:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x410763

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1469
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_1472
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1471
	.section	.text
	.align	16
	#Procedure 0x410790

	.globl do_move
	.type do_move, @function
do_move:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rdx
	mov	r14, rdi
	lea	r8, [rsp + 0xf]
	lea	r9, [rsp + 0xe]
	xor	edx, edx
	mov	rcx, r15
	call	copy
	mov	bl, al
	test	bl, bl
	je	.label_1473
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1477
	test	r14, r14
	je	.label_1473
	mov	al, byte ptr [rsp + 0xe]
	test	al, al
	jne	.label_1473
	lea	r12, [rsp + 0x28]
	mov	rdi, r12
	call	rm_option_init
	mov	al, byte ptr [r15 + 0x2e]
	mov	byte ptr [rsp + 0x42], al
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x10]
	mov	rsi, r12
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 2
	jb	.label_1473
	cmp	eax, 4
	jne	.label_1476
.label_1477:
	xor	ebx, ebx
.label_1473:
	mov	eax, ebx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1476:
	mov	edi, OFFSET FLAT:label_1474
	mov	esi, OFFSET FLAT:label_1110
	mov	edx, 0xef
	mov	ecx, OFFSET FLAT:label_1475
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x410835
	.globl sub_410835
	.type sub_410835, @function
sub_410835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410840

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	test	al, al
	jne	.label_1478
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1478:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41086b
	.globl sub_41086b
	.type sub_41086b, @function
sub_41086b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410870

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x410886
	.globl sub_410886
	.type sub_410886, @function
sub_410886:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410890

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x298
	mov	r15, r9
	mov	rbx, r8
	mov	r12, rcx
	mov	qword ptr [rbp - 0x38], rsi
	mov	r14, rdi
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rbp - 0x29], dl
	mov	byte ptr [rax], 0
	mov	r13d, dword ptr [r15 + 0x34]
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1521
	test	r13d, r13d
	jns	.label_1533
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r14
	mov	rcx, qword ptr [rbp - 0x38]
	call	renameatu
	mov	rcx, qword ptr [rbp + 0x28]
	xor	r13d, r13d
	test	eax, eax
	je	.label_1533
	call	__errno_location
	mov	rcx, qword ptr [rbp + 0x28]
	mov	r13d, dword ptr [rax]
.label_1533:
	test	r13d, r13d
	sete	al
	sete	byte ptr [rbp - 0x29]
	test	rcx, rcx
	je	.label_1521
	mov	byte ptr [rcx], al
.label_1521:
	mov	qword ptr [rbp - 0x68], rbx
	test	r13d, r13d
	je	.label_1549
	cmp	r13d, 0x11
	jne	.label_1551
	cmp	dword ptr [r15 + 8], 2
	jne	.label_1551
	jmp	.label_1555
.label_1549:
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_1555
.label_1551:
	test	r13d, r13d
	mov	rbx, r14
	cmove	rbx, qword ptr [rbp - 0x38]
	cmp	dword ptr [r15 + 4], 2
	jne	.label_1559
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	lstat
	jmp	.label_1561
.label_1559:
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	stat
.label_1561:
	test	eax, eax
	je	.label_1565
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1499
.label_1594:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
.label_1511:
	call	error
.label_1498:
	mov	eax, r12d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1565:
	mov	ebx, dword ptr [rbp - 0xf0]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1555
	cmp	byte ptr [r15 + 0x2a], 0
	je	.label_1583
.label_1555:
	mov	al, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_1588
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1588
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1598
	cmp	dword ptr [r15], 0
	jne	.label_1598
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	seen_file
	test	al, al
	je	.label_1598
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1605
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_1498
.label_1598:
	mov	rdi, qword ptr [r15 + 0x48]
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	record_file
	mov	al, byte ptr [rbp + 0x10]
.label_1588:
	mov	qword ptr [rbp - 0x48], r14
	movzx	esi, al
	mov	rdi, r15
	call	should_dereference
	mov	byte ptr [rbp - 0x3c], al
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	r14d, r14d
	cmp	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x4c], ebx
	jne	.label_1620
	cmp	r13d, 0x11
	jne	.label_1628
	cmp	dword ptr [r15 + 8], 2
	jne	.label_1628
	xor	r14d, r14d
	jmp	.label_1630
.label_1628:
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_1633
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_1517
	cmp	eax, 0xa000
	je	.label_1517
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_1517
.label_1633:
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_1517
	cmp	byte ptr [r15 + 0x2c], 0
	jne	.label_1517
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_1517
	cmp	dword ptr [r15], 0
	jne	.label_1517
	cmp	byte ptr [r15 + 0x15], 0
	setne	r14b
.label_1517:
	movzx	ecx, r14b
	shl	ecx, 8
	lea	rdx, [rbp - 0x198]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x38]
	call	fstatat
	test	eax, eax
	je	.label_1630
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x28
	jne	.label_1649
	cmp	byte ptr [r15 + 0x16], 0
	jne	.label_1650
	mov	ebx, dword ptr [rax]
.label_1649:
	cmp	ebx, 2
	jne	.label_1675
	mov	byte ptr [rbp - 0x29], 1
.label_1650:
	xor	r14d, r14d
	cmp	r13d, 0x11
	mov	eax, 0
	mov	qword ptr [rbp - 0x58], rax
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_1620
.label_1630:
	mov	byte ptr [rbp - 0x230], 0
	cmp	dword ptr [r15 + 8], 2
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_1660
	lea	rsi, [rbp - 0x108]
	lea	rcx, [rbp - 0x198]
	lea	r9, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, r13
	mov	r8, r15
	call	same_file_ok
	test	al, al
	je	.label_1667
.label_1660:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_1536
	mov	al, byte ptr [r15 + 0x2d]
	test	al, al
	je	.label_1536
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_1671
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1612
	mov	rax, qword ptr [rbp - 0x198]
	cmp	rax, qword ptr [rbp - 0x108]
	sete	al
	jmp	.label_1625
.label_1583:
	cmp	byte ptr [r15 + 0x19], 0
	je	.label_1677
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1678
	jmp	.label_1679
.label_1667:
	mov	rbx, r13
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1681
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
.label_1488:
	call	quotearg_n_style
.label_1531:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_1498
.label_1675:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1499
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_1577:
	mov	rdx, r14
	jmp	.label_1511
.label_1671:
	xor	eax, eax
	jmp	.label_1515
.label_1677:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1516
.label_1679:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	r12d, r12d
.label_1505:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_1636:
	mov	rdx, rbx
	jmp	.label_1511
.label_1612:
	xor	eax, eax
.label_1625:
	xor	al, 1
.label_1515:
	movzx	ecx, al
	lea	rsi, [rbp - 0x198]
	lea	rdx, [rbp - 0x108]
	mov	rdi, r13
	call	utimecmp
	test	eax, eax
	js	.label_1536
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_1537
	mov	byte ptr [rax], 1
.label_1537:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, r13
	call	remember_copied
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1544
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r13
	call	create_hard_link
	test	al, al
	je	.label_1550
.label_1544:
	mov	r12b, 1
	jmp	.label_1498
.label_1536:
	mov	r13, r12
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1556
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	abandon_move
	test	al, al
	mov	rax, qword ptr [rbp + 0x28]
	je	.label_1525
	mov	r12b, 1
	test	rax, rax
	je	.label_1498
	mov	byte ptr [rax], 1
	jmp	.label_1498
.label_1556:
	cmp	ebx, 0x4000
	je	.label_1525
	mov	eax, dword ptr [r15 + 8]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1498
	cmp	eax, 3
	jne	.label_1525
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	overwrite_ok
	test	al, al
	je	.label_1498
	mov	al, byte ptr [rbp - 0x230]
	test	al, al
	je	.label_1574
	jmp	.label_1498
.label_1525:
	mov	r12b, 1
	cmp	byte ptr [rbp - 0x230], 0
	jne	.label_1498
.label_1574:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	mov	r12, r13
	je	.label_1578
	cmp	ebx, 0x4000
	jne	.label_1642
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1586
	cmp	dword ptr [r15], 0
	je	.label_1586
.label_1642:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_1578
	cmp	dword ptr [r15], 3
	je	.label_1578
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x38]
	call	seen_file
	test	al, al
	je	.label_1578
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1603
	jmp	.label_1604
.label_1578:
	cmp	ebx, 0x4000
	je	.label_1608
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_1608
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1611
	cmp	dword ptr [r15], 0
	je	.label_1611
.label_1608:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1615
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0xf0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1615
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	je	.label_1615
	cmp	dword ptr [r15], 0
	je	.label_1640
.label_1615:
	cmp	dword ptr [r15], 0
	je	.label_1622
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	dot_or_dotdot_0
	test	al, al
	jne	.label_1622
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_1631
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_1631
.label_1622:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x4000
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_1482
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_1482
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_1643
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_1644
	cmp	qword ptr [rbp - 0x188], 1
	ja	.label_1643
.label_1644:
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	dword ptr [r15 + 4], 2
	jne	.label_1482
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xf0]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x8000
	je	.label_1482
.label_1643:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
	test	eax, eax
	je	.label_1656
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_1657
.label_1656:
	mov	byte ptr [rbp - 0x29], 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_1482
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	ebx, dword ptr [rbp - 0x4c]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_1482
.label_1550:
	mov	qword ptr [rbp - 0x70], rbx
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1485
.label_1631:
	cmp	dword ptr [r15], 3
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_1674
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	mov	rdx, r13
	call	source_is_dst_backup
	test	al, al
	je	.label_1674
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1680
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1683
	jmp	.label_1684
.label_1586:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1479
.label_1604:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
.label_1587:
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_1488
.label_1611:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1495
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_1505
.label_1674:
	mov	edx, dword ptr [r15]
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1512
	mov	rdi, rbx
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	rax, rdi
	mov	qword ptr [rbp - 0x58], rax
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	ebx, dword ptr [rbp - 0x4c]
	jmp	.label_1503
.label_1512:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	r13d, 2
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_1530
.label_1503:
	mov	byte ptr [rbp - 0x29], 1
.label_1482:
	mov	r13d, 0x11
.label_1620:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_1538
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_1538
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_1538
	cmp	dword ptr [r15], 0
	jne	.label_1538
	test	r14b, r14b
	jne	.label_1546
	lea	rbx, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	jne	.label_1553
	jmp	.label_1554
.label_1546:
	lea	rbx, [rbp - 0x198]
.label_1554:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_1553
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_1553
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1560
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	jmp	.label_1488
.label_1553:
	mov	ebx, dword ptr [rbp - 0x4c]
.label_1538:
	mov	qword ptr [rbp - 0x78], r12
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_1572
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1572
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	jne	.label_1572
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_1572:
	xor	r12d, r12d
	test	r13d, r13d
	je	.label_1579
	mov	ebx, dword ptr [rbp - 0x4c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_1581
	mov	al, byte ptr [r15 + 0x2a]
	test	al, al
	je	.label_1581
	mov	rax, qword ptr [rbp - 0x108]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_1666
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_1599
.label_1581:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1601
	cmp	qword ptr [rbp - 0xf8], 1
	jne	.label_1601
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	jmp	.label_1606
.label_1601:
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_1579
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_1579
	cmp	qword ptr [rbp - 0xf8], 1
	ja	.label_1614
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_1616
	cmp	dword ptr [r15 + 4], 3
	je	.label_1614
.label_1616:
	xor	r12d, r12d
	cmp	dword ptr [r15 + 4], 4
	jne	.label_1579
.label_1614:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x38]
.label_1599:
	call	remember_copied
	jmp	.label_1624
.label_1666:
	mov	rdi, rcx
	mov	rsi, rax
.label_1606:
	call	src_to_dest_lookup
.label_1624:
	mov	r14, rax
	xor	r12d, r12d
	test	r14, r14
	je	.label_1579
	cmp	ebx, 0x4000
	jne	.label_1632
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_1634
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1635
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_1485
.label_1632:
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	mov	r12b, 1
	test	al, al
	mov	qword ptr [rbp - 0x70], r14
	jne	.label_1498
	jmp	.label_1485
.label_1634:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_1501
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1662
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	je	.label_1498
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_1498
	mov	byte ptr [rcx], 1
	jmp	.label_1498
.label_1501:
	mov	ecx, dword ptr [r15 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_1623
	and	al, byte ptr [rbp + 0x10]
	jne	.label_1623
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1676
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_1485
.label_1623:
	mov	r12, r14
.label_1579:
	cmp	byte ptr [r15 + 0x18], 0
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_1490
	cmp	r13d, 0x11
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_1494
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	rename
	test	eax, eax
	je	.label_1502
	call	__errno_location
	mov	r13d, dword ptr [rax]
.label_1494:
	cmp	r13d, 0x16
	je	.label_1504
	cmp	r13d, 0x12
	je	.label_1506
	test	r13d, r13d
	jne	.label_1509
.label_1502:
	cmp	byte ptr [r15 + 0x2e], 0
	mov	rbx, qword ptr [rbp - 0x38]
	je	.label_1513
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1518
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_1513:
	cmp	byte ptr [r15 + 0x21], 0
	je	.label_1529
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	mov	rcx, r15
	call	set_file_security_ctx
.label_1529:
	mov	rsi, rbx
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_1535
	mov	byte ptr [rax], 1
.label_1535:
	mov	r12b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_1498
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_1498
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x108]
	call	record_file
	jmp	.label_1498
.label_1504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1548
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r12b, 1
	jmp	.label_1498
.label_1506:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_1566
	mov	rdi, qword ptr [rbp - 0x38]
	call	rmdir
	jmp	.label_1570
.label_1509:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1571
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	jmp	.label_1580
.label_1566:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
.label_1570:
	test	eax, eax
	je	.label_1590
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_1595
.label_1590:
	cmp	ebx, 0x4000
	je	.label_1597
	mov	al, byte ptr [r15 + 0x2e]
	test	al, al
	je	.label_1597
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1602
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_1597:
	mov	byte ptr [rbp - 0x29], 1
	mov	ebx, dword ptr [rbp - 0x4c]
.label_1490:
	cmp	byte ptr [r15 + 0x2b], 0
	mov	r14d, ebx
	je	.label_1613
	mov	r14d, dword ptr [r15 + 0x10]
.label_1613:
	mov	r13d, 0x3f
	cmp	byte ptr [r15 + 0x1d], 0
	mov	rsi, qword ptr [rbp - 0x38]
	jne	.label_1617
	mov	eax, ebx
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r13d, 0x12
	cmovne	r13d, ecx
.label_1617:
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, r15
	call	set_process_security_ctx
	test	al, al
	je	.label_1627
	mov	qword ptr [rbp - 0x70], r12
	and	r13d, r14d
	mov	r12d, ebx
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	jne	.label_1629
	lea	rdi, [rbp - 0x108]
	mov	rbx, qword ptr [rbp - 0x68]
	mov	rsi, rbx
	call	is_ancestor
	test	al, al
	je	.label_1522
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1637
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_1543:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_1641
.label_1627:
	xor	r12d, r12d
	jmp	.label_1498
.label_1629:
	cmp	byte ptr [r15 + 0x2c], 0
	mov	dword ptr [rbp - 0x50], r13d
	je	.label_1646
	mov	r14, qword ptr [rbp - 0x48]
	cmp	byte ptr [r14], 0x2f
	je	.label_1497
	mov	rdi, qword ptr [rbp - 0x38]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1651
	cmp	byte ptr [rbx + 1], 0
	je	.label_1653
.label_1651:
	lea	rsi, [rbp - 0x230]
	mov	edi, OFFSET FLAT:label_692
	call	stat
	test	eax, eax
	jne	.label_1653
	lea	rsi, [rbp - 0x2c0]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_1661
.label_1653:
	mov	rdi, rbx
	call	free
.label_1497:
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r14
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_1665
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1669
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x48], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, r12
	call	error
	jmp	.label_1485
.label_1522:
	mov	rax, rsp
	mov	rcx, rbx
	lea	rbx, [rax - 0x20]
	mov	rsp, rbx
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rax - 0x10], rcx
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_1484
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_1484
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_1486
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_1489
.label_1486:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	cmp	byte ptr [r15 + 0x26], 0
	mov	r13, qword ptr [rbp - 0x48]
	jne	.label_1485
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1491
.label_1484:
	mov	qword ptr [rbp - 0x68], rbx
	and	r14d, 0xfff
	mov	esi, r13d
	not	esi
	and	esi, r14d
	mov	r14d, r13d
	mov	r13, qword ptr [rbp - 0x38]
	mov	rdi, r13
	call	mkdir
	test	eax, eax
	je	.label_1520
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1523
	jmp	.label_1524
.label_1646:
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_1527
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x16], 0
	mov	al, 1
	jne	.label_1528
	cmp	dword ptr [r15 + 8], 3
	sete	al
.label_1528:
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x3c]
	xor	r14d, r14d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	test	al, al
	je	.label_1485
	jmp	.label_1541
.label_1595:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1542
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
.label_1580:
	call	error
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
	jmp	.label_1498
.label_1520:
	lea	rsi, [rbp - 0x198]
	mov	rdi, r13
	call	lstat
	test	eax, eax
	je	.label_1563
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1499
.label_1524:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_1663:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_1641:
	mov	rdx, rbx
.label_1562:
	call	error
.label_1485:
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_1575
	call	restore_default_fscreatecon_or_die
.label_1575:
	cmp	qword ptr [rbp - 0x70], 0
	mov	r12, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbp - 0x58]
	jne	.label_1576
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
.label_1576:
	test	rbx, rbx
	je	.label_1585
	mov	rdi, rbx
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_1589
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1593
	jmp	.label_1594
.label_1585:
	xor	r12d, r12d
	jmp	.label_1498
.label_1589:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_1600
	mov	r15, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1514
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rbx
	call	__printf_chk
	jmp	.label_1498
.label_1600:
	xor	r12d, r12d
	jmp	.label_1498
.label_1527:
	cmp	r12d, 0x8000
	je	.label_1618
	cmp	r12d, 0xa000
	je	.label_1552
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	je	.label_1552
.label_1618:
	and	r14d, 0x1ff
	sub	rsp, 8
	lea	rax, [rbp - 0x108]
	lea	r9, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, r15
	mov	ecx, r14d
	mov	r8d, r13d
	push	rax
	call	copy_reg
	add	rsp, 0x10
	test	al, al
	je	.label_1485
	mov	bl, 1
	xor	r14d, r14d
	jmp	.label_1638
.label_1563:
	mov	ecx, dword ptr [rbp - 0x180]
	mov	eax, ecx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	mov	dword ptr [rbp - 0x3c], ecx
	jne	.label_1639
	xor	ebx, ebx
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_1507
.label_1661:
	mov	rax, qword ptr [rbp - 0x228]
	cmp	rax, qword ptr [rbp - 0x2b8]
	jne	.label_1645
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x68], rax
	mov	r13, qword ptr [rbp - 0x2c0]
	mov	rdi, rbx
	call	free
	cmp	qword ptr [rbp - 0x68], r13
	mov	r14, qword ptr [rbp - 0x48]
	je	.label_1497
	jmp	.label_1654
.label_1552:
	movsx	eax, r12w
	cmp	eax, 0xfff
	jle	.label_1655
	movzx	eax, r12w
	cmp	eax, 0x6000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_1658
	cmp	eax, 0x2000
	je	.label_1658
	cmp	eax, 0x1000
	jne	.label_1547
	mov	ebx, r13d
	not	ebx
	and	ebx, dword ptr [rbp - 0x4c]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mknod
	mov	r13b, 1
	test	eax, eax
	je	.label_1541
	and	ebx, 0xffffefff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_1670
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1672
	jmp	.label_1493
.label_1541:
	xor	ebx, ebx
	jmp	.label_1673
.label_1639:
	mov	esi, ecx
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	mov	bl, 1
	test	eax, eax
	mov	r13, qword ptr [rbp - 0x48]
	je	.label_1507
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1058
.label_1493:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_1663
.label_1507:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1481
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0x38]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_1481:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_1491
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1567
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1500
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	r13, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_1491
.label_1640:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1519
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_1531
.label_1645:
	mov	rdi, rbx
	call	free
.label_1654:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1682
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_1543
.label_1655:
	movzx	eax, r12w
	cmp	eax, 0xa000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_1686
	cmp	eax, 0xc000
	jne	.label_1547
.label_1658:
	mov	esi, r13d
	not	esi
	and	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdi, rbx
	call	mknod
	test	eax, eax
	je	.label_1558
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1626
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	jmp	.label_1562
.label_1489:
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x3c], eax
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_1491
.label_1530:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1568
	jmp	.label_1569
.label_1657:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
.label_1569:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	jmp	.label_1577
.label_1567:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	call	emit_verbose
.label_1491:
	mov	qword ptr [rbp - 0x60], rbx
	mov	dword ptr [rbp - 0x50], r14d
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1584
	mov	al, byte ptr [r15 + 0x1c]
	test	al, al
	je	.label_1584
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x108]
	jne	.label_1592
.label_1584:
	movzx	edx, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x68]
	mov	r9, r15
	push	qword ptr [rbp + 0x20]
	push	qword ptr [rbp + 0x18]
	call	copy_dir
	add	rsp, 0x10
	mov	r13d, eax
	jmp	.label_1607
.label_1592:
	mov	r13b, 1
.label_1607:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_1609
.label_1680:
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1610
.label_1684:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	jmp	.label_1587
.label_1558:
	mov	r13b, 1
.label_1670:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_1673
.label_1686:
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r13, rax
	test	r13, r13
	je	.label_1621
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0x38]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_1648
	cmp	byte ptr [r15 + 0x2d], 0
	je	.label_1487
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	jne	.label_1487
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0xa000
	jne	.label_1487
	mov	rbx, qword ptr [rbp - 0x168]
	mov	rdi, r13
	call	strlen
	cmp	rbx, rax
	jne	.label_1487
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1487
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	mov	dword ptr [rbp - 0x68], eax
	mov	rdi, rbx
	call	free
	cmp	dword ptr [rbp - 0x68], 0
	je	.label_1648
.label_1487:
	mov	rdi, r13
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1492
	jmp	.label_1493
.label_1547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1652
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	jmp	.label_1562
.label_1621:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1496
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	jmp	.label_1663
.label_1648:
	mov	rdi, r13
	call	free
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_1668
	call	restore_default_fscreatecon_or_die
.label_1668:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_1665
	mov	esi, dword ptr [rbp - 0xec]
	mov	edx, dword ptr [rbp - 0xe8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lchown
	test	eax, eax
	je	.label_1665
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_1508
.label_1665:
	mov	r14b, 1
	xor	ebx, ebx
.label_1638:
	mov	r13b, 1
.label_1673:
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
.label_1534:
	mov	dword ptr [rbp - 0x3c], eax
.label_1609:
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_1659
	cmp	r12d, 0x4000
	je	.label_1659
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	mov	al, byte ptr [rbp + 0x10]
	jne	.label_1659
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_1685
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_1659
.label_1685:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [r15 + 0x26], 0
	jne	.label_1485
.label_1659:
	test	al, al
	je	.label_1539
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_1539
	lea	rsi, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	jne	.label_1539
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x230]
	mov	rsi, qword ptr [rbp - 0x38]
	call	record_file
.label_1539:
	cmp	r12d, 0x4000
	je	.label_1664
	mov	al, byte ptr [r15 + 0x17]
	test	al, al
	jne	.label_1480
.label_1664:
	test	bl, bl
	jne	.label_1480
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_1510
	lea	rbx, [rbp - 0x108]
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x230], rax
	mov	qword ptr [rbp - 0x228], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x220], rax
	mov	qword ptr [rbp - 0x218], rdx
	test	r14b, r14b
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rbp - 0x230]
	je	.label_1526
	call	utimens_symlink
	jmp	.label_1532
.label_1526:
	call	utimens
.label_1532:
	test	eax, eax
	je	.label_1510
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1192
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_1510
	xor	r12d, r12d
	jmp	.label_1498
.label_1510:
	test	r14b, r14b
	mov	rbx, qword ptr [rbp - 0x38]
	jne	.label_1480
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_1647
	cmp	byte ptr [rbp - 0x29], 0
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_1557
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, dword ptr [rbp - 0x17c]
	jne	.label_1557
	mov	eax, dword ptr [rbp - 0xe8]
	cmp	eax, dword ptr [rbp - 0x178]
	je	.label_1545
.label_1557:
	movzx	r8d, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	lea	r9, [rbp - 0x198]
	mov	edx, 0xffffffff
	mov	rdi, r15
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_1540
	test	eax, eax
	jne	.label_1545
	and	dword ptr [rbp - 0x4c], 0xfffff1ff
	jmp	.label_1545
.label_1647:
	mov	r14, qword ptr [rbp - 0x48]
.label_1545:
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_1564
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_1573
.label_1564:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r14
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x4c]
	call	copy_acl
	test	eax, eax
	je	.label_1480
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_1480
.label_1540:
	xor	r12d, r12d
	jmp	.label_1498
.label_1573:
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_1582
	mov	edx, dword ptr [r15 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_1480
	xor	r12d, r12d
	jmp	.label_1498
.label_1582:
	cmp	byte ptr [r15 + 0x20], 0
	je	.label_1483
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	je	.label_1483
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_1480
	xor	r12d, r12d
	jmp	.label_1498
.label_1483:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_1591
	call	cached_umask
	not	eax
	and	dword ptr [rbp - 0x50], eax
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	jne	.label_1596
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_1596
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_1619
	lea	rsi, [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	je	.label_1619
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1499
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_1636
.label_1591:
	mov	dword ptr [rbp - 0x50], 0
	jmp	.label_1596
.label_1508:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_1485
	mov	r14b, 1
	xor	ebx, ebx
	mov	r13b, 1
	jmp	.label_1534
.label_1619:
	mov	eax, dword ptr [rbp - 0x180]
	mov	dword ptr [rbp - 0x3c], eax
	not	eax
	test	dword ptr [rbp - 0x50], eax
	je	.label_1596
	mov	al, 1
	mov	qword ptr [rbp - 0x60], rax
.label_1596:
	mov	rax, qword ptr [rbp - 0x60]
	test	al, 1
	je	.label_1480
	mov	esi, dword ptr [rbp - 0x3c]
	or	esi, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	test	eax, eax
	je	.label_1480
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_1498
.label_1480:
	test	r13b, r13b
	setne	r12b
	jmp	.label_1498
	.section	.text
	.align	16
	#Procedure 0x4123b1
	.globl sub_4123b1
	.type sub_4123b1, @function
sub_4123b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4123c0

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
	#Procedure 0x4123f6
	.globl sub_4123f6
	.type sub_4123f6, @function
sub_4123f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412400

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412409
	.globl sub_412409
	.type sub_412409, @function
sub_412409:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412410

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x412436
	.globl sub_412436
	.type sub_412436, @function
sub_412436:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412440

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1687
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1687:
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
	ja	.label_1689
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1688
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1690
	test	esi, esi
	jne	.label_1689
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1694
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1697
.label_1689:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1695
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1690
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1693
.label_1688:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1690:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1698
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1700
.label_1698:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1700:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1693:
	cmp	eax, 6
	jne	.label_1695
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1696
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1699
.label_1695:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1691
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1692
.label_1694:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1697:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_1696:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1699:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_1691:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1692:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4125f4
	.globl sub_4125f4
	.type sub_4125f4, @function
sub_4125f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412665
	.globl sub_412665
	.type sub_412665, @function
sub_412665:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412672
	.globl sub_412672
	.type sub_412672, @function
sub_412672:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412696
	.globl sub_412696
	.type sub_412696, @function
sub_412696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4126a9
	.globl sub_4126a9
	.type sub_4126a9, @function
sub_4126a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4126b0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x4126c0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x4126cf
	.globl sub_4126cf
	.type sub_4126cf, @function
sub_4126cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4126d0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x4126e0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	.section	.text
	.align	16
	#Procedure 0x4126f5
	.globl sub_4126f5
	.type sub_4126f5, @function
sub_4126f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412700

	.globl mknod
	.type mknod, @function
mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	
