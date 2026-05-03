.model small
.stack 100h
.186

.data
aboba db '12340$'

.code

format_str PROC
    ARG str_ptr: PTR BYTE
    push BP
    mov BP, SP
    push AX
    mov AH, 09h
    mov DX, offset str_ptr 
    int 21h
    pop AX
    pop BP
    ret 2
format_str ENDP


start:
	mov AX, @data
	mov DS, AX

    PUSH OFFSET aboba
    CALL format_str
	mov AX, 4C00h
	int 21h
end start
