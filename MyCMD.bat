@echo off
title MyCMD
color 02

set load=
set/a loadnum=0

:loading
set load=%load%//////
cls
echo.
echo loading... please wait..
echo -----------------------------------------
echo %load% 
echo -----------------------------------------
ping localhost-n 1 >nul

set/a loadnum=%loadnum% +1
if %loadnum%==6 goto cmd

goto loading

:cmd
cls
ver
echo Play With your Command Prompt.
echo.
set /p "cmd=%cd%>"
%cmd%
echo.
goto cmd