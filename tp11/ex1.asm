; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;exercice 1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    ;permutation 
    
    mov ah ,66h
    mov bl,33
    xchg ah,bl ; cette instruction s'appel excange pour la prmuation 
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
