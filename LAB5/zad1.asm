org 100h

;ustawanie ax na a, cx na b, dodanie do ax cx
mov AX, [a]
mov CX, [b]
add AX, CX 

;ustawienie cx na c, dodanie do ax cx, przypisanie y wartosci ax
mov CX, [c]
add AX, CX
mov word [y], AX


mov AX, 4C00h
int 21h


a dw 0x05 ;zmienne a,b,c i wynik y 
b dw 0x0f
c dw 0x04
y dw 0x0