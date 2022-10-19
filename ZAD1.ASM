org 100h

mov AH, 02h             ;ustalamy funkcje
mov DL, 41h             ;dane do tej funkcji, 0x41 -> znak 'a'
int 21h                 ;wywolanie tej funkcji


mov AX, 4C00h
int 21h  