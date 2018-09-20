@echo off

call:pullFolder "C:\Code"

pause
EXIT /B %ERRORLEVEL%


:pullFolder 
cd %1
for /D %%s in (%1\*) do (
@echo --------- %%s
cd %%s
git pull
)

EXIT /B %ERRORLEVEL%


