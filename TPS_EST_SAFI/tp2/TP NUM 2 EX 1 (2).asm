.;................................EXERCICE 3.....................................................


data segment 
    
   
    var1 Db 12
    var2 db 50      
    var3 db 120
   
   
   
ends



code segment
start:

    mov ax, data
    mov ds, ax
    
    
    ;mov ax, var1
    ;mov bx ,var2
    ;mul bx ;multiplication entre bx et ax ,la valeur sera stock dans le registre ax
    
     
    mov al, var1
    mov bl,var2     
    
    MOV var1,bl
    mov var2,al
  
    ;mov ax,var11 ;modification de ce valeur 
    ;div bx       ;division entre ax et bx ,la valeur aussi sera stocke dans ax
    
    ;mov al,var1
    ;mov bl,var2
    ;mul bl
    
    ;mov al,var3 
    ;MOV Ah,0
    ;div var2
    
  
    
    mov ax, 4c00h 
    int 21h    
ends

end start ; set entry point and stop the assembler.
