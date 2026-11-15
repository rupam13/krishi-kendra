# Krishi Kendra Enterprise Billing POS - 1-Line Windows Auto Installer
# Run in PowerShell: irm https://raw.githubusercontent.com/rupam13/krishi-kendra/main/install.ps1 | iex

$ErrorActionPreference = "Stop"
Write-Host "==================================================================" -ForegroundColor Green
Write-Host "   🌱 Akshay Krishi Seva Kendra - 1-Click Client Setup Engine     " -ForegroundColor Yellow
Write-Host "   कृषी सेवा केंद्र बिलिंग सॉफ्टवेअर स्वयंचलित सेटअप                 " -ForegroundColor Green
Write-Host "==================================================================" -ForegroundColor Green
Write-Host ""

$targetDir = "$env:USERPROFILE\Desktop\Krishi_Kendra_POS"
if (!(Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
}

$baseUrl = "https://raw.githubusercontent.com/rupam13/krishi-kendra/main"

Write-Host "[1/3] Downloading latest software files from GitHub..." -ForegroundColor Cyan
Invoke-WebRequest -Uri "$baseUrl/Krishi_Kendra_Billing.html" -OutFile "$targetDir\Krishi_Kendra_Billing.html" -UseBasicParsing
Invoke-WebRequest -Uri "$baseUrl/Launch_Krishi_Kendra_Billing.bat" -OutFile "$targetDir\Launch_Krishi_Kendra_Billing.bat" -UseBasicParsing
Invoke-WebRequest -Uri "$baseUrl/Krishi_Kendra_Testing_Version.html" -OutFile "$targetDir\Krishi_Kendra_Testing_Version.html" -UseBasicParsing
Invoke-WebRequest -Uri "$baseUrl/Launch_Local_Testing.bat" -OutFile "$targetDir\Launch_Local_Testing.bat" -UseBasicParsing
Invoke-WebRequest -Uri "$baseUrl/version.json" -OutFile "$targetDir\version.json" -UseBasicParsing
Invoke-WebRequest -Uri "$baseUrl/machines.json" -OutFile "$targetDir\machines.json" -UseBasicParsing

Write-Host "[2/3] Creating Windows Desktop Shortcuts..." -ForegroundColor Cyan
$wshShell = New-Object -ComObject WScript.Shell

# 1. Main Billing POS Shortcut
$shortcut1 = $wshShell.CreateShortcut("$env:USERPROFILE\Desktop\Krishi_Kendra_Billing.lnk")
$shortcut1.TargetPath = "$targetDir\Launch_Krishi_Kendra_Billing.bat"
$shortcut1.WorkingDirectory = $targetDir
$shortcut1.Description = "Krishi Kendra Enterprise Billing POS"
$shortcut1.Save()

# 2. Local Testing Sandbox Shortcut
$shortcut2 = $wshShell.CreateShortcut("$env:USERPROFILE\Desktop\Krishi_Kendra_Testing_Sandbox.lnk")
$shortcut2.TargetPath = "$targetDir\Launch_Local_Testing.bat"
$shortcut2.WorkingDirectory = $targetDir
$shortcut2.Description = "Krishi Kendra Local Testing Sandbox"
$shortcut2.Save()

Write-Host "[3/3] Installation verified successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "==================================================================" -ForegroundColor Green
Write-Host "   🎉 SETUP COMPLETE! Software installed on Desktop!             " -ForegroundColor Yellow
Write-Host "   Folder   : $targetDir" -ForegroundColor White
Write-Host "   Shortcut : Desktop\Krishi_Kendra_Billing.lnk" -ForegroundColor White
Write-Host "   Testing  : Desktop\Krishi_Kendra_Testing_Sandbox.lnk" -ForegroundColor White
Write-Host "==================================================================" -ForegroundColor Green
Write-Host ""
Write-Host "Starting software now..." -ForegroundColor Cyan
Start-Process "$targetDir\Launch_Krishi_Kendra_Billing.bat"
