@echo OFF


dir /b  %~dp0  > %~dp0\list.txt

echo.
findstr /n  "." %~dp0\list.txt

echo.
echo.
set /p A=in sum?: 
set start=%A%
echo.
set /p B=in %A% + argv?: 


set "lines=1"
set/a i=-1,start-=1
set "ok=" 
for /f "delims=" %%a in ('more/e +%start% ^< %~dp0\list.txt') do (
set/a i+=1 & for /f %%z in ('echo/%%i%%') do (
if "%%z"=="%lines%" set ok=1
)
if not defined ok call %~dp0\%%a %B%
)




