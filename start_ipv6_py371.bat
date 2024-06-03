@echo off
set Disk=y
subst %Disk%: "data"
 
%Disk%:
 
set HomePath=%Disk%:\home_ipv6
set HomeDrive=%Disk%:\home_ipv6
set Home=%Disk%:\home_ipv6
set USERPROFILE=%Disk%:\home_ipv6
 
REM 將系統 Python 程式的 io 設為 utf-8
set PYTHONIOENCODING="utf-8"
 
set PYTHONPATH=%Disk%:\Python371\DLLs;%Disk%:\Python371\Lib;%Disk%:\Python371\Lib\site-packages;
set PYTHONHOME=%Disk%:\Python371
 
REM for putty
set GIT_SSH=%Disk%:\putty\plink.exe
 
REM 設定跟 Python 有關的命令搜尋路徑
set path_python=%Disk%:\Python371;%Disk%:\Python371\Scripts;
REM 設定跟Git 有關的命令搜尋路徑
set path_git=%Disk%:\portablegit\bin;
REM 設定 msys2 64 位元的執行路徑
set path_msys2=%Disk%:\msys64_20210419\mingw64\bin;
set path_lua=%Disk%:\lua-5.3.5\;
set path_cmake=%Disk%:\cmake-3.21.0-windows-x86_64\bin;
set path_tcc=%Disk%:\tcc;
set path_gnuplot=%Disk%:\gnuplot\bin;
REM for execute scite directly
set path_scite=%Disk%:\wscite;
set path_miktex=%Disk%:\miktex-portable\texmfs\install\miktex\bin\x64;

REM Xcopy %Disk%:\home_ipv6\AppData\Roaming\Coppeliasim C:\users\%USERNAME%\AppData\Roaming\Coppeliasim /E /H /C /I /Y
 
path=%Disk%:;%path_python%;%path_msys2%;%path_cmake%;%path_lua%;%path_git%;%path_tcc%;%path_gnuplot%;%path_scite%;%path_miktex%;%path%;
 
start /MIN cmd.exe
start /MIN cmd.exe
start /MIN cmd.exe
start /MIN cmd.exe
 
start /MIN %Disk%:\wscite\SciTE.exe
start /MIN %Disk%:\wscite\SciTE.exe

REM start %Disk%:\miktex-portable\texmfs\install\miktex\bin\x64\miktex-console.exe --hide --mkmaps
 
 
Exit