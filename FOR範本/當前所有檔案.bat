@echo off
for %%i in (*) do (
    echo %%i
    timeout 1
)
pause


for %%i in (*) DO echo %%i & timeout 1

pause