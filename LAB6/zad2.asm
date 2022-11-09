org 100h

mov ah, 00h
int 16h

cmp al, "A"
jl error
cmp al, "Z"
jle wlitera
cmp al, "a"
jl error
cmp al, "z"
jle mala
jg error
jmp koniec



error:
mov ah, 09h
mov dx, error
int 21h

mlitera:
mov ah, 09h
mov dx, mala
int 21h

wlitera:
mov ah, 09h
mov dx, wielka
int 21h

koniec:
mov AX, 4C00h
int 21h

blad db "error $"
wielka db "wielka litera $"
mala db "mala litera $"
