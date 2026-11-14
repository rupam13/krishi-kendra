@echo off
chcp 65001 >nul
title Krishi Kendra Billing & POS System (कृषी सेवा केंद्र बिलिंग)
echo ======================================================================
echo    🌱 अक्षय कृषी सेवा केंद्र - डिजिटल बिलिंग, खतावणी व मागणी अंदाज
echo    Akshay Krishi Seva Kendra - Billing, Khata & Seasonal Forecasting
echo ======================================================================
echo.
echo Launching standalone application mode...

set HTML_PATH=%~dp0Krishi_Kendra_Billing.html

:: Try launching in Edge App Mode (Chromium Standalone)
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%HTML_PATH%"
    goto done
)

if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%HTML_PATH%"
    goto done
)

:: Try Google Chrome App Mode
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%HTML_PATH%"
    goto done
)

if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app="%HTML_PATH%"
    goto done
)

:: Fallback to Default Browser
start "" "%HTML_PATH%"

:done
echo Application launched successfully!
exit /b
