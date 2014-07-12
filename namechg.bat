@echo off
cd variables

:change
cls
set /p name= What is you name:
echo %name%>name.ini

:start
cls
cd..
call name
cd variables
echo.
echo NAME: %name%
echo.
set /p a= is this your name.(y/n):
if %a%==n goto change
if %a%==N goto change
if %a%==y goto end
if %a%==Y goto end
goto start


:end
