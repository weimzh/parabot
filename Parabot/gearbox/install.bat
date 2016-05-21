@echo off

rem  This batchfile is ripped of from the HPB install.bat
rem  Thanks, botman!

echo.
if not exist ..\..\gearbox\nul goto not_installed
if not exist ..\..\gearbox\liblist.gam goto not_installed

if exist ..\..\gearbox\liblist_pbsave.gam goto already_installed

echo Backing up gearbox\liblist.gam...
copy ..\..\gearbox\liblist.gam ..\..\gearbox\liblist_pbsave.gam
echo Updating gearbox\liblist.gam...
copy liblist.gam ..\..\gearbox\liblist.gam

echo.
echo Parabot for Opposing Force succesfully installed!
goto done

:not_installed
echo Opposing Force is *NOT* installed (or is in an unknown directory)
echo.
echo Installation canceled!
goto done

:already_installed
echo Parabot for Opposing Force is already installed!
echo.
echo (Please run REMOVE then try running INSTALL again)
goto done

:done
echo.
echo.
pause
