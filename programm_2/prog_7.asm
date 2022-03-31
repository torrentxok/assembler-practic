TITLE copy

INCLUDE Irvine32.inc

.data
source  byte    "This is the source string", 0
target  byte    sizeof source dup(0)

.code
main PROC
    mov     esi, 0
    mov     ecx, sizeof source
Li:
    mov     al, source[esi]
    mov     target[ecx-2], al

    inc     esi

    loop    Li

    mov     esi, offset target
    mov     ebx, 1
    mov     ecx, sizeof target-1
    call    DumpMem

    exit
main ENDP
END main