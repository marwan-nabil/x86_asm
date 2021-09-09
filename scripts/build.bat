@echo off

if not exist W:\build; mkdir W:\build
pushd W:\build
    :: assemble
    ml64 /c^
    ..\code\main64.asm^
    /Fo main.obj

    :: link
    link^
    /NOLOGO /DEBUG /SUBSYSTEM:CONSOLE /MACHINE:X86 /NODEFAULTLIB /ENTRY:main^
    /PDB:main.pdb /MAP:main.map /OUT:main.exe^
    main64.obj kernel32.lib
popd