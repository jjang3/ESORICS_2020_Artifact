	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_11
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_25
.label_22:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
.label_11:
	mov	esi, 0xa
	call	__overflow
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_19
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_32
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_46
	call	setlocale
	mov	edi, OFFSET FLAT:label_48
	mov	esi, OFFSET FLAT:label_49
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_48
	call	textdomain
	mov	dword ptr [rip + exit_failure],  3
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_41
	mov	r9d, OFFSET FLAT:usage
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_42
	push	OFFSET FLAT:label_43
	push	OFFSET FLAT:label_44
	call	parse_long_options
	add	rsp, 0x20
	cmp	ebp, 2
	jb	.label_37
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_45
	cmp	byte ptr [rax + 1], 0x2d
	jne	.label_45
	cmp	byte ptr [rax + 2], 0
	jne	.label_45
	dec	ebp
	cmp	ebp, 1
	jbe	.label_37
	add	rbx, 8
.label_45:
	add	rbx, 8
	mov	qword ptr [rip + args],  rbx
	mov	edi, 1
	call	eval
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	cmp	qword ptr [rax], 0
	jne	.label_39
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_47
	test	eax, eax
	jne	.label_51
	mov	rdi, qword ptr [rip + stdout]
	mov	rdx, rbx
	add	rdx, 8
	mov	esi, 0xa
	call	__gmpz_out_str
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_53
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_38
.label_47:
	mov	rdi, qword ptr [rbx + 8]
	call	puts
.label_38:
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_54
	test	eax, eax
	jne	.label_34
	cmp	dword ptr [rbx + 0xc], 0
	sete	al
	jmp	.label_36
.label_54:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_36
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	
.label_52:
	cmp	dl, 0x30
	jne	.label_50
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_52
	jmp	.label_36
.label_50:
	xor	eax, eax
.label_36:
	movzx	eax, al
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_53:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_38
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 2
	call	usage
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_51:
	call	abort
.label_34:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402210

	.globl eval
	.type eval, @function
eval:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval1
	mov	r12, rax
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_59
	jmp	.label_57
.label_67:
	mov	rdi, r15
	call	__gmpz_clear
	jmp	.label_74
	nop	dword ptr [rax + rax]
.label_59:
	lea	r15, [r12 + 8]
	test	r14b, r14b
	je	.label_79
.label_86:
	mov	esi, OFFSET FLAT:label_73
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_57
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_55
	cmp	eax, 1
	jne	.label_61
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_66
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_71:
	cmp	dl, 0x30
	jne	.label_70
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_71
	jmp	.label_66
	nop	word ptr cs:[rax + rax]
.label_55:
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_66
.label_70:
	xor	eax, eax
	nop	dword ptr [rax]
.label_66:
	movzx	edi, al
	call	eval1
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_84
	cmp	eax, 1
	jne	.label_80
	mov	rax, qword ptr [r15]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_65
	xor	edx, edx
	cmp	cl, 0x2d
	sete	dl
	mov	cl, byte ptr [rax + rdx]
	lea	rax, [rax + rdx + 1]
	nop	dword ptr [rax]
.label_68:
	cmp	cl, 0x30
	jne	.label_82
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_68
	jmp	.label_65
	nop	word ptr cs:[rax + rax]
.label_84:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_67
.label_82:
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_77
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_77:
	call	__gmpz_clear
.label_75:
	mov	rdi, rbp
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_86
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	esi, OFFSET FLAT:label_73
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_57
	xor	edi, edi
	call	eval1
	mov	rbp, rax
	mov	ecx, dword ptr [r12]
	test	ecx, ecx
	je	.label_76
	cmp	ecx, 1
	jne	.label_80
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_65
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax + rax]
.label_58:
	cmp	dl, 0x30
	jne	.label_56
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_58
	jmp	.label_65
	nop	word ptr cs:[rax + rax]
.label_76:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_67
.label_56:
	add	rax, 8
	cmp	dword ptr [rbp], 1
	jne	.label_69
	mov	rdi, qword ptr [rax]
	call	free
	jmp	.label_72
.label_69:
	mov	rdi, rax
	call	__gmpz_clear
.label_72:
	mov	rdi, rbp
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_79
	jmp	.label_57
	nop	dword ptr [rax + rax]
.label_65:
	mov	rdi, qword ptr [r15]
	call	free
.label_74:
	mov	rdi, r12
	call	free
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_81
	cmp	eax, 1
	jne	.label_60
	mov	rcx, qword ptr [rbp + 8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_62
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax + rax]
.label_83:
	cmp	dl, 0x30
	jne	.label_63
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_83
	cmp	eax, 1
	jne	.label_64
.label_62:
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_78
	nop	
.label_81:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_63
.label_64:
	lea	rdi, [rbp + 8]
	call	__gmpz_clear
.label_78:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	lea	rdi, [rbp + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_63:
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	r12, rbp
	jne	.label_59
	jmp	.label_85
.label_57:
	mov	rbp, r12
.label_85:
	mov	rax, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_80:
	call	abort
.label_61:
	call	abort
.label_60:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402540

	.globl eval1
	.type eval1, @function
eval1:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval2
	mov	r12, rax
	jmp	.label_112
	nop	dword ptr [rax]
.label_99:
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rdi, [r12 + 8]
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_112:
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_89
	lea	r15, [r12 + 8]
	test	r14b, r14b
	je	.label_96
.label_101:
	mov	esi, OFFSET FLAT:label_87
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_89
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_111
	cmp	eax, 1
	jne	.label_113
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_91
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax + rax]
.label_88:
	cmp	dl, 0x30
	jne	.label_106
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_88
	jmp	.label_91
	nop	word ptr cs:[rax + rax]
.label_111:
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	jmp	.label_91
.label_106:
	xor	eax, eax
	nop	dword ptr [rax]
.label_91:
	xor	al, 1
	movzx	edi, al
	call	eval2
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_115
	cmp	eax, 1
	jne	.label_108
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_104
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_118:
	cmp	dl, 0x30
	jne	.label_114
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_118
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_115:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_92
.label_114:
	mov	ecx, dword ptr [rbp]
	test	ecx, ecx
	je	.label_95
	cmp	ecx, 1
	jne	.label_100
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	test	bl, bl
	je	.label_103
	xor	esi, esi
	cmp	bl, 0x2d
	sete	sil
	mov	bl, byte ptr [rdx + rsi]
	lea	rdx, [rdx + rsi + 1]
	nop	dword ptr [rax + rax]
.label_105:
	cmp	bl, 0x30
	jne	.label_93
	movzx	ebx, byte ptr [rdx]
	inc	rdx
	test	bl, bl
	jne	.label_105
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_95:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_119
	jmp	.label_103
.label_93:
	cmp	ecx, 1
	jne	.label_119
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_107
	nop	dword ptr [rax + rax]
.label_119:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_107:
	mov	rdi, rbp
	call	free
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_101
	jmp	.label_89
	nop	dword ptr [rax]
.label_96:
	mov	esi, OFFSET FLAT:label_87
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_89
	xor	edi, edi
	call	eval2
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_117
	cmp	eax, 1
	jne	.label_108
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_104
	xor	esi, esi
	cmp	dl, 0x2d
	sete	sil
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	dword ptr [rax]
.label_102:
	cmp	dl, 0x30
	jne	.label_109
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_102
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_117:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_92
.label_109:
	mov	ecx, dword ptr [rbp]
	test	ecx, ecx
	je	.label_110
	cmp	ecx, 1
	jne	.label_100
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	test	bl, bl
	je	.label_103
	xor	esi, esi
	cmp	bl, 0x2d
	sete	sil
	mov	bl, byte ptr [rdx + rsi]
	lea	rdx, [rdx + rsi + 1]
	nop	dword ptr [rax + rax]
.label_97:
	cmp	bl, 0x30
	jne	.label_90
	movzx	ebx, byte ptr [rdx]
	inc	rdx
	test	bl, bl
	jne	.label_97
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_110:
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_98
	jmp	.label_103
.label_90:
	cmp	ecx, 1
	jne	.label_98
	mov	rdi, qword ptr [rbp + 8]
	call	free
	jmp	.label_94
	nop	dword ptr [rax + rax]
.label_98:
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_94:
	mov	rdi, rbp
	call	free
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_96
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_103:
	cmp	eax, 1
	jne	.label_92
.label_104:
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_120
	nop	
.label_92:
	mov	rdi, r15
	call	__gmpz_clear
.label_120:
	mov	rdi, r12
	call	free
	lea	rdi, [rbp + 8]
	cmp	dword ptr [rbp], 1
	jne	.label_116
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_99
	nop	word ptr [rax + rax]
.label_116:
	call	__gmpz_clear
	jmp	.label_99
.label_89:
	mov	rax, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_108:
	call	abort
.label_100:
	call	abort
.label_113:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028e0

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r14d, dil
	mov	edi, r14d
	call	eval3
	mov	rbx, rax
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_123
	mov	dword ptr [rsp + 4], r14d
	jmp	.label_126
	nop	dword ptr [rax + rax]
.label_133:
	lea	r14, [r15 + 8]
.label_122:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsi, qword ptr [r14]
	mov	rdi, rbp
	call	strcoll
.label_127:
	mov	ebp, eax
	and	r13b, 7
	movzx	eax, r13b
	cmp	al, 5
	mov	r14d, dword ptr [rsp + 4]
	ja	.label_141
	jmp	qword ptr [(rax * 8) + label_144]
.label_2633:
	shr	ebp, 0x1f
	jmp	.label_125
.label_2634:
	xor	eax, eax
	test	ebp, ebp
	setle	al
	mov	rbp, rax
	jmp	.label_125
.label_2635:
	xor	eax, eax
	test	ebp, ebp
	sete	al
	mov	rbp, rax
	jmp	.label_125
.label_2636:
	xor	eax, eax
	test	ebp, ebp
	setne	al
	mov	rbp, rax
	jmp	.label_125
.label_2637:
	shr	ebp, 0x1f
	xor	rbp, 1
	jmp	.label_125
.label_2638:
	xor	eax, eax
	test	ebp, ebp
	setg	al
	mov	rbp, rax
	jmp	.label_125
	nop	dword ptr [rax + rax]
.label_126:
	mov	esi, OFFSET FLAT:label_145
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	je	.label_135
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_123
	mov	esi, OFFSET FLAT:label_129
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 1
	je	.label_121
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_123
	mov	esi, OFFSET FLAT:label_128
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 2
	je	.label_121
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_123
	mov	esi, OFFSET FLAT:label_137
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	je	.label_121
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_123
	mov	esi, OFFSET FLAT:label_146
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 3
	je	.label_121
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_123
	mov	esi, OFFSET FLAT:label_132
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	mov	r13b, 4
	je	.label_121
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_123
	mov	esi, OFFSET FLAT:label_140
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rax
	mov	r13b, 5
	je	.label_121
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_135:
	xor	r13d, r13d
.label_121:
	mov	edi, r14d
	call	eval3
	mov	r15, rax
	test	r14b, r14b
	je	.label_124
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_130
	test	eax, eax
	jne	.label_131
	lea	rbp, [rbx + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [rbx + 8], r12
	mov	dword ptr [rbx], 1
.label_130:
	mov	eax, dword ptr [r15]
	cmp	eax, 1
	je	.label_138
	test	eax, eax
	jne	.label_131
	lea	rbp, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], r12
	mov	dword ptr [r15], 1
.label_138:
	mov	rbp, qword ptr [rbx + 8]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	lea	r12, [rbx + 8]
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_136:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_133
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_136
	mov	rsi, qword ptr [r15 + 8]
	xor	eax, eax
	cmp	byte ptr [rsi], 0x2d
	lea	r14, [r15 + 8]
	sete	al
	mov	cl, byte ptr [rsi + rax]
	lea	rax, [rsi + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_147:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_122
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_147
	mov	rdi, rbp
	call	strintcmp
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_124:
	lea	r12, [rbx + 8]
	xor	ebp, ebp
.label_125:
	cmp	dword ptr [rbx], 1
	jne	.label_142
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_142:
	lea	rdi, [rbx + 8]
	call	__gmpz_clear
.label_134:
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_139
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_143
	nop	dword ptr [rax + rax]
.label_139:
	call	__gmpz_clear
.label_143:
	mov	rdi, r15
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rdi, [rbx + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_ui
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_126
.label_123:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_131:
	call	abort
.label_141:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0

	.globl eval3
	.type eval3, @function
eval3:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	ebp, dil
	mov	edi, ebp
	call	eval4
	mov	r14, rax
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	bpl, bpl
	je	.label_162
	test	rdi, rdi
	je	.label_154
	mov	r15, r14
	add	r15, 8
	nop	dword ptr [rax]
.label_161:
	mov	esi, OFFSET FLAT:label_149
	call	strcmp
	xor	ebp, ebp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_151
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_154
	mov	esi, OFFSET FLAT:label_148
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	mov	ebp, 1
	jne	.label_154
.label_151:
	mov	edi, 1
	call	eval4
	mov	r13, rax
	mov	eax, dword ptr [r14]
	test	eax, eax
	je	.label_165
	cmp	eax, 1
	jne	.label_157
	mov	rbx, qword ptr [r15]
	xor	eax, eax
	cmp	byte ptr [rbx], 0x2d
	sete	al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_156:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_153
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_156
	mov	edx, 0xa
	mov	rdi, r15
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r14], 0
.label_165:
	mov	eax, dword ptr [r13]
	cmp	eax, 1
	je	.label_160
	test	eax, eax
	jne	.label_157
	lea	r12, [r13 + 8]
	jmp	.label_163
	nop	
.label_160:
	mov	rbx, qword ptr [r13 + 8]
	xor	eax, eax
	cmp	byte ptr [rbx], 0x2d
	lea	r12, [r13 + 8]
	sete	al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax + rax]
.label_152:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_153
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_152
	mov	edx, 0xa
	mov	rdi, r12
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r13], 0
.label_163:
	test	ebp, ebp
	mov	eax, OFFSET FLAT:__gmpz_sub
	mov	ecx, OFFSET FLAT:__gmpz_add
	cmove	rax, rcx
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, rbx
	call	rax
	cmp	dword ptr [r13], 1
	jne	.label_164
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_166
	nop	dword ptr [rax]
.label_164:
	mov	rdi, rbx
	call	__gmpz_clear
.label_166:
	mov	rdi, r13
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_161
	jmp	.label_154
	nop	dword ptr [rax + rax]
.label_155:
	mov	rdi, rbx
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
.label_162:
	test	rdi, rdi
	je	.label_154
	mov	esi, OFFSET FLAT:label_149
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_159
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_154
	mov	esi, OFFSET FLAT:label_148
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_154
.label_159:
	xor	edi, edi
	call	eval4
	mov	rbx, rax
	cmp	dword ptr [rbx], 1
	lea	rdi, [rbx + 8]
	jne	.label_150
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_155
	nop	dword ptr [rax + rax]
.label_150:
	call	__gmpz_clear
	jmp	.label_155
.label_154:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_157:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl eval4
	.type eval4, @function
eval4:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edi
	movzx	edi, r15b
	mov	dword ptr [rsp + 0x24], edi
	call	eval6
	mov	rbx, rax
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_196
	test	r15b, r15b
	je	.label_200
	nop	
.label_185:
	mov	esi, OFFSET FLAT:label_167
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	jne	.label_196
	mov	edi, 1
	call	eval6
	mov	rbp, rax
	mov	r14, rbp
	mov	rdi, rbx
	mov	rsi, rbp
	call	docolon
	mov	r12, rax
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_206
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
.label_206:
	call	__gmpz_clear
.label_173:
	mov	rdi, rbx
	call	free
	add	rbp, 8
	cmp	dword ptr [r14], 1
	jne	.label_171
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_171:
	mov	rdi, rbp
	call	__gmpz_clear
.label_181:
	mov	rdi, r14
	call	free
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	mov	rbx, r12
	jne	.label_185
	jmp	.label_191
	nop	dword ptr [rax]
.label_200:
	mov	esi, OFFSET FLAT:label_167
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbp, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbp
	jne	.label_196
	xor	edi, edi
	call	eval6
	mov	rbp, rax
	cmp	dword ptr [rbp], 1
	lea	rdi, [rbp + 8]
	jne	.label_198
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_201
	nop	dword ptr [rax]
.label_198:
	call	__gmpz_clear
.label_201:
	mov	rdi, rbp
	call	free
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_200
.label_196:
	mov	r12, rbx
.label_191:
	mov	qword ptr [rsp + 0x10], r12
	mov	dword ptr [rsp + 0xc], r15d
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_170
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + 8]
	mov	qword ptr [rsp + 0x18], rax
	nop	word ptr cs:[rax + rax]
.label_177:
	mov	esi, OFFSET FLAT:label_172
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbx
	mov	r12d, 0
	je	.label_183
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_170
	mov	esi, OFFSET FLAT:label_182
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	mov	r12d, 1
	je	.label_183
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_170
	mov	esi, OFFSET FLAT:label_189
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	mov	r12d, 2
	jne	.label_170
.label_183:
	mov	edi, dword ptr [rsp + 0x24]
	call	eval6
	mov	rbp, rax
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_197
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_178
	nop	word ptr cs:[rax + rax]
.label_188:
	mov	esi, OFFSET FLAT:label_167
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_197
	mov	edi, 1
	call	eval6
	mov	r15, rax
	mov	r14, r15
	mov	rdi, rbp
	mov	rsi, r15
	call	docolon
	mov	r13, rax
	lea	rdi, [rbp + 8]
	cmp	dword ptr [rbp], 1
	jne	.label_169
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_169:
	call	__gmpz_clear
.label_176:
	mov	rdi, rbp
	call	free
	add	r15, 8
	cmp	dword ptr [r14], 1
	jne	.label_187
	mov	rdi, qword ptr [r15]
	call	free
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	rdi, r15
	call	__gmpz_clear
.label_184:
	mov	rdi, r14
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	rbp, r13
	jne	.label_188
	jmp	.label_195
	nop	dword ptr [rax + rax]
.label_178:
	mov	esi, OFFSET FLAT:label_167
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	jne	.label_197
	xor	edi, edi
	call	eval6
	mov	rbx, rax
	cmp	dword ptr [rbx], 1
	lea	rdi, [rbx + 8]
	jne	.label_180
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_202
	nop	dword ptr [rax + rax]
.label_180:
	call	__gmpz_clear
.label_202:
	mov	rdi, rbx
	call	free
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_178
	nop	dword ptr [rax]
.label_197:
	mov	r13, rbp
.label_195:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_205
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax]
	test	eax, eax
	je	.label_207
	cmp	eax, 1
	jne	.label_179
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	dword ptr [rax]
.label_192:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_175
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_192
	mov	edx, 0xa
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0
.label_207:
	mov	eax, dword ptr [r13]
	test	eax, eax
	je	.label_186
	cmp	eax, 1
	jne	.label_190
	mov	rbp, qword ptr [r13 + 8]
	xor	eax, eax
	cmp	byte ptr [rbp], 0x2d
	lea	rdi, [r13 + 8]
	sete	al
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	dword ptr [rax]
.label_199:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_175
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_199
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [r13], 0
.label_186:
	test	r12d, r12d
	mov	eax, OFFSET FLAT:__gmpz_mul
	je	.label_203
	cmp	dword ptr [r13 + 0xc], 0
	je	.label_204
	cmp	r12d, 1
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	mov	ecx, OFFSET FLAT:__gmpz_tdiv_q
	cmove	rax, rcx
.label_203:
	lea	rdx, [r13 + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rdi
	call	rax
.label_205:
	lea	rdi, [r13 + 8]
	cmp	dword ptr [r13], 1
	jne	.label_168
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_174
.label_168:
	call	__gmpz_clear
.label_174:
	mov	rdi, r13
	call	free
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	jne	.label_177
.label_170:
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
.label_194:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_179:
	call	abort
.label_190:
	call	abort
.label_204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	jmp	.label_194
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403490

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r15d, edi
	mov	rbp, qword ptr [rip + args]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_213
	mov	esi, OFFSET FLAT:label_149
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbp + rcx*8]
	mov	qword ptr [rip + args],  rbx
	mov	rbp, qword ptr [rbp + rcx*8]
	je	.label_227
	test	rbp, rbp
	je	.label_213
	mov	esi, OFFSET FLAT:label_249
	mov	rdi, rbp
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_252
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_213
	mov	esi, OFFSET FLAT:label_257
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_261
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_213
	mov	esi, OFFSET FLAT:label_266
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_267
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_213
	mov	esi, OFFSET FLAT:label_276
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_278
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_213
	mov	esi, OFFSET FLAT:label_281
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_283
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_284
	mov	esi, OFFSET FLAT:label_287
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rbx, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rbx
	je	.label_289
.label_284:
	lea	rax, [rbx + 8]
	mov	qword ptr [rip + args],  rax
	mov	rbx, qword ptr [rbx]
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbx
	jmp	.label_209
.label_227:
	test	rbp, rbp
	je	.label_213
	add	rbx, 8
	mov	qword ptr [rip + args],  rbx
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, rbp
.label_209:
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	jmp	.label_218
.label_252:
	movzx	edi, r15b
	call	eval6
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_222
	cmp	eax, 1
	jne	.label_226
	lea	r14, [rbp + 8]
	mov	rbx, qword ptr [rbp + 8]
	jmp	.label_229
.label_261:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r13, rax
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	r14, rbp
	test	r15b, r15b
	je	.label_235
	mov	rdi, r13
	mov	rsi, r14
	call	docolon
	mov	r15, rax
	mov	rdi, r13
	add	rdi, 8
	cmp	dword ptr [r13], 1
	jne	.label_239
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_242
.label_222:
	lea	r14, [rbp + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r14
	call	__gmpz_get_str
	mov	rbx, rax
	mov	rdi, r14
	call	__gmpz_clear
	mov	qword ptr [rbp + 8], rbx
	mov	dword ptr [rbp], 1
.label_229:
	mov	rdi, rbx
	call	mbslen
	mov	rbx, rax
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	cmp	dword ptr [rbp], 1
	jne	.label_258
	mov	rdi, qword ptr [r14]
	call	free
	jmp	.label_244
.label_258:
	mov	rdi, rbp
	add	rdi, 8
.label_259:
	call	__gmpz_clear
.label_244:
	mov	rdi, rbp
	jmp	.label_265
.label_267:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r12, rax
	mov	r14, r12
	mov	edi, ebx
	call	eval6
	mov	r15, rax
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_269
	test	eax, eax
	jne	.label_272
	lea	rbx, [r12 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	rbp, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], rbp
	mov	dword ptr [r14], 1
.label_269:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_280
	cmp	eax, 1
	jne	.label_288
	lea	rax, [r15 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_210
.label_278:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r12, rax
	mov	edi, ebx
	call	eval6
	mov	r15, rax
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_262
	mov	r14, rbp
	test	eax, eax
	jne	.label_215
	lea	rbx, [r12 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	rbp, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r12 + 8], rbp
	mov	dword ptr [r12], 1
	mov	rbp, r14
.label_262:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_214
	cmp	eax, 1
	jne	.label_215
	mov	rbx, qword ptr [r15 + 8]
	xor	eax, eax
	cmp	byte ptr [rbx], 0x2d
	lea	rdi, [r15 + 8]
	sete	al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax + rax]
.label_224:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_219
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_224
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [r15], 0
.label_214:
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_233
	cmp	eax, 1
	jne	.label_234
	mov	rbx, qword ptr [rbp + 8]
	xor	eax, eax
	cmp	byte ptr [rbx], 0x2d
	lea	rdi, [rbp + 8]
	sete	al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_240:
	movsx	ecx, cl
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_219
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_240
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], 0
.label_233:
	mov	eax, dword ptr [r15 + 0xc]
	mov	r14, -1
	test	eax, eax
	mov	rdx, -1
	js	.label_248
	cmp	eax, 1
	ja	.label_254
	mov	rcx, qword ptr [r15 + 0x10]
	xor	edx, edx
	test	eax, eax
	cmovne	rdx, qword ptr [rcx]
	cmp	rdx, -1
	jne	.label_248
.label_254:
	mov	rdx, -2
.label_248:
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rbp + 0xc]
	test	eax, eax
	js	.label_253
	cmp	eax, 1
	ja	.label_246
	mov	rcx, qword ptr [rbp + 0x10]
	xor	r14d, r14d
	test	eax, eax
	cmovne	r14, qword ptr [rcx]
	cmp	r14, -1
	jne	.label_253
.label_246:
	mov	r14, -2
.label_253:
	mov	qword ptr [rsp + 8], rbp
	mov	r13, qword ptr [r12 + 8]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rbx, rbp
	jb	.label_270
	mov	rdi, r13
	call	mbslen
	mov	rbx, rax
.label_270:
	mov	rcx, qword ptr [rsp]
	lea	rax, [rcx - 1]
	cmp	rax, rbx
	jae	.label_274
	lea	rax, [r14 + 1]
	cmp	rax, 1
	ja	.label_277
.label_274:
	mov	edi, OFFSET FLAT:label_46
	call	xstrdup
	mov	r14, rax
.label_223:
	mov	rbp, qword ptr [rsp + 8]
	lea	rbx, [r12 + 8]
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rdi, r14
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	mov	rdi, r14
	call	free
	jmp	.label_286
.label_280:
	lea	rbp, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	call	__gmpz_get_str
	mov	rbx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], rbx
	mov	dword ptr [r15], 1
.label_210:
	xor	ebp, ebp
	cmp	byte ptr [rbx], 0
	je	.label_216
	mov	rbp, qword ptr [r14 + 8]
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_212
	mov	qword ptr [rsp + 0x20], rbp
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x30]
	xor	ebp, ebp
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_217
	test	al, al
	jne	.label_216
.label_217:
	lea	r13, [rsp + 0x58]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x50], r14
.label_271:
	inc	rcx
	mov	qword ptr [rsp], rcx
	cmp	qword ptr [rsp + 0x28], 1
	jne	.label_220
	mov	rbp, qword ptr [rsp + 0x20]
	movsx	esi, byte ptr [rbp]
	mov	rdi, rbx
	call	mbschr
	test	rax, rax
	mov	eax, 1
	je	.label_232
	jmp	.label_236
.label_220:
	mov	qword ptr [rsp + 0x68], rbx
	mov	byte ptr [rsp + 0x58], 0
	mov	qword ptr [rsp + 0x5c], 0
	jmp	.label_237
	nop	dword ptr [rax + rax]
.label_225:
	add	qword ptr [rsp + 0x68], r14
.label_237:
	mov	byte ptr [rsp + 0x64], 0
	mov	rdi, r13
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_241
	test	eax, eax
	je	.label_245
.label_241:
	mov	rdx, qword ptr [rsp + 0x30]
	test	dl, dl
	je	.label_247
	xor	cl, 1
	test	cl, 1
	jne	.label_247
	shr	rdx, 0x20
	cmp	eax, edx
	je	.label_264
	mov	r14, qword ptr [rsp + 0x70]
	add	qword ptr [rsp + 0x68], r14
	jmp	.label_237
	nop	word ptr cs:[rax + rax]
.label_247:
	mov	r14, qword ptr [rsp + 0x70]
	cmp	r14, qword ptr [rsp + 0x28]
	jne	.label_225
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_225
	jmp	.label_264
.label_245:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x50]
.label_232:
	add	rbp, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	mov	ebp, 0
	mov	rcx, qword ptr [rsp]
	jne	.label_271
	test	al, al
	je	.label_271
	jmp	.label_216
.label_239:
	call	__gmpz_clear
.label_242:
	mov	rdi, r13
	call	free
	mov	r13, r15
