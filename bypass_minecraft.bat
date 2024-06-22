@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

fsutil dirty query %systemdrive% >nul
if %errorlevel% NEQ 0 (
    echo ERROR - Run .bat file as Administrator
    pause
    exit /b
)

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set "arch=64bits"
) else (
    set "arch=32bits"
)

:menu
cls
echo --------------------------------------------------------
echo                 Minecraft for Windows
echo --------------------------------------------------------
echo Please select an option:
echo 1. Unlock All Game Minecraft for Windows
echo 2. Install Minecraft for Windows
echo --------------------------------------------------------

set /p "choice=Please select an option: "

if "%choice%"=="1" (
    if exist "%~dp0crack\!arch!.bat" (
        echo !arch!.bat is being injected...
        call "%~dp0crack\!arch!.bat"
    ) else (
        echo %~dp0crack\!arch!.bat file not found.
    )
) else if "%choice%"=="2" (
    start ms-windows-store://pdp/?ProductId=9nblggh2jhxj
) else (
    echo Invalid option. Please enter a valid option.
)

pause
goto :menu
