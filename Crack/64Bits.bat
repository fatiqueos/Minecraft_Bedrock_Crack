@echo off

set "ruta_iobit_unlocker=%~dp0Borrador\IOBitUnlocker.exe"
set "comando=%ruta_iobit_unlocker% /delete %1"
%comando% "%SystemRoot%\System32\Windows.ApplicationModel.Store.dll"
%comando% "%SystemRoot%\SysWow64\Windows.ApplicationModel.Store.dll"

setlocal
set "nombre_dll_system32=Windows.ApplicationModel.Store.dll"
set "nombre_dll_syswow64=Windows.ApplicationModel.Store.dll"
set "directorio_actual=%~dp0"
set "ruta_destino_system32=%SystemRoot%\System32\"
set "ruta_destino_syswow64=%SystemRoot%\SysWow64\"
copy "%directorio_actual%Crack64\System32\%nombre_dll_system32%" "%ruta_destino_system32%"
copy "%directorio_actual%Crack64\SysWow64\%nombre_dll_syswow64%" "%ruta_destino_syswow64%"

if exist "%directorio_actual%Borrador\update.ini" del "%directorio_actual%Borrador\update.ini"
if exist "%directorio_actual%Borrador\IObitUnlocker.log" del "%directorio_actual%Borrador\IObitUnlocker.log"

pause

