TITLE flag OF

INCLUDE Irvine32.inc

.code
main PROC
    mov     al, 127
    add     al, 1
    call    DumpRegs
    sub     ax, 1
    call    DumpRegs

    exit
main ENDP
END main