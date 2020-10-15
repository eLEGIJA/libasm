    global  _ft_strdup
    section .text
	extern	_malloc
	extern	_ft_strcpy

_ft_strdup:

	cmp     rdi, byte 0
	jz	    _return_err

	xor	    rcx, rcx
	cmp	    [rdi + rcx], byte 0
	jne	    _inc_length

_inc_length:

	inc	    rcx

_copy_str:

	inc     cx
	push	rdi
	mov	    rdi, rcx
	call	_malloc
	pop	    rdi
	cmp	    rax, byte 0
	jz  	_return_err

	mov	    rsi, rdi
	mov	    rdi, rax
	call	_ft_strcpy
	ret

_return_err:

	mov 	rax, 0
	ret