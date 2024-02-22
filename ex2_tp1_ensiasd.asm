                         ; multi-segment executable file template.

data segment 
    
    [0200h] dw "abcde$" ; l'initialisation de la valeur d'addresse avec
    msg db ? 
ends



code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    mov ax, [0200h]
    ;afficher 1 ere charactere
    mov dx, [0200h]
    mov ah,02h
    int 21h 
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
