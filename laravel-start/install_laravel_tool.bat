@echo off
mode 80, 28
title LaravelSetup
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
echo     [90;1m#═╦═══════»[0m  [92m[Install Node.js][0m       [95m[1][0m
ping localhost -n 1 >nul
echo       [90;1m╚═╦══════»[0m  [92m[Install NPM][0m          [95m[2][0m
ping localhost -n 1 >nul
echo         [90;1m╚═╦═════»[0m  [92m[Install Artisan][0m     [95m[3][0m
ping localhost -n 1 >nul
echo           [90;1m╚═╦═════»[0m  [92m[Install XAMPP][0m     [95m[4][0m
echo|set /p=".          [90;1m╚══>[0m"
choice /c 1234 >nul

if /I "%errorlevel%" EQU "1" (
  cls
  echo.
  echo Checking if Node.js is installed...
  for /f "tokens=*" %%j in ('node -v 2^>nul') do set node_installed=%%j
  if defined node_installed (
    echo           [90;1m╚══»[0m[92m[Node.js is already installed: Version %node_installed%][0m
  ) else (
    echo           [90;1m╚══»[0m[31m[Node.js Not Installed][0m
    echo           [90;1m╚══»[0m[31m[Installing Node.js via Chocolatey][0m
    REM Check if Chocolatey is installed
    where choco >nul 2>nul
    if %errorlevel% neq 0 (
      echo Chocolatey not found. Please install it manually from https://chocolatey.org/install.
      pause
      goto :eof
    ) else (
      choco install nodejs -y >nul
      echo           [90;1m╚══»[0m[92m[Node.js installation complete][0m
    )
  )
  pause
  goto :start

) else if /I "%errorlevel%" EQU "2" (
  cls
  echo.
  echo Checking if npm is installed...
  for /f "tokens=*" %%i in ('npm -v 2^>nul') do set npm_installed=%%i
  if defined npm_installed (
    echo           [90;1m╚══»[0m[92m[NPM is already installed: Version %npm_installed%][0m
    if exist package.json (
      echo Running npm install...
      npm install --silent >nul
    ) else (
      echo           [90;1m╚══»[0m[31m[Error: package.json not found][0m
    )
  ) else (
    echo           [90;1m╚══»[0m[31m[NPM Not Installed][0m
    echo           [90;1m╚══»[0m[31m[Installing pre-requisites][0m
    REM Check if Chocolatey is installed
    where choco >nul 2>nul
    if %errorlevel% neq 0 (
      echo Chocolatey not found. Please install it manually from https://chocolatey.org/install.
      pause
      goto :eof
    ) else (
      echo           [90;1m╚══»[0m[92m[Installing Node.js and NPM via Chocolatey][0m
      choco install nodejs -y >nul
      echo           [90;1m╚══»[0m[92m[Node.js and NPM installation complete][0m
    )
  )
  pause
  goto :start

) else if /I "%errorlevel%" EQU "3" (
  echo Installing Artisan...
  REM Add your artisan installation command here
  goto :start

) else if /I "%errorlevel%" EQU "4" (
  echo Installing XAMPP...
  REM Add your XAMPP installation command here
  goto :start
)
