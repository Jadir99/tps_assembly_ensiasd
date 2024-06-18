;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Exercice 1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



data segment
  
  
  tab1 db 5 dup(5) 
  tab2 dw 4 dup(6),13
  var1 db 12
  var2 db 50
  

code segment
start :


    mov ax, data
    mov ds, ax
    
    
    mov  al, var1
    mov  bl, var2
    xchg bl,al
    mov var1 ,al
    mov var2 ,bl       
   
    mov ax, 4c00h 
    int 21h    
ends

end start 
