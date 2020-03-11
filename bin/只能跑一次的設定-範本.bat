@echo off

set QQ=%CD%
echo.%QQ%

cd..
cd..
set QQA=%CD%
echo.%QQA%
echo.%userprofile%
echo.%~nx0



rem  啟動一次後.........之後都是另一個結果
IF EXIST %userprofile%\heroku.txt (echo.bo) ELSE (echo.yes>%userprofile%\heroku.txt)
pause


