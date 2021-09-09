@echo off

if not exist W:\build; mkdir W:\build
pushd W:\build
    :: assemble
    nasm -fwin32 ..\code\main.asm -o main.obj

    :: link
    link^
    /NOLOGO /DEBUG /SUBSYSTEM:CONSOLE /NODEFAULTLIB^
    /MAP:main.map /OUT:main.exe^
    /ENTRY:main^
    main.obj kernel32.lib
popd