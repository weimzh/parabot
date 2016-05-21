@echo off

rem  This batchfile is ripped of from the HPB install.bat
rem  Thanks, botman!

echo.
if not exist ..\..\valve\nul goto not_installed
if not exist ..\..\valve\liblist.gam goto not_installed

if exist ..\..\valve\liblist_pbsave.gam goto already_installed

echo Backing up valve\liblist.gam...
copy ..\..\valve\liblist.gam ..\..\valve\liblist_pbsave.gam
echo Updating valve\liblist.gam...
copy liblist.gam ..\..\valve\liblist.gam

echo.
echo Parabot for HL-Deathmatch succesfully installed!
goto done

:not_installed
echo HL-Deathmatch is *NOT* installed (or is in an unknown directory)
echo.
echo Installation canceled!
goto done

:already_installed
echo Parabot for HL-Deathmatch is already installed!
echo.
echo (Please run REMOVE then try running INSTALL again)
goto done

:done
echo.
echo.
pause
