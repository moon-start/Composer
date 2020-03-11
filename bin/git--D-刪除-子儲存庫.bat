@echo off && chcp 65001





set two=%1



if "%two%"=="" (echo.&echo.[參數1] is 刪除一個子儲存庫&echo.) else ( rem echo.%1


rem 呼叫做好的BAT檔案
TopdelGit  %1


)






