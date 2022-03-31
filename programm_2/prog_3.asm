TITLE flags ZF and SF

INCLUDE Irvine32.inc

.code
main PROC
    mov     eax, 1
    sub     eax, 1
    call    DumpRegs
    sub     eax, 1
    call    DumpRegs
    add     eax, 2
    call    DumpRegs

    exit
main ENDP
END main