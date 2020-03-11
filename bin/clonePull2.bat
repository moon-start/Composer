@echo off && chcp 65001

echo.
rem #############################################  set /p A="輸入專案 : "
if not  defined top (call top)
echo.
set    A=%top%


rem set /p B="分支 : "

cd ..
if not  defined topB (call topB)
set B=%topB%
set BB=%B:~4%
cd %A%


echo.


cd %userprofile%\Desktop\
cd %B%
cd %A%


rem 加快
git config --global https.proxy 'socks5://127.0.0.1:1080' 
git config --global http.proxy  'socks5://127.0.0.1:1080'






git add .
git commit -m  "更新Pull"


rem clone下來專案...本端節點..本身就是中文的自己
rem git checkout master


rem git push %A% %B%:%B%
git push origin  %BB%:%BB%



rem .............................: IP115<E7><9A><84><E5><B0><88><E6><A1><88> 中文表示
rem .................遠端分支名稱:本端節點名稱
rem git push origin  IP115的專案:IP115的專案




rem 停止
git config --global --unset https.proxy
git config --global --unset http.proxy