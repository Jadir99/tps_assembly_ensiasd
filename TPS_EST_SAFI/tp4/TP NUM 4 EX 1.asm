data segment
      tab dw 1,2,3,4,5,6,7,8,9,10 
      somme dw ?
      moyenne dw 0
ends


code segment
start:

    mov ax, data
    mov ds, ax
    mov es, ax 
    mov ax,0       ;met 0 a ax pour ajouter la somme des elements de ce tableau 
 
boucle: 
       
    add ax ,tab[si];ax travaile pour stocker la somme des elemnets de ce tableau 
    add si ,2      ;tante qu en travail avec 16 bits donc il faut ajouter 2 au compteur 
    cmp si ,20     ;comparaison entre compteur et la dernier indice de tableau 
    jne boucle     ;si la condition s est verifier sote a l instruction suivante
    
    mov somme ,ax  ;stocker la somme des elements de tableau danss une variable sappell somme
    mov bx,10
    div bx         ;div de somme sur la taille de tableau pour calculer la moyenne
    mov moyenne ,ax;stocker la moyenne dans une variable appel moyenne 
     
    
    mov ax, 4c00h 
    int 21h    
ends

end start 