.label_235:
	add	rbp, 8
	cmp	dword ptr [r14], 1
	jne	.label_279
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_282
.label_279:
	mov	rdi, rbp
	call	__gmpz_clear
.label_282:
	mov	rdi, r14
	jmp	.label_265
.label_283:
	movzx	edi, r15b
	call	eval
	mov	r13, rax
	mov	rbx, qword ptr [rip + args]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_285
	mov	esi, OFFSET FLAT:label_287
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	rax, [rbx + rcx*8]
	mov	qword ptr [rip + args],  rax
	je	.label_218
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	mov	rdx, qword ptr [rax]
	jmp	.label_211
.label_212:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcspn
	cmp	byte ptr [rbp + rax], 0
	mov	ebp, 0
	lea	rax, [rax + 1]
	cmovne	rbp, rax
	jmp	.label_216
.label_219:
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	edi, OFFSET FLAT:label_46
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	lea	rbx, [r12 + 8]
.label_286:
	cmp	dword ptr [r12], 1
	jne	.label_228
	mov	rdi, qword ptr [rbx]
	call	free
	jmp	.label_231
.label_228:
	mov	rdi, r12
	add	rdi, 8
	call	__gmpz_clear
.label_231:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_273
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_238
.label_273:
	call	__gmpz_clear
.label_238:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_259
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_244
.label_264:
	mov	rbp, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 0x50]
.label_216:
	add	r12, 8
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbp
	call	__gmpz_init_set_ui
	cmp	dword ptr [r14], 1
	jne	.label_255
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_256
.label_255:
	mov	rdi, r12
	call	__gmpz_clear
.label_256:
	mov	rdi, r14
	call	free
	cmp	dword ptr [r15], 1
	jne	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax]
	call	free
	jmp	.label_263
.label_260:
	mov	rdi, r15
	add	rdi, 8
	call	__gmpz_clear
.label_263:
	mov	rdi, r15
.label_265:
	call	free
.label_218:
	mov	rax, r13
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_277:
	sub	rbx, rcx
	inc	rbx
	cmp	rbx, r14
	cmova	rbx, r14
	mov	r14, rcx
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_275
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	rcx, r14
	mov	r14, rax
	lea	rsi, [r13 + rcx - 1]
	mov	rcx, -1
	mov	rdi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	r13, rax
	jmp	.label_268
.label_275:
	inc	rbp
	mov	rdi, rbp
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rsp + 0x20], r13
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, cl
	sete	al
	shr	rcx, 0x20
	setne	cl
	test	rbx, rbx
	mov	r13, r14
	je	.label_268
	or	cl, al
	mov	r13, r14
	je	.label_268
	mov	ebp, 1
	mov	r13, r14
.label_221:
	cmp	rbp, qword ptr [rsp]
	jb	.label_208
	dec	rbx
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, -1
	mov	rdi, r13
	call	__mempcpy_chk
	mov	r13, rax
.label_208:
	mov	rax, qword ptr [rsp + 0x28]
	add	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, cl
	sete	al
	shr	rcx, 0x20
	setne	cl
	test	rbx, rbx
	je	.label_268
	inc	rbp
	or	cl, al
	jne	.label_221
.label_268:
	mov	byte ptr [r13], 0
	jmp	.label_223
.label_236:
	mov	rbp, qword ptr [rsp]
	jmp	.label_216
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
.label_251:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + args]
	mov	rdx, qword ptr [rax - 8]
.label_211:
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_226:
	call	abort
.label_215:
	call	abort
.label_272:
	call	abort
.label_288:
	call	abort
.label_234:
	call	abort
.label_289:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_285:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	jmp	.label_251
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f00

	.globl docolon
	.type docolon, @function
docolon:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14]
	cmp	eax, 1
	je	.label_291
	test	eax, eax
	jne	.label_295
	lea	rbx, [r14 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	r12, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], r12
	mov	dword ptr [r14], 1
.label_291:
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_300
	cmp	eax, 1
	jne	.label_303
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_307
.label_300:
	lea	r12, [r15 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r12
	call	__gmpz_get_str
	mov	rbx, rax
	mov	rdi, r12
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], rbx
	mov	dword ptr [r15], 1
.label_307:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x88], 0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_298
	and	byte ptr [rsp + 0x98], 0x7f
	mov	rbx, qword ptr [r14 + 8]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rsp + 0x60]
	lea	r8, [rsp]
	xor	ecx, ecx
	mov	rsi, rbx
	mov	rdx, rax
	call	rpl_re_match
	mov	r15, rax
	test	r15, r15
	js	.label_293
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_296
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [rsp + 8]
	add	rbx, qword ptr [rax + 8]
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	mov	dword ptr [r14], 1
	mov	rdi, rbx
	jmp	.label_301
.label_293:
	cmp	r15, -1
	jne	.label_305
	mov	rbx, qword ptr [rsp + 0x90]
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	cmp	rbx, 0
	je	.label_310
	mov	dword ptr [r14], 1
	mov	edi, OFFSET FLAT:label_46
.label_301:
	call	xstrdup
	mov	qword ptr [r14 + 8], rax
	jmp	.label_294
.label_296:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	mov	rbx, r15
	je	.label_292
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x30], r12
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	xor	ebx, ebx
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_304
	test	al, al
	jne	.label_292
.label_304:
	xor	ebx, ebx
	lea	r14, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_297:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	sub	rcx, r12
	cmp	rcx, r15
	adc	rbx, 0
	cmp	rcx, r15
	jae	.label_292
	add	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_297
	test	al, al
	je	.label_297
.label_292:
	mov	edi, 0x18
	call	xmalloc
	mov	r14, rax
	mov	dword ptr [r14], 0
	lea	rdi, [r14 + 8]
	mov	rsi, rbx
	jmp	.label_299
.label_310:
	mov	dword ptr [r14], 0
	mov	rdi, r14
	add	rdi, 8
	xor	esi, esi
.label_299:
	call	__gmpz_init_set_ui
.label_294:
	cmp	qword ptr [rsp], 0
	je	.label_308
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_308:
	mov	qword ptr [rsp + 0x80], 0
	lea	rdi, [rsp + 0x60]
	call	rpl_regfree
	mov	rax, r14
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_295:
	call	abort
.label_303:
	call	abort
.label_298:
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_309
	xor	eax, eax
	call	error
.label_305:
	mov	ebx, 0x4b
	cmp	r15, -2
	jne	.label_302
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 3
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404210
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404220
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_316
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_313
	cmp	dword ptr [rbp], 0x20
	jne	.label_313
.label_316:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_312
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_311
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_309
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_312:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_311:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_315
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0

	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_317
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_317:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_319
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_149
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_318
	cmp	eax, 0x76
	jne	.label_319
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_318:
	xor	edi, edi
	call	rbx
.label_319:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0
	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:

	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_323
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_323:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_46
	mov	edx, OFFSET FLAT:label_149
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_322
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_324
	cmp	eax, 0x76
	je	.label_321
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_320
.label_324:
	xor	edi, edi
.label_320:
	call	rcx
.label_322:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_321:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	ebx, esi
	mov	r14, rdi
	call	__ctype_get_mb_cur_max
	mov	ecx, ebx
	and	ecx, 0xf0
	cmp	ecx, 0x30
	jb	.label_325
	cmp	rax, 2
	jb	.label_325
	mov	qword ptr [rsp + 0x10], r14
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	xor	r14d, r14d
	test	al, al
	je	.label_330
	shr	rax, 0x20
	je	.label_326
.label_330:
	lea	r15, [rsp]
	xor	r14d, r14d
	nop	
.label_328:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, 1
	jne	.label_327
	cmp	byte ptr [rax], bl
	je	.label_329
.label_327:
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_328
	shr	rax, 0x20
	jne	.label_328
	jmp	.label_326
.label_325:
	mov	rdi, r14
	mov	esi, ebx
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	strchr
.label_329:
	mov	r14, rax
.label_326:
	mov	rax, r14
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045b0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_334
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_333
	shr	rax, 0x20
	je	.label_331
.label_333:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_332:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_332
	shr	rax, 0x20
	jne	.label_332
.label_331:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_334:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404650

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_341
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_346
	lea	r14, [rbx + 4]
.label_336:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_343
	test	rax, rax
	je	.label_345
	cmp	rax, -1
	jne	.label_349
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_342
.label_346:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_348
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_342
.label_343:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_342
.label_345:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_347
	cmp	dword ptr [r12], 0
	jne	.label_337
.label_349:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_342
	mov	byte ptr [rbx], 0
.label_342:
	mov	byte ptr [rbx + 0xc], 1
.label_341:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_348:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_335
	mov	byte ptr [rbx], 1
	jmp	.label_336
.label_347:
	mov	edi, OFFSET FLAT:label_338
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_340
	call	__assert_fail
.label_337:
	mov	edi, OFFSET FLAT:label_344
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_340
	call	__assert_fail
.label_335:
	mov	edi, OFFSET FLAT:label_350
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_340
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_351
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_352
.label_351:
	mov	qword ptr [r14 + 4], 0
.label_352:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_353
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_353:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_354
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_354:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_357
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_356
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_356
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_360
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_360:
	mov	rbx, r14
.label_356:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_357:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_358
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e0
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
	#Procedure 0x404920
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
	#Procedure 0x404930
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
	#Procedure 0x404940
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
	.align	32
	#Procedure 0x404980
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
	#Procedure 0x4049a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_361
	test	rdx, rdx
	je	.label_361
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_361:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0
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
	.align	32
	#Procedure 0x404a50

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
	jmp	.label_410
	nop	
.label_450:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_363
	or	al, dl
	jne	.label_363
	test	dil, 1
	jne	.label_448
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_363
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_410
	jmp	.label_363
.label_2693:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_454
	test	rbp, rbp
	je	.label_416
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_416:
	mov	r14d, 1
	jmp	.label_459
.label_2694:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_377
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_405
.label_454:
	xor	r14d, r14d
.label_459:
	mov	eax, OFFSET FLAT:label_377
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_378
	nop	
.label_410:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_474
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_481]
.label_2695:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_488
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_367
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_2696:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_376
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_376
	xor	r14d, r14d
	nop	
.label_396:
	cmp	r14, rbp
	jae	.label_466
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_466:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_396
.label_376:
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
	jmp	.label_405
.label_2688:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_405
.label_2691:
	mov	al, 1
.label_2689:
	mov	r12b, 1
.label_2692:
	test	r12b, 1
	mov	cl, 1
	je	.label_418
	mov	ecx, eax
.label_418:
	mov	al, cl
.label_2690:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_421
	test	rbp, rbp
	je	.label_427
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_427:
	mov	r14d, 1
	jmp	.label_463
.label_421:
	xor	r14d, r14d
.label_463:
	mov	ecx, OFFSET FLAT:label_367
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_378:
	mov	sil, r12b
.label_405:
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
	jmp	.label_438
	nop	word ptr cs:[rax + rax]
.label_441:
	inc	r12
.label_438:
	cmp	r11, -1
	je	.label_464
	cmp	r12, r11
	jne	.label_486
	jmp	.label_467
	nop	word ptr cs:[rax + rax]
.label_464:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_432
.label_486:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_476
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_480
	cmp	r11, -1
	jne	.label_480
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_480:
	cmp	rbx, r11
	jbe	.label_366
.label_476:
	xor	esi, esi
.label_398:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_368
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_373]
.label_2742:
	test	r12, r12
	jne	.label_381
	jmp	.label_382
	nop	word ptr cs:[rax + rax]
.label_366:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_394
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_398
	jmp	.label_406
.label_394:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_398
.label_2746:
	xor	eax, eax
	cmp	r11, -1
	je	.label_413
	test	r12, r12
	jne	.label_417
	cmp	r11, 1
	je	.label_382
	xor	r13d, r13d
	jmp	.label_365
.label_2735:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_423
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
	cmp	r8d, 2
	jne	.label_430
	mov	eax, r9d
	and	al, 1
	jne	.label_430
	cmp	r14, rbp
	jae	.label_433
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_433:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_435
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_435:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_442
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_442:
	add	r14, 3
	mov	r9b, 1
.label_430:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_445
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_445:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_428
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_428
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_428
	cmp	r14, rbp
	jae	.label_412
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_412:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_434
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_434:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_365
.label_2736:
	mov	bl, 0x62
	jmp	.label_465
.label_2737:
	mov	cl, 0x74
	jmp	.label_404
.label_2738:
	mov	bl, 0x76
	jmp	.label_465
.label_2739:
	mov	bl, 0x66
	jmp	.label_465
.label_2740:
	mov	cl, 0x72
	jmp	.label_404
.label_2743:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_473
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_384
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
	jae	.label_482
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_482:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_370
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_370:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_375
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	add	r14, 3
	xor	r9d, r9d
.label_473:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_365
.label_2744:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_389
	cmp	r8d, 2
	jne	.label_381
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_381
	jmp	.label_384
.label_2745:
	cmp	r8d, 2
	jne	.label_400
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_384
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_453
.label_368:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_409
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_420
.label_413:
	test	r12, r12
	jne	.label_431
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_431
.label_382:
	mov	dl, 1
.label_2741:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_384
	xor	eax, eax
	mov	r13b, dl
.label_365:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_439
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_443
	jmp	.label_444
	nop	word ptr cs:[rax + rax]
.label_439:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_444
.label_443:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_449
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_452
	nop	dword ptr [rax]
.label_444:
	test	sil, sil
.label_452:
	mov	ebx, r15d
	je	.label_386
	jmp	.label_456
.label_449:
	mov	ebx, r15d
	jmp	.label_456
.label_423:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_441
	xor	r15d, r15d
	jmp	.label_381
.label_400:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_404
	xor	eax, eax
	mov	r15b, 0x5c
.label_453:
	xor	r13d, r13d
	jmp	.label_386
.label_404:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_384
.label_465:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_365
	nop	
.label_456:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
	cmp	r8d, 2
	jne	.label_429
	mov	eax, r9d
	and	al, 1
	jne	.label_429
	cmp	r14, rbp
	jae	.label_440
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_440:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_483
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_483:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_487
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_487:
	add	r14, 3
	mov	r9b, 1
.label_429:
	cmp	r14, rbp
	jae	.label_395
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_395:
	inc	r14
	jmp	.label_419
.label_409:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_374
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_374:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_383
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_460:
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
	je	.label_401
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_415
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_392
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_425
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_447:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_411
	bt	rsi, rdx
	jb	.label_384
.label_411:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_447
.label_425:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_446
	xor	r13d, r13d
.label_446:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_460
	jmp	.label_408
.label_428:
	xor	r13d, r13d
	jmp	.label_365
.label_431:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_365
.label_389:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_381
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_381
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_381
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_461
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_397
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_470
	cmp	r14, rbp
	jae	.label_471
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_471:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_478
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_478:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_469
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_469:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_479
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_479:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_397:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_365
.label_381:
	xor	eax, eax
.label_417:
	xor	r13d, r13d
	jmp	.label_365
.label_383:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_484:
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
	je	.label_407
	cmp	rbp, -1
	je	.label_399
	cmp	rbp, -2
	je	.label_401
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_477
	xor	r13d, r13d
.label_477:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_484
	jmp	.label_408
.label_401:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_385
	lea	rax, [r10 + r12]
.label_369:
	cmp	byte ptr [rax + rsi], 0
	je	.label_385
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_369
.label_385:
	mov	qword ptr [rsp + 0x40], rsi
.label_415:
	xor	r13d, r13d
	jmp	.label_392
.label_399:
	xor	r13d, r13d
.label_407:
	mov	r10, qword ptr [rsp + 0x28]
.label_392:
	mov	r12, qword ptr [rsp + 0x40]
.label_408:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_420:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_437
	test	al, al
	je	.label_437
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_365
.label_437:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_451
	nop	word ptr [rax + rax]
.label_468:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_451:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_455
	test	sil, 1
	je	.label_414
	cmp	r14, rbp
	jae	.label_458
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_458:
	inc	r14
	xor	esi, esi
	jmp	.label_414
	nop	word ptr cs:[rax + rax]
.label_455:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
	cmp	r8d, 2
	jne	.label_462
	mov	eax, r9d
	and	al, 1
	jne	.label_462
	cmp	r14, rbp
	jae	.label_388
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_388:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_472
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_472:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_372
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_372:
	add	r14, 3
	mov	r9b, 1
.label_462:
	cmp	r14, rbp
	jae	.label_485
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_485:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_424
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_424:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_371
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_371:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_414:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_386
	test	r9b, 1
	je	.label_390
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_379
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_393
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_393:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_402
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_402:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_390
	nop	word ptr cs:[rax + rax]
.label_379:
	mov	rbx, rcx
.label_390:
	cmp	r14, rbp
	jae	.label_468
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_468
	nop	
.label_386:
	test	r9b, 1
	je	.label_422
	and	al, 1
	jne	.label_422
	cmp	r14, rbp
	jae	.label_426
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_426:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_457
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_457:
	add	r14, 2
	xor	r9d, r9d
.label_422:
	mov	ebx, r15d
.label_419:
	cmp	r14, rbp
	jae	.label_436
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_436:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_441
.label_461:
	xor	r13d, r13d
	jmp	.label_365
	nop	word ptr cs:[rax + rax]
.label_467:
	mov	rcx, r12
.label_432:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_450
	or	al, dl
	jne	.label_450
	mov	r11, rcx
	jmp	.label_406
.label_384:
	mov	eax, 2
.label_364:
	mov	qword ptr [rsp + 0x38], rax
.label_406:
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
.label_387:
	mov	r14, rax
.label_391:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_363:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_475
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_403
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_403
	inc	rdx
	nop	dword ptr [rax + rax]
.label_380:
	cmp	r14, rbp
	jae	.label_362
	mov	byte ptr [rcx + r14], al
.label_362:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_380
	jmp	.label_403
.label_448:
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
	jmp	.label_387
.label_475:
	mov	rcx, qword ptr [rsp + 0x10]
.label_403:
	cmp	r14, rbp
	jae	.label_391
	mov	byte ptr [rcx + r14], 0
	jmp	.label_391
.label_470:
	mov	eax, 5
	jmp	.label_364
.label_474:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405880
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
	.align	32
	#Procedure 0x405950
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
	je	.label_489
	mov	qword ptr [rax], rbx
.label_489:
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
	.align	32
	#Procedure 0x405a40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_490
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_492:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_492
.label_490:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_493
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_494], OFFSET FLAT:slot0
.label_493:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_491
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_491:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405af0

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
	js	.label_498
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_501
	cmp	r12d, 0x7fffffff
	je	.label_496
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
	jne	.label_499
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_499:
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
.label_501:
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
	jbe	.label_497
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_500
.label_497:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_495
	mov	rdi, r14
	call	free
.label_495:
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
.label_500:
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
.label_498:
	call	abort
.label_496:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0
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
	#Procedure 0x405ce0
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
	#Procedure 0x405d00

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
	je	.label_502
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
.label_502:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d70
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
	je	.label_503
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
.label_503:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405de0
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
	je	.label_504
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
.label_504:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e50
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
	je	.label_505
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
.label_505:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ec0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
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
	.align	32
	#Procedure 0x405f30
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
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
	.align	32
	#Procedure 0x405fa0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
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
	.align	32
	#Procedure 0x406000
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
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
	.align	32
	#Procedure 0x406060
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
	je	.label_509
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
.label_509:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406100
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_510
	test	rdx, rdx
	je	.label_510
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_510:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x406170
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_511
	test	rdx, rdx
	je	.label_511
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_511:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_512
	test	rsi, rsi
	je	.label_512
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_512:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406250
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_506]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_507]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_508]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_513
	test	rsi, rsi
	je	.label_513
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
.label_513:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062d0
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
	#Procedure 0x4062f0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406310
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
	#Procedure 0x406330

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
	jne	.label_515
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_520
	cmp	ecx, 0x55
	jne	.label_514
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_514
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_514
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_514
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_514
	cmp	byte ptr [rax + 5], 0
	jne	.label_514
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_517
	mov	eax, OFFSET FLAT:label_518
	jmp	.label_519
.label_520:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_514
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_514
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_514
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_514
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_514
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_514
	cmp	byte ptr [rax + 7], 0
	je	.label_516
.label_514:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_377
	mov	eax, OFFSET FLAT:label_367
.label_519:
	cmove	rax, rcx
.label_515:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_516:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_521
	mov	eax, OFFSET FLAT:label_522
	jmp	.label_519
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406400

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406440

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_539
	nop	word ptr [rax + rax]
.label_542:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_542
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_545
	nop	word ptr [rax + rax]
.label_552:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_552
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_553
	movzx	r8d, cl
	movzx	edx, al
	cmp	edx, r8d
	jne	.label_526
	nop	dword ptr [rax + rax]
.label_546:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_540
	lea	edx, [rcx - 0x30]
	cmp	edx, 0xa
	jb	.label_546
	jmp	.label_540
.label_539:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_541
	inc	rsi
	nop	dword ptr [rax + rax]
.label_548:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_548
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_533
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_551
	inc	rdi
	nop	word ptr [rax + rax]
.label_528:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_528
.label_551:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_545:
	add	ecx, -0x30
	mov	eax, 0xffffffff
	cmp	ecx, 0xa
	jb	.label_533
	cmp	r8d, 0x30
	jne	.label_538
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_549:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_549
.label_538:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_541:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_550
	nop	
.label_532:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_532
.label_550:
	cmp	r8d, 0x30
	jne	.label_536
	nop	word ptr cs:[rax + rax]
.label_529:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_529
.label_536:
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	cmp	eax, 9
	ja	.label_524
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_524
	nop	word ptr cs:[rax + rax]
.label_543:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	jne	.label_524
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jb	.label_543
.label_524:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_547
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_523:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_523
.label_547:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_530
	xor	edx, edx
	nop	dword ptr [rax]
.label_531:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_531
.label_530:
	cmp	rcx, rdx
	jne	.label_534
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_535
.label_534:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_553:
	mov	r9b, cl
	jmp	.label_540
.label_526:
	mov	r9b, cl
.label_540:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_554
	xor	edx, edx
	nop	dword ptr [rax]
.label_544:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_544
.label_554:
	lea	edi, [r8 - 0x30]
	xor	eax, eax
	cmp	edi, 9
	ja	.label_537
	xor	eax, eax
	nop	dword ptr [rax]
.label_527:
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_527
.label_537:
	cmp	rdx, rax
	jne	.label_525
	sub	r8d, ecx
	xor	eax, eax
	test	rdx, rdx
.label_535:
	cmovne	eax, r8d
.label_533:
	ret	
.label_525:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066c0

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
	je	.label_555
	mov	edx, OFFSET FLAT:label_565
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_571
.label_555:
	mov	edx, OFFSET FLAT:label_572
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_558
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
	mov	esi, OFFSET FLAT:label_573
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_560
	jmp	qword ptr [(r12 * 8) + label_561]
.label_2619:
	add	rsp, 8
	jmp	.label_559
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
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
	jmp	.label_559
.label_2620:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
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
.label_2621:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
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
.label_2622:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
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
.label_2623:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
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
	jmp	.label_559
.label_2624:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
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
	jmp	.label_559
.label_2625:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
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
	jmp	.label_559
.label_2626:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_567
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
	jmp	.label_559
.label_2628:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_570
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
	jmp	.label_559
.label_2627:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_557
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
.label_559:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_574:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_574
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_579
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_582
.label_579:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_582:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_580
	cmp	r10d, 0x29
	jae	.label_578
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_581
.label_578:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_581:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_580
	cmp	r10d, 0x29
	jae	.label_576
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_577
.label_576:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_577:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_580
	cmp	r10d, 0x29
	jae	.label_587
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_575
.label_587:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_575:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_580
	cmp	r10d, 0x29
	jae	.label_585
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_586
.label_585:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_586:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_580
	cmp	r10d, 0x29
	jae	.label_583
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_584
.label_583:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_584:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_580
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_580
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_580
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_580
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_580:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c40
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_588
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_588:
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
	.align	32
	#Procedure 0x406cd0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_590
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_592
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_593
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_594
	test	rax, rax
	je	.label_593
.label_594:
	pop	rbx
	ret	
.label_593:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_595
	test	rax, rax
	je	.label_596
.label_595:
	pop	rbx
	ret	
.label_596:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406db0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_597
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_598
	test	rbx, rbx
	jne	.label_598
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_598:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_599
	test	rax, rax
	je	.label_597
.label_599:
	pop	rbx
	ret	
.label_597:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_600
	test	rbx, rbx
	jne	.label_600
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_600:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_602
	test	rax, rax
	je	.label_601
.label_602:
	pop	rbx
	ret	
.label_601:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406e30
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_606
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_608
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_603
.label_606:
	test	rcx, rcx
	jne	.label_609
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_609:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_604
.label_603:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_605
	test	rbx, rbx
	jne	.label_605
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_605:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_607
	test	rax, rax
	je	.label_608
.label_607:
	pop	rbx
	ret	
.label_608:
	call	xalloc_die
.label_604:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ed0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_610
	test	rax, rax
	je	.label_611
.label_610:
	pop	rbx
	ret	
.label_611:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ef0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_614
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_616
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_613
	call	free
	xor	eax, eax
	jmp	.label_615
.label_614:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_612
	mov	qword ptr [rsi], rbx
.label_613:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_615
	test	rax, rax
	je	.label_612
.label_615:
	pop	rbx
	ret	
.label_612:
	call	xalloc_die
.label_616:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f60
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
	je	.label_618
	test	r14, r14
	je	.label_617
.label_618:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_617:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fa0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_619
	call	rpl_calloc
	test	rax, rax
	je	.label_619
	pop	rcx
	ret	
.label_619:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0

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
	je	.label_620
	test	r15, r15
	je	.label_621
.label_620:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_621:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407010

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
	je	.label_623
	test	r15, r15
	je	.label_622
.label_623:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_622:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407060

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_309
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407090

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_625
	test	rsi, rsi
	mov	ecx, 1
	je	.label_626
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_626
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_625:
	mov	ecx, 1
.label_626:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070e0

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
	je	.label_627
	cmp	r15, -2
	jb	.label_627
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_627
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_627:
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
	#Procedure 0x407140

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_628
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_628:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071a0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_695
.label_919:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_708
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_740
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_754
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_754
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_754
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_754
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_754
	or	byte ptr [r12 + 0xb0], 4
.label_754:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_763
	test	al, 4
	jne	.label_769
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_708
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_787:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_775
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_775:
	cmp	ebp, 0x7f
	ja	.label_781
	cmp	ebp, eax
	je	.label_781
	or	byte ptr [r12 + 0xb0], 8
.label_781:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_787
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_949:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_794
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_794:
	cmp	ebx, eax
	je	.label_799
	or	byte ptr [r12 + 0xb0], 8
.label_799:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_949
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_810:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_804
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_804:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_810
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_813:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_812
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_812:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_813
	jmp	.label_763
.label_769:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_763:
	cmp	qword ptr [r12], 0
	je	.label_708
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_708
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_817
	cmp	edx, 2
	jl	.label_693
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_849
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_849
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_693:
	xor	eax, eax
	test	bpl, bpl
	mov	edx, 0
	je	.label_857
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_849
	mov	qword ptr [rsp + 0x50], rax
	mov	dl, bpl
	mov	r12, qword ptr [rsp + 0x18]
.label_857:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	mov	ebp, edx
	jmp	.label_864
.label_708:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_871
.label_817:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_864:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_878
	cmp	ecx, 2
	jl	.label_881
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_849
	lea	rbx, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_707:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_888
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_888
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_895
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_849
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_849
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_895
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_849
	mov	qword ptr [rsp + 0x60], rax
.label_895:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_904
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_849
	mov	qword ptr [rsp + 0x50], rax
