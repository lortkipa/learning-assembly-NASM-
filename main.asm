
; section for constant datas
SECTION .data

    ; exit codes
    EXIT_SUCCESS db 0
    EXIT_FAILURE db 1

    ; other data
    msg db 'Hello World', 0xA

; make main "function" visible
SECTION .text
global _start

; main function
_start:
    
    ; print hello world
    mov     ebx,     1   
    mov     ecx,     msg
    mov     edx,     12
    mov     eax,     4
    int     0x80

    ; exit
    mov     ebx,     EXIT_SUCCESS
    mov     eax,     1
    int     0x80
