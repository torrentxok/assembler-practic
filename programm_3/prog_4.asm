TITLE loop

INCLUDE Irvine32.inc
.data
hello   byte    "Hello", 10, 13, 0
.code
main PROC
    call    ClrScr
    mov     ecx, 3
li:
    mov     edx, offset hello
    call    WriteString
    call    WaitMsg
    call    ClrScr
    loop li

    exit
main ENDP
END main