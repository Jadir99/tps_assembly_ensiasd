data segment 
    n dw 25312
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov ax, stack 
    mov ss,ax
    
    mov ax ,n
    mov bx,10
    mov cx,0
    
boucle:
    
    mov dx,0
    div bx
    add dx ,48 
    push dx
    inc cx  
    
    cmp ax,0
    jne boucle 
    
    
boucle2:

    
    mov ah,02h
    pop dx
    int 21h
    loop boucle2
    
    
    
    



   
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
