@echo OFF 



set QQ=%1

if not defined QQ ( pip freeze ) else ( pip freeze | findstr "%1" )