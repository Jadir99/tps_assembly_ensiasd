;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EXERCICE 3;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


data segment 
    msg dw "entrer une caractere : $"
    N db 'N'
    n1 dw ?
ends



code segment
start:

    mov ax, data
    mov ds, ax
    mov es, ax

    
    mov ah,09h
    lea dx,msg
    int 21h
    
    
    mov ah ,01H
    int 21h 
    
    
    cmp al,48 
    jng else
    cmp al,57               
    jnl else 
     
   
    
    sub al ,48
    MOV bl,al 
    mov ax, 10
    mul bx
    mov n1,ax
    
     
    
    
    jmp end2
    
else: 


    mov ah ,02h 
    mov dl,N 
    int 21h 
    
    
end2:

    
        
    
    mov ax, 4c00h 
    int 21h    
ends

end start
