.model tiny 

.stack 100h

.data 
aboba db 'aboba$'

.code
start:
    mov AX, @data
    mov DS, AX

    lea DX, aboba
    mov AH, 09h;
    int 21h 

    mov AX, 4C00h
    int 21h
end start
