; multi-segment executable file template.

data segment
              
   var Dw 13
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov ax , stack
    mov ss,ax
    
    
    mov bx ,2
    mov ax,var
    div BX
    mov cx, ax
    mov ax,var
    
boucle:


    mov dx,0 
    mov ax,var
    div cx 
    DEC cx
    cmp dx,0
    je afficher 
    cmp cx,1
    jne boucle
    
     
    mov ah,02h
    mov dl,'O'
    int 21h 
    
    
    jmp fin 
    
    
afficher:

    mov ah,02h
    mov dl,'N'
    int 21h


fin: 
    
    
   
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
