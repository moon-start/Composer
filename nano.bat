@echo OFF

set A=%1


rem if defined A (echo.Y|del  /F %2) else (echo. rm -rf  ?)



if defined A (start notepad  %1) else (echo. nano add-file)
  