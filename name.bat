@echo off
cd variables
goto start
:null
echo null>name.ini
:start
if NOT EXIST name.ini goto null
set /p name=<name.ini
if [%name%]== [] goto null
cd..