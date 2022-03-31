TITLE flag CF

INCLUDE Irvine32.inc

.code
main PROC
    mov     al, 127
    inc     al
    call    DumpRegs
    mov     al, -128
    dec     al
    call    DumpRegs

    exit
main ENDP
END main