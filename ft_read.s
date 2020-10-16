	segment	.text
	global	_ft_read

_ft_read:

	mov 	rax, 0x2000003
	syscall

	jc		_error
	
	jmp		_exit

_error:

	mov 	rax, -1
	ret
	
_exit:

	ret