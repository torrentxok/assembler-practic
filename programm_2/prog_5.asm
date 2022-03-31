TITLE fibonachi

INCLUDE Irvine32.inc

.code
main PROC
    mov     eax, 1
    mov     ecx, 7
    mov     ebx, 0

fibo:
    call    DumpRegs
    mov     edx, eax
    add     eax, ebx
    mov     ebx, edx
    
loop fibo
    exit
main ENDP
END main