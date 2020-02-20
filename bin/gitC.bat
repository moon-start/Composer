@echo off 

rem set /p A=[commit] : 
rem cd %~dp0

set A=%2 
cd %1


echo.123>a.txt
git add .
git commit -m "%A%"
git push

del a.txt
git add .
git commit -m "%A%"
git push




rem 使用方式
rem 指令+路徑+訊息
rem gitC %cd%  HHH666
cls

