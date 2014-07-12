@echo off
goto ta

:ls
echo 0 = Black	8 = Gray
echo 1 = Blue	9 = Light Blue
echo 2 = Green	A = Light Green
echo 3 = Aqua	B = Light Aqua
echo 4 = Red	C = Light Red
echo 5 = Purple	D = Light Purple
echo 6 = Yellow	E = Light Yellow
echo 7 = White	F = Bright White
If %z%==1 goto tb
if %z%==2 goto bb

:ta
cls
set z=1
title Calculator - Colour
echo.
echo =================================
echo Calculator - Colour
echo =================================
echo Please choose a colour for the Background?
goto ls

:tb
choice /c 0123456789abcdef /n
if errorlevel 1 set t=0
if errorlevel 2 set t=1
if errorlevel 3 set t=2
if errorlevel 4 set t=3
if errorlevel 5 set t=4
if errorlevel 6 set t=5
if errorlevel 7 set t=6
if errorlevel 8 set t=7
if errorlevel 9 set t=8
if errorlevel 10 set t=9
if errorlevel 11 set t=a
if errorlevel 12 set t=b
if errorlevel 13 set t=c
if errorlevel 14 set t=d
if errorlevel 15 set t=e
if errorlevel 16 set t=f

:ba
cls
set z=2
echo.
echo =================================
echo Calculator - Colour
echo =================================
echo Please choose a colour for the Text?
goto ls

:bb
choice /c 0123456789abcdef /n
if errorlevel 1 set b=0
if errorlevel 2 set b=1
if errorlevel 3 set b=2
if errorlevel 4 set b=3
if errorlevel 5 set b=4
if errorlevel 6 set b=5
if errorlevel 7 set b=6
if errorlevel 8 set b=7
if errorlevel 9 set b=8
if errorlevel 10 set b=9
if errorlevel 11 set b=a
if errorlevel 12 set b=b
if errorlevel 13 set b=c
if errorlevel 14 set b=d
if errorlevel 15 set b=e
if errorlevel 16 set b=f

color %t%%b%

:end
cls