; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$" 
    msg db "la factorielle est :$"
    nbr dw 6
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

    mov ah ,09h
    mov dl,offset msg
    int 21h
    
    mov ax,nbr
    mov bx ,2
    
    
    boucle:
    
        mul bx
        inc bx
        cmp bx,nbr
        jl boucle
        
            
        mov dx,ax
        mov ah,02h
        int 21h
                      
                      
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
