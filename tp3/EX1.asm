; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"  
    
    tab db 12,11,0,0,9,0,7,6,78 
    nbrn db 0
    msg db "le nombre des nuls est :$"
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

    ;remplir le tableau:
    mov cx,9
    mov si ,0 
    
    for:
        cmp tab[si],0
        jne continue
        inc nbrn
        continue:
        inc si
    loop for 
    
    
    mov dl,offset msg
    mov ah,09h
    int 21h 
     
    add nbrn,48      
    mov dl,nbrn
    mov AH,02h 
    int 21h
    
    
          
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
