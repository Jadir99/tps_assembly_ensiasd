;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EXERCICE NUM 5;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

data segment   
   
ends



code segment
start:

    mov ax, data
    mov ds, ax
    
    mov al, 01100001b ;stocker cette valeur dans al
    and al, 11011111b ;multiplication de al avec la valeur qui egale 01000001b
    or  al, 01110110b ;addition de al avec cette valeur qui egale 01110111b
    not al            ;la negation de al qui egale 10001000b
    xor al, 01010101b ;ou exclusif(exor) de al avec la valeur qui egale 11011101b
    xor bx,bx         ;initialisation bx a 0
  
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
 