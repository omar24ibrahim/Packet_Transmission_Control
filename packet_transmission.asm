include "emu8086.inc"

data segment 
    p dw 0
    string1 dw "Enter number of pockets to be transmitted: "
    string2 dw "Number of transmissions: "
data ends

code segment
start:
    mov cx,data
    mov ds,cx
    define_scan_num
    define_print_string
    define_print_num
    define_print_num_uns
    define_clear_screen
    lea si,string1
    call print_string
    call scan_num
    mov p,cx
    mov dh,0
a0:
    mov ax,1
x1:
    inc dh
    sub p,ax
    js ex
    cmp ax,64
    jnb x2
    mov cl,2
    mul cl
    jmp x0
x2:
    inc ax
x0:
    cmp p,0
    jbe ex
    cmp ax,128
    jbe x1
    jmp a0
ex:       
    print 0AH
    print 0DH
    lea si,string2
    call print_string
    mov al,dh
    mov ah,0
    call print_num_uns
code ends

end start

ret