@echo OFF 

rem 失敗 未完成


set QQ=%1
if not defined QQ ( echo.檔案失敗 沒成功 )  

if defined QQ ( 
rem  mysql -u root -p  ^<   %QQ% 
)


rem mysql -u root -p  <   ./moonADD.sql