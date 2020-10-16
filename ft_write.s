	segment	.text
	global	_ft_write

_ft_write:
	test	edi, edi
	js		_error	

	mov		r8, rdx
	mov		ax, 0x2000004
    syscall

	jc		_error

	jmp		_exit

_error:

	mov		rax, -1
	ret

_exit:

	mov		rax, r8
	ret
	