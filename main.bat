@echo off & color 0A
cls

::print development information
echo Author: jungle
echo Date: 2018-08-13
echo Version: 1.0
echo Description: Get all files in any directory (including files in subdirectories), create directory indexes, and write HTML files for easy searching and browsing.
echo.

::get current dir
set DIR="%~dp0"
echo The current dir：%DIR%
echo.

::create HTML file path
set sev=%~dp0
set file=dir_index.html
set HTML="%sev%%file%"

::write html file
echo [Tips]: When there are too many files in the directory, the time to create the directory index will be longer, please be patient, don't close the program running window! ! !
echo.
echo Creating index

echo ^<html^>>%HTML%
set /a sum=0
for /R %DIR% %%f in (*.*) do (
set /a sum+=1
echo ^<a href=^"%%f^"^>%%f^</a^>^<br^>>>%HTML%
set /p=.<nul
)
echo ^</html^>>>%HTML%
echo.

::print result
echo The index has been created successfully!The total number of files is %sum%!
echo.
echo The index HTML file path is: %HTML%
echo.

pause
