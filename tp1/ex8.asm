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

    ;;;ex8
;*************************************the body **************************************   

  
    mov ax,12
    mov bx,17
    
    push ax
    push bx
    pop ax
    pop bx  
    
    
    
    
;*************************************the body **************************************     
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
