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

;*************************************the body ************************************** 
    mov cx,16;initialiser le cx avec la longueur de telecomunication 
    mov si,0 ;initialiser l
    ;lire un caractere
    
    lire:
        
        mov ah,01h
        int 21h
        mov [250+si],al
        inc si; incrimentation de si 
        
    loop lire   
    
    
    mov cx,10
    mov si,0  
    
    
    somme:
       
      add ah,[250+si]
      inc si      
        
    loop somme
      
    mov [300],ah  
;*************************************the body ************************************** 

      
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
