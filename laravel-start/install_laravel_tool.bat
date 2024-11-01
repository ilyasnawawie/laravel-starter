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
echo     [90;1m#═╦═══════»[0m  [92m[Manage NPM][0m       [95m[1][0m
ping localhost -n 1 >nul
echo       [90;1m╚═╦══════»[0m  [92m[Manage Artisan][0m  [95m[2][0m
ping localhost -n 1 >nul
echo         [90;1m╚═╦═════»[0m  [92m[Manage XAMPP][0m   [95m[3][0m
echo|set /p=".          [90;1m╚══>[0m"
choice /c 123 >nul
if /I "%errorlevel%" EQU "1" (
  cls
  echo.
  echo [92m[Select NPM Option][0m
  echo.
  echo     [90;1m╔═╦═════»[0m  [92m[Install NPM][0m  [95m[1][0m
  echo       [90;1m╚═╦═════»[0m  [92m[Update NPM][0m   [95m[2][0m
  echo         [90;1m╚═╦═════»[0m  [92m[Delete NPM][0m   [95m[3][0m
  echo|set /p=".          [90;1m╚══>[0m"
  choice /c 123 >nul
  if /I "%errorlevel%" EQU "1" (
    echo Installing NPM...
    REM Add your NPM installation command here
  ) else if /I "%errorlevel%" EQU "2" (
    echo Updating NPM...
    REM Add your NPM update command here
  ) else if /I "%errorlevel%" EQU "3" (
    echo Deleting NPM...
    REM Add your NPM delete command here
  )
  pause
  goto :start
)
if /I "%errorlevel%" EQU "2" (
  echo Installing Artisan...
  REM Add your artisan installation command here
  goto :start
)
if /I "%errorlevel%" EQU "3" (
  echo Installing XAMPP...
  REM Add your XAMPP installation command here
  goto :start
)
