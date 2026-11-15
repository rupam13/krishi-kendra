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
curl.exe -s -L "https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Krishi_Kendra_Testing_Version.html" -o "%TARGET_DIR%\Krishi_Kendra_Testing_Version.html"
curl.exe -s -L "https://raw.githubusercontent.com/rupam13/krishi-kendra/main/Launch_Local_Testing.bat" -o "%TARGET_DIR%\Launch_Local_Testing.bat"
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

echo [3/3] Creating Desktop Shortcuts...
powershell -Command "$WshShell = New-Object -comObject WScript.Shell; $S1 = $WshShell.CreateShortcut('%USERPROFILE%\Desktop\Krishi_Kendra_Billing.lnk'); $S1.TargetPath = '%TARGET_DIR%\Launch_Krishi_Kendra_Billing.bat'; $S1.WorkingDirectory = '%TARGET_DIR%'; $S1.Description = 'Krishi Kendra Enterprise Billing POS'; $S1.Save(); $S2 = $WshShell.CreateShortcut('%USERPROFILE%\Desktop\Krishi_Kendra_Testing_Sandbox.lnk'); $S2.TargetPath = '%TARGET_DIR%\Launch_Local_Testing.bat'; $S2.WorkingDirectory = '%TARGET_DIR%'; $S2.Description = 'Krishi Kendra Local Testing Sandbox'; $S2.Save()"

echo.
echo ======================================================================
echo    🎉 INSTALLATION COMPLETE (इन्स्टॉलेशन यशस्वी झाले)!
echo    Folder: %TARGET_DIR%
echo    Main App Shortcut: Desktop\Krishi_Kendra_Billing.lnk
echo    Testing Shortcut:  Desktop\Krishi_Kendra_Testing_Sandbox.lnk
echo ======================================================================
echo.
echo Starting software now...
timeout /t 2 >nul
start "" "%TARGET_DIR%\Launch_Krishi_Kendra_Billing.bat"
exit /b 0