.label_904:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_707
.label_849:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_913
.label_878:
	cmp	ecx, 2
	jl	.label_915
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_888
.label_881:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_917
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_923
	nop	dword ptr [rax]
.label_939:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_923:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_1153
.label_941:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_933
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_933:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_939
	jmp	.label_940
.label_1153:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_941
.label_915:
	test	rbx, rbx
	je	.label_942
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_943
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_943
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_946:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_946
	mov	rcx, rdi
.label_943:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_888
.label_940:
	mov	rax, r13
	jmp	.label_917
.label_942:
	mov	rax, qword ptr [rsp + 8]
.label_917:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_888:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_958
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_960
.label_958:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_961
	mov	rax, qword ptr [rbx + 0x70]
.label_928:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_924:
	test	r14, r14
	mov	rcx, rbp
	je	.label_975
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_977
	mov	rax, qword ptr [rbx + 0x70]
.label_1183:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_932
	mov	qword ptr [rbp], rcx
.label_975:
	test	rbp, rbp
	je	.label_932
	test	rcx, rcx
	je	.label_932
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
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
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_703
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_703
	test	rax, rax
	je	.label_703
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_703
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	r8, rbx
	mov	qword ptr [rsp + 8], r8
	je	.label_1006
	test	rbp, rbp
	je	.label_1007
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_964
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_964
	lea	rbx, [rcx - 4]
	mov	rdi, rbx
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	esi, 1
	cmp	rbx, 0xc
	jae	.label_1009
	movq	xmm0, rsi
	pslldq	xmm0, 8
	jmp	.label_1010
.label_1006:
	lea	r12, [r8 + 0x68]
	jmp	.label_1012
.label_1009:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1013]
	movdqa	xmm9, xmmword ptr [rip + label_1014]
	movdqa	xmm10, xmmword ptr [rip + label_1015]
	movdqa	xmm11, xmmword ptr [rip + label_1016]
	movdqa	xmm5, xmmword ptr [rip + label_1017]
	movdqa	xmm6, xmmword ptr [rip + label_1018]
	movdqa	xmm7, xmmword ptr [rip + label_1019]
	movdqa	xmm1, xmmword ptr [rip + label_1020]
	nop	word ptr cs:[rax + rax]
.label_791:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_791
.label_1010:
	test	rdx, rdx
	je	.label_1047
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1013]
	movdqa	xmm2, xmmword ptr [rip + label_1014]
	nop	word ptr cs:[rax + rax]
.label_1056:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1056
.label_1047:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_1007
	nop	dword ptr [rax]
.label_964:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_964
.label_1007:
	mov	rdx, qword ptr [r8 + 0x68]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1063
	cmp	cl, 4
	jne	.label_811
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r8 + 0xa0], rcx
	jmp	.label_811
.label_1063:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_811
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_811
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_1073
	mov	qword ptr [rsi], rdx
.label_1073:
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_811
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_811:
	lea	r12, [r8 + 0x68]
	jmp	.label_1082
.label_1129:
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_1082:
	mov	rsi, rax
.label_1102:
	test	rsi, rsi
	jne	.label_1084
	mov	rdi, rdx
.label_1101:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jne	.label_1086
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1095:
	mov	rsi, rcx
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rsi
	je	.label_1090
	test	rdx, rdx
	jne	.label_1086
.label_1090:
	mov	rdi, qword ptr [rcx]
	test	rdi, rdi
	jne	.label_1095
	jmp	.label_1117
.label_1086:
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1099
	cmp	cl, 4
	mov	esi, 0
	mov	rdi, rdx
	jne	.label_1101
	jmp	.label_1102
.label_1099:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rdi, rdx
	je	.label_1101
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rdi, rdx
	jne	.label_1101
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_1061
.label_1122:
	movsxd	rcx, dword ptr [rdi]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	movsxd	rcx, edi
	or	qword ptr [r8 + 0xa0], rcx
.label_1084:
	mov	rbp, rdx
.label_1119:
	mov	rdx, qword ptr [rbp + 8]
	test	rdx, rdx
	jne	.label_1094
	xor	ecx, ecx
.label_1115:
	mov	rdi, rcx
	mov	rcx, rbp
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rdi
	je	.label_1111
	test	rdx, rdx
	jne	.label_1094
.label_1111:
	mov	rbp, qword ptr [rcx]
	test	rbp, rbp
	jne	.label_1115
	jmp	.label_1117
	nop	
.label_1094:
	lea	rdi, [rdx + 0x28]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1118
	cmp	cl, 4
	mov	rbp, rdx
	jne	.label_1119
	jmp	.label_1122
.label_1118:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rbp, rdx
	je	.label_1119
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rbp, rdx
	jne	.label_1119
	lea	rsi, [rdx + 8]
.label_1061:
	mov	rbp, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	test	rbp, rbp
	je	.label_1126
	mov	qword ptr [rbp], rdx
.label_1126:
	mov	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_1102
	jmp	.label_1129
.label_1117:
	mov	rcx, qword ptr [r15 + 0x30]
	xor	edx, edx
	test	rcx, rcx
	je	.label_798
	xor	edx, edx
	nop	dword ptr [rax]
.label_1133:
	cmp	rdx, qword ptr [rax + rdx*8]
	jne	.label_798
	inc	rdx
	cmp	rdx, rcx
	jb	.label_1133
.label_798:
	cmp	rdx, rcx
	jne	.label_1012
	mov	rdi, rax
	call	free
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0xe0], 0
.label_1012:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1140:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1140
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1140
	xor	ecx, ecx
	jmp	.label_862
	nop	dword ptr [rax]
.label_1158:
	mov	rcx, qword ptr [rdx + 8]
	mov	rbx, rdx
.label_862:
	mov	dword ptr [rsp + 0x20], 0
	test	rcx, rcx
	je	.label_890
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_890
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_890
	mov	qword ptr [rax], rbx
	nop	word ptr [rax + rax]
.label_890:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_936
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_936
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_936
	mov	qword ptr [rax], rbx
	nop	
.label_936:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_658
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	je	.label_966
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	je	.label_1158
	test	rax, rax
	je	.label_1158
	jmp	.label_1140
.label_966:
	mov	rax, qword ptr [r12]
	mov	ebx, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_931:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_931
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_931
	nop	word ptr cs:[rax + rax]
.label_1191:
	cmp	byte ptr [rbp + 0x30], 0x10
	jne	.label_1170
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_1171
	nop	dword ptr [rax]
.label_1170:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r8
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_703
	cmp	byte ptr [rbp + 0x30], 0xc
	mov	r8, qword ptr [rsp + 8]
	jne	.label_1171
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r8]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_1171:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_1189
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_1191
	test	rax, rax
	mov	rbp, rcx
	je	.label_1191
	jmp	.label_931
.label_1189:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_1194
	cmp	al, 0xb
	jne	.label_1160
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_629
.label_1194:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_1198
.label_1160:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_1201
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1201:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_629
.label_1198:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_629:
	mov	rdx, rbp
	jmp	.label_632
.label_644:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_632:
	test	rax, rax
	mov	rcx, rax
	jne	.label_637
	xor	eax, eax
	nop	dword ptr [rax]
.label_641:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_639
	test	rcx, rcx
	jne	.label_637
.label_639:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_641
	jmp	.label_643
	nop	
.label_637:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_644
	cmp	al, 0xb
	jne	.label_645
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_632
.label_645:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_648
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_648:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_632
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_632
.label_643:
	mov	rdi, r8
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_658
	nop	word ptr [rax + rax]
.label_670:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_661
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_666:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_665
	test	rbx, rbx
	jne	.label_661
.label_665:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_666
	jmp	.label_667
	nop	
.label_661:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_670
	jmp	.label_658
.label_667:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_672
	nop	dword ptr [rax + rax]
.label_684:
	inc	rbp
	mov	rax, rbp
.label_672:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_675
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_679
	jmp	.label_681
	nop	dword ptr [rax]
.label_675:
	mov	rbp, rax
.label_679:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_684
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_658
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_684
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_684
.label_681:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_691
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_691
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_699
.label_691:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_700
.label_699:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_703
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_700
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_706
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_991:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_991
.label_706:
	test	rax, rax
	je	.label_700
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_752:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_720
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_745:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_726
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_735
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_738
	nop	word ptr cs:[rax + rax]
.label_726:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_738:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_745
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_720:
	inc	rbp
	cmp	rbp, rax
	jb	.label_752
.label_700:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_668
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_668
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_668
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_762
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_789:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_768
	jmp	qword ptr [(rsi * 8) + label_770]
.label_2727:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_772
	mov	esi, r10d
.label_772:
	mov	r10b, sil
	jmp	.label_776
.label_2728:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_668
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_776
	jmp	.label_668
.label_2729:
	mov	r9b, 1
	jmp	.label_776
.label_2730:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_780
	bt	r8, rbx
	jb	.label_776
.label_780:
	cmp	esi, 0x80
	jne	.label_668
.label_776:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_789
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_792
	xor	eax, eax
	mov	edx, 8
	jmp	.label_796
.label_703:
	mov	eax, 0xc
.label_658:
	mov	dword ptr [rsp + 4], eax
.label_913:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1150
.label_808:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_796:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_800
	cmp	sil, 1
	jne	.label_802
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_802
	and	esi, 0xffdfffff
	jmp	.label_805
.label_800:
	and	esi, 0xffffff00
	or	esi, 7
.label_805:
	mov	dword ptr [rbp + rdx], esi
.label_802:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_808
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_792
.label_762:
	xor	ecx, ecx
.label_792:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_668:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_1011
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_818
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_823
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_823
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_827
	nop	dword ptr [rax + rax]
.label_861:
	mov	rbp, qword ptr [rsp + 0x30]
.label_827:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_830
	test	r13, r13
	mov	edi, 0
	jle	.label_834
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_839:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_835
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_834
.label_835:
	inc	rdi
	cmp	rdi, r13
	jl	.label_839
.label_834:
	cmp	rdi, r13
	je	.label_830
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_841
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_846
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_850:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_850
.label_846:
	cmp	rsi, -1
	je	.label_841
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_830
.label_841:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_858
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_830:
	inc	rax
	cmp	rax, r13
	jl	.label_861
	jmp	.label_823
.label_1011:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_823:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_870
	cmp	byte ptr [rax + 0x68], 0
	js	.label_873
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_875
.label_873:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_887
	test	rax, rax
	je	.label_887
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_887
.label_875:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_858:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_967
	nop	dword ptr [rax]
.label_900:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_900
.label_967:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_906
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_906:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_871
	jmp	.label_908
.label_887:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_858
.label_735:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_658
.label_695:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_871
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_919
.label_961:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_924
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_928
.label_977:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_932
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1183
.label_932:
	mov	dword ptr [rsp + 4], 0xc
.label_960:
	mov	qword ptr [r12 + 0x68], 0
.label_1150:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_650
	nop	word ptr cs:[rax + rax]
.label_944:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_944
.label_650:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_908
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_908:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_871:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_870:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_858
.label_818:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_858
.label_768:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4088f0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408900
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
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_1203
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1203:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1202
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1202:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1204
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1204:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rbx, qword ptr [r13]
	cmp	dword ptr [rbx + 0xb4], 1
	jne	.label_1292
	mov	al, byte ptr [r13 + 0x1a]
	and	al, 0x40
	shr	al, 6
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1296
.label_1292:
	mov	dword ptr [rsp + 0xc], 0
.label_1296:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_671
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax + rax]
.label_1196:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_997
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_1000]
.label_2757:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1142
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1004
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1004:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1142:
	test	byte ptr [r13 + 0x1a], 0x40
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_997
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_997
	mov	rax, qword ptr [rbx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	edx, 0x2000ff
	jae	.label_1008
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_1022:
	mov	rax, qword ptr [rbx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_1008
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rbx + 0x10]
	jb	.label_1022
.label_1008:
	mov	r12, rbx
	mov	qword ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1032
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_1032
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1032:
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_809
	nop	word ptr [rax + rax]
.label_2759:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1035
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1044:
	bt	rbp, rbx
	jae	.label_1037
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_1038
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1040
	nop	word ptr cs:[rax + rax]
.label_1038:
	mov	eax, ebx
.label_1040:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1037:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1044
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1060:
	bt	r13, rbp
	jae	.label_1051
	mov	byte ptr [r15 + rbp + 0x40], 1
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_1052
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_1058
	nop	word ptr [rax + rax]
.label_1052:
	lea	rax, [rbp + 0x40]
.label_1058:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1051:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1060
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 0x10]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1075:
	bt	r13, rbp
	jae	.label_1064
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	cmp	eax, 0x180
	jae	.label_1065
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_1071
	nop	dword ptr [rax]
.label_1065:
	mov	rax, rbp
	sub	rax, -0x80
.label_1071:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1064:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1075
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r12, qword ptr [rax + 0x18]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_1089:
	bt	r12, rbp
	jae	.label_1080
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	jae	.label_1083
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_1085
	nop	dword ptr [rax]
.label_1083:
	lea	rax, [rbp + 0xc0]
.label_1085:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1080:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1089
	jmp	.label_997
	nop	dword ptr [rax]
.label_2760:
	mov	r12, qword ptr [rsi]
	cmp	dword ptr [rbx + 0xb4], 1
	jle	.label_1093
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1097
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1097
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1093
.label_1097:
	mov	r12, rbx
	mov	byte ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	lea	rbx, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1110:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp]
	cmp	rax, -2
	jne	.label_1109
	mov	byte ptr [r15 + rcx], 1
.label_1109:
	inc	cl
	mov	byte ptr [rsp], cl
	jne	.label_1110
.label_809:
	mov	rbx, r12
	jmp	.label_997
.label_1093:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_997
	mov	eax, dword ptr [rsp + 0xc]
	xor	ebp, ebp
	test	al, al
	je	.label_1025
	nop	word ptr cs:[rax + rax]
.label_1137:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1125
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_731
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_731:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
	mov	rbx, qword ptr [rsp + 0x10]
.label_1125:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1130
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1130
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1130
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1130:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1137
	jmp	.label_997
	nop	word ptr cs:[rax + rax]
.label_1025:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1145
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1145:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_899
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_899
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_899
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_899:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1025
	jmp	.label_997
.label_1035:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1164:
	bt	rbp, rax
	jae	.label_1155
	mov	byte ptr [r15 + rax], 1
.label_1155:
	lea	rcx, [rax + 1]
	bt	rbp, rcx
	jae	.label_980
	mov	byte ptr [r15 + rax + 1], 1
.label_980:
	inc	rcx
	cmp	rcx, 0x40
	mov	rax, rcx
	jne	.label_1164
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1172:
	bt	rax, rcx
	jae	.label_1168
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_1168:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1169
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_1169:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1172
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1185:
	bt	rax, rcx
	jae	.label_1180
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_1180:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1077
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_1077:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1185
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x18]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1146:
	bt	rax, rcx
	jae	.label_1190
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_1190:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1192
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_1192:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1146
	nop	dword ptr [rax + rax]
.label_997:
	inc	r14
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rsi + 0x10]
	jl	.label_1196
	jmp	.label_671
.label_2758:
	movaps	xmm0, xmmword ptr [rip + label_1200]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
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
	cmp	eax, 2
	jne	.label_671
	or	byte ptr [r13 + 0x38], 1
.label_671:
	add	rsp, 0x138
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
	#Procedure 0x409070
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
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
	je	.label_1301
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1300
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1302
.label_1300:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1302:
	mov	byte ptr [r15 + 0x38], al
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
	jne	.label_1299
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1297
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1297:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1298
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1298:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_1303
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1303:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_1301:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1299:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1301
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409220
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
	jae	.label_1304
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
	je	.label_1307
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1305
.label_1306:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1307:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1305:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1306
.label_1304:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092a0

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1308
	call	free_dfa_content
.label_1308:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092e0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1316
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1316
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1323
	nop	dword ptr [rax]
.label_1326:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1323:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1310
	cmp	ecx, 6
	jne	.label_1313
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1319
	nop	word ptr cs:[rax + rax]
.label_1310:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1319:
	call	free
.label_1313:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1326
.label_1316:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1325
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1320:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1312
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1312:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1315
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1315:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1317
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1317:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1320
	jmp	.label_1322
.label_1325:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1322:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1309
	xor	r15d, r15d
	jmp	.label_1311
.label_1321:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1311:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1314
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1318:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1318
.label_1314:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1321
	mov	rdi, qword ptr [r14 + 0x40]
.label_1309:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1324
	call	free
.label_1324:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0
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
	ja	.label_1329
	test	bl, 4
	jne	.label_1330
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1331
.label_1330:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1331:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1327
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
	jmp	.label_1328
.label_1327:
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
.label_1328:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1329:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409550

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x228
	mov	r14, r9
	mov	rbp, rcx
	mov	r11, qword ptr [rsp + 0x260]
	mov	r10, qword ptr [rdi]
	xorps	xmm0, xmm0
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
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xf8], r10
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1344
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1344:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r11 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r11
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_640
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_640
	mov	rcx, qword ptr [r10 + 0x50]
	test	rcx, rcx
	je	.label_640
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_640
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_640
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x160], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1347
	mov	qword ptr [rsp + 8], r8
	mov	r14, rsi
	jmp	.label_1336
.label_1347:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1337
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1338
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1337
.label_1338:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbp, rbp
	je	.label_1340
	test	r8, r8
	mov	ebp, 0
	jne	.label_640
	jmp	.label_1336
.label_1337:
	mov	qword ptr [rsp + 8], r8
.label_1336:
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	sub	r11, r12
	mov	qword ptr [rsp + 0x38], r11
	mov	byte ptr [rsp + 3], 1
	jne	.label_1345
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 3]
.label_1345:
	mov	r15, qword ptr [r10 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x58], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r10 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0xb8], rbx
	mov	qword ptr [rsp + 0xb0], rbx
	mov	rsi, qword ptr [rsp + 0x160]
	mov	qword ptr [rsp + 0xd8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0xe8], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0xeb], r12b
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, byte ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0xe9], dl
	mov	byte ptr [rsp + 0xea], cl
	mov	qword ptr [rsp + 0xc8], rsi
	mov	qword ptr [rsp + 0x170], rsi
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x28], r10
	jl	.label_1333
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_719
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_719
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, qword ptr [rsp + 0x28]
.label_1333:
	mov	al, 1
	test	r12b, r12b
	je	.label_1334
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_719
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
.label_1334:
	mov	qword ptr [rsp + 0xa0], r15
	lea	rcx, [r10 + 0xb8]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0xee], dl
	xor	edx, edx
	test	al, al
	je	.label_1342
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x68], rax
	xor	edx, edx
	cmp	ecx, 1
	cmovle	rdx, qword ptr [rsp + 0x170]
.label_1342:
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x98], rdx
	mov	qword ptr [rsp + 0xc8], r14
	mov	qword ptr [rsp + 0xc0], r14
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0xed], al
	mov	r14, qword ptr [r10 + 0x98]
	lea	r13, [r14 + r14]
	mov	eax, dword ptr [rsp + 0x270]
	mov	dword ptr [rsp + 0x100], eax
	mov	qword ptr [rsp + 0x108], -1
	test	r14, r14
	jle	.label_1332
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_719
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x138], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x158], rax
	test	r12, r12
	je	.label_719
	test	rax, rax
	je	.label_719
.label_1332:
	mov	qword ptr [rsp + 0x130], r13
	mov	dword ptr [rsp + 0x140], 1
	mov	qword ptr [rsp + 0x150], r13
	cmp	qword ptr [rsp + 0x38], 1
	ja	.label_1341
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1341
	mov	qword ptr [rsp + 0x118], 0
	jmp	.label_1346
.label_1341:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_719
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x118], rax
	test	rax, rax
	je	.label_719
.label_1346:
	mov	qword ptr [rsp + 0x20], rbp
	mov	eax, dword ptr [rsp + 0x270]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xd0], eax
	mov	rdi, qword ptr [rsp + 8]
	cmp	rdi, rbp
	mov	r14, rbp
	cmovle	r14, rdi
	mov	r12, rdi
	cmovl	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	eax, dword ptr [rax + 0xb4]
	mov	dword ptr [rsp + 0x17c], eax
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1339
	cmp	dword ptr [rsp + 0x17c], 1
	mov	rsi, qword ptr [rsp + 0x160]
	je	.label_1335
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1343
	mov	rdx, qword ptr [rsp + 0x58]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1343
.label_1335:
	mov	eax, 4
.label_1343:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rdi
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1339:
	lea	r15, [rsp + 0x98]
	cmp	rdi, rbp
	mov	eax, 1
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x1f0], rdx
	xor	edx, edx
	cmp	rbp, rdi
	setle	byte ptr [rsp + 2]
	lea	rsi, [rsp + 0x20]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1e8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x210], rsi
	add	ecx, -4
	mov	qword ptr [rsp + 0x218], rcx
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x198], r14
	jmp	.label_893
.label_1340:
	xor	ebp, ebp
	jmp	.label_1336
.label_1026:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_988
	cmp	ebx, 1
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_664
	jmp	.label_719
.label_662:
	test	al, al
	js	.label_1021
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbx
	mov	ecx, 1
	jne	.label_783
	mov	rbp, rbx
	jmp	.label_965
.label_657:
	mov	rax, qword ptr [r14 + 0x10]
	test	rax, rax
	jle	.label_1023
	mov	r15, qword ptr [rsp + 0xf8]
	xor	ebx, ebx
	jmp	.label_1027
.label_1021:
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbx
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 3]
	je	.label_1031
	or	rdx, rbx
	jmp	.label_783
.label_1031:
	mov	rbp, rbx
	jmp	.label_965
.label_1079:
	mov	r12, qword ptr [rsp + 0x168]
	jmp	.label_1034
.label_1045:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_824
	add	r12, r12
	mov	qword ptr [rsp + 0x158], rax
	mov	qword ptr [rsp + 0x150], r12
	jmp	.label_829
.label_1027:
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r13, qword ptr [rcx + rbx*8]
	mov	rcx, qword ptr [r15]
	mov	rdx, r13
	shl	rdx, 4
	cmp	byte ptr [rcx + rdx + 8], 8
	jne	.label_1039
	mov	rcx, qword ptr [rcx + rdx]
	cmp	rcx, 0x3f
	jg	.label_1039
	mov	rdx, qword ptr [r15 + 0xa0]
	bt	rdx, rcx
	jae	.label_1039
	mov	r12, qword ptr [rsp + 0x148]
	cmp	r12, qword ptr [rsp + 0x150]
	je	.label_1045
.label_829:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rsp + 0x158]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_824
	mov	qword ptr [rax + 8], r13
	inc	rcx
	mov	qword ptr [rsp + 0x148], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
.label_1039:
	inc	rbx
	cmp	rbx, rax
	jl	.label_1027
.label_1023:
	mov	dword ptr [rsp + 4], 0
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_1062
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x60]
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1066
.label_1062:
	mov	dword ptr [rsp + 8], 0
	lea	r15, [rsp + 0x98]
	jmp	.label_653
.label_824:
	mov	ebp, 0xc
	jmp	.label_1072
.label_1066:
	movsxd	rbp, eax
	lea	r15, [rsp + 0x98]
	jmp	.label_965
	nop	
.label_893:
	mov	rax, qword ptr [rsp + 0x218]
	cmp	eax, 4
	ja	.label_1076
	jmp	qword ptr [(rax * 8) + label_1043]
.label_2764:
	cmp	rbp, r14
	jl	.label_1078
	mov	rdi, qword ptr [rsp + 0x160]
	test	rdi, rdi
	je	.label_1081
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_1092:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_1088
	movzx	eax, byte ptr [rdx + rbp]
.label_1088:
	movzx	eax, byte ptr [rdi + rax]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1078
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1092
	jmp	.label_1098
.label_2766:
	cmp	rbp, r12
	jge	.label_1100
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x160]
	nop	dword ptr [rax]
.label_1105:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1100
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_1105
	jmp	.label_1100
.label_2765:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	jge	.label_1100
	nop	dword ptr [rax]
.label_907:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1100
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_907
	nop	word ptr [rax + rax]
.label_1100:
	cmp	rbp, r12
	jne	.label_1114
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_1116
	movzx	eax, byte ptr [rcx + r12]
.label_1116:
	mov	rcx, qword ptr [rsp + 0x160]
	test	rcx, rcx
	je	.label_1120
	movzx	eax, byte ptr [rcx + rax]
.label_1120:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_1114
	jmp	.label_719
.label_1076:
	mov	rax, qword ptr [rsp + 0x88]
	jmp	.label_1127
	nop	word ptr cs:[rax + rax]
.label_883:
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_719
	cmp	rbp, r12
	jle	.label_1127
	jmp	.label_719
.label_843:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_719
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1136
	nop	dword ptr [rax + rax]
.label_1127:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x98]
	jae	.label_843
.label_1136:
	cmp	rbp, qword ptr [rsp + 0x170]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x48]
	jge	.label_1141
	mov	rdx, qword ptr [rsp + 0x68]
	movzx	edx, byte ptr [rdx + rcx]
.label_1141:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_883
	jmp	.label_1114
.label_1081:
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_1151:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_1148
	movzx	eax, byte ptr [rdx + rbp]
.label_1148:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1078
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1151
	jmp	.label_1098
	nop	word ptr [rax + rax]
.label_1078:
	mov	rax, rbp
.label_1098:
	mov	ebx, 1
	cmp	rax, r14
	mov	rbp, rax
	jl	.label_719
.label_1114:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_719
	cmp	dword ptr [rsp + 0x17c], 1
	je	.label_1162
	mov	rax, qword ptr [rsp + 0x90]
	test	rax, rax
	je	.label_1162
	mov	rax, qword ptr [rsp + 0x70]
	cmp	dword ptr [rax], -1
	je	.label_1166
.label_1162:
	mov	dword ptr [rsp + 0x140], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x88], xmm0
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [r13 + 0x48]
	cmp	byte ptr [r14 + 0x68], 0
	jns	.label_1167
	test	rbx, rbx
	jle	.label_1054
	lea	rax, [rbx - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_1179
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_848
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_1187:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1186
	dec	rcx
	jg	.label_1187
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_642
.label_848:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_741
	cmp	al, 0xa
	je	.label_1195
	jmp	.label_1167
.label_1186:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1197
.label_649:
	cmp	ebp, 0xa
	jne	.label_1167
.label_1195:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_642:
	test	cl, 1
	jne	.label_741
	mov	rbp, rbx
	test	ecx, ecx
	je	.label_635
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	mov	bl, byte ptr [rsp + 2]
	je	.label_631
	test	sil, sil
	jne	.label_631
	mov	r14, qword ptr [r13 + 0x60]
	jmp	.label_634
	nop	dword ptr [rax]
.label_1167:
	mov	rbp, rbx
	jmp	.label_635
.label_631:
	test	edx, edx
	jne	.label_638
	test	eax, eax
	je	.label_634
	mov	rdx, qword ptr [r14 + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r13
	call	re_acquire_state_context
	mov	r14, rax
	jmp	.label_634
.label_638:
	mov	r14, qword ptr [r13 + 0x58]
	jmp	.label_634
.label_1054:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_642
.label_1179:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_642
.label_1197:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_741
	test	eax, eax
	je	.label_649
.label_741:
	mov	rbp, rbx
	mov	r14, qword ptr [r13 + 0x50]
.label_635:
	mov	bl, byte ptr [rsp + 2]
.label_634:
	test	r14, r14
	je	.label_652
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	mov	cl, bl
	mov	dword ptr [rsp + 8], ecx
	je	.label_653
	mov	qword ptr [rax + rbp*8], r14
	cmp	qword ptr [r13 + 0x98], 0
	mov	al, bl
	mov	dword ptr [rsp + 8], eax
	jne	.label_657
.label_653:
	mov	al, byte ptr [r14 + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	mov	rbx, rbp
	jne	.label_662
.label_783:
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0x210]
.label_750:
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x168], rdx
	mov	qword ptr [rsp + 0x180], rbx
	cmp	qword ptr [rsp + 0xc8], rbp
	jle	.label_669
	test	rcx, rcx
	sete	bl
	or	bl, byte ptr [rsp + 3]
	mov	r13, r14
	jmp	.label_673
.label_723:
	add	ebp, 2
	lea	rdi, [rsp + 0x60]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_680
	jmp	.label_683
.label_909:
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_686
	mov	r8, qword ptr [rsp + 0xf8]
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r8
	jmp	.label_687
.label_918:
	mov	rax, qword ptr [rsp + 0xa8]
	test	rax, rax
	jle	.label_950
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0xb8], rdx
	je	.label_689
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_690
	mov	rcx, qword ptr [rsp + 0x70]
