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

    ;1) @250h=FFh ; @251h=0Fh ;@252h=10h ;@252h=1Eh ;@253h=02h
;   2) Calculer le résultat de l’opération suivante : @260h=@250h - @ 251h - @252h - @253h
    
    mov [250h],ffh
    mov [251]=0fh 
    mov [252]=10h 
    mov [252]=1Eh
    mov [253]=02h
    
    ;l'operation
    sub [251],[252]
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
