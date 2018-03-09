extern printf
extern scanf

section .data
	m: db "Hello %s",10,0
	s: db "%s"
	v: db 0
	
section .text
	global main 
	main:
	push ebp
	mov ebp,esp
	

	push v
	push s
	call scanf
	
	push v
	push m
	call printf

	leave
	ret
			
	
