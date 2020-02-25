@echo off 

set A=%1 
cd %cd%


echo.123>a.txt
git add .
git commit -m "%A%"
git push

del a.txt
git add .
git commit -m "%A%"
git push




TopnewGit  %1



cls