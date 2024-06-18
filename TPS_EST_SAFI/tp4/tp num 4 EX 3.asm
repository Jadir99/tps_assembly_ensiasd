data segment 
    
    tab db 10 dup (1)
    msg dw "entrez une valeur entre 9 et 8: $"
ends



code segment
start:

    mov ax, data
    mov ds, ax
     
     
    mov cx,10 
boucle:
    
    
    
    MOV AH,09h
    lea dx,msg
    int 21h
    
    mov ah,01h
    int 21h 
    
    cmp al ,48 
    jge boucle
    cmp al,57
    jle boucle 
    
    mov ah,02h
    
    
    mov ah,02h
    mov dl, 10
    int 21h
    
    mov ah,02h
    mov dl,13
    int 21h
    
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
