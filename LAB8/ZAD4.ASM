org 100h
;a/b*c = abc/*

push word [a]
push word [b]
push word [c]

pop AX
POP BX
pop CX

mov DX, 0000h
div BX
push AX

mov DX, 0000h
mul CX
push AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h