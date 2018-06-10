@echo off
setlocal
:REM This script modify token $$Revision $$ in TARGET_FILE_NAME
set TARGET_FILE_NAME=index.html
set TARGET_FILE_PATH=%cd%\%TARGET_FILE_NAME%

for /f "delims=" %%a in ('svn info ^| findstr /C:"Revision"') do (
	echo "Updating revision to -> %%a"
	powershell -Command "(gc %TARGET_FILE_PATH%) -replace '\$\$SVN_Revision: [0-9]*\$\$', '$$$SVN_%%a$$$' | sc %TARGET_FILE_PATH%"
)
