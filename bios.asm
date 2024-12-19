BITS 16
org 0x7c00

; Imprimir "Hola BIOS"
mov ah, 0x0e
mov si, mensaje

siguiente_caracter:
    lodsb
    cmp al, 0
    je fin
    int 0x10
    jmp siguiente_caracter

mensaje db 'Hola BIOS', 0

fin:
    cli
    hlt

times 510-($-$$) db 0
dw 0xaa55
