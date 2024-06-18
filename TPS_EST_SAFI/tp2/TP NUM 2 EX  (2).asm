.;................................EXERCICE 2.....................................................


data segment 
    
   
    var1 dw 300
    var2 dw 450
   
   
   
ends



code segment
start:

    mov ax, data
    mov ds, ax
    

    mov ax,var1
    mov dx, var2
    xchg ax,dx
    mov var1 ,ax 
    mov var2 ,dx
  
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
