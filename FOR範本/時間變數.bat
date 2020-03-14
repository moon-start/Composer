@echo ON

For /f "tokens=1-3 delims=/ " %%a in ("%date%") do set mydate=%%a/%%b/%%c



pause