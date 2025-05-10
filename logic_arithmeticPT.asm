section .data
    num1 db 6
    num2 db 3
    result db 0

section .text
    global _start
_start:

    ; Arithmetic: ADD
    mov al, [num1]  ; Load num1 into AL
    add al, [num2]  ; Add num2 to AL
    mov [result], al ; Store the result in 'result'

    ; Subtraction
    mov al, [num1]  
    sub al, [num2]  

     ; Logical: AND
    mov al, [num1]  
    and al, [num2]  

     ; Logical: OR
    mov al, [num1]  
    or al, [num2]

    ; Logical: XOR
    mov al, [num1]  
    xor al, [num2]

    ; Logical: NOT
    mov al, [num1]  
    not AL

    ; Check if even or odd
    mov al, [num1]
    and al, 1
    cmp al, 0
    je is_even

is_odd:
    ; Print ODD
    mov eax, 4
    mov ebx, 1
    mov ecx, odd_msg
    mov edx, odd_len
    int 0x80
    jmp done

is_even:
    ; Print EVEN
    mov eax, 4
    mov ebx, 1
    mov ecx, even_msg
    mov edx, even_len
    int 0x80

done:
    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
    even_msg db "Number is EVEN", 10
    even_len equ $ - even_msg

    odd_msg db "Number is ODD", 10
    odd_len equ $ - odd_msg

    



