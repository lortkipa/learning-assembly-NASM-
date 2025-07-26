
%include 'exit.asm'
%include 'string.asm'

%define MAX_NAME_LENGTH 50

SECTION .data
    question     db     'Please enter your name: ', 0
    msg_starter  db     'Hello, ', 0

SECTION .bss
    name:     resb    MAX_NAME_LENGTH

SECTION .text
global _start
_start:

    ; ask user
    mov     eax,     question
    call    sprint

    ; get name
    mov     eax,     MAX_NAME_LENGTH
    mov     ebx,     name
    call    sinput

    ; log message
    mov     eax,     msg_starter
    call    sprint
    mov     eax,     name
    call    sprint

    ; exit app
    finish:
    mov     eax,     EXIT_SUCCESS
    call    exit
