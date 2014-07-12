@echo off
cd variables
goto start
:change
cls
echo Welcome to Calculator Version Changer!!!
echo.
echo Current Version: %ver%
echo.
set /p ver= What do you want the version to be:
if NOT EXIST ver.ini goto ende
echo %ver%>ver.ini

:start
cls
title Calculator - Version Changer
if NOT EXIST ver.ini goto Change
cd..
call version
cd variables
echo Welcome to Calculator Version Changer!!!
echo.
echo Current Version: %ver%
echo.
set /p a= Do you want to change the version(y/n):
if %a%==y goto change
if %a%==Y goto change
if %a%==n goto end
if %a%==N goto end
goto start

:ende
echo %ver%>ver.ini
goto end

:end
cls
echo Welcome to Calculator Version Changer!!!
echo.
echo Current Version: %ver%
echo.
pause