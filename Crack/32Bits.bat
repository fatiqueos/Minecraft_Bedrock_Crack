@echo off
setlocal

set "ruta_iobit_unlocker=%~dp0Borrador\IOBitUnlocker.exe"
set "comando=%ruta_iobit_unlocker% /delete %1"
%comando% "%SystemRoot%\System32\Windows.ApplicationModel.Store.dll"

set "nombre_dll_system32=Windows.ApplicationModel.Store.dll"
set "directorio_actual=%~dp0"
set "ruta_destino_system32=%SystemRoot%\System32\"
copy "%directorio_actual%Crack32\System32\%nombre_dll_system32%" "%ruta_destino_system32%"

if exist "%directorio_actual%Borrador\update.ini" (
    del "%directorio_actual%Borrador\update.ini"
)

if exist "%directorio_actual%Borrador\IObitUnlocker.log" (
    del "%directorio_actual%Borrador\IObitUnlocker.log"
)

echo Bedrock Crackeado también hay servers. Atte: Israel

pause
