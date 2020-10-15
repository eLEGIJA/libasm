    global  _ft_strcpy
    section .text

_ft_strcpy:

    xor     rcx, rcx
    xor     ah, ah

_next_sum:

    cmp     byte[rsi + rcx], byte 0
	jz  	_end

	mov	    ah, byte[rsi + rcx]
	mov	    byte[rdi + rcx], ah
	inc 	rcx
	jmp	    _next_sum

_end:
    mov     ah, byte[rsi + rcx]
    mov     byte[rdi + rcx], ah
	mov 	rax, rdi

	ret