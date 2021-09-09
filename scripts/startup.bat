@echo off
subst W: /D
subst W: %cd%
W:
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x86
set path=W:\scripts;C:\Program Files\NASM;%path%
cls