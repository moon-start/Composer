@echo OFF 



set QQ=%1

if not defined QQ ( echo.000 ) else ( pip install %1 )