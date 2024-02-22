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

;    1) Initialiser le registre ax avec la valeur 10h.
;2) Décrémenter ax jusqu’à la valeur 0h
;3) Initialiser le registre bx avec la valeur 5h.
;4) Décrémenter bx jusqu’à la valeur 2h.


    ;initialiser le registre ax 
    mov ax ,10h
               
    mov cx,10 ;COMPTEUR            
    decrementer:  
    dec ax
    loop  decrementer  ; la boucle doit faire jusqu'a cx etre null
    
    ;initialiser le registre ax 
    mov ax ,5h
               
    mov cx,3 ;COMPTEUR            
    decrementer:  
    dec ax
    loop  decrementer  ; la boucle doit faire jusqu'a cx etre null
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
