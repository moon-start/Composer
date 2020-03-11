@echo off && chcp 65001





set two=%1



if "%two%"=="" (echo.&echo.[說明] is [指令]+[OK]) else ( rem echo.%1


clonePull2  %1

)
