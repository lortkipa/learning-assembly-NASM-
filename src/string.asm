
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
    push    eax
    push    ecx
    push    ebx

    mov     ecx,     eax
    call    strlen
    mov     ebx,     1 
    mov     edx,     eax
    mov     eax,     4
    int     0x80

    pop     ebx
    pop     ecx
    pop     eax
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

; get input from user
; String sinput(int size)
sinput:
    mov     edx,     eax
    mov     ecx,     ebx
    mov     ebx,     0
    mov     eax,     3
    int     0x80
    ret
