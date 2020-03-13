@echo off   &setlocal enabledelayedexpansion


set name=composer.txt


rem  啟動一次...
IF EXIST %userprofile%\!name! (




rem 讀取
cd %userprofile%
FOR /F "tokens=1,2 delims==" %%i IN (Path.ini) DO (
set %%i=%%j
rem echo.%%i  = %%j


if exist %userprofile%\%%i.txt (
rem 儲存 Path 總共變數
if not defined AQQ (set  AQQ=%%j) else (set AQQ=!AQQ!%%j)
) 


) 


) ELSE (

rem 表次已經設定過..直接讀取..Path.ini就好
echo.yes>%userprofile%\!name!
echo.yes>%userprofile%\composer2.txt
echo.yes>%userprofile%\composer3.txt
echo.yes>%userprofile%\composer4.txt
echo.yes>%userprofile%\composer5.txt

rem 把目前軟體位置..紀錄在 Path.ini..
echo.composer=%~dp0;>>%userprofile%\Path.ini
echo.composer2=%~dp0php-7.2;>>%userprofile%\Path.ini
echo.composer3=%~dp0bin;>>%userprofile%\Path.ini
echo.composer4=C:\Users\%username%\Desktop\PythonAPI;>>%userprofile%\Path.ini
echo.composer5=C:\Users\%username%\Desktop\PythonAPI\Scripts;>>%userprofile%\Path.ini

call %~dpnx0
exit
)


setx Path "!AQQ!"