.label_698:
	mov	r14d, dword ptr [rcx + rax*4 - 4]
	cmp	r14d, -1
	jne	.label_694
	dec	rax
	jg	.label_698
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_689
.label_782:
	cmp	r13, r14
	je	.label_701
	mov	dword ptr [rsp + 8], 0
.label_701:
	mov	rax, qword ptr [rsp + 0x180]
	cmove	rax, r12
	mov	qword ptr [rsp + 0x180], rax
	jmp	.label_702
.label_690:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rdx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_689
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_711
	jmp	.label_689
.label_694:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_713
.label_990:
	xor	ecx, ecx
	cmp	r14d, 0xa
	jne	.label_689
.label_711:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_689:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	r14, qword ptr [rsi + rcx*8]
	jmp	.label_894
.label_851:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_718
.label_852:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_718
.label_1108:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_725
	test	eax, eax
	lea	r15, [rsp + 0x98]
	je	.label_727
	jmp	.label_718
.label_725:
	lea	r15, [rsp + 0x98]
	jmp	.label_718
.label_687:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_732
	mov	edi, eax
	shr	edi, 8
	test	di, 0x3ff
	mov	rcx, qword ptr [rsp + 0xa8]
	je	.label_737
	test	rcx, rcx
	mov	dword ptr [rsp + 0x10], eax
	js	.label_739
	cmp	qword ptr [rsp + 0xb8], rcx
	je	.label_743
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_747
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdx, [rcx + 1]
.label_749:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_748
	dec	rdx
	test	rdx, rdx
	jg	.label_749
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_753
.label_747:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rcx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rbp + rdx*8]
	xor	r9d, r9d
	bt	rdx, rax
	jae	.label_730
	mov	r9d, 1
	xor	edx, edx
	jmp	.label_760
.label_748:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_785
.label_790:
	xor	r9d, r9d
	cmp	ebp, 0xa
	je	.label_764
	jmp	.label_753
.label_730:
	cmp	al, 0xa
	jne	.label_753
.label_764:
	xor	r9d, r9d
	cmp	byte ptr [rsp + 0xed], 0
	setne	r9b
	add	r9d, r9d
.label_753:
	mov	eax, r9d
	and	eax, 1
	sete	dl
	test	dil, 4
	je	.label_760
	test	eax, eax
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_732
	jmp	.label_773
.label_739:
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_753
.label_743:
	mov	r9d, dword ptr [rsp + 0x100]
	and	r9d, 2
	xor	r9d, 0xa
	jmp	.label_753
.label_785:
	mov	dword ptr [rsp + 0x178], edi
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebp
	call	iswalnum
	xor	edx, edx
	cmp	ebp, 0x5f
	mov	r9d, 1
	je	.label_788
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_790
	jmp	.label_773
.label_788:
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
.label_760:
	mov	eax, dword ptr [rsp + 0x10]
.label_773:
	test	ah, 8
	je	.label_806
	test	dl, dl
	je	.label_732
.label_806:
	test	ah, 0x20
	je	.label_807
	mov	eax, r9d
	and	eax, 2
	je	.label_732
.label_807:
	test	dil, dil
	jns	.label_737
	and	r9d, 8
	je	.label_732
.label_737:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x60]
	call	check_node_accept_bytes
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	je	.label_732
	movsxd	rbp, eax
	add	rbp, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rsp + 0x140]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x140], ecx
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	rcx, rbp
	mov	qword ptr [rsp + 0x10], rbp
	jg	.label_815
	cmp	rcx, rax
	jl	.label_819
.label_815:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	rcx, rbp
	jg	.label_821
	cmp	rcx, rax
	jge	.label_821
.label_819:
	lea	esi, [rbp + 1]
	mov	rbp, rdi
	lea	rdi, [rsp + 0x60]
	call	extend_buffers
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_825
.label_821:
	mov	rdx, rbp
	sub	rdx, rdi
	jle	.label_826
	mov	rax, qword ptr [rsp + 0x118]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x120], rbp
.label_826:
	mov	dword ptr [rsp + 0x1f8], 0
	mov	rax, qword ptr [r8 + 0x18]
	mov	rax, qword ptr [rax + rsi*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [r8 + 0x30]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x30], rax
	je	.label_1182
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rsp + 0x1a0]
	call	re_node_set_init_union
	mov	rbp, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0x1f8], eax
	test	eax, eax
	je	.label_844
	jmp	.label_847
.label_1182:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
.label_844:
	test	rbp, rbp
	jle	.label_851
	lea	rax, [rbp - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_852
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1147
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbp
.label_859:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_856
	dec	rcx
	jg	.label_859
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_718
.label_1147:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_718
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_866
	jmp	.label_718
.label_856:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1108
.label_727:
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_718
.label_866:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_718:
	lea	rdi, [rsp + 0x1f8]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x1a0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x118]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_879
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
	mov	rdx, qword ptr [rsp + 0x10]
.label_879:
	mov	rax, qword ptr [rsp + 0x118]
	cmp	qword ptr [rax + rdx*8], 0
	mov	r8, qword ptr [rsp + 0x18]
	jne	.label_732
	mov	eax, dword ptr [rsp + 0x1f8]
	test	eax, eax
	jne	.label_847
.label_732:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_687
.label_686:
	mov	dword ptr [rsp + 4], 0
	jmp	.label_889
.label_825:
	mov	dword ptr [rsp + 0x1f8], eax
.label_847:
	mov	dword ptr [rsp + 4], eax
.label_927:
	xor	r14d, r14d
	jmp	.label_894
.label_950:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_689
.label_713:
	mov	qword ptr [rsp + 0x18], rsi
	mov	edi, r14d
	call	iswalnum
	cmp	r14d, 0x5f
	mov	ecx, 1
	je	.label_983
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	je	.label_990
	jmp	.label_689
.label_983:
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	jmp	.label_689
	nop	dword ptr [rax + rax]
.label_673:
	lea	r12, [rbp + 1]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	r12, rcx
	jl	.label_903
	cmp	rcx, rax
	jl	.label_723
.label_903:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	r12, rcx
	jl	.label_683
	cmp	rcx, rax
	jl	.label_723
.label_683:
	test	byte ptr [r13 + 0x68], 0x20
	jne	.label_909
.label_889:
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xa8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	movzx	ebp, byte ptr [rcx + rax]
.label_925:
	mov	rax, qword ptr [r13 + 0x58]
	test	rax, rax
	jne	.label_916
	mov	rsi, qword ptr [r13 + 0x60]
	test	rsi, rsi
	jne	.label_918
	mov	rdi, qword ptr [rsp + 0xf8]
	mov	rsi, r13
	call	build_trtable
	test	al, al
	jne	.label_925
	mov	dword ptr [rsp + 4], 0xc
	jmp	.label_927
	nop	word ptr [rax + rax]
.label_916:
	mov	r14, qword ptr [rax + rbp*8]
.label_894:
	cmp	qword ptr [rsp + 0x118], 0
	je	.label_929
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r14
	call	merge_state_with_log
	mov	r14, rax
.label_929:
	test	r14, r14
	jne	.label_935
	cmp	dword ptr [rsp + 4], 0
	jne	.label_937
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	setne	cl
	and	cl, bl
	cmp	cl, 1
	je	.label_636
	jmp	.label_705
	nop	word ptr cs:[rax + rax]
.label_759:
	mov	rax, qword ptr [rsp + 0x118]
.label_636:
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x120]
	nop	dword ptr [rax + rax]
.label_948:
	cmp	rdx, rcx
	jge	.label_705
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xa8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_948
	xor	edx, edx
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	call	merge_state_with_log
	mov	r14, rax
	test	r14, r14
	jne	.label_951
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	je	.label_759
.label_951:
	test	r14, r14
	je	.label_705
	nop	word ptr [rax + rax]
.label_935:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_782
.label_702:
	mov	r12, qword ptr [rsp + 0x40]
	mov	al, byte ptr [r14 + 0x68]
	test	al, 0x10
	jne	.label_953
	mov	rbp, qword ptr [rsp + 0xa8]
	jmp	.label_954
	nop	word ptr cs:[rax + rax]
.label_953:
	mov	rbp, qword ptr [rsp + 0xa8]
	test	al, al
	jns	.label_957
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_957
.label_954:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	r13, r14
	jg	.label_673
	jmp	.label_669
.label_957:
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbp
	mov	ecx, 1
	mov	eax, 0
	mov	rbx, qword ptr [rsp + 0x180]
	jne	.label_750
	jmp	.label_965
	nop	word ptr cs:[rax + rax]
.label_705:
	mov	r12, qword ptr [rsp + 0x40]
.label_669:
	mov	rcx, qword ptr [rsp + 0x220]
	test	rcx, rcx
	je	.label_968
	mov	rax, qword ptr [rsp + 0x180]
	add	qword ptr [rcx], rax
.label_968:
	mov	rbp, qword ptr [rsp + 0x168]
.label_965:
	cmp	rbp, -1
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_664
	mov	ebx, 0xc
	cmp	rbp, -2
	je	.label_719
.label_1072:
	mov	r15, qword ptr [rsp + 0x38]
	cmp	r15, 1
	seta	al
	mov	qword ptr [rsp + 0x108], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r14b
	and	r14b, al
	je	.label_978
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_986
.label_978:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_988
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	test	r14b, 1
	je	.label_992
.label_986:
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_994
.label_992:
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_988
.label_994:
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_937
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r12, qword ptr [rsp + 0x110]
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	mov	r13d, 0
	je	.label_998
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1001
	mov	qword ptr [rsp + 8], r15
	mov	rdi, rbx
	call	malloc
	mov	r13, rax
	test	r13, r13
	je	.label_1003
	xor	esi, esi
	mov	rdi, r13
	mov	rdx, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	jmp	.label_1173
.label_1001:
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1026
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	je	.label_1029
	jmp	.label_1033
.label_1050:
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	r12, rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r13
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
.label_1173:
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1026
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	jne	.label_1041
	cmp	qword ptr [r13], 0
	mov	esi, 0
	jne	.label_1041
	test	rbp, rbp
	jle	.label_1029
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_1053:
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rax + rcx*8 - 8]
	test	rsi, rsi
	je	.label_1049
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1050
.label_1049:
	cmp	rcx, 2
	mov	rcx, rbp
	jge	.label_1053
.label_1029:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	mov	r12, qword ptr [rsp + 0x40]
.label_664:
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
.label_1166:
	mov	rbp, qword ptr [rsp + 0x20]
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_719
	cmp	r12, rbp
	jge	.label_893
	jmp	.label_719
.label_1041:
	test	rbp, rbp
	js	.label_1068
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x168], r12
	jmp	.label_1070
	nop	word ptr cs:[rax + rax]
.label_1091:
	mov	rsi, qword ptr [r14 + r15*8 + 8]
	inc	r15
.label_1070:
	mov	rdx, qword ptr [r13 + r15*8]
	test	rsi, rsi
	je	.label_1074
	test	rdx, rdx
	je	.label_921
	add	rsi, 8
	add	rdx, 8
	lea	r12, [rsp + 0x1f8]
	mov	rdi, r12
	call	re_node_set_init_union
	mov	ebx, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	jne	.label_1079
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	call	re_acquire_state
	mov	qword ptr [r14 + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x208]
	call	free
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x168]
	je	.label_921
	jmp	.label_1034
.label_1074:
	mov	qword ptr [r14 + r15*8], rdx
.label_921:
	cmp	r15, rbp
	jl	.label_1091
.label_1068:
	xor	ebx, ebx
.label_1034:
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1026
.label_1033:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	qword ptr [rsp + 0x118], r14
	mov	qword ptr [rsp + 0x110], r12
	mov	qword ptr [rsp + 0x108], rbp
	mov	r15, qword ptr [rsp + 0x38]
.label_988:
	test	r15, r15
	je	.label_1104
	cmp	r15, 1
	je	.label_1106
	mov	rax, qword ptr [rsp + 0x268]
	lea	rdi, [rax + 0x10]
	cmp	r15, 2
	mov	edx, 2
	cmova	rdx, r15
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_1106:
	mov	rax, qword ptr [rsp + 0x268]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rcx + 8], rax
	cmp	r15, 2
	jb	.label_1113
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1113
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1121
	xor	eax, eax
	jmp	.label_1124
.label_1104:
	xor	ebx, ebx
	jmp	.label_719
.label_1121:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1124:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rcx]
	movzx	r8d, al
	lea	rsi, [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x268]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_719
.label_1113:
	cmp	byte ptr [rsp + 0xec], 0
	jne	.label_1131
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	mov	edx, r15d
	and	edx, 1
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x190], rbx
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_1132
	mov	rsi, r15
	sub	rsi, rdx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rdi, [rcx + 0x18]
	xor	ecx, ecx
	nop	
.label_1144:
	mov	rbp, qword ptr [rdi - 0x18]
	cmp	rbp, -1
	je	.label_1139
	add	rbp, rax
	mov	qword ptr [rdi - 0x18], rbp
	add	qword ptr [rdi - 0x10], rax
.label_1139:
	mov	rbp, qword ptr [rdi - 8]
	cmp	rbp, -1
	je	.label_1143
	add	rbp, rax
	mov	qword ptr [rdi - 8], rbp
	add	qword ptr [rdi], rax
.label_1143:
	add	rcx, 2
	add	rdi, 0x20
	cmp	rsi, rcx
	jne	.label_1144
.label_1132:
	test	rdx, rdx
	je	.label_659
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rdx + rcx]
	cmp	rdx, -1
	je	.label_659
	mov	rsi, qword ptr [rsp + 0x268]
	mov	rdi, rsi
	lea	rsi, [rdi + rcx]
	add	rdx, rax
	mov	qword ptr [rsi], rdx
	add	qword ptr [rdi + rcx + 8], rax
.label_659:
	test	rbx, rbx
	jle	.label_1152
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x268]
	mov	rdx, rbx
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_1152:
	mov	rax, qword ptr [r14 + 0xe0]
	test	rax, rax
	je	.label_1154
	cmp	r15, 2
	mov	ebx, 0
	jb	.label_719
	mov	rcx, qword ptr [rsp + 0x188]
	sub	qword ptr [rsp + 0x190], rcx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1174:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1002
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1002:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x190], rdx
	jne	.label_1174
	jmp	.label_719
.label_1154:
	xor	ebx, ebx
	jmp	.label_719
.label_680:
	cmp	eax, 0xc
	je	.label_937
	mov	edi, OFFSET FLAT:label_1176
	mov	esi, OFFSET FLAT:label_1177
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_1178
	call	__assert_fail
.label_652:
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_937
	mov	edi, OFFSET FLAT:label_1176
	mov	esi, OFFSET FLAT:label_1177
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_1178
	call	__assert_fail
.label_1003:
	mov	qword ptr [rsp + 0x1e8], r14
.label_998:
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, r13
	call	free
.label_937:
	mov	ebx, 0xc
.label_719:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1193
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
.label_1193:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	free
	cmp	byte ptr [rsp + 0xeb], 0
	je	.label_640
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
.label_640:
	mov	eax, ebx
	add	rsp, 0x228
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1131:
	mov	r8, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 8]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x188]
.label_656:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	je	.label_715
	mov	rdi, qword ptr [rsp + 0x90]
	cmp	rsi, rdi
	lea	rsi, [r8 + rsi*8]
	lea	rbp, [rsp + 0x98]
	mov	rax, rbp
	cmove	rsi, rax
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx - 8], rsi
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	lea	rdi, [r8 + rbp*8]
	cmove	rdi, rax
	mov	rbp, qword ptr [rsp + 0x20]
	add	rsi, rbp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	qword ptr [rcx], rbp
.label_715:
	add	rcx, 0x10
	dec	rdx
	jne	.label_656
	jmp	.label_659
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0c0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0e0

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
	mov	rbx, rcx
	test	rbx, rbx
	mov	rbp, -1
	js	.label_1348
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], r9
	cmp	rbx, rdx
	jg	.label_1348
	xor	r12d, r12d
	add	r8, rbx
	js	.label_1355
	mov	r12, r8
.label_1355:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rbx
	mov	eax, r13d
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_1359
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1359
	mov	rbp, qword ptr [rdi + 0x20]
	test	rbp, rbp
	mov	eax, r13d
	je	.label_1359
	mov	r14, rbx
	mov	rbx, qword ptr [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdx, rbp
	mov	r15, rdi
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1375
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1375:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1382
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1382:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1351
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rdi, qword ptr [rsp + 8]
.label_1351:
	mov	al, byte ptr [rdi + 0x38]
	or	al, 8
	mov	byte ptr [rdi + 0x38], al
	mov	rbx, r14
	mov	rsi, qword ptr [rsp + 0x60]
.label_1359:
	xor	r14d, r14d
	test	rsi, rsi
	mov	r15d, 1
	je	.label_1366
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1366
	and	al, 6
	cmp	al, 4
	jne	.label_1371
	mov	rax, qword ptr [rsi]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1374
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1378
	mov	r14, rsi
.label_1378:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1366
	mov	r15, rax
	jmp	.label_1366
.label_1371:
	mov	r15, qword ptr [rdi + 0x30]
.label_1374:
	inc	r15
	mov	r14, rsi
.label_1366:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1348
	mov	ecx, r13d
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x20]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1377
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1360:
	call	free
.label_1348:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1377:
	test	r14, r14
	mov	rdi, r12
	je	.label_1363
	mov	qword ptr [rsp + 0x10], rbx
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1384
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1362
	test	al, al
	jne	.label_1358
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1372
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1381
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1354:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1349
.label_1384:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1349
	mov	edi, OFFSET FLAT:label_1356
	mov	esi, OFFSET FLAT:label_1177
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1357
	call	__assert_fail
.label_1362:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1364
	mov	rbx, rax
.label_1349:
	test	r15, r15
	jle	.label_1368
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1373
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1361:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1361
.label_1373:
	test	r9, r9
	je	.label_1365
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1365:
	mov	rbx, qword ptr [r14]
	jmp	.label_1353
.label_1368:
	xor	r15d, r15d
.label_1353:
	cmp	r15, rbx
	jae	.label_1376
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1383:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1383
	mov	ebp, r13d
	jmp	.label_1350
.label_1376:
	mov	ebp, r13d
	mov	rbx, qword ptr [rsp + 0x10]
.label_1350:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1360
.label_1363:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1360
	cmp	rbp, rbx
	jne	.label_1367
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rbx
	jmp	.label_1360
.label_1364:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x18], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1372
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	test	rax, rax
	je	.label_1352
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1354
.label_1381:
	mov	rdi, qword ptr [rsp + 0x18]
.label_1370:
	call	free
.label_1372:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1350
.label_1358:
	mov	edi, OFFSET FLAT:label_1369
	mov	esi, OFFSET FLAT:label_1177
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1357
	call	__assert_fail
.label_1367:
	mov	edi, OFFSET FLAT:label_1379
	mov	esi, OFFSET FLAT:label_1177
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1380
	call	__assert_fail
.label_1352:
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1370
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b580
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5a0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1385
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1388
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1385
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1386
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1389
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1385
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1386
.label_1388:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1387
.label_1385:
	mov	rax, -2
	jmp	.label_1390
.label_1387:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1386
.label_1389:
	mov	r13, r15
.label_1386:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1390:
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
	#Procedure 0x40b6b0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1394
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1396
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1394
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1393
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1391
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1394
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1393
.label_1396:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1395
.label_1394:
	mov	rax, -2
	jmp	.label_1392
.label_1395:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1393
.label_1391:
	mov	r13, r15
.label_1393:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1392:
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
	#Procedure 0x40b7c0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_1397
	mov	eax, r9d
.label_1397:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7f0

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
	je	.label_1398
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1398:
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
	#Procedure 0x40b850

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
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_1423
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1423
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1438
.label_1423:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1429
.label_1438:
	cmp	rdx, r15
	jle	.label_1445
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1416
.label_1444:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1452
	cmp	rbp, -2
	jne	.label_1436
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1436
.label_1452:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_1446
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1446
	nop	
.label_1416:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1405
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1405
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1446:
	mov	rax, r15
	jmp	.label_1401
	nop	dword ptr [rax]
.label_1405:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1444
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_1451
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_1453
	nop	word ptr cs:[rax + rax]
.label_1451:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_1459
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_1453:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1401
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1401:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1416
	jmp	.label_1448
.label_1459:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_1419
.label_1436:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1445:
	mov	rax, r15
.label_1448:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1430
.label_1429:
	cmp	r15, rdx
	jge	.label_1435
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_1419:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1439
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1407:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1454
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1406
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1404
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1400
.label_1439:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1407
	xor	esi, esi
.label_1413:
	cmp	rsi, rdx
	jge	.label_1407
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1413
	jmp	.label_1407
.label_1454:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1422
	cmp	r14, -2
	jne	.label_1421
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1421
.label_1422:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1431
.label_1426:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1424
.label_1458:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1415
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1415
.label_1404:
	cmp	rcx, -1
	je	.label_1406
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1456
.label_1421:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1435:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1430:
	xor	eax, eax
.label_1414:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1406:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1400:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1409
.label_1399:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1415
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1427
.label_1415:
	mov	rbp, r15
.label_1427:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1429
.label_1409:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1437
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1437
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1442
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1014]
	movdqa	xmm3, xmmword ptr [rip + label_1013]
	movdqa	xmm4, xmmword ptr [rip + label_1016]
	movdqa	xmm5, xmmword ptr [rip + label_1015]
.label_1403:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_1403
	jmp	.label_1417
.label_1456:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1418
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1432
.label_1418:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1433
	test	r15, r15
	je	.label_1425
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1440
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1440
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1449
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1455
.label_1442:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1417:
	test	rdx, rdx
	je	.label_1457
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1013]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1457:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1399
.label_1437:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1450:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1450
	jmp	.label_1399
.label_1432:
	mov	eax, 0xc
	jmp	.label_1414
.label_1449:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1013]
	movdqa	xmm9, xmmword ptr [rip + label_1014]
	movdqa	xmm10, xmmword ptr [rip + label_1015]
	movdqa	xmm11, xmmword ptr [rip + label_1016]
	movdqa	xmm5, xmmword ptr [rip + label_1017]
	movdqa	xmm6, xmmword ptr [rip + label_1018]
	movdqa	xmm7, xmmword ptr [rip + label_1019]
	movdqa	xmm1, xmmword ptr [rip + label_1020]
.label_1443:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1443
.label_1455:
	test	rdx, rdx
	je	.label_1408
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1013]
	movdqa	xmm2, xmmword ptr [rip + label_1014]
.label_1420:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1420
.label_1408:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1425
.label_1440:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1440
.label_1425:
	mov	byte ptr [r13 + 0x8c], 1
.label_1433:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_1441
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1447
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1447
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1410]
	movdqa	xmm8, xmmword ptr [rip + label_1013]
	movdqa	xmm9, xmmword ptr [rip + label_1014]
	movdqa	xmm10, xmmword ptr [rip + label_1411]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1412],  0xe8
	mov	rdi, r8
.label_1428:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_1428
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1441
.label_1447:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1434:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1434
.label_1441:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1402
	add	qword ptr [r13 + 0x68], rcx
.label_1402:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1429
.label_1431:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1426
.label_1424:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1458
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c180

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
	jle	.label_1460
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1467
	nop	dword ptr [rax + rax]
.label_1464:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1461
.label_1469:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1466:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1470
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1470:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1467
	jmp	.label_1468
.label_1462:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1466
.label_1465:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1463
	xor	eax, eax
.label_1472:
	cmp	rax, rdx
	jge	.label_1471
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
	jl	.label_1472
	lea	rsi, [rsp + 0x10]
	jmp	.label_1463
.label_1461:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1469
.label_1471:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1463
	nop	
.label_1467:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1465
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1463:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1464
	cmp	rax, -2
	jne	.label_1462
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1464
	mov	qword ptr [r14], rbp
.label_1460:
	mov	rcx, rbx
.label_1468:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c300

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x18], r8
	mov	qword ptr [rsp + 0x10], r9
	call	parse_branch
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_1486
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1473
.label_1486:
	cmp	byte ptr [r12 + 8], 0xa
	jne	.label_1489
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_1483
	jmp	.label_1493
.label_1489:
	mov	r13, rbx
	jmp	.label_1473
.label_1487:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1478
	nop	word ptr cs:[rax + rax]
.label_1483:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r14d, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_1495
	cmp	eax, 9
	mov	r14d, 0
	je	.label_1495
	mov	rbp, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r13
	call	parse_branch
	mov	r14, rax
	test	r14, r14
	jne	.label_1482
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1484
.label_1482:
	or	qword ptr [r15 + 0xa8], rbp
	nop	dword ptr [rax]
.label_1495:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1487
	mov	rax, qword ptr [r15 + 0x70]
.label_1478:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1494
	mov	qword ptr [rbx], r13
.label_1494:
	test	r14, r14
	je	.label_1481
	mov	qword ptr [r14], r13
.label_1481:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_1483
	jmp	.label_1473
.label_1496:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1475
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1492
	nop	word ptr [rax + rax]
.label_1493:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	mov	ebp, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_1477
	mov	r14, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1485
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_1484
.label_1485:
	or	qword ptr [r15 + 0xa8], r14
.label_1477:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1496
	mov	rax, qword ptr [r15 + 0x70]
.label_1492:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1488
	mov	qword ptr [rbx], r13
.label_1488:
	test	rbp, rbp
	je	.label_1490
	mov	qword ptr [rbp], r13
.label_1490:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_1493
.label_1473:
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1484:
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_1473
	mov	r14d, 0x400ff
	xor	r13d, r13d
.label_1476:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1476
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1476
.label_1474:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1480
	cmp	eax, 6
	jne	.label_1479
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1491
.label_1480:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1491:
	call	free
.label_1479:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1473
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1474
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1474
	jmp	.label_1476
.label_1475:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_1473
	.section	.text
	.align	32
	#Procedure 0x40c6a0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1508
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1518
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1518
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1534
.label_1518:
	cmp	bl, 0x5c
	jne	.label_1497
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1499
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1507
.label_1510:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_1505:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1513
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_1522
.label_1508:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_696
.label_1497:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1503
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1519
.label_1499:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_1531
.label_1503:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1519:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_696
	jmp	qword ptr [(rcx * 8) + label_1512]
.label_2767:
	mov	rcx, r12
	test	ch, 8
	je	.label_696
	jmp	.label_945
.label_1513:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_1522:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_696
	jmp	qword ptr [(rcx * 8) + label_1537]
.label_2647:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_696
.label_1534:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_1531:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_696:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2768:
	mov	rdx, r12
	test	dl, 8
	jne	.label_956
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_956
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_696
	mov	eax, dword ptr [r15 + 8]
.label_956:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_696
.label_2769:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_696
	jmp	.label_962
