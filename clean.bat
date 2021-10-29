@echo off

pushd W:\build
    del /Q *.obj *.map *.pdb *.exe *.log *.recipe *.txt *.exp *.ilk *.lib *.dll *.tlog  > NUL 2> NUL
popd