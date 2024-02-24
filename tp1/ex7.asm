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

    mov cx, 10          ; Nombre de zones m�moire � initialiser
    mov si, 06302h      ; Adresse de d�part

    init_loop:
    mov byte ptr [si], 0 ; Mettre � z�ro la zone m�moire actuelle
    inc si              ; Avancer � la prochaine zone m�moire
    loop init_loop      ; R�p�ter jusqu'� ce que toutes les zones soient initialis�es

    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
