org 100h

mov ah, 02h  
mov dl, 39 
mov dh, 12
int 10h

mov ah, 0Ah	
mov dx, txt
int 21h	

mov ah, 0Eh	
mov al, 0Ah	
int 10h	
mov al, 0Dh	
int 10h

mov bp, txt
mov al, [txt+1]
mov ah, 00h
add bp, ax
mov byte [ES:BP+2], 24h

MOV AH,09h
MOV DX, txt+2
int 21h

MOV AX, 4C00h
int 21h

txt db 16h