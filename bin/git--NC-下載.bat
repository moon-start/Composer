@echo off && chcp 65001





set two=%1



if "%two%"=="" (echo.&echo.[參數1] is 下載一個子儲存庫) else ( rem echo.%1


TopcloneGit  %1

)
