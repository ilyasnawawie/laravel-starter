@echo off
mode 80, 28
title LaravelBanner
chcp 65001 >nul
:start
cls
echo.
echo.
echo.
ping localhost -n 2 >nul
echo [34m                     ▄▄  ▪▄▄▄· ▄▄▌·▪ ▄▄▄· ▄· ▄▌ ▪▄▄▄·▄▄       [0m
ping localhost -n 1 >nul
echo [94m                    ▐█ ·  █·▀█ █•▀█  █▪▀█ ▐█▪▐█ █▀·  ▐█·▪ [0m
ping localhost -n 1 >nul
echo [36m                    ▐█ ▪·▄█▀▀█ █▀▀█·▄█▀▀█ ▐▌ ▐▌ █▀▀▀·▐█▪   [0m
ping localhost -n 1 >nul
echo [96m                    ·█▄ •▐█ ▪▐▌█ ·▐▌▐█  ▐▌▐▌▄▌  █▄•·▪·█▄  [0m
ping localhost -n 1 >nul
echo [96m                     ▪▀▀▀ ▀  ▀▪▀   ▀·▀  ▀ ▐▀·.  ▪▀▀▀  ▪▀▀▀▪· [0m
ping localhost -n 1 >nul
echo [96m                          [0m
ping localhost -n 1 >nul
echo.
echo.
echo.
echo.
:input
ping localhost -n 1 >nul
echo     [90;1m#═╦═══════»[0m  [92m[Option1][0m [95m[1][0m
ping localhost -n 1 >nul
echo       [90;1m╚═╦══════»[0m  [92m[Option2][0m  [95m[2][0m
ping localhost -n 1 >nul
echo         [90;1m╚═╦═════»[0m  [92m[Option3][0m   [95m[3][0m
echo|set /p=".          [90;1m╚══>[0m"
choice /c 123 >nul
if /I "%errorlevel%" EQU "1" (
  start option1.bat
  goto :start
)
if /I "%errorlevel%" EQU "2" (
  start option2.vbs
  goto :start
)
if /I "%errorlevel%" EQU "3" (
  start option3
  goto :start
)
