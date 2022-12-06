org 100h

push 0x002
push word [a]
pop AX	
pop BX	
mul BL
push AX

push word [b]
push 0x002
push word [c]
pop AX
pop BX
mul BL
push AX

pop BX
pop AX
div BL
push AX

pop BX
pop AX
mul BL	

mov word [y], AX

mov AX, 4C00h
int 21h	
a dw 02h
b dw 04h
c dw 06h
y dw 00h