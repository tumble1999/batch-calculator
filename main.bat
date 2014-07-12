@echo off

:menu
cls
title Calculator
echo.
echo =================================
echo Calculator
echo =================================
echo.
echo 1. Calculator
echo 2. Color
echo 0. Exit
echo.
echo =================================
choice /c 012 /n
if errorlevel 0 goto exit
elseif errorlevel 1 goto calc
elseif errorlevel 2 call color

goto menu

:calc
cls
title Calculator - Functions
echo.
echo =================================
echo Calculator - Functions
echo =================================
echo.
echo 1. Addition
echo 0. Back
echo.
echo =================================
choice /c 01 /n

if errorlevel 0 goto menu

elseif errorlevel 1 set f=add
elseif errorlevel 1 goto alu
goto calc



:alu
cls

if %f%==add set title=Addition


title Calculator - %title%
echo.
echo =================================
echo Calculator - %title%
echo =================================
echo.
echo Input first number...
set /p a=:
echo.
echo Input second number...
set /p b=:
call alu %f% %a% %b%
GOTO ans

:ans
cls
echo.
echo =================================
echo Calculator - %title%
echo =================================
echo Answer is:
echo %c%
echo.
echo.
echo.
pause
GOTO menu




:color
call color

:exit