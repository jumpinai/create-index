@echo off & color 0A
cls

::print development information
echo Author: jungle
echo Date: 2018-08-13
echo Version: 1.0
echo Description: All files in any directory (including files in subdirectories) can be written to the html file to generate a directory index, which is convenient for finding and browsing files.
echo.

::get current dir
set DIR="%~dp0"
echo The current dir：%DIR%
echo.

::create HTML file path
set sev=%~dp0
set file=Dir_index.html
set HTML="%sev%%file%"

::write html file
echo [Tips]: When there are too many files in the directory, the time to generate the directory index will be longer, please be patient, don't close the program running window! ! !
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
echo The index has been created successfully！The total number of files is %sum%!
echo.
echo The index HTML file path is: %HTML%
echo.

pause
