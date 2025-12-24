@echo off
chcp 65001 >nul
title RFID WMS Portable
color 0A

echo ╔══════════════════════════════════════╗
echo ║   RFID WMS Portable - Запуск        ║
echo ╚══════════════════════════════════════╝
echo.
cd /d "%~dp0"

echo [1/2] Запуск Backend сервера...
start "RFID WMS Backend" /MIN backend.exe

REM Ожидание запуска backend
timeout /t 4 /nobreak >nul

echo [2/2] Запуск Desktop приложения...
cd desktop
start "" "RFID WMS Desktop.exe"
cd ..

echo.
echo ✅ Приложение запущено!
echo.
echo Backend: http://localhost:5000
echo Desktop приложение должно открыться автоматически
echo.
echo Закройте это окно после завершения работы.
pause
