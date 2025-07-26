
SECTION .data
    new_line db 0xA

; calculate null terminated string length
; int strlen(String str)
strlen:
    push    ebx
    mov     ebx,     eax

    next_char:
    cmp    byte[eax], 0
    jz     finished
    inc    eax
    jmp    next_char

    finished:
    sub    eax,     ebx
    pop    ebx
    ret

; print null terminated string on console
; void sprint(String msg)
sprint:
    mov     ecx,     eax
    call    strlen
    mov     ebx,     1 
    mov     edx,     eax
    mov     eax,     4
    int     0x80
    ret

sprintln:
    call    sprint
    push    eax
    mov     eax,    0xA
    push    eax
    mov     eax,    esp
    call    sprint
    pop     eax
    pop     eax
    ret
