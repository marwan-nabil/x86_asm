@echo off

if not exist W:\build; mkdir W:\build
pushd W:\build
    :: assemble
    ml /c ..\code\calc.asm

    :: compile
    cl /c ..\code\main.cpp

    :: link
    link /NOLOGO /DEBUG /SUBSYSTEM:CONSOLE /MACHINE:X86^
    /PDB:x86_asm.pdb^
    /OUT:x86_asm.exe^
    calc.obj main.obj^
    KERNEL32.LIB USER32.LIB GDI32.LIB WINSPOOL.LIB COMDLG32.LIB ADVAPI32.LIB SHELL32.LIB OLE32.LIB OLEAUT32.LIB UUID.LIB ODBC32.LIB ODBCCP32.LIB
popd