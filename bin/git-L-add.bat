@echo off  && chcp 65001



echo.
rem #############################################  set /p A="輸入專案 : "
if not  defined top (call top)
echo.
set    A=%top%

rem set /p B="分支 : "
set B=%1

echo.
rem #############################################


git add .

git commit -m %B%


cls
rem 注意 %A% 如果有$...會失敗
rem 本端分支:遠端分支
git push %A% master:master




