@echo on

rem cd %userprofile%


FOR /F "tokens=1,2 delims==" %%i IN (Path.ini) DO set %%i=%%j


pause