@echo OFF





rem ## 路徑是 DM
rem ## database\migrations
rem ## 類似   建立資料表的SQL
php artisan make:migration create_%1_table

rem ## 增加了3個表格(額外)
rem # customers[自訂]
rem # failed_jobs
rem # password_resets
rem # users