@echo ON


set QQ=%1

rem if not defined QQ ( goto _qq )


if not defined QQ (  heroku ps:scale web=1  && %~dpnx0  OK ) else  ( heroku open )



pause