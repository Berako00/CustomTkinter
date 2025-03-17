@echo off
pip install pyinstaller
set "DESKTOP=%USERPROFILE%\Desktop"
pyinstaller --onefile --windowed --distpath "%DESKTOP%" complex_main.py



