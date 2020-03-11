@echo OFF


rem 2; 當前目錄
set "bd=%cd%"

cd ..
set "bbd=%cd%"
set topB=%1
set top2=%2



rem 回到當前路徑
if defined top2 (cd %2\%topB%)


if defined topB (echo.%topB%) else (call %~pdnx0 %%bd:%bbd%\=%%  %cd%)


