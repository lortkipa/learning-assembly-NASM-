
SECTION .data

    ; exit codes
    EXIT_SUCCESS db 0
    EXIT_FAILURE db 1

; exit running program
; void exit(int code)
exit:
    push    ebx
    mov     ebx,     eax
    mov     eax,     1
    pop     ebx
    int     0x80

exit_success:
    mov     eax,     EXIT_SUCCESS
    call    exit

exit_failure:
    mov     eax,     EXIT_FAILURE
    call    exit
