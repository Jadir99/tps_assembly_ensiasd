.;................................EXERCICE 4.....................................................


data segment 
    
   
    tab db 14,30,50
    somme db ?
   
   
ends



code segment
start:

    mov ax, data
    mov ds, ax
    
    
    mov  ah, tab
    mov  bh ,tab+1
    
    xchg ah, bh 
    
    mov tab ,ah
    mov tab+1,bh
    
    add  ah,bh    ;additionne de deux premieres elements de tableau et stocke dans ah 
    add  ah,tab+2 ;l'additionn de ah avec la dernier element de tableau
    mov somme,ah  ;l'affectation de la somme a une variable (somme)
    

  
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
