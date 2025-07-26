
%include 'exit.asm'
%include 'string.asm'

; section for constant datas
SECTION .data

    ; other data
    msg1 db 'I Fucking Love Nasm', 0xA, 0
    msg2 db 'Nasm Is Very Hard', 0xA, 0

; make main "function" visible
SECTION .text
global _start

; main function
_start:

    ; print msg1
    mov     eax,     msg1
    call    sprint

    ; print msg2
    mov     eax,     msg2
    call    sprint

    ; exit app
    mov     eax,     EXIT_SUCCESS
    call    exit
