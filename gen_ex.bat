@echo off
pip install pyinstaller
pyinstaller --onefile --windowed complex_main.py

:: Wait for PyInstaller to finish
timeout /t 5 /nobreak >nul

:: Set paths
set "SOURCE=%CD%\dist\complex_main.exe"
set "DESKTOP=%USERPROFILE%\Desktop"
set "SHORTCUT=%DESKTOP%\complex_main.lnk"

:: Create shortcut on the Desktop
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%SHORTCUT%'); $s.TargetPath='%SOURCE%'; $s.Save()"

echo Shortcut created on Desktop!

