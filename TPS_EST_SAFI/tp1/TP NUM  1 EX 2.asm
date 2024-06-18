;;;;;;;;;;;;;;;;;;;;;;;;;;;exercice 1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;::::::::::

data segment :    
   
   
   myword dw 1000h
   mydword dd 10000000h 
   
   
ends 



code segment :
start:


    mov ax , data
    mov ds , ax
    
    inc myword
    dec myword 
    inc mydword
    mov ax, 0ffh
    inc ax
    
   
    
    mov ax,4c00h
    int 21h
    
    
ends
end start
    
    
    
    
    
    