org 100h

;ustawienie trybu graficznego i odpalenie kursora
mov AX, 0012h
int 10h
mov AX, 0001h
int 33h  

main:
mov ah, 0001h
int 16h
cmp AH, 10h 
je koniec
cmp AH, 11h
je zmienkolor

powrot:
mov AX, 0003h
int 33h
cmp BX, 1
je draw
jmp main

mov AX, 0003h
int 33h
cmp BX, 1
je draw
jmp main

draw:
mov AX, [color]
mov ah, 0Ch
int 10h
dec DX
int 10h 
ADD DX, 2
int 10h 
dec DX
dec CX
int 10h 
ADD CX, 2
int 10h
jmp main

zmienkolor:
mov AH, 00h 
int 16h
inc word [color]
jmp powrot

koniec:
mov AX, 0002h
int 10h
mov AX, 4C00h
int 21h	

color dw 01h