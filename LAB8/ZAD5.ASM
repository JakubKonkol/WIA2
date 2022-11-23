org 100h

push word [b]
push word [a]
pop BX
pop AX
mul BX
push AX
push word [c]
pop BX
div BX
push AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h