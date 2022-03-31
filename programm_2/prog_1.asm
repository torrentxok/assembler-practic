TITLE substract

INCLUDE Irvine32.inc

.code
main PROC
    mov     ax, 65535
    add     ax, 1
    movzx   eax, ax
    call    DumpRegs
    mov     eax, 1
    sub     eax, 2
    call    DumpRegs

    exit
main ENDP
END main