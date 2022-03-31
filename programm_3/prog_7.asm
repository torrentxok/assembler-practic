TITLE str XY

INCLUDE Irvine32.inc

.data
symbol  byte    'Amisha)', 0

.code
main PROC
    mov     ecx, 100
    call    ClrScr
li:
    mov     eax, 80
    call    RandomRange
    mov     dh, al
    mov     eax, 25
    call    RandomRange
    mov     dl, al
    call    GotoXY
    mov     edx, offset symbol
    call    WriteString
    mov     eax, 291
    call    RandomRange
    add     eax, 10
    call    Delay
    call    ClrScr
    loop li

    exit
main ENDP
END main