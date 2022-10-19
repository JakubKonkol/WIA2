;usuwa katalog
org 100h


mov DX, jk
mov AH, 3ah
int 21h


mov AX, 4C00h
int 21h
jk db "JK", 0h