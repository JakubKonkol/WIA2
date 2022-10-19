;czeka na user input i wtedy sie konczy (as simple as that)

org 100h

mov Ah, 00H
int 16h

mov AX, 4C00h
int 21h