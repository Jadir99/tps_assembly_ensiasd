

data segment   
    
    a db 10
    b db 20
ends

    
ana:

     
    
    mov al,b
    mul a
    mov a,al
      
    mov ax, 4c00h 
    int 21h  
end ana 
