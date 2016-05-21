@echo off

rem  This batchfile is ripped of from the HPB remove.bat
rem  Thanks, botman!

echo.
if not exist ..\..\valve\nul goto not_installed
if not exist ..\..\valve\liblist.gam goto not_installed

if not exist ..\..\valve\liblist_pbsave.gam goto no_Parabot

del ..\..\valve\liblist.gam

echo Restoring valve\liblist.gam...
rename ..\..\valve\liblist_pbsave.gam liblist.gam

echo.
echo Parabot for HL-Deathmatch succesfully uninstalled!
goto done

:not_installed
echo HL-Deathmatch is *NOT* installed (or is in an unknown directory)
echo.
echo Uninstallation canceled!
goto done

:no_Parabot
echo Parabot for HL-Deathmatch is *NOT* installed!
goto done

:done
echo.
echo.
pause
