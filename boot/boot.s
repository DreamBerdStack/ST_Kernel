[org 0x7c00]
bits 16
mov ah, 00h
mov al, 13h
int 0x10
mov ah, 0Ch
mov al, 3
.bg:
    cmp cx, 50
    je .bg_nl
    int 0x10
    inc cx
    jmp .bg
.bg_nl:
    mov cx, 0
    cmp cx, 70
    je .bg_end
    inc dx
    jmp .bg
.bg_end: ; nothing
jmp $
times 510-($-$$) db 0
dw 0AA55h