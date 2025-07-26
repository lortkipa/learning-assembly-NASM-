
%include 'exit.asm'
%include 'string.asm'

; section for constant datas
SECTION .data

    ; messages
    msg1 db 'I Fucking Love Nasm', 0
    msg2 db 'Nasm Is Very Hard', 0

SECTION .text
global _start

_start:

    ; print msg1
    mov     eax,     msg1
    call    sprintln

    ; print msg2
    mov     eax,     msg2
    call    sprintln

    ; exit app
    mov     eax,     EXIT_SUCCESS
    call    exit
