; multi-segment executable file template.

data segment
    
    
    var1  12 dup(0)
    var2 DB 50 
    
    tab db 1,2,3,4,5,6,7,8,9,2,5
    min db ?
    max db ? 
    msgmin db "le min est $"   
    msgmax db "le max est $"
            
ends


code segment
start:

     
    ;exercice 5:
    mov ax, data
    mov ds, ax
    mov es, ax
    
    
    mov cx, 10
    mov si,1  
    mov ah,tab[0]
    mov max,ah
   ; pour determiner le max  
    boucle:
     
        mov ah,tab[si]
        CMP max,ah
        
        JGE continue 
        mov ah,tab[si]
        mov max,ah 
        
        ;mov dx,si
        ;mov ah,02h
        ;int 21h
        
    continue:
    inc si 
    loop boucle 
    
    
    ; pour detemriner le min 
    mov cx, 10
    mov si,1  
    mov ah,tab[0]
    mov min,ah   
    
    boucleb: 
    
        mov ah,tab[si]
        CMP min,ah
        
        JLE continue1 
        mov ah,tab[si]
        mov min,ah 
        
        
        
    continue1:
    inc si 
    loop boucleb
    
    ;;;;;;;;;;;;;;;;;;;affichage;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov dl, offset msgmin
    mov ah,09h
    int 21h 
    
    add min,48
    mov dl,min
    mov AH,02h 
    int 21h
    
    
    mov dl,offset msgmax
    mov ah,09h
    int 21h
    
    add max,48
    mov dl,max
    mov ah,02h
    int 21h
    
    
    
    
    

   
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
    
    
    
    