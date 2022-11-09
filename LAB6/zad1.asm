org 100h

mov ah, 00h
int 16h
cmp al, tekst

jg wieksze
jl mniejsze
je rowne
jmp koniec

wieksze:
mov ah, 02h
mov dl, ">"                
int 21h
jmp koniec

mniejsze:                      
mov ah,02h 
mov dl, "<"                
int 21h
jmp koniec

rowne:
mov ah,02h
mov dl, "="                
int 21h 
jmp koniec

koniec:
mov AX, 4C00h
int 21h

tekst db "_", 0Ah, 0Dh, "$"
