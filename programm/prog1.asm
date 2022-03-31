TITLE substract

INCLUDE Irvine32.inc

.code
main PROC
    mov     ax, 8000h
    sub     ax, 5000h
    sub     ax, 10000h
    call    DumpRegs

    exit
main ENDP
END main