TITLE arithmetic

INCLUDE Irvine32.inc

.data
val1    sdword   8
val2    sdword   -15
val3    sdword   20

.code
main PROC
    mov     eax, val2
    neg     eax
    add     eax, 7
    sub     eax, val3
    add     eax, val1
    call    DumpRegs

    exit
main ENDP
END main