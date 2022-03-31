TITLE week
INCLUDE Irvine32.inc

.data
Sun=0
Mon=1
Tue=2
Wed=3
Thu=4
Fri=5
Sut=6

weekarr byte Sun, Mon, Tue, Wed, Thu, Fri, Sut, 0

.code
main PROC
    call DumpRegs

    exit
main ENDP
END main