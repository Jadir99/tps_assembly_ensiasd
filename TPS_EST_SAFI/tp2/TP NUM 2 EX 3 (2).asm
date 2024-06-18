.;................................EXERCICE 5.....................................................


data segment 
    
   
    tab dW 50,100,450
    somme dW ?
   
   
ends



code segment
start:

    mov ax, data
    mov ds, ax
    
    
    mov  ax, tab
    mov  bx ,tab+2
    xchg ax, bx
    mov tab ,ax
    mov tab+2,bx
    add  ax,bx
    add  ax,tab+4
    mov somme,ax

  
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
