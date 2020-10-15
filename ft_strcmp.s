	global	_ft_strcmp
	section	.text

_ft_strcmp:

	mov		al, BYTE [rdi]
	mov		bl, BYTE [rsi]
	cmp		al, 0
	jz		_ret
	cmp		bl, 0
	jz		_ret
	cmp		al, bl
	jne		_ret
	inc		rdi
	inc		rsi
	jmp		_ft_strcmp

_ret:
	movzx	rax, al
	movzx	rbx, bl
	sub		rax, rbx

	ret