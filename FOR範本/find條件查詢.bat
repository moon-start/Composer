@echo ON

for /f "tokens=2" %i in ('sc query ^| find /i "SERVICE_NAME"') do @echo %i



pause