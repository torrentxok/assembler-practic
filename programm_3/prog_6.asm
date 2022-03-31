TITLE 20 str

INCLUDE Irvine32.inc

.data
shift   byte    10, 13, 0
stroka  byte    10 dup(?), 0

.code
main PROC
    mov     ecx, 20
    mov     ebx, offset stroka
li1:
    push    ecx
    mov     ecx, 10
li2:
    mov     eax, 26
    call    RandomRange
    add     eax, 97
    mov     [ebx], eax
    add     ebx, 1
    loop    li2

    mov     ebx, offset stroka
    pop     ecx
    mov     edx,offset stroka
    call    WriteString
    mov     edx,offset shift
    call    WriteString
    loop    li1


    exit
main ENDP
END main