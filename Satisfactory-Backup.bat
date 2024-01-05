echo off

REM Backup save file Location: (Full path inside double quotes, no trailing slash)
set SAVES_LOC="%LocalAppData%\FactoryGame\Saved\SaveGames"

REM Destination for Backup files: (Full path inside double quotes, no trailing slash)
set BACKUP_LOC="F:\Backups\Satisfactory"

REM ---- No Edits Needed Below this Line ----

REM Make a new folder name using date and time.
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

REM New Folder name: YYYY-MM-DD_HHNNSS
set DIR_NAME=%CUR_YYYY%-%CUR_MM%-%CUR_DD%_%CUR_HH%%CUR_NN%%CUR_SS%

REM Copy all the things! _o/
robocopy %SAVES_LOC% %BACKUP_LOC%\%DIR_NAME% /E

echo Done.
REM Wait for user to exit, I hate it when console windows close so fast I don't know what it was.
pause
