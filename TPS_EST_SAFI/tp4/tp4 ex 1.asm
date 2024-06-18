; multi-segment executable file template.

data segment
    
    
ends


code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    
    while:
    
    mov ah,01h
    int 21h
    
    cmp al,97
    je End
    
    mov dl,al
    mov ah,02h
    int 21h
    
    
    jmp while
    
    End:
    
    
    
   
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
