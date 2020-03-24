@echo OFF 

set QQ=%1


if not defined QQ ( heroku logs ) else ( heroku logs -n %1 )


