	extern	__errno_location
	section	.text
	global	ft_read

ft_read:

	mov		rax, 0
	syscall
    cmp rax, 0
    jl  _error
        ret
 
_error:

	neg		rax
	mov		rdi,rax
	call	__errno_location
	mov		[rax], rdi
	mov		rax, -1
	ret