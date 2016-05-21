@echo off

rem  This batchfile is ripped of from the HPB remove.bat
rem  Thanks, botman!

echo.
if not exist ..\..\holywars\nul goto not_installed
if not exist ..\..\holywars\liblist.gam goto not_installed

if not exist ..\..\holywars\liblist_pbsave.gam goto no_Parabot

del ..\..\holywars\liblist.gam

echo Restoring holywars\liblist.gam...
rename ..\..\holywars\liblist_pbsave.gam liblist.gam

echo.
echo Parabot for HolyWars succesfully uninstalled!
goto done

:not_installed
echo HolyWars is *NOT* installed (or is in an unknown directory)
echo.
echo Uninstallation canceled!
goto done

:no_Parabot
echo Parabot for HolyWars is *NOT* installed!
goto done

:done
echo.
echo.
pause
