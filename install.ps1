# Aqilan Tools - one-line installer
# Run it like WinUtil:  irm <RAW-URL-of-this-file> | iex

$ErrorActionPreference = 'Stop'

# ---- PASTE YOUR EXE DOWNLOAD LINK HERE (after step 2) ----
$exeUrl = 'https://github.com/YOUR-NAME/AqilanTools/releases/latest/download/AqilanTools.exe'
# ----------------------------------------------------------

$exePath = Join-Path $env:TEMP 'AqilanTools.exe'

Write-Host 'Downloading Aqilan Tools...' -ForegroundColor Cyan
Invoke-WebRequest -Uri $exeUrl -OutFile $exePath

Write-Host 'Starting Aqilan Tools...' -ForegroundColor Green
Start-Process -FilePath $exePath

Write-Host 'Done! (Run this command anytime to launch Aqilan Tools again)' -ForegroundColor DarkGray
