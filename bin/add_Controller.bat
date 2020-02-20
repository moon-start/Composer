@echo OFF

rem 附加產生  model 資料表函數
rem php artisan make:controller ProductionController --resource --model=Product

rem  產生7個函數
rem php artisan make:controller ProductionController --resource


php artisan make:controller %1Controller
rem notepad  app\Http\Controllers\%1Controller.php
