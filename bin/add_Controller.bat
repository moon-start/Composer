@echo off

rem 附加產生  model 資料表函數
rem php artisan make:controller ProductionController --resource --model=Product

rem  產生7個函數
rem php artisan make:controller ProductionController --resource


php artisan make:controller %1Controller
rem notepad  app\Http\Controllers\%1Controller.php







rem 如果失敗..先確定安裝  composer install
rem 安裝玩後..用 php artisan 測試 可以跑
