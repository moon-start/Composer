@echo OFF
set Path=%Path%;%~dp0\php-7.2
:: in case DelayedExpansion is on and a path contains ! 
setlocal DISABLEDELAYEDEXPANSION
php "%~dp0composer.phar" %*
