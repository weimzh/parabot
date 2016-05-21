@echo off

rem  This batchfile is ripped of from the HPB install.bat
rem  Thanks, botman!

echo.
if not exist ..\..\dmc\nul goto not_installed
if not exist ..\..\dmc\liblist.gam goto not_installed

if exist ..\..\dmc\liblist_pbsave.gam goto already_installed

echo Backing up dmc\liblist.gam...
copy ..\..\dmc\liblist.gam ..\..\dmc\liblist_pbsave.gam
echo Updating dmc\liblist.gam...
copy liblist.gam ..\..\dmc\liblist.gam

echo.
echo Parabot for DMC succesfully installed!
goto done

:not_installed
echo DMC is *NOT* installed (or is in an unknown directory)
echo.
echo Installation canceled!
goto done

:already_installed
echo Parabot for DMC is already installed!
echo.
echo (Please run REMOVE then try running INSTALL again)
goto done

:done
echo.
echo.
pause
