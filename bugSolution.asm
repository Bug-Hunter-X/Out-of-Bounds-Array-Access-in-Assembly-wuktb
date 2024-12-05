section .data
    array dw 10, 20, 30, 40, 50
    array_size equ $-array ; Calculate the size of the array

section .bss
    result resd 1

section .text
    global _start

_start:
    ; Get the index from the user (replace with your input method)
    mov esi, 2 ; Example index

    ; Bounds check
    cmp esi, array_size/2 ; Check if index is within bounds
    jg out_of_bounds
    jl out_of_bounds

    ; Access the array element
    mov ebx, array
    mov ax, [ebx+esi*2] ; Access array element. Note the *2 because each element is 2 bytes (word)
    mov [result], eax

    ; Exit the program
    jmp exit

out_of_bounds:
    ; Handle out-of-bounds error (e.g., print an error message and exit)
    ; ... your error handling code here ...
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80

exit:
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80