data segment
    
    char1 db "giabcd$" ;le code 
    char2 db 6 dup(0)  ; declaration d une chaine de caracter 
    msg1 dw "donnez votre mot de passe :$" 
    vrai1 dw "votr code est correcte $"
    erreur1 dw "votre code est incorrecte veuiellez ressayez !!:$"
    
    
   
ends




code segment
start:

    mov ax, data
    mov ds, ax
    
    mov di,0 ;di dans ce cas est comme une indice de 3 essays  
    
essaye:
    
    cmp di,3 ;permet  d une condition
    je fin   
    
    mov ah, 02h
    mov dl, 10
    int 21h
    
    mov ah, 02h
    mov dl, 13
    int 21h  
    
    mov ah,09h
    lea dx,msg1 ;affichage de premiere message 
    int 21h
    
    mov ah, 02h
    mov dl,10
    int 21h 
    
    mov ah,02h
    mov dl, 13
    int 21h 
    
    mov cx ,6   ; cx dans ce cas comme une compteur 
    
saisie:
    
    mov ah, 01h  ;expression permet d entre caracter 
    int 21h
    
    mov char2[si],al ; stockage dans ce tableau caracter par aracter 
    inc si 
    loop saisie
    
    
    mov cx ,6
    mov si,0
    
    
boucle:
    
    mov al, char2[si] ;stocker le caracter qui est dans le code qui saisie par l utulisateur 
    cmp char1[si],al  ;comparaison caracter par caracter 
    jne erreur        ;si une caracter defferant a le caracter da,s le real code soter a erreur 
    inc si
    
loop boucle
    
    jmp vrai          ;si non soter a vrai
    
erreur:
    
    mov ah, 02h
    mov dl, 10
    int 21h
    
    mov ah, 02h
    mov dl, 13
    int 21h   
    
    mov ah, 09h
    lea dx,erreur1 ;l affichage que ce code est incorrecte
    int 21h 
    inc di         ;incrementaion du compteur pour donner au l utilisateur saisai une autre fois 
    jmp essaye  
    
       
    
    
vrai:
    
    mov ah, 02h
    mov dl, 10
    int 21h
    
    mov ah, 02h
    mov dl, 13
    int 21h
    
    
    mov ah, 09h
    mov dx, offset vrai1 ;l affichage de message que ce code est correcte 
    int 21h
    
fin:
    

    mov ax, 4c00h 
    int 21h    
ends

end start 
