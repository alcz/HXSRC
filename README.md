#HXSRC

This is fork of 2.17 of Japheth's HXDOS Extender and related tools.
Personal aim is to make it run my own 32-bit software compiled with MSVC 2017.
Having the same binary tested and deployed on newest Win32 hosts and at the
same time on simple DOS installations may still have use cases.

Upstream repository claims, that the source code has Sybase license
https://opensource.org/licenses/Watcom-1.0, but IMHO this applies to JWLink,
which is not included here. Further clarification is needed.

The HXSRC package contains the HX DOS extender source code. This consists of:
* DPMI host HDPMI32.EXE / HDPMI16 (MASM)
* DPMI loader DPMILD32.EXE / DPMILD16.EXE (MASM)
* Win32 emulation dlls DKRNL32, DADVAPI, DGDI32, DUSER32, OLE32, OLEAUT32, WINMM, DDDRAW, DINPUT, DSOUND (MASM)
* GUI helper dll HXGuiHlp.dll
* Tools HXLdr32.exe, PEStub.exe, PatchPE.exe, PatchNE.exe(MASM)
* MZ stubs DPMIST32.BIN / DPMIST16.BIN (MASM)
* HX's MZ/NE file format support (MASM)
* WD debugger trap helper files HXHELP.EXE / HXHP16.EXE (MASM)
* VESA support dll VESA32 (MASM)
* HX's source code is about 100.000 lines of code.
