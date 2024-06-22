@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

fsutil dirty query %systemdrive% > nul
if %errorlevel% NEQ 0 (
    echo HATA - .bat dosyasını Yönetici olarak çalıştırın
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
echo                 Windows için Minecraft
echo --------------------------------------------------------
echo Lütfen bir seçenek seçin:
echo 1. Tüm Oyunun Kilidini Aç
echo 2. Minecraft'ı Windows'a Yükle
echo --------------------------------------------------------

set /p "choice=Lütfen bir seçenek seçin: "

if "%choice%"=="1" (
    if exist "%~dp0crack\!arch!.bat" (
        echo !arch!.bat enjekte ediliyor...
        call "%~dp0crack\!arch!.bat"
    ) else (
        echo %~dp0crack\!arch!.bat dosyası bulunamadı.
    )
) else if "%choice%"=="2" (
    start ms-windows-store://pdp/?ProductId=9nblggh2jhxj
) else (
    echo Geçersiz seçenek. Lütfen geçerli bir seçenek girin.
)

pause
goto :menu
