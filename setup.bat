@echo off
chcp 65001 >nul
title Krishi Kendra Software Installer & Setup
echo ======================================================================
echo    🌱 Akshay Krishi Seva Kendra - Client Setup & Auto-Installer
echo    कृषी सेवा केंद्र बिलिंग सॉफ्टवेअर स्वयंचलित इन्स्टॉलर
echo ======================================================================
echo.

set TARGET_DIR=%USERPROFILE%\Desktop\Krishi_Kendra_POS
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

echo [1/3] Downloading latest software from GitHub...
curl.exe -s -L "https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Krishi_Kendra_Billing.html" -o "%TARGET_DIR%\Krishi_Kendra_Billing.html"
curl.exe -s -L "https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Launch_Krishi_Kendra_Billing.bat" -o "%TARGET_DIR%\Launch_Krishi_Kendra_Billing.bat"
curl.exe -s -L "https://raw.githubusercontent.com/rupam13/krishi-kendra/main/version.json" -o "%TARGET_DIR%\version.json"
curl.exe -s -L "https://raw.githubusercontent.com/rupam13/krishi-kendra/main/machines.json" -o "%TARGET_DIR%\machines.json"

echo [2/3] Verifying downloaded files...
if exist "%TARGET_DIR%\Krishi_Kendra_Billing.html" (
    echo [OK] Krishi_Kendra_Billing.html downloaded successfully!
) else (
    echo [ERROR] Download failed. Please check internet connection.
    pause
    exit /b 1
)

echo [3/3] Creating Desktop Shortcut...
set SHORTCUT_PATH=%USERPROFILE%\Desktop\Krishi_Kendra_Billing.lnk
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%SHORTCUT_PATH%'); $Shortcut.TargetPath = '%TARGET_DIR%\Launch_Krishi_Kendra_Billing.bat'; $Shortcut.WorkingDirectory = '%TARGET_DIR%'; $Shortcut.Description = 'Krishi Kendra Enterprise Billing POS'; $Shortcut.Save()"

echo.
echo ======================================================================
echo    🎉 INSTALLATION COMPLETE (इन्स्टॉलेशन यशस्वी झाले)!
echo    Folder: %TARGET_DIR%
echo    Desktop Shortcut: Krishi_Kendra_Billing.lnk
echo ======================================================================
echo.
echo Starting software now...
timeout /t 2 >nul
start "" "%TARGET_DIR%\Launch_Krishi_Kendra_Billing.bat"
exit /b 0
