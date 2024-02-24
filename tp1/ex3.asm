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
  
  
    ;initialiser les cases   
    

    mov [250h],0FFh 
    mov [260h],0Fh
    mov [270h],10h
    
    ;multiplication *5
    mov ah ,05h
    mul [250h] 
    mov [251h],ah
    mul [260h] 
    mov [261h],ah
    mul [270h]
    mov [271h],ah
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
