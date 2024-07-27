@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

>nul 2>&1 set "Elevated=!errorlevel!"

if not "%Elevated%"=="0" (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

title https://github.com/fatiqueos

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set "arch=64Bits"
) else (
    set "arch=32Bits"
)

:menu
cls
echo Select an option:
echo 1. Crack Game
echo 2. Install Minecraft Trial (Required)

set /p "choice=Enter the number of the option: "

if "%choice%"=="1" (
    if exist "%~dp0Crack\!arch!.bat" (
        echo Running !arch!.bat
        call "%~dp0Crack\!arch!.bat"
    ) else (
        goto :menu
    )
) else if "%choice%"=="2" (
    start ms-windows-store://pdp/?ProductId=9nblggh2jhxj
    goto :menu
) else (
    echo Invalid option.
    pause
    goto :menu
)