.label_2770:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_696
	jmp	.label_901
.label_2771:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2772:
	test	r12w, 0x402
	jne	.label_696
	jmp	.label_970
.label_2773:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2774:
	test	r12w, 0x402
	jne	.label_696
	jmp	.label_976
.label_2775:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2776:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_963
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_963
	test	dh, 8
	je	.label_696
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_696
.label_963:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_696
.label_2777:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_696
	jmp	.label_1030
.label_2778:
	mov	rcx, r12
	test	ch, 4
	jne	.label_696
	test	cx, cx
	js	.label_945
	jmp	.label_696
.label_2779:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_696
	jmp	.label_1069
.label_2643:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_696
.label_2644:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_696
.label_962:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2645:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_696
.label_901:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2646:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_696
.label_970:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2648:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_696
.label_2649:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_696
.label_2650:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_696
.label_976:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2651:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_696
.label_2652:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2653:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2654:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_696
.label_2655:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_696
.label_2656:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2657:
	test	r12d, 0x80000
	jne	.label_696
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2658:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_696
.label_1030:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2659:
	mov	rcx, r12
	test	ch, 4
	jne	.label_696
	test	cx, cx
	js	.label_696
.label_945:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_2660:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_696
.label_1069:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_696
.label_1507:
	cmp	edx, 2
	jl	.label_1527
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1510
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1527
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1510
.label_1527:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1498
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1498:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_1505
	test	bl, bl
	js	.label_1510
	jmp	.label_1505
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ccc0

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
	mov	rbp, r9
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, qword ptr [r13]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], r8
	call	parse_expression
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_1569
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1558
.label_1569:
	cmp	qword ptr [rsp], 0
	jne	.label_1538
	jmp	.label_1539
	nop	word ptr cs:[rax + rax]
.label_1555:
	test	rbx, rbx
	cmove	rbx, r14
.label_1539:
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	je	.label_1540
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1550
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_1548
.label_1550:
	test	rbx, rbx
	je	.label_1555
	test	r14, r14
	je	.label_1555
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1557
	mov	rax, qword ptr [r15 + 0x70]
.label_1568:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1539
.label_1557:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1545
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1568
	nop	word ptr cs:[rax + rax]
.label_1554:
	test	rbx, rbx
	cmove	rbx, r14
.label_1538:
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1540
	cmp	eax, 9
	je	.label_1540
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_1549
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_1548
.label_1549:
	test	rbx, rbx
	je	.label_1554
	test	r14, r14
	je	.label_1554
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1556
	mov	rax, qword ptr [r15 + 0x70]
.label_1566:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1538
.label_1556:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1545
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1566
.label_1540:
	mov	r14, rbx
.label_1558:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1548:
	xor	r14d, r14d
	test	al, al
	je	.label_1558
	mov	r15d, 0x400ff
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1543:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1543
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1543
.label_1560:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1547
	cmp	eax, 6
	jne	.label_1565
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1567
.label_1547:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1567:
	call	free
.label_1565:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1558
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1560
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1560
	jmp	.label_1543
.label_1545:
	mov	rcx, rbp
	mov	r15d, 0x400ff
.label_1544:
	mov	r12, r14
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jne	.label_1544
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	jne	.label_1544
.label_1542:
	mov	eax, dword ptr [r12 + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_1563
	cmp	eax, 6
	jne	.label_1564
	mov	r14, qword ptr [r12 + 0x28]
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 8]
	call	free
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	jmp	.label_1552
.label_1563:
	mov	rdi, qword ptr [r12 + 0x28]
.label_1552:
	call	free
	mov	rcx, rbp
.label_1564:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1541
	mov	r14, qword ptr [rax + 0x10]
	cmp	r14, r12
	mov	r12, rax
	je	.label_1542
	test	r14, r14
	mov	r12, rax
	je	.label_1542
	jmp	.label_1544
.label_1541:
	mov	r14d, 0x400ff
.label_1546:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1546
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1546
.label_1562:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1551
	cmp	eax, 6
	jne	.label_1553
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1559
.label_1551:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1559:
	call	free
	mov	rcx, rbp
.label_1553:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1561
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1562
	test	rbx, rbx
	mov	r15, rax
	je	.label_1562
	jmp	.label_1546
.label_1561:
	mov	dword ptr [rcx], 0xc
	xor	r14d, r14d
	jmp	.label_1558
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0d0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_647
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1570]
.label_2718:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_676
	mov	ecx, OFFSET FLAT:label_677
	jmp	.label_678
.label_2719:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_682
	mov	ecx, OFFSET FLAT:label_46
.label_678:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_688
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_784:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_685
	jmp	.label_647
.label_688:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_685
.label_2709:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_692
	mov	rax, qword ptr [rdi + 0x70]
.label_728:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_697
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_709
	mov	rbp, r14
	jmp	.label_685
.label_774:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_714
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_716
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_761:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_756:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_733
	mov	rax, qword ptr [rsi + 0x70]
.label_771:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_660
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_709
	jmp	.label_685
.label_716:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_756
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_761
.label_733:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_660
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_771
.label_709:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_774
	mov	rbp, r14
	jmp	.label_685
.label_2710:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_778
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_786
	mov	rax, qword ptr [rdi + 0x70]
.label_758:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_685
.label_2711:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_874
	mov	rax, qword ptr [rdi + 0x70]
.label_1055:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_685
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_685
.label_2712:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_822
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_647
	cmp	byte ptr [r10 + 8], 9
	jne	.label_1159
	mov	r15, rbp
.label_822:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_833
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_833:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_836
	mov	rax, qword ptr [rsi + 0x70]
.label_974:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_838
	mov	qword ptr [rdi], rbp
.label_838:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_685
.label_2715:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_853
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_840
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_854
	movdqa	xmm0, xmmword ptr [rip + label_860]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_854
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_840:
	mov	eax, dword ptr [r10]
.label_853:
	cmp	eax, 0x200
	je	.label_867
	cmp	eax, 0x100
	jne	.label_868
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_869
	mov	rax, qword ptr [rdi + 0x70]
.label_845:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_877
.label_2717:
	test	ebx, 0x1000000
	jne	.label_885
.label_2714:
	test	bl, 0x20
	jne	.label_885
	test	bl, 0x10
	jne	.label_891
.label_2713:
	test	ebx, 0x20000
	jne	.label_892
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_892
	mov	dword ptr [r12], 0x10
	jmp	.label_633
.label_892:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_897
	mov	rax, qword ptr [rdi + 0x70]
.label_717:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1149:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_685
.label_2716:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_914
	test	r15, r15
	je	.label_914
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_920
	cmp	cl, 2
	je	.label_922
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_926
.label_2720:
	mov	dword ptr [r12], 5
	jmp	.label_633
.label_891:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_697:
	mov	rbp, r14
	jmp	.label_685
.label_920:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_654
	or	byte ptr [r14 + 1], 4
.label_654:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_922
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_926:
	cmp	cl, 0x15
	jne	.label_947
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_947:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_865
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_952
.label_704:
	cmp	al, 2
	je	.label_955
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_952
	jmp	.label_865
.label_2787:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_959
	mov	rax, qword ptr [r15]
.label_930:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_721
.label_2788:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_969
	jmp	.label_971
.label_1096:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_938
.label_1161:
	xor	eax, eax
.label_938:
	cmp	r15d, 3
	je	.label_972
	test	r15d, r15d
	jne	.label_973
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_724
.label_972:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_724
.label_973:
	xor	ebx, ebx
.label_724:
	cmp	ebp, 3
	je	.label_979
	test	ebp, ebp
	jne	.label_981
.label_979:
	test	r12, r12
	movzx	edx, al
	je	.label_982
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_982
.label_981:
	mov	edx, dword ptr [rsp + 0x58]
.label_982:
	cmp	r15d, 3
	je	.label_984
	test	r15d, r15d
	jne	.label_985
.label_984:
	test	r12, r12
	movzx	eax, bl
	je	.label_987
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_987
.label_985:
	mov	eax, dword ptr [rsp + 0xa0]
.label_987:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_989
	cmp	eax, -1
	je	.label_989
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_993
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_989
.label_993:
	test	r12, r12
	je	.label_995
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_996
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_1028:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_995:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_1005:
	cmp	rdx, rcx
	ja	.label_999
	cmp	rcx, rax
	ja	.label_999
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_999:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1005
	mov	dword ptr [r12], 0
	jmp	.label_721
.label_959:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_765
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_930
.label_996:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_1024
	test	rbp, rbp
	je	.label_1024
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_1028
.label_952:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_872
	cmp	ebp, 4
	jne	.label_1036
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_721
	jmp	.label_712
.label_1036:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1042
	cmp	al, 2
	jne	.label_1046
	jmp	.label_1048
.label_1042:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_934
	cmp	cl, 2
	je	.label_1057
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1067
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_989
	cmp	r15d, 4
	je	.label_989
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_1059
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_989
.label_1059:
	cmp	r15d, 3
	jne	.label_1087
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_989
.label_1087:
	cmp	ebp, 3
	je	.label_1096
	test	ebp, ebp
	jne	.label_1161
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_938
.label_934:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_1046:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_1103
	jmp	qword ptr [(rax * 8) + label_1107]
.label_2786:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_674
.label_872:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1112
.label_969:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_674:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_721:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_704
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_1123
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_1123:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1128
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_1128:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1135
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1135
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1135
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1135
	cmp	eax, 2
	jl	.label_1138
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1135
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1135
.label_1138:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_902
	mov	rax, qword ptr [rsi + 0x70]
.label_905:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1149
.label_1135:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1156
	mov	rax, qword ptr [r9 + 0x70]
.label_766:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_1165
	cmp	qword ptr [r14 + 8], 0
	jne	.label_1165
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_1165
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_1175
.label_1165:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1181
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_777:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1184
	mov	rax, qword ptr [r9 + 0x70]
.label_795:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_685:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_1242:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_647
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_647
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_651
	mov	rsi, -1
	jmp	.label_655
	nop	word ptr cs:[rax + rax]
.label_651:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_793:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_803
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_1254
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_1256
.label_1281:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1258
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_1227:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1227
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1227
	nop	word ptr cs:[rax + rax]
.label_1261:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_1259
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1259
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1259:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1258
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1261
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1261
	jmp	.label_1227
	nop	word ptr cs:[rax + rax]
.label_1258:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1284
	mov	rax, qword ptr [rbp + 0x70]
.label_1263:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1247
	mov	qword ptr [r12], r14
.label_1247:
	add	r11, 2
	cmp	r11, r15
	jg	.label_1209
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1212
.label_736:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_655:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_722
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_710
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_729
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_655
	cmp	eax, 1
	jne	.label_655
	cmp	r13, -2
	je	.label_655
	cmp	dl, 0x39
	ja	.label_655
	cmp	r13, -1
	jne	.label_736
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_655
	nop	dword ptr [rax]
.label_722:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_729:
	cmp	r13, -1
	jne	.label_742
	cmp	sil, 0x2c
	jne	.label_744
	cmp	eax, 1
	mov	r13d, 0
	je	.label_746
	jmp	.label_744
	nop	word ptr [rax + rax]
.label_742:
	cmp	r13, -2
	je	.label_710
.label_746:
	cmp	bl, 0x18
	je	.label_751
	cmp	bl, 1
	jne	.label_710
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_710
	mov	rdx, -1
	jmp	.label_757
.label_751:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_755
.label_779:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_757:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_767
	cmp	al, 2
	je	.label_710
	cmp	cl, 0x2c
	je	.label_767
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_757
	cmp	eax, 1
	jne	.label_757
	cmp	r15, -2
	je	.label_757
	cmp	cl, 0x39
	ja	.label_757
	cmp	r15, -1
	jne	.label_779
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_757
.label_767:
	cmp	r15, -2
	je	.label_710
.label_755:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_744
	cmp	eax, 0x18
	jne	.label_744
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_793
	mov	dword ptr [r12], 0xf
	jmp	.label_797
	nop	dword ptr [rax]
.label_744:
	mov	dword ptr [r12], 0xa
	jmp	.label_797
.label_710:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_801
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_803
.label_1269:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1220
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1222
.label_1279:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1237
.label_1264:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1216
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1250
.label_1220:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1252
.label_1240:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_1252:
	xor	r12d, r12d
.label_1237:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_1216
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1208
	nop	dword ptr [rax + rax]
.label_1212:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1269
	mov	rax, qword ptr [rbp + 0x70]
.label_1222:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_1275
	nop	dword ptr [rax + rax]
.label_1235:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_1275:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1214
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_1218
	nop	dword ptr [rax]
.label_1214:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1248:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1223
	test	r12, r12
	jne	.label_1226
.label_1223:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_1248
	jmp	.label_1231
.label_1226:
	lea	rbx, [r13 + 0x10]
.label_1218:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1257
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1235
.label_1257:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1240
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1235
.label_1231:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1279
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_1208:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_1216
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1264
	mov	rax, qword ptr [rbp + 0x70]
.label_1250:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_1212
.label_1209:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_1287
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_1289
	mov	rax, qword ptr [rbp + 0x70]
.label_1276:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_1295
.label_1287:
	mov	r12, qword ptr [rsp + 0x48]
.label_1295:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_1215
.label_1254:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_1221:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1221
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1221
.label_1246:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_1225
	cmp	eax, 6
	jne	.label_1228
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1238
.label_1225:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1238:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_1228:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_803
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_1246
	test	rax, rax
	mov	rbx, rdx
	je	.label_1246
	jmp	.label_1221
.label_1256:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_1251
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_1229
.label_1284:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1216
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1263
.label_1289:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_803
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1276
.label_801:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_797
.label_1230:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1291
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1293
.label_1205:
	mov	r12, rbx
	jmp	.label_1206
.label_1291:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1207
.label_1249:
	mov	qword ptr [r15], 0
.label_1207:
	xor	r12d, r12d
.label_1206:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_1216
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1224
.label_1229:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_1230
	mov	rax, qword ptr [rbp + 0x70]
.label_1293:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_1236
.label_1283:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1236:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_1260
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_1265
.label_1260:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_1272:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1232
	test	r12, r12
	jne	.label_1217
.label_1232:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_1272
	jmp	.label_1277
.label_1217:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_1265:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1280
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1283
.label_1280:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1249
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1283
.label_1277:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1205
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_1224:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1210
	mov	qword ptr [rbx], rdx
.label_1210:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_1216
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_1229
.label_1251:
	cmp	r11, r15
	jne	.label_1234
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_803
.label_1234:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_1219
	mov	rax, qword ptr [rbp + 0x70]
.label_1211:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_1243
.label_1285:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1243:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1266
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_1270
.label_1266:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_1278:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1274
	test	rbx, rbx
	jne	.label_1271
.label_1274:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_1278
	jmp	.label_1281
.label_1271:
	lea	r15, [r14 + 0x10]
.label_1270:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1282
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1285
.label_1282:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1290
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1285
.label_1219:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1239
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1211
.label_1239:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1213
.label_1290:
	mov	qword ptr [r15], 0
.label_1213:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_1216:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_797:
	xor	ecx, ecx
.label_803:
	test	rcx, rcx
	sete	al
	jne	.label_1233
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1215
	jmp	.label_1288
	nop	word ptr cs:[rax + rax]
.label_1233:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_1215:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_1242
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_1245
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_1242
.label_1245:
	test	al, al
	jne	.label_885
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_1244:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1244
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1244
	nop	word ptr cs:[rax + rax]
.label_1268:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1253
	cmp	eax, 6
	jne	.label_1255
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1262
	nop	dword ptr [rax]
.label_1253:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1262:
	call	free
.label_1255:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_885
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1268
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1268
	jmp	.label_1244
.label_885:
	mov	dword ptr [r12], 0xd
.label_633:
	xor	r15d, r15d
.label_647:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_867:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1188
	mov	rax, qword ptr [rdi + 0x70]
.label_855:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_877:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_630
	mov	rax, qword ptr [rdi + 0x70]
.label_816:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_814:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_734
	mov	rax, qword ptr [rdi + 0x70]
.label_820:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_646
	mov	qword ptr [r14], r15
.label_646:
	test	rbp, rbp
	je	.label_660
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_1134
	jmp	.label_660
.label_868:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_663
	mov	rax, qword ptr [rdi + 0x70]
.label_863:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1134:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_647
.label_714:
	mov	rbp, r14
	jmp	.label_685
.label_1288:
	xor	r15d, r15d
	test	r9, r9
	je	.label_647
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1241:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_1241
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_1241
.label_1294:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1273
	cmp	eax, 6
	jne	.label_1267
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1286
.label_1273:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1286:
	call	free
.label_1267:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_647
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_1294
	test	r9, r9
	mov	rbx, rax
	je	.label_1294
	jmp	.label_1241
.label_1175:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_685
.label_865:
	mov	dword ptr [r12], eax
	jmp	.label_712
.label_955:
	mov	dword ptr [r12], 7
	jmp	.label_712
.label_897:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_660
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_717
.label_922:
	mov	dword ptr [r12], 2
	jmp	.label_712
.label_692:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_660
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_728
.label_778:
	mov	dword ptr [r12], 6
	jmp	.label_633
.label_874:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_660
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1055
.label_914:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_660
.label_786:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_660
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_758
.label_1156:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_765
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_766
.label_1181:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_765
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_777
.label_1184:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_765
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_795
.label_1112:
	mov	dword ptr [r12], 3
	jmp	.label_712
.label_836:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_660
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_974
.label_630:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_814
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_816
.label_734:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_660
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_820
.label_1048:
	mov	dword ptr [r12], 7
	jmp	.label_712
.label_854:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_837:
	mov	rsi, r14
	xor	eax, eax
.label_1199:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_828
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_828:
	cmp	esi, 0x5f
	je	.label_831
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_832
.label_831:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_832:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1199
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_837
	jmp	.label_840
.label_869:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_842
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_845
.label_1188:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_842
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_855
.label_663:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_660
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_863
.label_660:
	mov	dword ptr [r12], 0xc
	jmp	.label_633
.label_1057:
	mov	dword ptr [r12], 7
	jmp	.label_876
.label_842:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_877
.label_1159:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_880
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_882:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_882
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_882
.label_898:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_884
	cmp	eax, 6
	jne	.label_886
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_896
.label_884:
	mov	rdi, qword ptr [rbp + 0x28]
.label_896:
	call	free
.label_886:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_880
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_898
	test	rcx, rcx
	mov	rbp, rax
	je	.label_898
	jmp	.label_882
.label_880:
	mov	dword ptr [r12], 8
	jmp	.label_633
.label_1067:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_876
.label_971:
	mov	dword ptr [r12], 3
	jmp	.label_712
.label_902:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_765
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_905
.label_765:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_876
.label_1103:
	mov	edi, OFFSET FLAT:label_910
	mov	esi, OFFSET FLAT:label_911
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_912
	call	__assert_fail
.label_1024:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_989:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_876:
	mov	r15, qword ptr [rsp + 0x30]
.label_712:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_784
	.section	.text
	.align	32
	#Procedure 0x40f7f0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1581
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1583
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1588
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1573
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1578:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1578
.label_1573:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1584
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1584:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1586
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1586:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1579
	mov	rax, qword ptr [r12 + 0x70]
.label_1587:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1582
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1574
	mov	rbp, qword ptr [r12 + 0x70]
.label_1585:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1571
	mov	rcx, qword ptr [r12 + 0x70]
.label_1580:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1572
.label_1582:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_1572:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1581:
	mov	dword ptr [r15], 0xc
	jmp	.label_1575
.label_1583:
	mov	rdi, rbx
	jmp	.label_1576
.label_1588:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_1575
.label_1579:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1577
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1587
.label_1574:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1577
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1585
.label_1577:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1576:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1575:
	xor	eax, eax
	jmp	.label_1572
.label_1571:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1572
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1580
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fbd0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1591
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1594
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1594
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1593
.label_1594:
	test	dl, 1
	je	.label_1589
	cmp	al, 0x5c
	jne	.label_1589
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1589
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1593
.label_1591:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1589:
	cmp	al, 0x5c
	jg	.label_1597
	cmp	al, 0x2d
	je	.label_1598
	cmp	al, 0x5b
	jne	.label_1593
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1599
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_1596
	cmp	al, 0x3a
	je	.label_1592
	cmp	al, 0x2e
	jne	.label_1590
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1597:
	cmp	al, 0x5d
	je	.label_1595
	cmp	al, 0x5e
	jne	.label_1593
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1593:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1598:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1595:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1599:
	mov	byte ptr [rdi], 0
.label_1590:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1596:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1592:
	test	dl, 4
	je	.label_1590
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fcc0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1600
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_1600
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_1603:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_1601
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_1603
.label_1601:
	cmp	edi, 2
	jl	.label_1600
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1604
.label_1600:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_1157
	jmp	qword ptr [(rax * 8) + label_1602]
.label_2665:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_1163
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_1533
	nop	word ptr cs:[rax + rax]
.label_1528:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_1533:
	cmp	dil, 0x1e
	jne	.label_1514
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1500
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1504
	nop	dword ptr [rax]
.label_1514:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1516:
	mov	bl, byte ptr [rbx + rdx]
.label_1504:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1163
	cmp	bl, r11b
	jne	.label_1509
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_1523
.label_1509:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_1528
	jmp	.label_1163
.label_1500:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1524
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1532
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1517
.label_1532:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1517
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1515
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1515
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1526:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1515
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1526
.label_1515:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1504
.label_1524:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1516
.label_1517:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1504
.label_1523:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_1520
	cmp	cl, 0x1c
	je	.label_1535
	cmp	cl, 0x1a
	jne	.label_1163
	mov	dword ptr [r14], 3
	jmp	.label_1163
.label_1520:
	mov	dword ptr [r14], 4
	jmp	.label_1163
.label_1535:
	mov	dword ptr [r14], 2
	jmp	.label_1163
.label_2664:
	test	r9b, r9b
	jne	.label_1157
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_1163
.label_1157:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1604:
	xor	eax, eax
.label_1163:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff20

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
	je	.label_1655
	mov	esi, OFFSET FLAT:label_1648
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1660
	mov	esi, OFFSET FLAT:label_1662
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1655
.label_1660:
	mov	r12d, OFFSET FLAT:label_1664
.label_1655:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1666
.label_1629:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_676
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1682
	mov	esi, OFFSET FLAT:label_1677
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1670
	mov	esi, OFFSET FLAT:label_1662
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1681
	mov	esi, OFFSET FLAT:label_682
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1659
	mov	esi, OFFSET FLAT:label_1664
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1689
	mov	esi, OFFSET FLAT:label_1690
.label_2722:
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1607
	mov	esi, OFFSET FLAT:label_1609
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1613
	mov	esi, OFFSET FLAT:label_1648
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1615
	mov	esi, OFFSET FLAT:label_1618
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1620
	mov	esi, OFFSET FLAT:label_1623
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1624
	mov	esi, OFFSET FLAT:label_1626
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1628
	mov	esi, OFFSET FLAT:label_1630
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1611
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1634
	xor	ecx, ecx
.label_1642:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_1637
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1637:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1642
	jmp	.label_1611
.label_1682:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1646
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1656:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_1650
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1650:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1656
	jmp	.label_1611
.label_1670:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1658
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1669:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_1685
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1685:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1669
	jmp	.label_1611
.label_1681:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1673
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1679:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_1674
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1674:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1679
	jmp	.label_1611
.label_1659:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1684
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1610:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1688
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1688:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1610
	jmp	.label_1611
.label_1689:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1614
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1625:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_1619
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1619:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1625
	jmp	.label_1611
.label_1607:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1631
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1639:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_1649
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1649:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1639
	jmp	.label_1611
.label_1613:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1641
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1651:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_1645
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1645:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1651
	jmp	.label_1611
.label_1615:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1653
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1663:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_1657
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1657:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1663
	jmp	.label_1611
.label_1620:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1667
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1676:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_1671
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1671:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1676
	jmp	.label_1611
.label_1624:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1678
	xor	ecx, ecx
.label_1687:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_1680
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1680:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1687
	jmp	.label_1611
.label_1628:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1605
	xor	ecx, ecx
.label_1616:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_1608
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1608:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1616
.label_1611:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1666:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1611
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1629
.label_1646:
	xor	esi, esi
.label_1636:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_1633
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1633:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1636
	jmp	.label_1611
.label_1658:
	xor	esi, esi
.label_1644:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_1640
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1640:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1644
	jmp	.label_1611
.label_1673:
	xor	esi, esi
.label_1652:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_1647
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1647:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1652
	jmp	.label_1611
.label_1684:
	xor	esi, esi
.label_1665:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_1654
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1654:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1665
	jmp	.label_1611
.label_1614:
	xor	esi, esi
.label_1668:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_1661
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1661:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1668
	jmp	.label_1611
.label_1631:
	xor	esi, esi
.label_1675:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_1672
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1672:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1675
	jmp	.label_1611
.label_1641:
	xor	esi, esi
.label_1683:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_1621
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1621:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1683
	jmp	.label_1611
.label_1653:
	xor	esi, esi
.label_1606:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_1686
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1686:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1606
	jmp	.label_1611
.label_1667:
	xor	esi, esi
.label_1617:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_1612
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1612:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1617
	jmp	.label_1611
.label_1678:
	xor	esi, esi
.label_1627:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_1622
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1622:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1627
	jmp	.label_1611
.label_1605:
	xor	esi, esi
.label_1635:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_1632
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1632:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1635
	jmp	.label_1611
.label_1634:
	xor	esi, esi
.label_1643:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_1638
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1638:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1643
	jmp	.label_1611
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4106f0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_1696
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1698]
.label_2784:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_1511]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1699
	mov	qword ptr [rax], r15
	jmp	.label_1502
.label_2785:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1697
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1694
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1501
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1693
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1502
.label_2782:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1501
	mov	edi, OFFSET FLAT:label_1536
	mov	esi, OFFSET FLAT:label_911
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1530
	call	__assert_fail
.label_2783:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1502
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_1511]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1521
	mov	qword ptr [rax], rbx
	jmp	.label_1502
.label_1696:
	test	dl, 8
	jne	.label_1525
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1502
.label_1693:
	mov	qword ptr [rax], 2
	jge	.label_1691
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1502
.label_1691:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1502:
	xor	eax, eax
.label_1501:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1699:
	lea	rax, [r14 + rbx*8]
.label_1506:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1501
.label_1521:
	lea	rax, [r14 + r15*8]
	jmp	.label_1506
.label_1697:
	mov	edi, OFFSET FLAT:label_1695
	mov	esi, OFFSET FLAT:label_911
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1530
	call	__assert_fail
.label_1694:
	mov	edi, OFFSET FLAT:label_1692
	mov	esi, OFFSET FLAT:label_911
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1530
	call	__assert_fail
.label_1525:
	mov	edi, OFFSET FLAT:label_1529
	mov	esi, OFFSET FLAT:label_911
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1530
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410900

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
	mov	r14, rcx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [r14 + 8]
	test	dl, 0x10
	je	.label_1700
	test	r12, r12
	je	.label_1700
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1710
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1710
.label_1700:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	mov	qword ptr [rsp], rbp
	je	.label_1701
	mov	rax, qword ptr [rbx + 0x70]
.label_1714:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1709
	mov	rax, qword ptr [rbx + 0x70]
.label_1711:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1708:
	test	r12, r12
	mov	rbp, r15
	je	.label_1703
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1713
	mov	rax, qword ptr [rbx + 0x70]
.label_1707:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r12], rbp
	test	r15, r15
	je	.label_1703
	mov	qword ptr [r15], rbp
.label_1703:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1705
	mov	rax, qword ptr [rbx + 0x70]
