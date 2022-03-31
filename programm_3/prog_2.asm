TITLE numbers in mass

INCLUDE Irvine32.inc

.data
intVal  dword   10 DUP(?), 0
shift   byte    10, 13, 0

.code
main PROC
    mov     ebx, offset intVal
    mov     ecx, 10
li:
    call    ReadInt
    mov     [ebx], eax
    add     ebx, 4
    loop li

    mov     ecx, 10
    mov     ebx, offset intVal
    mov     edx, offset shift
    call    WriteString
li2:
    mov     eax, [ebx]
    add     ebx, 4
    call    WriteInt    
    call    WriteString

    loop li2

    exit
main ENDP
END main