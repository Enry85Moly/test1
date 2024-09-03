@echo off
set base=c:\commons\c\dev-cpp
set lib=%base%\lib
set gcc=c:/commons/c/dev-cpp
path=%base%\bin;%path%
rem gcc   -w  -ggdb -c -fpermissive -malign-double -O%3 %1.c -o %1.o
gcc   -w  -ggdb -c -fpermissive -malign-double -O0 main.c -o main.o
if errorlevel 1 goto end 
rem gcc -O%3  -ggdb -mwindows   c:\commons\c\dev-cpp\lib\mswindows_directx_mingw.lib c:\commons\c\dev-cpp\lib\plus_mingw.lib -lole32 -lwinmm -lws2_32 -liphlpapi  -lddraw -ldxguid -ldxerr8   %1.o  -o %1 
rem *** gcc -O0  -ggdb -mwindows   c:\commons\c\dev-cpp\lib\mswindows_directx_mingw.lib c:\commons\c\dev-cpp\lib\plus_mingw.lib -lole32 -lwinmm -lws2_32 -liphlpapi  -lddraw -ldxguid -ldxerr8   main.o  -o main
gcc -O0  -ggdb -lole32 -lwinmm -lws2_32 -liphlpapi  -lddraw -ldxguid -ldxerr8   main.o  -o main
if errorlevel 1 goto end
@echo Errors: 0 errors
@goto fine
:end
@echo Errors: 1 errors
:fine
copy main.exe C:\GIT\Modena2\main.exe