data segment
      tab dw 1,2,3,4,5,6,7,8,9,0 
      somme dw ?
      moyenne dw 0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax 
    mov ax,0
 
boucle: 
       
    add ax ,tab[si]
    add si ,2
    cmp si ,18
    jne boucle 
    
    mov somme ,ax 
    mov bx,10
    div bx
    mov moyenne ,ax 
     
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
