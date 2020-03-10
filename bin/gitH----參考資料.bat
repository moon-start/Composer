@echo OFF && chcp 65001
cls
set QQ=git
if not defined QQ ( goto _qq )

if "%1"=="xxx" ( goto _end )






dir /b  %~dp0\%QQ%*  > %~dp0\list.txt
echo.
findstr /n  "." %~dp0\list.txt

echo.
echo.
set /p A= in (編號) ?:  

set start=%A%
echo.
rem ##########set /p B=in (第一個參數) ?:  
cls
set "lines=1"
set/a i=-1,start-=1
set "ok=" 
for /f "delims=" %%a in ('more/e +%start% ^< %~dp0\list.txt') do (
set/a i+=1 & for /f %%z in ('echo/%%i%%') do (
if "%%z"=="%lines%" set ok=1
)


rem  選擇的指令..重新值行   call XXX
if not defined ok %~dpnx0 xxx %%a 
)





rem ############## 第二次執行 #################################
:_end
echo.
echo.############################
echo.############################
echo.
echo.^[bin^]# %2  ^<參數^>
echo.