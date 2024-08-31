@echo off
title Better Browser Downloader

:menu
echo.
echo Please select an option:
echo 1. Brave Browser
echo 2. Librewolf
echo 3. FireFox
set /p choice=Enter your choice (1, 2, or 3): 

if "%choice%"=="1" goto 1
if "%choice%"=="2" goto 2
if "%choice%"=="3" goto 3

echo Invalid choice, please try again.
goto menu

:1
cls
curl -L -o %cd%/dls/Brave.exe "https://referrals.brave.com/latest/BraveBrowserSetup-BRV002.exe"
:: run
echo finished
pause >nul
exit

:2
cls
curl -L -o %cd%/dls/LibreWolf.exe "https://gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/129.0.2-1/librewolf-129.0.2-1-windows-x86_64-setup.exe"
:: run
echo finished
pause >nul
exit

:3
cls
curl -L -o %cd%/dls/FireFox.exe "https://download.mozilla.org/?product=firefox-stub&os=win&lang=en-US"
:: run
echo finished
pause >nul
exit
