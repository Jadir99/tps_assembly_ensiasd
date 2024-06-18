; multi-segment executable file template.

data segment
    char1 db 'j'
ends

stack segment
    dw   128  dup(0)
ends

code segment  
    
 
    
; passage par registre 
   
afficher PROC 
           
           
    mov dl,al
    mov ah,02h
    int 21h  
    
    
    ret
    
afficher endp 


; passage par pile 
   
afficher2 PROC 
           
    push bp   ; empile pour le sauvgarde      
    mov bp ,sp 
     
 
     
    mov dl,[bp+4]
    mov ah,02h
    int 21h 
    
    
    pop bp
    ret
    
afficher2 endp 
         
         
         

start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
     
     
     
     mov al,char1
    
    
    ;call afficher 
    
    
    mov al,char1
    push al
    
    
    call afficher2
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
