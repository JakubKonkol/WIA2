org 100h

push word [a]
push word [b]
push word [c]
pop word BX	
pop word AX	
div BL
push word AX
pop word BX
pop word AX
mul BL

mov word [y], AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h
y dw 00h