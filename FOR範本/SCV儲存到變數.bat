@echo ON


rem 設定參數檔名與批次檔相同(.csv)
set cfg=%~n0.csv
FOR /F "tokens=1,2,3,4 delims=," %%I IN ('findstr /V [#] %cfg%') DO (
 set remoteDIR=%%I
 set localBackupFolder=%%J
 set RetentionDay=%%K
 set isCallCheckspace=%%L
)


pause