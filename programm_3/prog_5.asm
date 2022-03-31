TITLE 50 random numbers

INCLUDE Irvine32.inc
.data
shift   byte    10, 13, 0

.code
main PROC
    mov     ecx, 50
    mov     edx, offset shift
li:
    mov     eax, 41
    call    RandomRange
    sub     eax, 20
    call    WriteInt
    call    WriteString
    loop    li

    exit
main ENDP
END main
