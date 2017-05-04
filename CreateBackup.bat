REM Copyright (c) 2016 Howard Roberson
@echo off

set isFolder=false

FOR %%i IN (%1) DO IF EXIST %%~si\NUL set %isFolder%=true
if exist "%~1\" set isFolder=true

for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a

set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set Min=%dt:~10,2%
set Sec=%dt:~12,2%
set stamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%

if %isFolder%==true xcopy /ei "%~1"  "%~1_%stamp%" /EXCLUDE:C:\Utilities\masterHman\scripts\xcopy_ignore.txt
if %isFolder%==false copy "%~1" "%~n1_%stamp%%~x1"
