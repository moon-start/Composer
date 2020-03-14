@echo off


rem  啟動一次後.........之後都是另一個結果
IF EXIST %userprofile%\npm.txt (


cd %userprofile%
FOR /F "tokens=1,2 delims==" %%i IN (Path.ini) DO (

set %%i=%%j

echo.%%i  = %%j
if exist %userprofile%\%%i.txt (echo.yes yes..) ELSE (echo.no no..)
) 

