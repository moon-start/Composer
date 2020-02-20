@echo OFF && chcp 65001


rem 2; 當前目錄
set "bd=%cd%"
rem 上一層目錄
cd..
set "bbd=%cd%"


set CDs=%1

if defined CDs (echo.%CDs%) else (echo.不存在)


pause>nul
call %~pdnx0 %%bd:%bbd%\=%%
pause>nul

