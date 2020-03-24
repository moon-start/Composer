@echo OFF

set A=%2


rem if defined A (echo.Y|del  /F %2) else (echo. rm -rf  ?)



if defined A (rmdir /S /Q %2) else (echo. rm -rf  ?)
  