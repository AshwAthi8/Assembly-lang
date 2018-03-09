extern scanf
extern printf
 
section .data
	l: dd 0
	s: db "%d",0
	su: dd 0


section .text
	global main
	main:
	
	push ebp
	mov ebp,esp
	
	push l 
	push s
	call scanf
	
	mov dword[ebp-0x8],0
	mov ebx,0
	mov edx,dword[l]
	
	
	sum:

	inc dword[ebp-0x8]
	add ebx,dword[ebp-0x8]
	cmp [ebp-0x8],edx	
	
	jne sum

	push ebx
	push s
	call printf
	
	leave
	ret

	
