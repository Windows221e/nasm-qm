ORG 0x7c00
BITS 16 ;forms 16 bits for boot

start:
	mov si, message
	call print
	jmp $


print:
	mov bx, 0

.loop:	
	lodsb
	cmp al, 0
	je .done
	call print_char
.done:	
	ret

print_char:
	mov ax, 0eh
	int 0x10
	ret

message db 'Hello world!', 0


times 510-($ - $$) db 0
dw 0xAA55