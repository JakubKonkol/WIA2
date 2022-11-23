org 0x100
;2*a + 2*b - 2c =  2 a * 2 b * + 2c -
push word [a]
push word 02h
pop BX
pop AX
mul BX
push AX

push word [b]
push word 02h
pop BX
pop AX
mul BX
push AX

push 02h
push word [c]
pop BX
pop AX
mul BX
push AX

pop AX
pop BX
sub AX, BX
push AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h