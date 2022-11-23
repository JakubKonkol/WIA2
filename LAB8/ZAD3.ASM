org 0x100
; a/b + c = 
push word [a]
push word [b]
pop BX
pop AX
mov DX, 0000h
div BX
push AX
push word [c]
pop AX
pop BX
add AX, BX
push AX





mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h