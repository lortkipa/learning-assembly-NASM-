
%include 'exit.asm'
%include 'string.asm'

%define NUM_TO_CHAR_OFFSET 48
%define MAX_COUNT_NUMBER 10

SECTION .data
    question     db     'Please enter your name: ', 0
    msg_starter  db     'Hello, ', 0

SECTION .text
global _start
_start:

    ; count from 0
    mov     ecx,    0
    next_number:
    inc     ecx
    mov     eax,    ecx
    add     eax,    NUM_TO_CHAR_OFFSET
    push    eax
    mov     eax,    esp
    call    sprintln
    pop     eax
    cmp     ecx,    MAX_COUNT_NUMBER
    jne     next_number
     
    ; exit app
    finish:
    call exit_success
