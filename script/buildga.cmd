@rem build windows on github actions

@rem x64 x86 arm64
IF "%~1"=="x86" GOTO L0
IF "%~1"=="arm64" GOTO L0
IF "%~1" NEQ "x64" EXIT /b 1
:L0

xcopy /Y /I /S jlibrary\*
copy script\testga.ijs
copy script\ver.ijs

IF "%~1"=="x86" GOTO L01A
IF "%~1"=="arm64" GOTO L01B
IF "%~1" NEQ "x64" EXIT /b 1
mkdir j64
copy bin\profile.ijs j64
copy pthreads4w\bin\pthreadVC3.dll j64
copy mpir\windows\x64\mpir.dll j64
copy pcre2\windows\x64\jpcre2.dll tools/regex/.
GOTO L01C
:L01A
mkdir j32
copy bin\profile.ijs j32
copy pthreads4w\bin\pthreadVC3-w32.dll j32\pthreadVC3.dll
copy mpir\windows\win32\mpir.dll j32
@rem copy pcre2\windows\win32\jpcre2.dll tools/regex/.
GOTO L01C
:L01B
mkdir jarm64
copy bin\profile.ijs jarm64
@rem copy pthreads4w\bin\pthreadVC3-warm64.dll jarm64\pthreadVC3.dll
@rem copy mpir\windows\winarm64\mpir.dll jarm64
@rem copy pcre2\windows\winarm64\jpcre2.dll tools/regex/.
:L01C

copy version.txt jsrc\jversion.h
echo #define jplatform "windows" >> jsrc\jversion.h
echo #define jlicense  "commercial" >> jsrc\jversion.h
echo #define jbuilder  "www.jsoftware.com" >> jsrc\jversion.h

cd makemsvc\tsdll
IF "%~1"=="x86" GOTO L04A
IF "%~1"=="arm64" GOTO L04B
IF "%~1" NEQ "x64" EXIT /b 1
nmake -f makefile.win CC=clang-cl x64=1 clean
nmake -f makefile.win CC=clang-cl x64=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L04C
:L04A
nmake -f makefile.win CC=clang-cl x64=0 clean
nmake -f makefile.win CC=clang-cl x64=0
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L04C
:L04B
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1 clean
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
:L04C

cd ..
cd jconsole
IF "%~1"=="x86" GOTO L02A
IF "%~1"=="arm64" GOTO L02B
IF "%~1" NEQ "x64" EXIT /b 1
nmake -f makefile.win CC=clang-cl x64=1 USE_PYXES=1 clean
nmake -f makefile.win CC=clang-cl x64=1 USE_PYXES=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L02C
:L02A
nmake -f makefile.win CC=clang-cl x64=0 USE_PYXES=0 clean
nmake -f makefile.win CC=clang-cl x64=0 USE_PYXES=0
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L02C
:L02B
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1 USE_PYXES=1 clean
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1 USE_PYXES=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
:L02C

cd ..
cd jdll
IF "%~1"=="x86" GOTO L03A
IF "%~1"=="arm64" GOTO L03B
IF "%~1" NEQ "x64" EXIT /b 1
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=1 USE_OPENMP=0 USE_PYXES=1 clean
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=1 USE_OPENMP=0 USE_PYXES=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=0 JAVX2=1 USE_OPENMP=0 USE_PYXES=1 clean
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=0 JAVX2=1 USE_OPENMP=0 USE_PYXES=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=0 JAVX2=0 USE_OPENMP=0 USE_PYXES=1 clean
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=0 JAVX2=0 USE_OPENMP=0 USE_PYXES=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L03C
:L03A
nmake -f makefile.win CC=clang-cl x64=0 USE_OPENMP=0 USE_PYXES=0 clean
nmake -f makefile.win CC=clang-cl x64=0 USE_OPENMP=0 USE_PYXES=0
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L03C
:L03B
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1 USE_OPENMP=0 USE_PYXES=0 clean
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1 USE_OPENMP=0 USE_PYXES=0
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
:L03C

cd ..
cd jamalgam
IF "%~1"=="x86" GOTO L05A
IF "%~1"=="arm64" GOTO L05B
IF "%~1" NEQ "x64" EXIT /b 1
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=0 JAVX2=0 USE_OPENMP=0 USE_PYXES=1 clean
nmake -f makefile.win CC=clang-cl x64=1 JAVX512=0 JAVX2=0 USE_OPENMP=0 USE_PYXES=1
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L05C
:L05A
nmake -f makefile.win CC=clang-cl x64=0 USE_OPENMP=0 USE_PYXES=0 clean
nmake -f makefile.win CC=clang-cl x64=0 USE_OPENMP=0 USE_PYXES=0
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
GOTO L05C
:L05B
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1 USE_OPENMP=0 USE_PYXES=0 clean
nmake -f makefile.win CC=clang-cl x64=1 JARM64=1 USE_OPENMP=0 USE_PYXES=0
IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
:L05C

cd ..
IF "%~1"=="x86" GOTO L06A
IF "%~1"=="arm64" GOTO L06B
IF "%~1" NEQ "x64" EXIT /b 1
copy jconsole\jconsole.exe ..\j64
copy jdll\*.dll ..\j64
copy tsdll\tsdll.dll ..\j64
copy jamalgam\jamalgam.exe ..\j64
GOTO L06C
:L06A
copy jconsole\jconsole32.exe ..\j32\jconsole.exe
copy jdll\j32.dll ..\j32\j.dll
copy tsdll\tsdll32.dll ..\j32\tsdll.dll
copy jamalgam\jamalgam32.exe ..\j32\jamalgam.exe
GOTO L06C
:L06B
copy jconsole\jconsolearm64.exe ..\jarm64\jconsole.exe
copy jdll\jarm64.dll ..\jarm64\j.dll
copy tsdll\tsdllarm64.dll ..\jarm64\tsdll.dll
copy jamalgam\jamalgamarm64.exe ..\jarm64\jamalgam.exe
:L06C
