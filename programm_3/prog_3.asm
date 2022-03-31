TITLE clear and cursor

INCLUDE Irvine32.inc

.data
sum     dword   ?

.code
main PROC
    call    ClrScr
    mov     dh, 10
    mov     dl, 12
    call    GotoXY
    call    ReadInt
    call    ClrScr
    mov     sum, eax
    call    GotoXY
    call    ReadInt
    call    ClrScr
    add     sum, eax
    call    GotoXY
    mov     eax, sum
    call    WriteInt

    exit
main ENDP
END main