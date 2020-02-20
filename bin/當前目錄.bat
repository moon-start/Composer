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

rem 路徑是上一層  參數1是  當前目錄
rem call composer create-project --prefer-dist laravel/laravel %%bd:%bbd%\=%%



exit
composer create-project --prefer-dist laravel/laravel laravel
call echo.%%bd:%bbd%\=%%
call dir
