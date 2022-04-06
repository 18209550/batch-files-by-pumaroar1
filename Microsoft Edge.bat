@echo off
echo Welcome to the Edge Uninstaller! Made by pumaroar1.
title Microsoft Edge Uninstaller
pause
cd "C:\Program Files (x86)\Microsoft\Edge\Application\99.0.1150.55\Installer"
setup.exe --uninstall --system-level --verbose-logging --force-uninstall
echo This may NOT work if you don't run as Administrator.
pause