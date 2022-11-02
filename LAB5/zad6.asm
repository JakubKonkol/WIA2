org 100h

mov AX, [b]
mov BX, [c]
div BX
mov CX, [a]

mul cx
mov word [y], AX

mov AX, 4C00h
int 21h

a dw 0x05 
b dw 0x0f
c dw 0x04
y dw 0x0