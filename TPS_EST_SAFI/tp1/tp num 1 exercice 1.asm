;;;;;;;;;;;;;;;;;;;;;;;;;;;exercice 1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;::::::::::

data segment :    
   
    vil db 0ffh
    tab db 18h, 15h,13h
    mes db "ESTs$"
    TT1 dw 500
    tab1 dw 10h,11h,14h
    YY dw ?
    vv dw 2FFh
ends 



code segment :
start:


    mov ax , data
    mov ds , ax
    
    mov ax,4c00h
    int 21h
    
    
ends
end start
    
    
    
    
    
    