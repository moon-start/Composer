@echo off  &setlocal enabledelayedexpansion

rem 啟用



set  var=Peter
set  var=John !var!

set /a A=55
set  B=QQ
timeout 6

set /a A+=1
set  B=!B!PP

echo.%var%
echo.%A%
echo.%B%
echo.!B!
pause