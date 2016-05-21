@echo off

rem  This batchfile is ripped of from the HPB install.bat
rem  Thanks, botman!

echo.
if not exist ..\..\holywars\nul goto not_installed
if not exist ..\..\holywars\liblist.gam goto not_installed

if exist ..\..\holywars\liblist_pbsave.gam goto already_installed

echo Backing up holywars\liblist.gam...
copy ..\..\holywars\liblist.gam ..\..\holywars\liblist_pbsave.gam
echo Updating holywars\liblist.gam...
copy liblist.gam ..\..\holywars\liblist.gam

echo.
echo Parabot for HolyWars succesfully installed!
goto done

:not_installed
echo HolyWars is *NOT* installed (or is in an unknown directory)
echo.
echo Installation canceled!
goto done

:already_installed
echo Parabot for HolyWars is already installed!
echo.
echo (Please run REMOVE then try running INSTALL again)
goto done

:done
echo.
echo.
pause
