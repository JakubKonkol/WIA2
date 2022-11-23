org 0x100

;a * b + c == ab*c+
push word [a]
push word [b]
pop BX
pop AX
mul BX
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