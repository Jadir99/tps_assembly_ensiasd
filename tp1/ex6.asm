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

    ;remplire le tableau 
    
    mov cx,10
    mov si,0
    
    remplir:    
    
        mov [250+si],05h
        inc si
    
    loop remplir 
    
    ; initialise cx avec 10 pour 
    mov cx,10
    mov si,0
    
    mov ax,0 ;initialiser le ax avec 0
    somme:    
    
        add ah,[250+si]
        inc si
    
    loop somme 
    
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
