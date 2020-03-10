@echo OFF


rem  #專案/app/Http/Middleware

php artisan make:middleware $1leware



scp   root@192.168.1.%1:/root/www/laravel/app/Http/Middleware/%2leware.php   C:\Users\moon\Desktop\laravel\app\Http\Middleware\%2leware.php

rem # scp   root@192.168.1.%1:/root/SH/composer-installer.php   C:\Users\moon\Desktop\composer-installer.php