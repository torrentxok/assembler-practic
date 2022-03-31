TITLE color

INCLUDE Irvine32.inc

.data
hello   byte   "Hello world!", 10, 13, 0
var     dword   0
.code
main PROC
    mov     ecx, 16

li:
    mov     eax, (black*16)+var
    inc     var
    call    SetTextColor
    mov     edx, offset hello
    call    WriteString
    loop li

    exit
main ENDP
END main