.label_1706:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r13, r13
	je	.label_1712
	mov	qword ptr [r13], r12
.label_1712:
	test	rbp, rbp
	je	.label_1704
	mov	qword ptr [rbp], r12
.label_1704:
	test	r15, r15
	je	.label_1702
	test	r13, r13
	je	.label_1702
	test	rbp, rbp
	je	.label_1702
	test	r12, r12
	je	.label_1702
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_1710:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1701:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1709
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1714
.label_1709:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1708
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1711
.label_1705:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1704
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1706
.label_1702:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_1710
.label_1713:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1703
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1707
	nop	
	.section	.text
	.align	32
	#Procedure 0x410bf0

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
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_1719
.label_1720:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_1717
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1715
.label_1717:
	cmp	eax, 6
	sete	cl
.label_1715:
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
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1716:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1719:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1716
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1716
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1718
	test	rax, rax
	je	.label_1718
	test	r13, r13
	je	.label_1718
	test	rbp, rbp
	je	.label_1718
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1720
.label_1718:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1716
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410dc0

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
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1724
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1726
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1726
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1726
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1724
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1726:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1725
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1725
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1722:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1721
	test	rcx, rcx
	jne	.label_1728
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1730
	jmp	.label_1724
	nop	word ptr [rax + rax]
.label_1728:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1730:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1724
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1729
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1721:
	mov	r15b, 1
.label_1729:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1722
	jmp	.label_1727
.label_1725:
	xor	r15d, r15d
.label_1727:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1724
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1731
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1731
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1723
.label_1731:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1723:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1724:
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
	.align	32
	#Procedure 0x410fd0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_1743:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1742:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1735
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1737
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_1742
	jmp	.label_1737
	nop	dword ptr [rax + rax]
.label_1735:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1744
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1733
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1732
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1732
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1734:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1736
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1745
.label_1736:
	dec	rsi
	test	rsi, rsi
	jle	.label_1732
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1734
	jmp	.label_1732
.label_1745:
	cmp	rsi, -1
	je	.label_1732
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1739
	jmp	.label_1737
	nop	dword ptr [rax]
.label_1732:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1737
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_1737
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1737
.label_1739:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1737
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_1742
	jmp	.label_1737
	nop	
.label_1733:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1740
	cmp	rbp, r15
	jne	.label_1741
.label_1740:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_1737
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_1743
	jmp	.label_1737
.label_1744:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1738:
	mov	dword ptr [rsp + 8], 0
.label_1737:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1741:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1738
	jmp	.label_1737
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411440

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1746
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1746
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1752
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1748
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1752:
	test	rcx, rcx
	je	.label_1753
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1756
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1747
.label_1751:
	dec	rax
.label_1758:
	dec	rcx
	jmp	.label_1750
	nop	word ptr [rax + rax]
.label_1747:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1751
	jge	.label_1758
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1750:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1747
.label_1756:
	test	rax, rax
	js	.label_1759
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1759:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1746
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1749:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1754:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1755
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1754
	jmp	.label_1746
	nop	word ptr cs:[rax + rax]
.label_1755:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1749
	lea	rsi, [rdi + r12*8]
.label_1757:
	call	memcpy
.label_1746:
	xor	eax, eax
.label_1748:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1753:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_1757
	nop	
	.section	.text
	.align	32
	#Procedure 0x4115d0

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
	je	.label_1765
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1767
	cmp	rsi, rcx
	jne	.label_1769
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1760
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1764
.label_1765:
	movaps	xmm0, xmmword ptr [rip + label_1511]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1770
	mov	qword ptr [rax], rbx
	jmp	.label_1773
.label_1767:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1772
.label_1769:
	mov	rax, qword ptr [r14 + 0x10]
.label_1764:
	cmp	qword ptr [rax], rbx
	jle	.label_1761
	test	rcx, rcx
	jle	.label_1762
	nop	word ptr cs:[rax + rax]
.label_1766:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1766
	jmp	.label_1762
.label_1761:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1771
	nop	dword ptr [rax]
.label_1763:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1771:
	cmp	rdx, rbx
	jg	.label_1763
.label_1762:
	mov	qword ptr [rax + rcx*8], rbx
.label_1772:
	inc	qword ptr [r14 + 8]
.label_1773:
	mov	al, 1
.label_1768:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1770:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1760:
	xor	eax, eax
	jmp	.label_1768
	nop	
	.section	.text
	.align	32
	#Procedure 0x4116b0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r12, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_1780
	mov	r15d, ecx
	add	r15, r8
	test	r8, r8
	jle	.label_1792
	mov	rbx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_1826
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_1818
	movq	xmm0, r15
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1849
	pxor	xmm1, xmm1
	jmp	.label_1823
.label_1780:
	mov	dword ptr [r12], 0
.label_1788:
	xor	r13d, r13d
	jmp	.label_1804
.label_1818:
	xor	r9d, r9d
	jmp	.label_1826
.label_1849:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1831:
	movdqu	xmm2, xmmword ptr [rbx + rdi*8]
	movdqu	xmm3, xmmword ptr [rbx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rbx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rbx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1831
.label_1823:
	test	rsi, rsi
	je	.label_1846
	lea	rdi, [rbx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_1800:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_1800
.label_1846:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, r9
	je	.label_1792
.label_1826:
	mov	rsi, r8
	sub	rsi, r9
	lea	rax, [rbx + r9*8]
	nop	dword ptr [rax + rax]
.label_1774:
	add	r15, qword ptr [rax]
	add	rax, 8
	dec	rsi
	jne	.label_1774
.label_1792:
	mov	rsi, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x88]
	and	rax, r15
	lea	rax, [rax + rax*2]
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	jle	.label_1777
	test	rdx, rdx
	je	.label_1822
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_1803:
	mov	r13, qword ptr [r10 + rsi*8]
	cmp	qword ptr [r13], r15
	jne	.label_1790
	movzx	eax, byte ptr [r13 + 0x68]
	and	eax, 0xf
	cmp	eax, ecx
	jne	.label_1790
	mov	rdi, qword ptr [r13 + 0x50]
	test	rdi, rdi
	je	.label_1790
	cmp	qword ptr [rdi + 8], r8
	jne	.label_1790
	mov	rax, r8
	nop	dword ptr [rax + rax]
.label_1798:
	test	rax, rax
	jle	.label_1804
	mov	rbp, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	mov	rbx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rbx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1798
	nop	word ptr cs:[rax + rax]
.label_1790:
	inc	rsi
	cmp	rsi, r9
	jl	.label_1803
	jmp	.label_1777
.label_1822:
	lea	rsi, [r9 - 1]
	mov	eax, r9d
	and	eax, 7
	cmp	rsi, 7
	jb	.label_1805
	mov	rsi, rax
	sub	rsi, r9
.label_1810:
	add	rsi, 8
	jne	.label_1810
.label_1805:
	test	rax, rax
	je	.label_1777
	neg	rax
	nop	
.label_1827:
	inc	rax
	jne	.label_1827
.label_1777:
	mov	qword ptr [rsp], rdx
	mov	ebx, ecx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1791
	mov	qword ptr [rsp + 0x10], r14
	mov	r10, r13
	add	r10, 8
	mov	rsi, qword ptr [rsp]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	r14, qword ptr [rsi + 8]
	test	r14, r14
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], r12
	jle	.label_1802
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1828
	mov	rbp, qword ptr [rsp]
	mov	rsi, qword ptr [rbp + 0x10]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	rsi, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_1832
.label_1802:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
.label_1832:
	mov	al, byte ptr [r13 + 0x68]
	mov	r9d, ebx
	mov	ecx, r9d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r13 + 0x68], al
	mov	qword ptr [r13 + 0x50], r10
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1799
	mov	ecx, r9d
	mov	eax, r9d
	and	eax, 2
	and	r9d, 4
	test	cl, 1
	mov	dword ptr [rsp + 0xc], r9d
	jne	.label_1844
	xor	ebp, ebp
	xor	r8d, r8d
	test	eax, eax
	jne	.label_1782
	nop	word ptr cs:[rax + rax]
.label_1830:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1852
	test	ecx, ecx
	je	.label_1813
.label_1852:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_1812
	cmp	dl, 4
	jne	.label_1781
	or	bl, 0x40
	jmp	.label_1784
.label_1812:
	or	bl, 0x10
.label_1784:
	mov	byte ptr [r13 + 0x68], bl
.label_1781:
	test	ecx, ecx
	je	.label_1787
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1789
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1776
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1855
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1794
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1840
.label_1787:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1813
.label_1855:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1840:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1789:
	test	r12b, 0x11
	mov	rsi, qword ptr [rsp]
	jne	.label_1811
	test	r9d, r9d
	jne	.label_1813
	and	r12d, 0x40
	je	.label_1813
.label_1811:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1816
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_1816
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1816
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1825:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_1825
	nop	word ptr [rax + rax]
.label_1816:
	inc	r8
.label_1813:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_1830
	jmp	.label_1799
	nop	word ptr cs:[rax + rax]
.label_1782:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1836
	test	ecx, ecx
	je	.label_1786
.label_1836:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_1843
	cmp	dl, 4
	jne	.label_1847
	or	bl, 0x40
	jmp	.label_1848
.label_1843:
	or	bl, 0x10
.label_1848:
	mov	byte ptr [r13 + 0x68], bl
.label_1847:
	test	ecx, ecx
	je	.label_1806
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1850
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1776
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1853
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1794
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1785
.label_1806:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1786
.label_1853:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1785:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1850:
	test	r12b, 1
	mov	rsi, qword ptr [rsp]
	jne	.label_1795
	test	r9d, r9d
	jne	.label_1786
	and	r12d, 0x40
	je	.label_1786
.label_1795:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1797
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_1797
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1797
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1807:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_1807
	nop	word ptr [rax + rax]
.label_1797:
	inc	r8
.label_1786:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_1782
	jmp	.label_1799
.label_1844:
	test	eax, eax
	jne	.label_1815
	xor	ebp, ebp
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_1796:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1821
	test	ecx, ecx
	je	.label_1778
.label_1821:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_1829
	cmp	dl, 4
	jne	.label_1833
	or	bl, 0x40
	jmp	.label_1835
.label_1829:
	or	bl, 0x10
.label_1835:
	mov	byte ptr [r13 + 0x68], bl
.label_1833:
	test	ecx, ecx
	je	.label_1838
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1839
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1776
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1842
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1794
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1851
.label_1838:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1778
.label_1842:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1851:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1839:
	test	r12b, 0x12
	mov	rsi, qword ptr [rsp]
	jne	.label_1775
	test	r9d, r9d
	jne	.label_1778
	and	r12d, 0x40
	je	.label_1778
.label_1775:
	mov	rax, rbp
	sub	rax, r8
	js	.label_1779
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_1779
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1779
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1793:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_1793
	nop	word ptr [rax + rax]
.label_1779:
	inc	r8
.label_1778:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_1796
	jmp	.label_1799
.label_1815:
	xor	r12d, r12d
	xor	r8d, r8d
	nop	dword ptr [rax + rax]
.label_1854:
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rdx + r12*8]
	shl	rdx, 4
	mov	edx, dword ptr [rcx + rdx + 8]
	mov	ebp, edx
	shr	ebp, 8
	mov	ecx, ebp
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_1801
	test	ecx, ecx
	je	.label_1808
.label_1801:
	mov	esi, edx
	shr	esi, 0x14
	mov	al, byte ptr [r13 + 0x68]
	mov	ebx, eax
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, esi
	shl	bl, 5
	and	bl, 0x20
	and	al, 0xdf
	or	al, bl
	mov	byte ptr [r13 + 0x68], al
	cmp	dl, 4
	je	.label_1809
	cmp	dl, 2
	jne	.label_1814
	or	al, 0x10
	jmp	.label_1817
.label_1809:
	or	al, 0x40
.label_1817:
	mov	byte ptr [r13 + 0x68], al
.label_1814:
	test	ecx, ecx
	je	.label_1819
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_1820
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_1776
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1824
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1794
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1834
.label_1819:
	mov	rsi, qword ptr [rsp]
	jmp	.label_1808
.label_1824:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1834:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_1820:
	test	bpl, 2
	mov	rsi, qword ptr [rsp]
	jne	.label_1841
	test	r9d, r9d
	jne	.label_1808
	and	ebp, 0x40
	je	.label_1808
.label_1841:
	mov	rcx, r12
	sub	rcx, r8
	js	.label_1845
	mov	rdx, qword ptr [r13 + 0x10]
	cmp	rdx, rcx
	jle	.label_1845
	dec	rdx
	mov	qword ptr [r13 + 0x10], rdx
	cmp	rdx, rcx
	jle	.label_1845
	lea	rcx, [r12*8]
	add	rcx, qword ptr [r13 + 0x18]
	mov	rdx, r8
	neg	rdx
.label_1837:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rax, [r12 + rdx + 1]
	inc	rdx
	cmp	rax, qword ptr [r13 + 0x10]
	jl	.label_1837
	nop	word ptr [rax + rax]
.label_1845:
	inc	r8
.label_1808:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_1854
.label_1799:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_1776
.label_1804:
	mov	rax, r13
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1776:
	mov	rdi, r13
	call	free_state
	jmp	.label_1783
.label_1794:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
.label_1783:
	mov	r12, qword ptr [rsp + 0x20]
.label_1791:
	mov	dword ptr [r12], 0xc
	jmp	.label_1788
.label_1828:
	mov	rdi, r13
	call	free
	jmp	.label_1791
	.section	.text
	.align	32
	#Procedure 0x412050

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
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1858
	test	r13, r13
	jle	.label_1860
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1857:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1856
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1862
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1861
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1862:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1856:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1857
.label_1860:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1859
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1863:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1858:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1861:
	mov	ecx, 0xc
	jmp	.label_1858
.label_1859:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1858
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1863
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412190

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_1900
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1910
	mov	qword ptr [rbx + 0x20], 0
.label_1910:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_1915
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_1915:
	test	r14, r14
	je	.label_1895
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_1870
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1873
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1906
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1906:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1896
.label_1866:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1871:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1895
	add	qword ptr [rbx + 8], r14
.label_1895:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1898
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1905
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1911
	jmp	.label_1864
.label_1898:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1913
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1864
.label_1905:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1864:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1911:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1900:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_1915
.label_1870:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_1926
.label_1920:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_1868
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1875
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_1889:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_1875
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_1889
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_1893
.label_1888:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1907
	cmp	rax, -3
	ja	.label_1907
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_1907:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_1918
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_1875:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_1923
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_1894
.label_1873:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_1877:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1869
	jge	.label_1879
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1869:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1877
.label_1879:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_1891
	cmp	rbp, r14
	jne	.label_1891
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_1891
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_1871
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_1885:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1885
	jmp	.label_1871
.label_1896:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1866
.label_1891:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1892:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1876
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_1892
.label_1876:
	cmp	rax, rdi
	jge	.label_1878
	mov	rcx, qword ptr [rbx + 0x10]
.label_1883:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1878
	inc	rax
	cmp	rax, rdi
	jl	.label_1883
.label_1878:
	cmp	rax, rdi
	jne	.label_1899
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1871
.label_1913:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1922
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_1897
	jmp	.label_1902
.label_1917:
	mov	r12, qword ptr [r13]
.label_1897:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1904
.label_1921:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1912
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1912:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1917
	jmp	.label_1919
.label_1904:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_1921
.label_1868:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1924
	mov	cl, byte ptr [rsi + rdx]
.label_1924:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_1867
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_1867
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_1867:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_1871
.label_1899:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_1865
	jle	.label_1887
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1887:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_1865:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1871
.label_1923:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1881
.label_1922:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1864
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1908
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1914
.label_1925:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_1914:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1925
	mov	rax, rcx
.label_1908:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1864
.label_1919:
	mov	r15, r14
.label_1902:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1864
.label_1890:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1874
	test	rax, rax
	je	.label_1874
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_1874:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1882
.label_1894:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_1890
	mov	edx, dword ptr [rsp + 8]
.label_1882:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_1894
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_1881
.label_1918:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1901
.label_1884:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_1886
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1886:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1909
.label_1881:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1909:
	test	rbp, rbp
	jne	.label_1916
.label_1872:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1871
.label_1926:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1920
.label_1916:
	jle	.label_1880
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1880:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_1872
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_1872
.label_1901:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1886
	test	eax, eax
	je	.label_1884
	jmp	.label_1886
.label_1893:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1888
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_1903:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1903
	jmp	.label_1888
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4128d0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	rdx, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	rdx, rdx
	jle	.label_1928
	mov	esi, eax
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r8, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	ecx, eax
	and	ecx, 2
	and	eax, 8
	xor	ebx, ebx
	test	sil, 1
	jne	.label_1936
	test	ecx, ecx
	jne	.label_1929
	nop	word ptr cs:[rax + rax]
.label_1933:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1931
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1928
	test	sil, 0x24
	jne	.label_1931
	test	eax, eax
	jne	.label_1928
	test	sil, sil
	jns	.label_1928
	nop	word ptr [rax + rax]
.label_1931:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1933
	jmp	.label_1928
	nop	word ptr cs:[rax + rax]
.label_1929:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1934
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1928
	test	sil, 4
	jne	.label_1934
	test	eax, eax
	jne	.label_1928
	test	sil, sil
	jns	.label_1928
.label_1934:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1929
	jmp	.label_1928
.label_1936:
	test	ecx, ecx
	jne	.label_1930
.label_1935:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1932
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1928
	test	sil, 0x28
	jne	.label_1932
	test	eax, eax
	jne	.label_1928
	test	sil, sil
	jns	.label_1928
	nop	
.label_1932:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1935
	jmp	.label_1928
	nop	
.label_1930:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_1927
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1928
	test	sil, 8
	jne	.label_1927
	test	eax, eax
	jne	.label_1928
	test	sil, sil
	jns	.label_1928
.label_1927:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_1930
.label_1928:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412a70

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
	jle	.label_1940
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1941:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1937
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1939:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1939
.label_1937:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1938
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1938:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1941
.label_1940:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412b30

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
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rax, qword ptr [rip + label_1978]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_1979]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_1980
	mov	r14, rdi
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1952
	lea	r13, [rbp - 0xb0]
	mov	rdi, r14
.label_1980:
	mov	qword ptr [rbp - 0x98], rdi
	mov	r14, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	mov	qword ptr [rbp - 0x50], rdx
	ja	.label_2000
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_2009
.label_2000:
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_2011
	mov	al, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rdx, qword ptr [rbp - 0x50]
.label_2009:
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsi, r15
	call	memcpy
	mov	r8, qword ptr [r15]
	xor	edi, edi
	cmp	r8, qword ptr [r15 + 8]
	jg	.label_1943
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rbx
	mov	qword ptr [rbp - 0x58], r12
	mov	qword ptr [rbp - 0x40], r15
	jmp	.label_1947
.label_2011:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_1952
	cmp	qword ptr [r13], 0
	jle	.label_1955
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1966:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1966
.label_1955:
	mov	rdi, qword ptr [r13 + 0x10]
	call	free
	mov	ecx, 0xc
	jmp	.label_1952
.label_1968:
	mov	r12, rax
	jmp	.label_1949
	nop	word ptr cs:[rax + rax]
.label_1947:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax]
	mov	rdx, r14
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_1970
	cmp	cl, 8
	jne	.label_1975
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1975
	shl	rax, 4
	mov	qword ptr [r15 + rax], r8
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_1975
	nop	dword ptr [rax]
.label_1970:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1975
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r8
	jge	.label_1983
	mov	qword ptr [r15 + rax + 8], r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r15
	jmp	.label_1984
.label_1983:
	test	ecx, 0x80000
	je	.label_1982
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1982
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x48]
.label_1984:
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], r8
	call	memcpy
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_1975
.label_1982:
	mov	qword ptr [r15 + rax + 8], r8
	nop	word ptr cs:[rax + rax]
.label_1975:
	cmp	r8, qword ptr [r15 + 8]
	jne	.label_1992
	cmp	r14, qword ptr [r12 + 0xb0]
	jne	.label_1992
	test	r13, r13
	je	.label_1996
	test	rbx, rbx
	mov	eax, 0
	je	.label_1998
	mov	rcx, qword ptr [rbp - 0x88]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2004:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2002
	cmp	qword ptr [rcx], -1
	je	.label_1998
.label_2002:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_2004
.label_1998:
	cmp	rax, rbx
	je	.label_2005
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1989
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1992:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r14
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	mov	qword ptr [rbp - 0x30], r8
	jne	.label_1950
	test	ecx, 0x100000
	jne	.label_1957
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1958
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	test	r13, r13
	je	.label_1963
	cmp	rax, -1
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_1945
	cmp	rdi, -1
	je	.label_1945
	test	rdx, rdx
	je	.label_1960
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rcx
	cmp	rax, rdx
	jl	.label_1945
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, rcx
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0x30]
	test	eax, eax
	jne	.label_1945
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_1977
	nop	word ptr [rax + rax]
.label_1950:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	r12, qword ptr [rax + r8*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_1959
	lea	rax, [r14 + r14*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	test	r10, r10
	jle	.label_1956
	mov	r9, qword ptr [r12 + 0x10]
	test	r9, r9
	jle	.label_1956
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r12 + 0x18]
	je	.label_1990
	mov	r11, -1
	xor	r14d, r14d
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_2006:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_1997:
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	cmovge	rax, rdi
	cmovge	rdx, rcx
	cmp	rax, rdx
	jb	.label_1997
	cmp	rax, -1
	je	.label_2001
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_2001
	cmp	r11, -1
	mov	r12, r11
	mov	r11, rbx
	jne	.label_1948
.label_2001:
	inc	r14
	cmp	r14, r10
	jl	.label_2006
	mov	r12, r11
	jmp	.label_1995
	nop	dword ptr [rax + rax]
.label_1957:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r8
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1953:
	test	rdx, rdx
	jne	.label_2010
	jmp	.label_1958
.label_1990:
	mov	rbx, qword ptr [rsi]
	mov	r12, -1
	xor	ecx, ecx
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_1951:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_1944
	cmp	r12, -1
	mov	rax, rbx
	je	.label_1946
	jmp	.label_1948
	nop	word ptr cs:[rax + rax]
.label_1944:
	mov	rax, r12
.label_1946:
	inc	rcx
	cmp	rcx, r10
	mov	r12, rax
	jl	.label_1951
	mov	r12, rax
	jmp	.label_1995
.label_1948:
	mov	r9, qword ptr [rbp - 0x68]
	test	r9, r9
	jle	.label_2007
	mov	rcx, r9
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_2012
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1962:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1962
.label_2012:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1968
	test	r13, r13
	jne	.label_1969
	mov	r12, rax
	jmp	.label_1949
.label_1963:
	test	rdx, rdx
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_1960
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_1973
.label_1960:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_1959
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1958
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r14 + r14*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1954
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1986:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1986
.label_1954:
	cmp	rcx, -1
	je	.label_1953
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_1981
	jmp	.label_1953
	nop	word ptr cs:[rax + rax]
.label_1958:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1956
.label_2010:
	add	rdx, qword ptr [rbp - 0x30]
	test	r13, r13
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	je	.label_1973
.label_1977:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1945
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1945
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1945
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1974
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2003:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_2003
.label_1974:
	cmp	rbx, -1
	je	.label_1956
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_1956
.label_1973:
	mov	qword ptr [rbp - 0x68], 0
	mov	r8, rdx
	mov	r15, qword ptr [rbp - 0x40]
	jmp	.label_1949
.label_2007:
	test	r13, r13
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_1949
.label_1969:
	mov	qword ptr [rbp - 0x80], r9
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_1999
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_1959
	shl	qword ptr [r13 + 8], 1
	mov	qword ptr [r13 + 0x10], r15
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_1964
.label_1999:
	mov	r15, qword ptr [r13 + 0x10]
.label_1964:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	qword ptr [r15 + r14], r8
	mov	qword ptr [r15 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x50]
	call	malloc
	mov	qword ptr [r15 + r14 + 0x10], rax
	test	rax, rax
	je	.label_1959
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	lea	rax, [r15 + r14 + 0x18]
	mov	rbx, qword ptr [rbp - 0x80]
	mov	qword ptr [r15 + r14 + 0x20], rbx
	test	rbx, rbx
	jle	.label_1972
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rax], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15 + r14 + 0x28], rax
	test	rax, rax
	je	.label_1991
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1981
.label_1972:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_1981:
	mov	r15, qword ptr [rbp - 0x40]
.label_1995:
	mov	r8, qword ptr [rbp - 0x30]
.label_1949:
	test	r12, r12
	jns	.label_1985
	cmp	r12, -2
	je	.label_1959
	nop	dword ptr [rax]
.label_1956:
	test	r13, r13
	je	.label_1988
.label_1945:
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1989
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r15, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + rbx + 8]
.label_1985:
	cmp	r8, qword ptr [r15 + 8]
	mov	r14, r12
	mov	rbx, qword ptr [rbp - 0x90]
	mov	r12, qword ptr [rbp - 0x58]
	jle	.label_1947
	mov	rdi, qword ptr [rbp - 0x60]
.label_1943:
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_2008
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_2008:
	xor	ecx, ecx
	test	r13, r13
	je	.label_1952
	cmp	qword ptr [r13], 0
	jle	.label_1967
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1942:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1942
.label_1967:
	mov	rdi, qword ptr [r13 + 0x10]
.label_1961:
	call	free
	xor	ecx, ecx
.label_1952:
	mov	eax, ecx
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1988:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	ecx, 1
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1952
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	mov	ecx, 1
	jmp	.label_1952
.label_1996:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	ecx, ecx
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1952
	mov	rdi, qword ptr [rbp - 0x48]
	jmp	.label_1961
.label_2005:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1965
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1965:
	cmp	qword ptr [r13], 0
	jle	.label_1967
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1971:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r13]
	jl	.label_1971
	jmp	.label_1967
.label_1991:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x78]
	movups	xmmword ptr [rax], xmm0
.label_1959:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1976
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1976:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_1952
	cmp	qword ptr [r13], 0
	jle	.label_1955
	xor	ebx, ebx
	xor	r15d, r15d
.label_1987:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1987
	jmp	.label_1955
.label_1989:
	mov	edi, OFFSET FLAT:label_1993
	mov	esi, OFFSET FLAT:label_1177
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1994
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413560

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2013
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2016
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2020
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2019:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2017
	dec	rsi
	test	rsi, rsi
	jg	.label_2019
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2014
.label_2020:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_2014
	xor	edx, edx
	cmp	al, 0xa
	je	.label_2015
	jmp	.label_2014
.label_2017:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2018
.label_2021:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2014
.label_2015:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_2014:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2013:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2014
.label_2016:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_2014
.label_2018:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2014
	test	eax, eax
	je	.label_2021
	jmp	.label_2014
	nop	
	.section	.text
	.align	32
	#Procedure 0x413620

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_2022
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_2023
.label_2024:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2022
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2026
	nop	word ptr [rax + rax]
.label_2023:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_2025
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_2025
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_2025
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_2024
.label_2026:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_2022
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_2025:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_2023
.label_2022:
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
	#Procedure 0x413750

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2089
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_2055:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_2027
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2032
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2087
	test	ecx, ecx
	je	.label_2027
.label_2087:
	test	bh, 8
	je	.label_2095
	test	ecx, ecx
	jne	.label_2027
.label_2095:
	test	bh, 0x20
	je	.label_2097
	mov	ecx, eax
	and	ecx, 2
	je	.label_2027
.label_2097:
	test	bpl, bpl
	jns	.label_2032
	and	eax, 8
	je	.label_2027
	nop	word ptr [rax + rax]
.label_2032:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_2042
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_2063:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_2063
.label_2042:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_2073
	cmp	rax, -1
	je	.label_2073
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_2073
	lea	rax, [rcx + rax*8]
	nop	
