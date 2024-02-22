; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    n1 db 12
    n2 db 13 
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
    
     
    
    
    mov [1100],11
    mov [1101],12
    mov ah,[1101]
    add ah,[1100]
    cmp ah,0
    jg  positif 
    jl  negatif 
    je null
    positif: 
    mov [1102],ah
    jmp continue
    negatif:
    mov [1104],ah
    jmp continue
    null:
    mov [1105],ah
    continue:    
     
     
    
    
    
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
