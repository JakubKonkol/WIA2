org 100h
main:
mov ah, 01h
int 21h

cmp al, 'q'
je koniec
jmp main


koniec:
mov AX, 4C00h
int 21h