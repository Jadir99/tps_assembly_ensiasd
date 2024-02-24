; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
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

    mov ax, 0630h       ; Charger la valeur de DS avec 0630h
    mov ds, ax

    mov cx, 10          ; Nombre de zones mémoire à initialiser
    mov si, 06302h      ; Adresse de départ

    init_loop:
    mov byte ptr [si], 0 ; Mettre à zéro la zone mémoire actuelle
    inc si              ; Avancer à la prochaine zone mémoire
    loop init_loop      ; Répéter jusqu'à ce que toutes les zones soient initialisées

    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
