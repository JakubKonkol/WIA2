;to zadanie nie do konca dziala cos tu trzeba zrobic 
org 100h

mov AH, 0Ah
mov DX, string
int 21h

mov AH, 09h

mov BP, [string+1]
mov byte [BP], '$'
mov DX, string
int 21h


mov AX, 4C00h
int 21h

string db 06h