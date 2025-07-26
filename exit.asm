
SECTION .data

    ; exit codes
    EXIT_SUCCESS db 0
    EXIT_FAILURE db 1

; exit running program
; void exit(int code)
exit:
    mov     ebx,     eax
    mov     eax,     1
    int     0x80
