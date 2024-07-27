@echo off
setlocal

set "iobit_unlocker_path=%~dp0Draft\IOBitUnlocker.exe"
set "command=%iobit_unlocker_path% /delete %1"
%command% "%SystemRoot%\System32\Windows.ApplicationModel.Store.dll"

set "dll_name_system32=Windows.ApplicationModel.Store.dll"
set "current_directory=%~dp0"
set "destination_path_system32=%SystemRoot%\System32\"
copy "%current_directory%Crack32\System32\%dll_name_system32%" "%destination_path_system32%"

if exist "%current_directory%Draft\update.ini" (
    del "%current_directory%Draft\update.ini"
)

if exist "%current_directory%Draft\IObitUnlocker.log" (
    del "%current_directory%Draft\IObitUnlocker.log"
)

echo Bedrock Cracked and there are servers too.

pause
