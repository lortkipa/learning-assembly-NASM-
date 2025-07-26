
; section for constant datas
SECTION .data

    ; exit codes
    EXIT_SUCCESS db 0
    EXIT_FAILURE db 1

    ; other data
    msg db 'World', 0xA

; make main "function" visible
SECTION .text
global _start

; main function
_start:

    ; get string length
    mov     ebx,     msg
    mov     eax,     ebx
    next_char:
    cmp     byte[eax], 0
    jz      finished
    inc     eax
    jmp     next_char
    finished:
    sub     eax,     ebx
    
    ; print hello world
    mov     ebx,     1 
    mov     ecx,     msg
    mov     edx,     eax
    mov     eax,     4
    int     0x80

    ; exit
    mov     ebx,     EXIT_SUCCESS
    mov     eax,     1
    int     0x80
