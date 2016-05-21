@echo off

rem  This batchfile is ripped of from the HPB remove.bat
rem  Thanks, botman!

echo.
if not exist ..\..\dmc\nul goto not_installed
if not exist ..\..\dmc\liblist.gam goto not_installed

if not exist ..\..\dmc\liblist_pbsave.gam goto no_Parabot

del ..\..\dmc\liblist.gam

echo Restoring dmc\liblist.gam...
rename ..\..\dmc\liblist_pbsave.gam liblist.gam

echo.
echo Parabot for DMC succesfully uninstalled!
goto done

:not_installed
echo DMC is *NOT* installed (or is in an unknown directory)
echo.
echo Uninstallation canceled!
goto done

:no_Parabot
echo Parabot for DMC is *NOT* installed!
goto done

:done
echo.
echo.
pause
