;program zmienia tryb wyswietlania na graficzny 800x480 (chyba) 
;potem czeka na input z klawiatury 
;potem zmienia znowu na domyslny tryb wyswietlania

org     100h

mov ah, 00h
mov AL, 11h
int 10h

mov Ah, 00H
int 16h

mov ah, 00h
mov al, 02h
int 10h


mov ax, 0x4C00
int 0x21