.686
include C:\masm32\include\io.asm

.data
    min dw ?
    max dw ?
    min_ind dd ?
    max_ind dd ?
    temp  dw ?
    x  dw 5 dup(?)
    N  dw  ?
.code
LStart:
    print "N="
    inint N

    mov ecx, 0
    mov cx, N
    mov ebx,    0
L0: inint16 x[ebx],    6
    add ebx,    2
    loop    L0
    newline

    mov ecx, 0
    mov cx, N
    mov ebx,    0
L41: outint16 x[ebx],    6
    add ebx,    2
    loop    L41
    newline
    
    mov ecx, 0
    mov cx, N
    dec cx
    mov ebx,    0
    mov AX, x[ebx]
    mov min, ax
    mov max, ax
    add ebx,    2
L1: mov ax, min
    CMP AX, x[ebx]
    JLE L2
    mov min_ind, ebx
    mov AX, x[ebx]
    mov min, ax
    JMP L2 
LOO:JMP L1
L2: mov ax, max
    CMP ax, x[ebx]
    JGE L3
    mov max_ind, ebx
    mov ax, x[ebx]
    mov max, ax
L3: add ebx,    2
    loop    LOO
    print " 1st min ="
    outint16 min, 2
    print " 1st max ="
    outint16 max, 2
    newline

    mov esi, max_ind
    mov edi, min_ind
    push    x[esi]
    push    x[edi]
    pop    x[esi]
    pop    x[edi]

comment #    
    mov ax, min
    mov ebx, max_ind
    mov x[ebx], ax
    mov ax, max
    mov ebx, min_ind
    mov x[ebx], ax
#
    mov ecx, 0
    mov cx, N
    mov ebx,    0
L4: outint16 x[ebx],    6
    add ebx,    2
    loop    L4
    newline
    
LExit:
	newline
	inkey "Press any key to exit."
    exit
end LStart