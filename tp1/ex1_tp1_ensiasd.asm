

;;;;;;;tp1 EX1

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    mov ah, 66h
    mov bl,33
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
