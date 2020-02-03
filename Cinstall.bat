@echo OFF


rem 2; 當前目錄
set "bd=%cd%"
rem 上一層目錄
cd..
set "bbd=%cd%"

rem 路徑是上一層  參數1是  當前目錄
call composer create-project --prefer-dist laravel/laravel %%bd:%bbd%\=%%



exit
composer create-project --prefer-dist laravel/laravel laravel
call echo.%%bd:%bbd%\=%%
call dir
