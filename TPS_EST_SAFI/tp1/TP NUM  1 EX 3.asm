; multi-segment executable file template.

data segment 
    
    tab dw 06h
    msgloop db 13,10,"donner un element $"
    t db 5 dup(22)
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
   
    
    mov cx, tab 
    push offset t
    push tab 
    
    call saisie

     mov ax, 4c00h ; exit to operating system.
    int 21h    

             
saisie proc near
    
    push bp 
    mov bp,sp 
    mov si,[bp+6]
    
    
loopsaisie:
    
    mov dx,offset msgloop                                     
    mov ah,09h
    int 21h
    
    mov ah, 01h
    int 21h 
    
    mov bl, al
    sub bl,48
    mov [si],bl
    inc si
    loop loopsaisie
    
     
    
saisie endp      
    
    
   
   
  
   
ends
end start ; set entry point and stop the assembler.
