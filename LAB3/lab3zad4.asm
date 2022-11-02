;ustawia kursor na srodku(prawie)
;drukuje tekst
;ustawia kursor na lewy gorny rog


org 100h

mov dh, 13   ;w DX znajduje sie polozenie kursora
mov dl, 40
mov ah, 02h 
int 10h

mov dx, tekst
mov ah, 9
int 21h

mov dh, 00h
mov dl, 00h
mov ah, 02h
int 10h

mov AX, 4C00h
int 21h
tekst db "Jakub Konkol", 0Ah, 0Dh, "$"