echo off

REM Backup save file Location: (Full path inside double quotes, no trailing slash)
set SAVES_LOC="%LocalAppData%\FactoryGame\Saved\SaveGames"

REM Destination for Backup files: (Full path inside double quotes, no trailing slash)
set BACKUP_LOC="F:\Backups\Satisfactory"

REM ---- No Edits Needed Below this Line ----

REM Get Date-Time in a Locale friendly way.
for /F "skip=1 delims=" %%I in ('
	wmic PATH Win32_LocalTime GET Day^,Hour^,Minute^,Month^,Second^,Year /FORMAT:TABLE
') do (
	for /F "tokens=1-6" %%J in ("%%I") do (
		set CUR_DD=0%%J
		set CUR_HH=%%K
		set CUR_NN=%%L
		set CUR_MM=0%%M
		set CUR_SS=%%N
		set CUR_YYYY=%%O
	)
)
set CUR_DD=%CUR_DD:~-2%
set CUR_MM=%CUR_MM:~-2%

REM New Folder name: YYYY-MM-DD_HHNNSS
set DIR_NAME=%CUR_YYYY%-%CUR_MM%-%CUR_DD%_%CUR_HH%%CUR_NN%%CUR_SS%

REM Copy all the things! _o/
robocopy %SAVES_LOC% %BACKUP_LOC%\%DIR_NAME% /E

echo Done.
REM Wait for user to exit, I hate it when console windows close so fast I don't know what it was.
pause
