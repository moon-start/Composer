@echo OFF 

set QQ=git--Heroku--
if not defined QQ ( goto _qq )




rem  dir  |  clip
rem  clip   <  XXX.txt


echo.
echo. [cd] is [D?] :
dir /AD /b  %cd%\*  > %~dp0\list-CD-D.txt
echo.
findstr /n  "." %~dp0\list-CD-D.txt

echo.
echo.
set /p A= [D?] :  

set start=%A%
echo.
rem ##########set /p B=in (第一個參數) ?:  
rem cls
set "lines=1"
set/a i=-1,start-=1
set "ok=" 
for /f "delims=" %%a in ('more/e +%start% ^< %~dp0\list-CD-D.txt') do (
set/a i+=1 & for /f %%z in ('echo/%%i%%') do (
if "%%z"=="%lines%" set ok=1
)
if not defined ok cd %%a
rem if not defined ok echo.%%a | clip

rem  選擇的指令..重新值行
rem if not defined ok call  XXX
)





