org 100h

mov ah, 0Ah
mov DX, string
int 21h

org 100h

;wczytanie stringa z klawiatury
mov AH, 0Ah
mov DX, string
int 21h

;wydrukowanie nowej lini
mov ah, 0Eh
mov al, 0Ah
int 10h
mov AL, 0Dh
int 10h

;wybranie litery w stringu
mov al, [string+4]
mov ah, 0Eh
int 10h

mov AX, 4C00h
int 21h

string db 06h