
; section for constant datas
SECTION .data
    msg db 'Hello World', 0xA ; create string

; make main "function" visible
SECTION .text
global _start

; main function
_start:
    mov     ebx,     1    ; just write to stdout
    mov     ecx,     msg  ; move msg into register wich SYS_WRITE will use
    mov     edx,     12   ; number of characters (bytes)
    mov     eax,     4    ; request write
    int 0x80
