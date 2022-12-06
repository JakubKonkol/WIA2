org 100h

push word [a]
push word [b]
pop word BX
pop word AX		
div BL
push word AX

push word [c]
pop word BX
pop word AX
add AX, BX

mov word [y], AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h
y dw 00h