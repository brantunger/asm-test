; Author: Brant Unger
; Bare bones app skeleton

SECTION .data       ; Section containing initialization data

SECTION .bss        ; Section containing uninitialized data

SECTION .text       ; Section containing code

        global _start ; Linker needs to find this entry point!

_start:
        push rbp                ; Alignment prolog
        mov rbp,rsp             ; Save stack pointer for debugger
        and rsp,-16             ; Guarantee stack is aligned to 16 byte boundary

Exit:
        mov rsp,rbp             ; Restore stack
        pop rbp                 ; Alignment epilog

        mov rax,60              ; sys_exit = 60
        mov rdi,0               ; Return code 0
        syscall                 ; Make the sys_exit kernel call