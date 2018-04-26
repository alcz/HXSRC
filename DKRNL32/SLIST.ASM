
;--- implements:
;--- InitializeSListHead

	.386
if ?FLAT
	.MODEL FLAT, stdcall
else
	.MODEL SMALL, stdcall
endif
	option proc:private
	option casemap:none

	include winbase.inc
	include winerror.inc
	include dkrnl32.inc
	include macros.inc

	.CODE

InitializeSListHead proc public
	mov   edx, DWORD PTR [esp+4]      ; get pHead->Alignment
	xor   eax, eax
	mov   DWORD PTR [edx],   eax      ; pHead->Alignment = 0
	mov   DWORD PTR [edx+4], eax
	ret   4
	align 4
InitializeSListHead endp

	end