.label_2079:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_2076
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2079
.label_2073:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_2076
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_2086
	nop	word ptr cs:[rax + rax]
.label_2075:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_2086:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_2031
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_2046
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_2052
.label_2046:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2056
.label_2058:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_2061
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_2068
	and	r9b, sil
	je	.label_2074
.label_2068:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_2074
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2061
.label_2083:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2084
.label_2074:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_2092
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_2092:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_2038
	nop	word ptr cs:[rax + rax]
.label_2052:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_2047
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_2058
	mov	r12, rbp
.label_2038:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_2061
.label_2047:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_2077
	test	eax, eax
	jne	.label_2083
	xor	r10d, r10d
.label_2077:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_2084:
	mov	r9, qword ptr [rsp + 0x10]
.label_2061:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2091
	cmp	al, 9
	jne	.label_2093
.label_2091:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_2052
	jmp	.label_2056
.label_2093:
	cmp	al, 7
	jne	.label_2033
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_2056:
	cmp	r14, rax
	jge	.label_2035
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2031
	nop	word ptr cs:[rax + rax]
.label_2035:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_2043
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2031
.label_2043:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2057
.label_2051:
	cmp	r13, -1
	je	.label_2029
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_2065
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_2096
.label_2065:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_2049
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_2059
.label_2049:
	test	eax, eax
	mov	r8, rbp
	jne	.label_2039
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_2062
.label_2081:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_2045
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_2088
	mov	r10d, 0xc
	jmp	.label_2044
.label_2088:
	test	eax, eax
	jne	.label_2066
	xor	r10d, r10d
.label_2044:
	mov	rcx, r15
.label_2071:
	mov	r15, qword ptr [rsp + 8]
.label_2048:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_2059
.label_2096:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_2059
.label_2098:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_2059
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_2082
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2094
.label_2039:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_2071
.label_2062:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_2037
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2081
.label_2045:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2048
.label_2066:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_2059
.label_2082:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2059
.label_2037:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_2059
	nop	word ptr [rax + rax]
.label_2057:
	cmp	rbx, qword ptr [r9]
	jle	.label_2085
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_2098
	lea	r15, [rcx + 1]
.label_2094:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_2090
	jmp	.label_2029
	nop	word ptr cs:[rax + rax]
.label_2085:
	mov	r15, rcx
.label_2090:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_2029
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2029
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_2054:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_2041
	cmp	qword ptr [rdx + rbp], r14
	je	.label_2051
.label_2041:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2054
.label_2029:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_2059:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2060
	cmp	al, 0xc
	jne	.label_2064
.label_2060:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_2057
	jmp	.label_2031
.label_2033:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2070
.label_2064:
	cmp	al, 0xa
	je	.label_2031
.label_2070:
	cmp	r10d, 6
	je	.label_2031
	test	r10d, r10d
	jne	.label_2053
	nop	word ptr cs:[rax + rax]
.label_2031:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_2075
.label_2076:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_2030:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_2027
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_2080:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_2050
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_2050
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_2028
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2040
.label_2028:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_2040:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_2067
	mov	rdx, qword ptr [rcx + 0x10]
.label_2067:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_2069
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_2078
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_2034
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_2034
	jmp	.label_2036
.label_2069:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_2034
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_2072
	jmp	.label_2036
.label_2034:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2072:
	cmp	rsi, rdx
	jne	.label_2050
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2050
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2036
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2036
	nop	
.label_2050:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_2080
	nop	word ptr cs:[rax + rax]
.label_2027:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_2055
	jmp	.label_2089
.label_2053:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_2030
	jmp	.label_2036
.label_2089:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_2036:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2078:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_2036
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414150

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	ja	.label_2103
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	cmovle	rbp, rcx
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	jl	.label_2109
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2103
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	call	realloc
	test	rax, rax
	je	.label_2103
	mov	qword ptr [r15 + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_2109
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_2103
	mov	qword ptr [r15 + 0x18], rax
.label_2109:
	cmp	byte ptr [r15 + 0x8b], 0
	je	.label_2113
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2103
	mov	qword ptr [r15 + 8], rax
.label_2113:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	test	rdi, rdi
	je	.label_2100
	lea	rsi, [rbp*8 + 8]
	call	realloc
	test	rax, rax
	je	.label_2103
	mov	qword ptr [r15 + 0xb8], rax
.label_2100:
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	je	.label_2106
	cmp	eax, 2
	jl	.label_2110
	mov	rdi, r15
	call	build_wcs_upper_buffer
	mov	r14d, eax
	test	r14d, r14d
	je	.label_2099
	jmp	.label_2103
.label_2106:
	cmp	eax, 2
	jl	.label_2112
	mov	rdi, r15
	call	build_wcs_buffer
	jmp	.label_2099
.label_2110:
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	cmovg	r14, rax
	cmp	rbp, r14
	jl	.label_2111
	jmp	.label_2102
.label_2112:
	mov	rdx, qword ptr [r15 + 0x78]
	test	rdx, rdx
	je	.label_2099
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2105
	mov	rsi, qword ptr [r15 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2108
	nop	dword ptr [rax]
.label_2114:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2108:
	inc	rax
	cmp	rax, rcx
	jl	.label_2114
	mov	rax, rcx
.label_2105:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_2099
.label_2104:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_2101
	nop	word ptr cs:[rax + rax]
.label_2111:
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	movzx	ecx, byte ptr [rbp + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2104
.label_2101:
	movzx	ebx, cl
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2107
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2107:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	cmp	rbp, r14
	jl	.label_2111
	mov	rbp, r14
.label_2102:
	mov	qword ptr [r15 + 0x30], rbp
	mov	qword ptr [r15 + 0x38], rbp
.label_2099:
	xor	r14d, r14d
.label_2103:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414380

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
	jle	.label_2115
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2121
.label_2115:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2116
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2118
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2120
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_2122
.label_2116:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2121
.label_2118:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2122:
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
	test	bpl, bpl
	jne	.label_2121
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2121:
	test	rbx, rbx
	je	.label_2119
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2119
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2117
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2117
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2117
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2117
.label_2119:
	mov	rax, rbx
.label_2117:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2120:
	xor	eax, eax
	jmp	.label_2117
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4144d0

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
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_2129
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_2125
	test	r13, r13
	jle	.label_2125
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2125
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2130
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_2124:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_2133:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_2123
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_2132
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2133
	jmp	.label_2123
.label_2132:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2124
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_2123:
	sub	r13, rbp
	jle	.label_2134
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_2128
.label_2125:
	test	r13, r13
	jle	.label_2129
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2131
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2127
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2126
.label_2129:
	test	rbx, rbx
	je	.label_2131
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_2131
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_2131
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2127
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2126
.label_2131:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2126
.label_2134:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_2128
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_2128:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_2126:
	xor	ecx, ecx
.label_2130:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2127:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_2130
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146e0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_2135
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_2136:
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
	jl	.label_2136
.label_2135:
	cmp	rax, r8
	jge	.label_2137
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2138
.label_2137:
	mov	rax, -1
.label_2138:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414750

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2141
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2144
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2142
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2144:
	test	r15, r15
	jle	.label_2145
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2146
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2146
.label_2145:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2146:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2140
	mov	dword ptr [r13 + 0xe0], edi
.label_2140:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2143
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2147
.label_2143:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2139
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2139
.label_2147:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2141
.label_2139:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_2141
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_2141:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2142:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_2141
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414930

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_2157
	mov	r14, qword ptr [rbp + 0x10]
.label_2150:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_2180
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_1511]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2152
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2161
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2163
.label_2180:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_2167
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_2169
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_2171
.label_2167:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_2164
.label_2169:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_2178
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_2152
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_2156
.label_2178:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_2171:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2156:
	test	al, 0x40
	je	.label_2164
.label_2163:
	test	rbp, rbp
	je	.label_2165
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_2161
.label_2165:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2184
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2154
.label_2184:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_2164:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_2179
	xor	esi, esi
	nop	
.label_2173:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_2181
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_2183
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2154
.label_2183:
	test	rdx, rdx
	je	.label_2158
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_2159
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_2175:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_2170
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2176
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_2168
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_2149
.label_2168:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_2155
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_2160
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_2160
	jmp	.label_2149
	nop	
.label_2176:
	test	eax, eax
	jne	.label_2160
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_2170:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_2172
.label_2160:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_2155
.label_2172:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_2175
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_2159:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_2158:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_2182
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2154
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_2154
.label_2182:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_2162
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2154
.label_2162:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_2173
	jmp	.label_2174
.label_2179:
	mov	rbp, rax
	jmp	.label_2174
.label_2181:
	mov	rbp, qword ptr [rsp + 8]
.label_2174:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_2148
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_2148
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_2151
	xor	edx, edx
.label_2177:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2177
.label_2151:
	cmp	rdx, -1
	je	.label_2148
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_2153
.label_2148:
	mov	ebp, 1
.label_2153:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2155:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_2166
.label_2149:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_2166:
	mov	dword ptr [rsp + 4], r12d
.label_2154:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_2153
.label_2157:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_2153
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_2153
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_2153
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2150
.label_2161:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2153
.label_2152:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_2153
	nop	
	.section	.text
	.align	32
	#Procedure 0x415040

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2190
	test	r12, r12
	jle	.label_2192
	xor	r12d, r12d
	jmp	.label_2193
	nop	dword ptr [rax]
.label_2187:
	cmp	rbp, -1
	je	.label_2188
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2186
	nop	dword ptr [rax]
.label_2193:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2188
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2191:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2185
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2187
.label_2185:
	inc	rax
	cmp	rax, r10
	jl	.label_2191
.label_2188:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2186:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_2189
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2193
.label_2192:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2190:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2189:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2190
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415170

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
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_2221
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_2207:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_2207
.label_2221:
	cmp	r11, r9
	jge	.label_2217
	cmp	r11, -1
	je	.label_2217
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2217
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_2201
.label_2196:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_2201:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2194:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_2198
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_2212
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2209:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2209
.label_2212:
	cmp	rax, -1
	je	.label_2198
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_2198
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2204
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2208
	xor	edx, edx
.label_2214:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_2214
.label_2208:
	cmp	rdx, -1
	je	.label_2220
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_2199
.label_2220:
	movaps	xmm0, xmmword ptr [rip + label_1511]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2203
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_2202:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_2199
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2199
.label_2204:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_2205
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_2210
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_2211
	xor	edx, edx
	nop	
.label_2218:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_2218
.label_2211:
	cmp	rdx, -1
	je	.label_2225
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2199
.label_2225:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_2200
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2195
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2213
.label_2205:
	movaps	xmm0, xmmword ptr [rip + label_1511]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_2219
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_2223
.label_2210:
	mov	qword ptr [rsp + 0x18], r8
.label_2200:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_2213:
	xor	ebx, ebx
.label_2222:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2206
	xor	al, 1
	jne	.label_2206
.label_2223:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_2216
	mov	eax, dword ptr [rsp + 0xc]
.label_2216:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_2215
.label_2203:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_2202
.label_2206:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_2197
.label_2219:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_2197:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_2199:
	mov	r14, qword ptr [rsp + 0x28]
.label_2215:
	test	ecx, ecx
	je	.label_2198
	cmp	ecx, 4
	jne	.label_2224
.label_2198:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2194
	jmp	.label_2217
.label_2195:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_2222
.label_2224:
	cmp	ecx, 2
	je	.label_2196
	mov	eax, dword ptr [rsp + 0xc]
.label_2217:
	add	rsp, 0x58
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
	#Procedure 0x4155d0

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
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_2229
	nop	dword ptr [rax]
.label_2230:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2229:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2234
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2226
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2232:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2232
.label_2226:
	cmp	rdx, -1
	je	.label_2234
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2227
.label_2234:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2228
	cmp	qword ptr [rax + rcx], r14
	je	.label_2233
.label_2228:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2231
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2235
	test	rcx, rcx
	jne	.label_2230
	jmp	.label_2227
	nop	dword ptr [rax]
.label_2235:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2231
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2230
.label_2233:
	cmp	r15d, 9
	jne	.label_2227
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_2231
.label_2227:
	xor	eax, eax
.label_2231:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4156f0

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
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2246
	mov	r15, r8
	jle	.label_2239
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2244
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_2244
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	eax, [rbx + 1]
	and	eax, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2254
	pxor	xmm1, xmm1
	jmp	.label_2259
.label_2254:
	lea	rbp, [rax - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2236:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2236
.label_2259:
	test	rax, rax
	je	.label_2258
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_2256:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rax
	jne	.label_2256
.label_2258:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2239
.label_2244:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	
.label_2250:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2250
.label_2239:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_2252
	test	r12, r12
	je	.label_2247
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2253:
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_2265
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2265
	mov	rdi, r8
	nop	word ptr cs:[rax + rax]
.label_2243:
	test	rdi, rdi
	jle	.label_2241
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2243
	nop	word ptr cs:[rax + rax]
.label_2265:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_2253
	jmp	.label_2252
.label_2247:
	lea	rdx, [rcx - 1]
	mov	eax, ecx
	and	eax, 7
	cmp	rdx, 7
	jb	.label_2255
	mov	rdx, rax
	sub	rdx, rcx
	nop	
.label_2260:
	add	rdx, 8
	jne	.label_2260
.label_2255:
	test	rax, rax
	je	.label_2252
	neg	rax
	nop	
.label_2264:
	inc	rax
	jne	.label_2264
.label_2252:
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2238
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	jle	.label_2242
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2237
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_2262
.label_2242:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_2266
	lea	r14, [r12 + 0x10]
.label_2262:
	xor	eax, eax
	nop	
.label_2261:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ecx, dword ptr [r8 + rsi + 8]
	mov	edx, ecx
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_2245
	mov	ebp, ecx
	shr	ebp, 0x14
	movzx	ebx, byte ptr [r13 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, ebp
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r13 + 0x68], bl
	cmp	cl, 0xc
	je	.label_2257
	cmp	cl, 4
	je	.label_2263
	cmp	cl, 2
	jne	.label_2240
	or	bl, 0x10
	jmp	.label_2249
.label_2263:
	or	bl, 0x40
	jmp	.label_2249
.label_2240:
	lea	rcx, [r8 + rsi + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2245
.label_2257:
	or	bl, 0x80
.label_2249:
	mov	byte ptr [r13 + 0x68], bl
.label_2245:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2261
.label_2266:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_2248
.label_2241:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2246:
	mov	dword ptr [r14], 0
	jmp	.label_2251
.label_2248:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_2238
.label_2237:
	mov	rdi, r13
	call	free
.label_2238:
	mov	dword ptr [r14], 0xc
.label_2251:
	xor	r13d, r13d
	jmp	.label_2241
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415a70

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_2289
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2271
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2271
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2277:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2271
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2277
.label_2271:
	cmp	r10d, 5
	jne	.label_2281
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2269
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2284
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_2269
.label_2284:
	test	al, al
	jns	.label_2290
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2269
.label_2290:
	mov	r14d, ebx
	jmp	.label_2269
.label_2281:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2269
	test	al, al
	je	.label_2269
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2268
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2268
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2278
.label_2268:
	cmp	r8d, 1
	jne	.label_2285
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2278
.label_2285:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2278:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2287
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2276:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2267
	inc	rdx
	cmp	rdx, rax
	jl	.label_2276
.label_2287:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2282
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2275:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2267
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2275
	mov	rsi, qword ptr [r15 + 0x40]
.label_2282:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2272
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2273:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2279
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2267
.label_2279:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2273
	jmp	.label_2272
.label_2267:
	mov	ecx, ebx
.label_2272:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2288
	mov	r14d, ecx
	jmp	.label_2269
.label_2288:
	test	ecx, ecx
	jg	.label_2269
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_2269:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2289:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_2269
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_2269
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_2274
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_2269
.label_2274:
	cmp	bl, 0xef
	ja	.label_2280
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_2270
	cmp	dil, 0xa0
	jb	.label_2269
	jmp	.label_2270
.label_2280:
	cmp	bl, 0xf7
	ja	.label_2286
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_2270
	cmp	dil, 0x90
	jb	.label_2269
	jmp	.label_2270
.label_2286:
	cmp	bl, 0xfb
	ja	.label_2291
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_2270
	cmp	dil, 0x88
	jb	.label_2269
	jmp	.label_2270
.label_2291:
	cmp	bl, 0xfd
	ja	.label_2269
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_2270
	cmp	dil, 0x84
	jb	.label_2269
.label_2270:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2269
	add	rax, rcx
	mov	ecx, 1
.label_2283:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2269
	cmp	dl, 0xbf
	ja	.label_2269
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2283
	mov	r14d, esi
	jmp	.label_2269
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415d00

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_2292
	jmp	qword ptr [(rbp * 8) + label_2299]
.label_2791:
	cmp	byte ptr [rsi], cl
	je	.label_2298
	xor	eax, eax
	jmp	.label_2292
.label_2792:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2298
	xor	eax, eax
	jmp	.label_2292
.label_2794:
	test	cl, cl
	js	.label_2295
.label_2793:
	test	cl, cl
	je	.label_2296
	cmp	cl, 0xa
	jne	.label_2298
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2298
	xor	eax, eax
	jmp	.label_2292
.label_2296:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2300
.label_2298:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2292
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2297
	test	ecx, ecx
	jne	.label_2297
	xor	eax, eax
	jmp	.label_2292
.label_2297:
	mov	edx, r14d
	test	dh, 8
	je	.label_2293
	test	ecx, ecx
	je	.label_2293
.label_2295:
	xor	eax, eax
	jmp	.label_2292
.label_2293:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2294
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2294
.label_2300:
	xor	eax, eax
	jmp	.label_2292
.label_2294:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2292:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415df0

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
	sub	rsp, 0xb8
	mov	r13, rsi
	mov	qword ptr [rbp - 0x70], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_2310
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xd0], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2313
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	xor	r15d, r15d
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0xc0], r13
	nop	word ptr [rax + rax]
.label_2316:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax]
	shl	rsi, 4
	lea	r8, [rdi + rsi]
	mov	edx, dword ptr [rdi + rsi + 8]
	movzx	eax, dl
	cmp	eax, 1
	jne	.label_2427
	mov	cl, byte ptr [r8]
	mov	ebx, 1
	shl	rbx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x60], rbx
	jmp	.label_2347
	nop	
.label_2427:
	cmp	dl, 7
	je	.label_2355
	cmp	dl, 5
	je	.label_2345
	cmp	dl, 3
	jne	.label_2324
	mov	rcx, qword ptr [r8]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2347
.label_2355:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xd8]
	mov	rbx, -2
	test	cl, 0x40
	jne	.label_2370
	mov	qword ptr [rbp - 0x60], -0x401
	mov	rbx, -0x402
.label_2370:
	test	cl, cl
	jns	.label_2347
	mov	qword ptr [rbp - 0x60], rbx
	jmp	.label_2347
.label_2345:
	mov	rbx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_2379
	mov	rcx, qword ptr [rbx + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm0
	jmp	.label_2383
.label_2379:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, -1
.label_2383:
	mov	rbx, qword ptr [rbx + 0xd8]
	test	bl, 0x40
	jne	.label_2396
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x60], rcx
.label_2396:
	test	bl, bl
	jns	.label_2347
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x60], rcx
	nop	dword ptr [rax + rax]
.label_2347:
	shr	edx, 8
	mov	ecx, edx
	and	ecx, 0x3ff
	je	.label_2362
	test	dl, 0x20
	je	.label_2406
	mov	rcx, qword ptr [rbp - 0x60]
	test	ch, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	je	.label_2324
	mov	qword ptr [rbp - 0x60], 0x400
.label_2406:
	test	dl, dl
	js	.label_2366
	lea	rcx, [rdi + rsi + 8]
	test	dl, 4
	je	.label_2418
	cmp	eax, 1
	jne	.label_2423
	test	byte ptr [rcx + 2], 0x40
	je	.label_2366
.label_2423:
	mov	r9, r8
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2426
	mov	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x78]
	movdqu	xmm0, xmmword ptr [rdi + 0xb8]
	movdqu	xmm1, xmmword ptr [rsi]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rbx, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rsi + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, r8
	or	rdi, rbx
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rsi, xmm0
	or	rsi, rdi
	jmp	.label_2307
.label_2426:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	r8, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdi, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movq	rbx, xmm0
	or	rbx, r8
	or	rbx, rdi
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rsi, xmm0
	or	rsi, rbx
.label_2307:
	test	rsi, rsi
	mov	r8, r9
	je	.label_2324
.label_2418:
	test	dl, 8
	je	.label_2362
	cmp	eax, 1
	jne	.label_2323
	test	byte ptr [rcx + 2], 0x40
	jne	.label_2366
.label_2323:
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2398
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rcx]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	rdx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	mov	rdi, rsi
	movq	rsi, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, rdx
	or	rdi, rsi
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rcx, xmm0
	or	rcx, rdi
	jmp	.label_2371
	nop	dword ptr [rax]
.label_2366:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	jmp	.label_2324
.label_2398:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movq	rsi, xmm0
	or	rsi, rcx
	or	rsi, rdx
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	or	rcx, rsi
.label_2371:
	test	rcx, rcx
	je	.label_2324
	nop	word ptr [rax + rax]
.label_2362:
	test	r15, r15
	mov	qword ptr [rbp - 0x90], r14
	jle	.label_2411
	cmp	eax, 1
	jne	.label_2416
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rsi, r12
	xor	edi, edi
	mov	qword ptr [rbp - 0xc8], r8
	jmp	.label_2391
.label_2411:
	xor	edi, edi
	jmp	.label_2365
.label_2416:
	mov	r9, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x50]
	mov	r14, qword ptr [rbp - 0x48]
	mov	rbx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x38], r12
	xor	edi, edi
	jmp	.label_2301
.label_2332:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	mov	r9, r14
	jmp	.label_2321
.label_2408:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xb0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	jmp	.label_2321
.label_2301:
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdx, qword ptr [rbx - 0x18]
	mov	rax, qword ptr [rbx - 0x10]
	mov	rdi, rdx
	and	rdi, r9
	mov	r8, rax
	and	r8, rsi
	mov	rcx, r8
	mov	qword ptr [rbp - 0xb0], rdi
	or	rcx, rdi
	mov	r10, qword ptr [rbx - 8]
	mov	r15, r10
	and	r15, r11
	or	rcx, r15
	mov	qword ptr [rbp - 0x88], rbx
	mov	rdi, qword ptr [rbx]
	mov	r12, r11
	mov	r11, rdi
	and	r11, r14
	mov	r13d, 0x13
	or	rcx, r11
	je	.label_2336
	mov	rcx, r9
	not	rcx
	and	rcx, rdx
	not	rdx
	and	r9, rdx
	mov	qword ptr [rbp - 0xa0], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	rbx, rsi
	not	rbx
	and	rbx, rax
	mov	rdx, rbx
	or	rdx, rcx
	not	rax
	and	rsi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rax, r12
	not	rax
	and	rax, r10
	or	rdx, rax
	not	r10
	and	r12, r10
	mov	qword ptr [rbp - 0xb8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r14
	not	rsi
	and	rsi, rdi
	not	rdi
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	r12, r14
	je	.label_2358
	mov	r10, qword ptr [rbp - 0x30]
	mov	rdx, r10
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], rbx
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx - 0x18], rax
	mov	qword ptr [rbx - 0x10], r8
	mov	qword ptr [rbx - 8], r15
	mov	qword ptr [rbx], r11
	lea	r14, [r10 + r10*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r14*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r14*8 + 8], rdi
	mov	r15, qword ptr [rax + 8]
	test	r15, r15
	jle	.label_2384
	mov	qword ptr [rbp - 0xb0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r14*8 + 0x10], rax
	test	rax, rax
	je	.label_2408
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rcx + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2417
	nop	word ptr cs:[rax + rax]
.label_2336:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
	mov	r11, r12
	mov	r12, r14
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2321
	nop	word ptr [rax + rax]
.label_2358:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2308
.label_2384:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2417:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	inc	r15
	mov	rax, qword ptr [rbp - 0xc0]
.label_2308:
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	je	.label_2332
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rax, rsi
	mov	r9, r14
	or	rax, r9
	mov	r11, qword ptr [rbp - 0xb8]
	mov	rcx, r11
	or	rcx, r12
	or	rcx, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
	mov	rdi, qword ptr [rbp - 0x68]
.label_2321:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2349
	cmp	al, 0x13
	jne	.label_2351
.label_2349:
	mov	r14, r12
	inc	rdi
	add	qword ptr [rbp - 0x38], 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2301
	jmp	.label_2365
.label_2344:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xa0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2360
	nop	word ptr cs:[rax + rax]
.label_2391:
	movzx	eax, byte ptr [r8]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rbx + rcx*8]
	mov	r13d, 0x13
	bt	rdx, rax
	jae	.label_2360
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x30], r15
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	rax, r9
	and	rax, rdx
	mov	rsi, rcx
	and	rsi, r11
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xb0], rax
	or	rsi, rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r12, qword ptr [rbx + 0x10]
	mov	r15, r12
	mov	qword ptr [rbp - 0x88], rax
	and	r15, rax
	or	rsi, r15
	mov	rax, qword ptr [rbp - 0x48]
	mov	r14, qword ptr [rbx + 0x18]
	mov	r10, r14
	and	r10, rax
	or	rsi, r10
	je	.label_2376
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsi, rcx
	mov	rcx, rdx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdx
	mov	qword ptr [rbp - 0xb8], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	r8, r11
	not	r8
	and	r8, rsi
	mov	rdx, r8
	or	rdx, rcx
	not	rsi
	and	rsi, r11
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, rsi
	not	rax
	and	rax, r12
	or	rdx, rax
	not	r12
	and	r12, rsi
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, rdi
	not	rsi
	and	rsi, r14
	not	r14
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	qword ptr [rbp - 0x88], r14
	je	.label_2401
	mov	r11, qword ptr [rbp - 0x30]
	mov	rdx, r11
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], r8
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r15
	mov	qword ptr [rbx + 0x18], r10
	lea	r15, [r11 + r11*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r15*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r15*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2312
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r15*8 + 0x10], rax
	test	rax, rax
	mov	r14, qword ptr [rbp - 0x90]
	je	.label_2344
	mov	r15, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	inc	qword ptr [rbp - 0x30]
	jmp	.label_2357
	nop	dword ptr [rax]
.label_2376:
	mov	r15, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2360
.label_2312:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	inc	r11
	mov	qword ptr [rbp - 0x30], r11
.label_2401:
	mov	r14, qword ptr [rbp - 0x90]
	mov	r15, qword ptr [rbp - 0x38]
.label_2357:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rdi, r15
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	mov	rsi, r15
	je	.label_2373
	mov	rax, qword ptr [rbp - 0x98]
	or	rax, qword ptr [rbp - 0xb8]
	or	r12, qword ptr [rbp - 0x88]
	or	r12, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
.label_2373:
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
.label_2360:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2388
	cmp	al, 0x13
	jne	.label_2351
.label_2388:
	inc	rdi
	add	rsi, 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2391
	jmp	.label_2365
.label_2351:
	cmp	al, 0x11
	jne	.label_2395
	nop	
