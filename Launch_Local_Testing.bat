@echo off
chcp 65001 >nul
title Krishi Kendra Local Testing Sandbox (स्थानिक चाचणी आवृत्ती)
echo ======================================================================
echo    🧪 Krishi Kendra Local Testing Sandbox (स्थानिक चाचणी आवृत्ती)
echo    Developer & Testing Version with Instant Demo Data & HUD Controls
echo ======================================================================
echo.
echo Launching local testing sandbox...

set HTML_PATH=%~dp0Krishi_Kendra_Testing_Version.html

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
echo Local testing sandbox launched successfully!
exit /b
