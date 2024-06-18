; multi-segment executable file template.




Title exerciece1
data segment
     mybyte db 20,15,10 
     somme  db 0
ends



code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax   
    
    mov ah,mybyte[0] 
    add somme,ah 
    mov ah,mybyte[1]
    add somme,ah
    mov ah,mybyte[2]
    add somme,ah
    
   
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
