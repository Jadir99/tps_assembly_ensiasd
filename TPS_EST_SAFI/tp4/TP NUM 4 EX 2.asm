data segment
    tab 10,0,10 dup('$')
ends



code segment
start:

    mov ax, data
    mov ds, ax
               
    mov ah,0Ah
    mov dl,offset tab 
    int 21h    
    
    mov ah,02h
    mov dl,10
    int 21h 
    
    mov ah,09h
    lea dx,tab[si+2]
    int 21h 
    
    mov ah,02h
    mov dl,10
    int 21h 
    
    
    mov si ,10  
   
boucle:
    dec si
    cmp tab[si],'$'
    je boucle
    mov ah,02h
    mov dl,tab[si]
    int 21h
    cmp si ,2
    jne boucle
    
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
