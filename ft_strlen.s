	global	_ft_strlen:
	section	.text

_ft_strlen:

	xor		rcx, rcx

_next:

	cmp		[rdi], byte 0
	jz		_return_length

	inc		rdi
	inc		rcx
	jmp		_next

_return_length:

	mov		rax, rcx

	ret