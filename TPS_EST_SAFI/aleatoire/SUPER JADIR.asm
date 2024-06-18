data segment 
    m dw 7
    a dw 3
    c dw 3
    tab dw 5,9 dup(21)
    
ends



code segment
start:

    mov ax, data
    mov ds, ax
    
    mov si ,0
boucle:
    mov ax,0
    mov dx,0
    mov ax,tab[si]
    mul a
    add ax,c
    div m
    add si,2
    mov tab[si],dx
    cmp si,20
    jne boucle 
    call afficher
    
    

   
    
    mov ax, 4c00h 
    int 21h 

afficher proc 
    
    mov si ,0
    push si

for:
    mov ah,02h
    mov dx,tab[si]
    add dx,48
    int 21h
    
    mov ah,02h
    mov dl,13
    int 21h
    
    
    mov ah,02h
    mov dl, 10
    int 21h
    
    add si,2
    
    cmp si,20
    jne for
    pop si 
    ret 

endp    
    
        
ends

end start 
