; multi-segment executable file template.
      ;exercice 1 tp2
data segment 
    
    var1 db 120
    var2 db 50 
    p dw ?
    q db ?  
    r db ?  
    tab dw "hello jadir :)$"
ends



code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    mov al,var1
    mul var2 
    mov p,ax
    
    mov ax,0  
    mov dx,0
    mov al,var1
    div var2
    
    mov q,al
    mov r,ah
    
    mov dl,q
    mov ah,02h
    int 21h
    
    mov dx, offset tab
    mov ah,09h
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
