@echo off
rem https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/388988/

if %cd%==%cd:~,3% echo.CCCCC%cd:~,1%盤的根目錄！&goto end
cd..
set "bd=%cd%"
cd..

set "bbd=%cd%"
if "%bbd%"=="%bd%" (

echo.AAAA %cd:~,1%盤的根目錄！

) else call echo.BBBB "%%bd:%bbd%\=%%"
:end
pause