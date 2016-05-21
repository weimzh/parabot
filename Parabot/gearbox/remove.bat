@echo off

rem  This batchfile is ripped of from the HPB remove.bat
rem  Thanks, botman!

echo.
if not exist ..\..\gearbox\nul goto not_installed
if not exist ..\..\gearbox\liblist.gam goto not_installed

if not exist ..\..\gearbox\liblist_pbsave.gam goto no_Parabot

del ..\..\gearbox\liblist.gam

echo Restoring gearbox\liblist.gam...
rename ..\..\gearbox\liblist_pbsave.gam liblist.gam

echo.
echo Parabot for Opposing Force succesfully uninstalled!
goto done

:not_installed
echo Opposing Force is *NOT* installed (or is in an unknown directory)
echo.
echo Uninstallation canceled!
goto done

:no_Parabot
echo Parabot for Opposing Force is *NOT* installed!
goto done

:done
echo.
echo.
pause
