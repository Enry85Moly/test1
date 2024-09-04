@echo off
set base=c:\commons\c\dev-cpp
set lib=%base%\lib
set gcc=c:/commons/c/dev-cpp
path=%base%\bin;%path%
gcc -w -ggdb -c -fpermissive -malign-double -O0 main.c -o main.o
if errorlevel 1 goto end 
gcc -O0 -ggdb -lole32 -lwinmm -lws2_32 -liphlpapi -lddraw -ldxguid -ldxerr8 main.o -o main
if errorlevel 1 goto end
@echo Errors: 0 errors
@goto fine
:end
@echo Errors: 1 errors
:fine
copy main.exe C:\GIT\Modena2\main.exe
