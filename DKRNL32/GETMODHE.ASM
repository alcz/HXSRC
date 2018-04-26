
;--- implements GetModuleHandleExW()

	.386
if ?FLAT
	.MODEL FLAT, stdcall
else
	.MODEL SMALL, stdcall
endif
	option casemap:none
	option proc:private

	include winbase.inc
	include dkrnl32.inc
	include macros.inc

	.CODE

GetModuleHandleExW proc public dwFlags:DWORD, pName:ptr WORD, hModule:DWORD
	mov eax, pName
	.if (eax)
		call ConvertWStr
	.endif
	invoke GetModuleHandleA, eax
        test eax, eax
        je exit
        mov hModule, eax
        mov eax, 1
exit:
	@strace <"GetModuleHandleExW(", dwFlags, ", ", pName, ")=", eax>
        ret
	align 4
GetModuleHandleExW endp

	end

