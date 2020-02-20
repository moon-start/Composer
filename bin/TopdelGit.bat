@echo off && chcp 65001

echo.
rem #############################################  set /p A="輸入專案 : "
if not  defined top (call top)
echo.
set    A=%top%
rem set /p B="分支 : "
set B=%1
echo.


cd %userprofile%\Desktop\

cd %A%


git checkout master
rem  git branch -D %B%
git push    %A%  :%B%


echo.
echo.完成!!
rem pause>nul