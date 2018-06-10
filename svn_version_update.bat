@echo off
setlocal
:REM This script modify token $$Revision $$ in TARGET_FILE_NAME
set TARGET_PATH_FILE_NAME=index.html
set FULL_PATH=%cd%\%TARGET_PATH_FILE_NAME%

for /f "delims=" %%a in ('svn info ^| findstr /R /C:"Revision[:][ ][0-9]*"') do (
	echo "Updating revision to -> %%a"
	powershell -Command "(gc '%FULL_PATH%') -replace '\$\$SVN_Revision:[ ]*[0-9]*\$\$', '$$$SVN_%%a$$$' | sc '%FULL_PATH%'"
)