.label_2365:
	cmp	rdi, r15
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0x90]
	jne	.label_2324
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmm1, xmmword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	lea	r15, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r14*8]
	movdqa	xmm0, xmmword ptr [rip + label_1511]
	movdqu	xmmword ptr [r12 + r15*8], xmm0
	mov	rbx, rdi
	mov	edi, 8
	call	malloc
	mov	qword ptr [r12 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_2420
	mov	qword ptr [rax], r14
	inc	rbx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	r15, rbx
	jmp	.label_2424
.label_2395:
	and	r13b, 0x1f
	jne	.label_2305
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
.label_2424:
	mov	r14, qword ptr [rbp - 0x90]
.label_2324:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_2316
	test	r15, r15
	jle	.label_2320
.label_2387:
	lea	rax, [r15 + 1]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2331
	xor	ecx, ecx
.label_2331:
	mov	dword ptr [rbp - 0x74], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	ja	.label_2333
	test	rax, rax
	je	.label_2333
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2340
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xb8], 0
	jmp	.label_2348
.label_2340:
	call	malloc
	mov	rsi, qword ptr [rbp - 0x70]
	test	rax, rax
	je	.label_2333
	mov	cl, 1
	mov	dword ptr [rbp - 0xb8], ecx
.label_2348:
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0xb0], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	lea	rbx, [rbp - 0x60]
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	nop	dword ptr [rax + rax]
.label_2342:
	mov	qword ptr [rbp - 0x58], 0
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	test	rax, rax
	jle	.label_2380
	mov	rdx, qword ptr [rbp - 0x80]
	lea	r14, [rdx + rcx*8 + 8]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2403:
	mov	rcx, qword ptr [r14 + 8]
	mov	rcx, qword ptr [rcx + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2390
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x74], eax
	test	eax, eax
	jne	.label_2315
	mov	rax, qword ptr [r14]
	mov	rsi, qword ptr [rbp - 0x70]
.label_2390:
	inc	r12
	cmp	r12, rax
	jl	.label_2403
.label_2380:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x74]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2407
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2315
.label_2407:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2409
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + r13*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	jmp	.label_2337
	nop	word ptr cs:[rax + rax]
.label_2409:
	mov	ecx, 1
	lea	rdi, [rbp - 0x74]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2410
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2315
.label_2410:
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + r13*8], rax
	je	.label_2319
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	al, 1
	jg	.label_2322
	mov	rax, qword ptr [rbp - 0x98]
.label_2322:
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2425
.label_2319:
	mov	rdx, qword ptr [rbp - 0x70]
.label_2425:
	mov	ecx, 2
	lea	rdi, [rbp - 0x74]
	mov	rsi, rdx
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2337
	mov	eax, dword ptr [rbp - 0x74]
	test	eax, eax
	jne	.label_2315
	nop	dword ptr [rax]
.label_2337:
	mov	rax, r13
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x68]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x68], rdx
	or	r15, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0x88], rdx
	inc	r13
	cmp	r13, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	jl	.label_2342
	mov	rax, qword ptr [rbp - 0x98]
	and	al, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	edi, 8
	jne	.label_2368
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2315
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2377
	lea	r8, [rdi - 8]
	mov	r10d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2302
.label_2305:
	cmp	r13b, 0x1a
	mov	r12, qword ptr [rbp - 0x80]
	jne	.label_2387
.label_2421:
	mov	r14, -1
	test	r15, r15
	jle	.label_2313
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2400:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2400
.label_2313:
	mov	r15, r14
.label_2320:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_2405
	xor	eax, eax
	jmp	.label_2304
.label_2405:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2304
.label_2392:
	mov	rbx, r9
	mov	rcx, r8
.label_2412:
	add	rcx, 8
	test	qword ptr [rbx], r10
	lea	rbx, [rbx + 0x20]
	je	.label_2412
	mov	rbx, qword ptr [rbp - 0x70]
	test	qword ptr [rbx + 0xb8], r10
	je	.label_2399
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	jmp	.label_2422
.label_2399:
	mov	rcx, qword ptr [rcx]
.label_2422:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2414
	nop	
.label_2302:
	test	dl, 1
	jne	.label_2392
.label_2414:
	add	r10, r10
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2302
.label_2377:
	test	r15, r15
	mov	r11, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2309
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2367
.label_2346:
	mov	rdx, r10
	mov	rcx, r8
.label_2386:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2386
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2326
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	jmp	.label_2419
.label_2326:
	mov	rcx, qword ptr [rcx]
.label_2419:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2334
.label_2367:
	test	r15b, 1
	jne	.label_2346
.label_2334:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2367
.label_2309:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x30]
	je	.label_2338
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2341
.label_2364:
	mov	rdx, r10
	mov	rcx, r8
.label_2428:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2428
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2328
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2356
.label_2328:
	mov	rcx, qword ptr [rcx]
.label_2356:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2359
	nop	word ptr cs:[rax + rax]
.label_2341:
	test	r12b, 1
	jne	.label_2364
.label_2359:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2341
.label_2338:
	test	r11, r11
	je	.label_2327
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2372
.label_2385:
	mov	rdx, r10
	mov	rcx, r8
.label_2374:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2374
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2378
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2394
.label_2378:
	mov	rcx, qword ptr [rcx]
.label_2394:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2382
	nop	
.label_2372:
	test	r11b, 1
	jne	.label_2385
.label_2382:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2372
.label_2327:
	mov	rcx, qword ptr [rbp - 0x68]
	test	ch, 4
	je	.label_2353
	xor	ecx, ecx
	nop	
.label_2393:
	test	byte ptr [r9 + 1], 4
	jne	.label_2352
	inc	rcx
	add	r9, 0x20
	cmp	rcx, r15
	jl	.label_2393
	jmp	.label_2353
.label_2352:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x98]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2353
	mov	qword ptr [rax + 0x850], rcx
.label_2353:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2402
	call	free
.label_2402:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2343:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2343
	mov	rdi, r14
	call	free
	mov	al, 1
.label_2304:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2420:
	lea	rax, [r12 + r15*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r15, rbx
	jmp	.label_2421
.label_2333:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	jmp	.label_2303
.label_2310:
	xor	eax, eax
	jmp	.label_2304
.label_2368:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2315
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2317
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2325
.label_2315:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2329
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2329:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r15, qword ptr [rbp - 0x30]
	test	r15, r15
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_2335
.label_2303:
	mov	rbx, r12
	add	rbx, 0x10
	nop	
.label_2339:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2339
.label_2335:
	mov	rdi, r12
	call	free
	xor	eax, eax
	jmp	.label_2304
.label_2363:
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, r8
.label_2350:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2350
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	jmp	.label_2354
.label_2325:
	test	dl, 1
	jne	.label_2363
.label_2354:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2325
.label_2317:
	test	r15, r15
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_2369
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2318
.label_2389:
	mov	rdx, r9
	mov	rcx, r8
.label_2375:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2375
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	jmp	.label_2361
.label_2318:
	test	r15b, 1
	jne	.label_2389
.label_2361:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2318
.label_2369:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0xa8]
	je	.label_2306
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2397
.label_2415:
	mov	r11, rdx
	mov	rdx, r10
	mov	rcx, r8
.label_2404:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2404
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, r11
	jmp	.label_2381
.label_2397:
	test	dl, 1
	jne	.label_2415
.label_2381:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2397
.label_2306:
	test	rcx, rcx
	je	.label_2327
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2330
.label_2413:
	mov	r11, rcx
	mov	rdx, r10
	mov	rcx, r8
.label_2311:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2311
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r11
	jmp	.label_2314
.label_2330:
	test	cl, 1
	jne	.label_2413
.label_2314:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2330
	jmp	.label_2327
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417070

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_1511]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_2437
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2432
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_2430:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_2446
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_2447
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_2435
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2435
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_2444:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2431
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_2441
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_2442
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_2443
.label_2441:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_2443
	jmp	.label_2431
.label_2442:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_2431
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_2431
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2433
	xor	edi, edi
	nop	dword ptr [rax]
.label_2439:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_2439
.label_2433:
	test	eax, eax
	je	.label_2431
	cmp	rdi, -1
	je	.label_2431
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2443
.label_2431:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_2434
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_2434
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2434
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_2436
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2445:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_2445
.label_2436:
	cmp	rsi, -1
	je	.label_2434
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_2434
	nop	dword ptr [rax]
.label_2443:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_2429
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_2438
.label_2429:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_2438:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_2432
.label_2434:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_2444
.label_2435:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2430
	jmp	.label_2432
.label_2446:
	xor	ebp, ebp
	jmp	.label_2432
.label_2447:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_2432:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2440:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2437:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_2440
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4173d0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r11, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r13, qword ptr [rax + r10*8]
	lea	rax, [r13 + 8]
	test	r13, r13
	cmove	rax, r13
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [r11 + 8], 0
	mov	qword ptr [rsp + 8], r10
	je	.label_2478
	test	r13, r13
	je	.label_2458
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], r12
	mov	rsi, r12
	mov	qword ptr [rsp + 0x20], r11
	mov	rdx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_2467
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x20]
	jne	.label_2481
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2485
	xor	ecx, ecx
.label_2485:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_2467
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2481
	xor	ebp, ebp
	nop	
.label_2448:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	mov	rbx, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_2467
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	mov	rdx, rbx
	jl	.label_2448
.label_2481:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_2455
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	mov	r11, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	je	.label_2458
	mov	qword ptr [rsp + 0x48], r13
	jle	.label_2505
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	mov	ebx, 0xfe
	nop	word ptr [rax + rax]
.label_2487:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_2472
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_2472
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsi + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r15, qword ptr [rcx + rdx]
	cmp	qword ptr [rsi + rax*8 + 0x18], r9
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2492
	test	rax, rax
	jle	.label_2472
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	dword ptr [rax + rax]
.label_2459:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	bl, 9
	je	.label_2504
	cmp	bl, 8
	jne	.label_2450
	cmp	r15, qword ptr [rcx + rdi]
	cmove	rsi, rbp
	jmp	.label_2450
	nop	word ptr cs:[rax + rax]
.label_2504:
	cmp	r15, qword ptr [rcx + rdi]
	cmove	r14, rbp
.label_2450:
	add	rdx, 8
	dec	rax
	jne	.label_2459
	test	rsi, rsi
	mov	ebx, 0xfe
	js	.label_2464
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2467
.label_2464:
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x10]
	js	.label_2472
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	jle	.label_2472
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2476:
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rcx + r15*8]
	mov	rdi, qword ptr [r12 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2470
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebp, 0
	je	.label_2491
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2482:
	lea	rbx, [rbp + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rdx, rbx
	cmp	rbp, rdx
	jb	.label_2482
.label_2491:
	cmp	rbp, -1
	mov	ebx, 0xfe
	je	.label_2470
	cmp	qword ptr [rdi + rbp*8], r14
	je	.label_2465
.label_2470:
	mov	rdi, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_2461
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_2507
	xor	edi, edi
	nop	
.label_2486:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r14
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_2486
.label_2507:
	cmp	rdi, -1
	je	.label_2461
	cmp	qword ptr [rcx + rdi*8], r14
	je	.label_2465
.label_2461:
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2467
	dec	r15
	mov	r8, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_2465:
	inc	r15
	cmp	r15, r8
	jl	.label_2476
	jmp	.label_2472
.label_2492:
	test	rax, rax
	jle	.label_2472
	xor	ebp, ebp
	jmp	.label_2480
	nop	word ptr cs:[rax + rax]
.label_2503:
	mov	rcx, qword ptr [r12]
.label_2480:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2484
	cmp	r15, qword ptr [rcx + rdx]
	jne	.label_2484
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2467
	mov	rax, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_2484:
	inc	rbp
	cmp	rbp, rax
	jl	.label_2503
	nop	
.label_2472:
	inc	r13
	mov	r14, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [r14 + 0x28]
	jl	.label_2487
.label_2505:
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x48]
.label_2458:
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	r10, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [rcx + r10*8], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	je	.label_2456
	jmp	.label_2455
.label_2478:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rax + r10*8], 0
.label_2456:
	test	r13, r13
	je	.label_2453
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r10*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2453
	mov	rbp, qword ptr [rbx + 0x98]
	mov	rax, qword ptr [rbx + 0xc8]
	xor	r13d, r13d
	test	rax, rax
	jle	.label_2475
	mov	rcx, qword ptr [rbx + 0xd8]
	xor	r13d, r13d
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_2483:
	lea	rsi, [rdx + r13]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r10
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r13, rsi
	cmp	r13, rdx
	jl	.label_2483
.label_2475:
	cmp	r13, rax
	jge	.label_2495
	cmp	r13, -1
	je	.label_2495
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rcx, [r13 + r13*4]
	mov	qword ptr [rsp + 0x88], rcx
	cmp	qword ptr [rax + rcx*8 + 8], r10
	jne	.label_2495
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2495
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x98], rax
	xor	ecx, ecx
	shl	qword ptr [rsp + 0x88], 3
	mov	qword ptr [rsp + 0x28], r14
	nop	dword ptr [rax]
.label_2502:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, qword ptr [rax + rcx*8]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [r14 + 0x10]
	jne	.label_2463
	cmp	eax, 4
	jne	.label_2449
	cmp	qword ptr [r14 + 0x18], r10
	jne	.label_2474
	jmp	.label_2449
	nop	word ptr cs:[rax + rax]
.label_2463:
	cmp	eax, 4
	jne	.label_2449
.label_2474:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, qword ptr [rsp + 0x88]
	mov	rbx, r13
.label_2468:
	cmp	qword ptr [rbp], r15
	jne	.label_2462
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	r9, rax
	sub	r9, rcx
	add	r9, r10
	cmp	rax, rcx
	je	.label_2490
	lea	rcx, [r15*8]
	add	rcx, qword ptr [r12 + 0x18]
	jmp	.label_2496
.label_2490:
	mov	rax, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rcx, qword ptr [rax + rcx*8 + 0x10]
.label_2496:
	cmp	r9, qword ptr [r14 + 0x18]
	jg	.label_2462
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_2462
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_2462
	mov	r8, qword ptr [rcx]
	dec	rax
	mov	rcx, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2454
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2497:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2497
.label_2454:
	cmp	rdx, -1
	je	.label_2462
	cmp	qword ptr [rcx + rdx*8], r8
	jne	.label_2462
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, r15
	mov	rcx, r10
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 8]
	test	al, al
	jne	.label_2462
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_2479
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, r14
	mov	r14, qword ptr [r14 + 0x28]
	mov	qword ptr [rsp + 0x78], r14
	test	r14, r14
	jle	.label_2451
	mov	qword ptr [rsp + 0x70], r14
	shl	r14, 3
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2499
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, r14
	mov	r14, rbp
	call	memcpy
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_2479
.label_2451:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r14, rbp
.label_2479:
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 0x68], r10
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 8]
	mov	r12d, 0xc
	test	al, al
	je	.label_2452
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2452
	mov	r14, qword ptr [r14 + 8]
	test	r14, r14
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_2473
	mov	qword ptr [rsp + 0x90], rbp
	test	r10, r10
	lea	rdi, [rsp + 0xa0]
	js	.label_2494
	mov	rbp, -1
	mov	qword ptr [rsp + 0x48], r15
	nop	dword ptr [rax + rax]
.label_2457:
	mov	rsi, qword ptr [r14 + rbp*8 + 8]
	mov	rdx, qword ptr [rax + rbp*8 + 8]
	test	rsi, rsi
	je	.label_2488
	test	rdx, rdx
	je	.label_2493
	add	rsi, 8
	add	rdx, 8
	mov	r15, rdi
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0x44], r12d
	test	r12d, r12d
	jne	.label_2452
	lea	rdi, [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r15
	call	re_acquire_state
	mov	qword ptr [r14 + rbp*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	r12d, dword ptr [rsp + 0x44]
	test	r12d, r12d
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_2493
	jmp	.label_2452
	nop	word ptr [rax + rax]
.label_2488:
	mov	qword ptr [r14 + rbp*8 + 8], rdx
.label_2493:
	inc	rbp
	cmp	rbp, r10
	jl	.label_2457
.label_2494:
	mov	rbp, qword ptr [rsp + 0x90]
.label_2473:
	mov	qword ptr [rax + r10*8], rbp
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	mov	r14, qword ptr [rsp + 0x28]
	jle	.label_2466
	mov	r12, rsi
	dec	r12
	mov	rcx, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_2498
	mov	rdi, r12
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2477:
	lea	rbp, [rdx + rdi]
	shr	rbp, 1
	cmp	qword ptr [rcx + rbp*8], rbx
	lea	rax, [rbp + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbp
	cmp	rdx, rdi
	jb	.label_2477
.label_2498:
	cmp	qword ptr [rcx + rdx*8], rbx
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_2466
	cmp	rsi, rdi
	jle	.label_2466
	mov	qword ptr [rsp + 0x78], r12
	cmp	r12, rdi
	jle	.label_2466
	lea	r14, [rdx + 1]
	cmp	r12, r14
	mov	r11, r14
	cmovge	r11, r12
	sub	r11, rdx
	cmp	r11, 4
	jae	.label_2500
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_2469
.label_2500:
	mov	r8, r11
	and	r8, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_2501
	cmp	r12, r14
	cmovge	r14, r12
	sub	r14, rdx
	add	r14, -4
	shr	r14, 2
	lea	r10d, [r14 + 1]
	and	r10d, 1
	test	r14, r14
	mov	edi, 0
	je	.label_2489
	lea	rbp, [rcx + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r14
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2460:
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbp + rdi*8 - 0x20]
	movups	xmmword ptr [rbp + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbp + rdi*8]
	movups	xmmword ptr [rbp + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_2460
.label_2489:
	test	r10, r10
	je	.label_2471
	add	rdi, rdx
	movups	xmm0, xmmword ptr [rcx + rdi*8 + 8]
	movups	xmm1, xmmword ptr [rcx + rdi*8 + 0x18]
	movups	xmmword ptr [rcx + rdi*8], xmm0
	movups	xmmword ptr [rcx + rdi*8 + 0x10], xmm1
.label_2471:
	cmp	r11, r9
	mov	r10, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_2466
	add	rdx, r8
	jmp	.label_2469
.label_2501:
	mov	r14, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_2469:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, r12
	jl	.label_2469
.label_2466:
	lea	rbp, [rbx + rbx*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_2462:
	inc	rbx
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_2468
.label_2449:
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_2502
.label_2452:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_2506
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_2506:
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	je	.label_2453
	jmp	.label_2455
.label_2495:
	mov	dword ptr [rsp + 4], 0
.label_2453:
	xor	r12d, r12d
.label_2455:
	mov	eax, r12d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2467:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_2455
.label_2499:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_2452
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417e60

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_2509
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_2509
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_2514
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2509
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_2512
.label_2514:
	lea	r8, [r12 + 0x10]
.label_2512:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_2525:
	dec	rcx
	mov	rdi, r11
.label_2520:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2518:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_2515
	jl	.label_2517
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2518
	jmp	.label_2511
	nop	word ptr cs:[rax + rax]
.label_2517:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_2520
	jmp	.label_2511
	nop	dword ptr [rax + rax]
.label_2515:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_2508
	nop	dword ptr [rax + rax]
.label_2510:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_2521
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2510
	jmp	.label_2508
.label_2521:
	je	.label_2524
	nop	word ptr cs:[rax + rax]
.label_2508:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_2524:
	test	rcx, rcx
	jle	.label_2511
	cmp	rdi, 2
	jge	.label_2525
.label_2511:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_2523
	test	rax, rax
	js	.label_2523
	xor	edx, edx
.label_2522:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_2519:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_2516
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2519
	jmp	.label_2523
	nop	
.label_2516:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_2522
	jmp	.label_2513
.label_2523:
	mov	rdx, r8
.label_2513:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2509:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418020

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
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_2543
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2535:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_2526
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_2526
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2537
	mov	r10, qword ptr [rax + 8]
.label_2537:
	test	r9, r9
	jle	.label_2544
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_2547
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2552:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_2552
.label_2547:
	cmp	rbp, -1
	je	.label_2544
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2528
.label_2544:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2528
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2533
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2539:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_2539
.label_2533:
	cmp	rax, -1
	je	.label_2528
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_2550
.label_2528:
	test	r10, r10
	jle	.label_2526
	test	r9, r9
	jle	.label_2534
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_2555
	xor	esi, esi
	nop	dword ptr [rax]
.label_2532:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_2532
.label_2555:
	cmp	rsi, -1
	je	.label_2534
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_2526
.label_2534:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2526
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2540
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2536:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_2536
.label_2540:
	cmp	rax, -1
	je	.label_2526
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_2526
.label_2550:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2557
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_2526:
	inc	r14
	cmp	r14, r9
	jl	.label_2535
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_2543
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	r9, r9
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	jle	.label_2548
	dec	r9
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_2553:
	test	r9, r9
	mov	rsi, qword ptr [r8 + r14*8]
	mov	eax, 0
	je	.label_2556
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2531:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], rsi
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2531
.label_2556:
	cmp	rax, -1
	je	.label_2529
	cmp	qword ptr [rdi + rax*8], rsi
	je	.label_2530
.label_2529:
	mov	r11, qword ptr [r12 + 8]
	test	r11, r11
	jle	.label_2530
	mov	r10, r11
	dec	r10
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2545
	mov	rbx, r10
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2541:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_2541
.label_2545:
	cmp	qword ptr [rbp + rax*8], rsi
	mov	rsi, -1
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_2530
	cmp	r11, rsi
	jle	.label_2530
	mov	qword ptr [r12 + 8], r10
	cmp	r10, rsi
	jle	.label_2530
	nop	word ptr cs:[rax + rax]
.label_2554:
	mov	rcx, qword ptr [rbp + rax*8 + 8]
	mov	qword ptr [rbp + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2554
	nop	word ptr cs:[rax + rax]
.label_2530:
	inc	r14
	cmp	r14, qword ptr [r13]
	jl	.label_2553
	jmp	.label_2546
.label_2543:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2546:
	call	free
	xor	ebp, ebp
.label_2551:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2548:
	mov	r11, qword ptr [r12 + 8]
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_2542:
	test	r11, r11
	jle	.label_2527
	mov	rbx, qword ptr [r8 + r10*8]
	mov	r9, r11
	dec	r9
	mov	rsi, qword ptr [r12 + 0x10]
	mov	ebp, 0
	je	.label_2538
	mov	rax, r9
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2549:
	lea	rcx, [rbp + rax]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rdx, [rcx + 1]
	cmovl	rbp, rdx
	cmovge	rax, rcx
	cmp	rbp, rax
	jb	.label_2549
.label_2538:
	cmp	qword ptr [rsi + rbp*8], rbx
	mov	rax, -1
	cmove	rax, rbp
	test	rax, rax
	js	.label_2527
	cmp	r11, rax
	jle	.label_2527
	mov	qword ptr [r12 + 8], r9
	cmp	r9, rax
	mov	r11, r9
	jle	.label_2527
	nop	word ptr cs:[rax + rax]
.label_2558:
	mov	rax, qword ptr [rsi + rbp*8 + 8]
	mov	qword ptr [rsi + rbp*8], rax
	inc	rbp
	mov	r11, qword ptr [r12 + 8]
	cmp	rbp, r11
	jl	.label_2558
	nop	word ptr cs:[rax + rax]
.label_2527:
	inc	r10
	cmp	r10, qword ptr [r13]
	jl	.label_2542
	jmp	.label_2546
.label_2557:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_2551
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418470

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
	jle	.label_2559
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2561:
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
	jne	.label_2560
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2561
.label_2559:
	xor	eax, eax
.label_2560:
	add	rsp, 0x38
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
	#Procedure 0x418560

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_2562
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_2562
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
	je	.label_2562
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2562:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4185b0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r9, rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rdi + 0x30]
	lea	rcx, [r9 + r9*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2576
	lea	r10, [rax + rcx*8 + 8]
	mov	edx, 1
	mov	rcx, qword ptr [rsp + 0x10]
	shl	rdx, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	esi, eax
	shl	esi, 0x1f
	sar	esi, 0x1f
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x60], rdx
	xor	rdx, 0xffff
	mov	qword ptr [rsp + 0x58], rdx
	mov	edx, eax
	and	edx, 2
	mov	dword ptr [rsp + 0x18], edx
	shr	edx, 1
	cmp	rcx, 0x3f
	setg	cl
	mov	dword ptr [rsp + 0x2c], edx
	or	cl, dl
	mov	byte ptr [rsp + 0xb], cl
	and	eax, 1
	mov	dword ptr [rsp + 0x54], eax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x38], r10
	nop	word ptr [rax + rax]
.label_2582:
	mov	rax, qword ptr [r10 + 8]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rdi]
	mov	rsi, r15
	shl	rsi, 4
	lea	rdx, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_2590
	cmp	al, 8
	je	.label_2564
	cmp	al, 4
	jne	.label_2566
	cmp	r8, -1
	je	.label_2566
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x30]
	add	r13, qword ptr [rax + 0xd8]
	cmp	qword ptr [rsp + 0x10], 0x3f
	jg	.label_2572
	mov	r12d, ecx
	nop	
.label_2570:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2563
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x60], rax
	je	.label_2563
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2585
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2571
.label_2585:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2571
	test	eax, eax
	jne	.label_2577
	cmp	dword ptr [rsp + 0x18], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_2571
.label_2577:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2563:
	mov	ecx, r12d
.label_2571:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2589
	test	al, al
	jne	.label_2574
.label_2589:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_2570
	jmp	.label_2566
	nop	word ptr [rax + rax]
.label_2590:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2566
	xor	eax, eax
	jmp	.label_2565
	nop	
.label_2564:
	cmp	dword ptr [rsp + 0x54], 0
	je	.label_2566
	mov	eax, 0xffffffff
.label_2565:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx], rsi
	jne	.label_2566
	jmp	.label_2578
.label_2572:
	cmp	byte ptr [rsp + 0xb], 0
	je	.label_2583
	mov	ebx, ecx
.label_2569:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2586
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2587
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2568
	nop	
.label_2587:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2568
	test	eax, eax
	jne	.label_2581
	cmp	dword ptr [rsp + 0x18], 0
	mov	eax, 0
	cmovne	ebx, eax
	mov	ecx, ebx
	mov	ebp, dword ptr [rsp + 0x2c]
	jmp	.label_2568
.label_2581:
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2586:
	mov	ecx, ebx
.label_2568:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2588
	test	al, al
	jne	.label_2574
.label_2588:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_2569
	jmp	.label_2566
.label_2583:
	mov	ebx, ecx
	nop	word ptr [rax + rax]
.label_2584:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_2579
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_2575
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_2580
	nop	dword ptr [rax + rax]
.label_2575:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_2580
	test	eax, eax
	jne	.label_2567
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
.label_2567:
	xor	ebp, ebp
.label_2579:
	mov	ecx, ebx
.label_2580:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_2573
	test	al, al
	jne	.label_2574
.label_2573:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_2584
	jmp	.label_2566
.label_2574:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_2578
	nop	word ptr cs:[rax + rax]
.label_2566:
	inc	r14
	cmp	r14, qword ptr [r10]
	jl	.label_2582
.label_2576:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_2578:
	add	rsp, 0x68
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
	#Procedure 0x418980

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
	jne	.label_2592
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2591
	test	cl, cl
	jne	.label_2591
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2591
.label_2592:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2591
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2591:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4189e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2594
	cmp	byte ptr [rax], 0x43
	jne	.label_2596
	cmp	byte ptr [rax + 1], 0
	je	.label_2593
.label_2596:
	mov	esi, OFFSET FLAT:label_2595
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2594
.label_2593:
	xor	ebx, ebx
.label_2594:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418a20

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_46
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_2597
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418a50
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2598
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_2598:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x418a70
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_2599
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2599:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2600
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2600:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x418ac0
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418ae0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2601
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2603
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2601
.label_2603:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2601
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2602
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2602:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2601:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418b60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2604
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2604
	test	byte ptr [rbx + 1], 1
	je	.label_2604
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2604:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418ba0

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
	jne	.label_2605
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2605
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2606
.label_2605:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_2606:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_2607
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2607:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x418c10

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
