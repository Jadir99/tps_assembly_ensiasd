;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EXERCICE 4;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


data segment 
    msg dw "les lesttres de l'alphabet en majuscule sont  : $"
    
   
ends

 

code segment
start:

    mov ax, data
    mov ds, ax
    mov es, ax
    

    
    
    
    
    mov ah, 09h
    lea dx, msg 
    int 21h 
    mov cx,65   
    
    
debut:    
    
    
    
    
    mov ah,02h
    mov dx,cx
    int 21h 
    
    ; retourne a la ligne 
    mov ah,02H
    mov dl,0Ah
    int 21h 
    
    
    cmp cx,90
    jge end222
    inc cx 
    jmp debut
    
    end222:
    

  
    
    mov ax, 4c00h 
    int 21h    
ends

end start
