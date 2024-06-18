.;................................EXERCICE 1.....................................................


data segment 
    
    msg dw "le caracter est:$" 
    char1 db 'a'
    char2 db ?
    char3 db ?
    msg1 dw "entrer un nombre :$"
    msg2 dw "entrer un nombre defferent de # :$"
   
ends



code segment
start:

    mov ax, data
    mov ds, ax
    

afficher : 

    ;afficher une message
    mov ah,09h
    lea dx , msg2  
    int 21h  
    
    
    ;lire un caractere 
    mov ah ,01h
    int 21h 
    mov char3,al 
    
    ;cette instruction est pour retourne a la ligne 
    mov ah ,02h
    mov dl,10
    int 21h
    
    ;affiche un caracter 
    ;mov ah,02h
    ;mov dl, char3 
    ;int 21h
    
              
    mov al,65          
    add char3,al   
    
    mov ah,02h
    mov dl,char3
    int 21h
    
    
    cmp char3 ,35 ;instruction pour la comparaison 
    jne afficher  ;jne signifie jump if  not equal  a afficher (saut conditionnel
    
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
