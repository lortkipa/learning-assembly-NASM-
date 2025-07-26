
%include 'exit.asm'
%include 'string.asm'

; SECTION .text
global _start

_start:

    ; print arguments
    pop     ecx
    next_arg:
    cmp     ecx,     0
    jz      finish
    pop     eax
    call    sprintln
    dec     ecx
    jmp     next_arg

    ; exit app
    finish:
    mov     eax,     EXIT_SUCCESS
    call    exit
