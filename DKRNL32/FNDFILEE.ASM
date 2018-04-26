
	.386
if ?FLAT
	.MODEL FLAT, stdcall
else
	.MODEL SMALL, stdcall
endif
	option proc:private
	option casemap:none

	include winbase.inc
	include macros.inc


	.CODE

FindFirstFileExA proc public lpFileName:ptr WORD, fInfoLevelId:DWORD,
		lpFindFileData:ptr DWORD, fSearchOp:DWORD,
                lpSearchFilter:ptr DWORD, dwAdditionalFlags:DWORD

	xor eax, eax
        invoke SetLastError, ERROR_NOT_SUPPORTED
        mov eax, INVALID_HANDLE_VALUE
	@strace <"FindFirstFileExA(", lpFileName, ", ", fInfoLevelId, ", ...)=", eax, " *** unsupp ***">
	ret
	align 4

FindFirstFileExA endp

	end