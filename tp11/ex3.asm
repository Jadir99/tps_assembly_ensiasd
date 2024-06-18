; multi-segment executable file template.

data segment
    
    ; declaration des variables 
    nbr1 db 12 ; declare une variable de 8 bits 
    nbr2 db 09 ; declare une variable de 8 bits 
    nbr3 dw 265 ; declare une variable de 16 bits 
    nbr4 dw 497 ; declare une variable de 16 bits 
    somme1 db ?; declare une variable de 8 bits pour stocker la somme  
    somme2 dw ?; declare une variable de 16 bits pour stocker la somme de 16 bits 
    
ends


code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
     
     
    ;;;;;;; la somme desnombres de 8 bits;;;;;;;  
    mov ah,nbr1
    mov al,nbr2
    add somme1,ah
    add somme1,al  
    
    ;;;;;;; la somme desnombres de 16 bits bits;;;;;;;  
    mov ax,nbr3
    mov bx,nbr4
    add somme2,ax
    add somme2,bx
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
