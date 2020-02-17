@echo OFF


php artisan make:request   %1Request
notepad  app\Http\Requests\%1Request.php