TITLE 256 color

INCLUDE Irvine32.inc

.data
shift   byte    10, 13, 0
symbol  byte    'A', 0
var     dword    0

.code
main PROC
    call    ClrScr
    mov     ecx, 16
li:
    mov     edx, offset symbol
    push    ecx
    mov     ecx, 16

li2:
    mov     al, cl
    mov     bl, 16
    mul     bl
    add     eax, var
    call    SetTextColor
    call    WriteString
    loop li2

    inc     var
    pop     ecx
    mov     edx, offset shift
    call    WriteString
    loop li

    mov     eax, (16*black)+15
    call    SetTextColor

    exit
main ENDP
END main