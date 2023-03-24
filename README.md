![Serious Snutt is Serious](Serious-Snutt.png "BACK UP YOUR SAVE FILES!!!")

# Basic Save Game Batch Script
This is a batch script I use to backup save game files on my PC.

The file checked in is the version I use to backup satisfactory.  Copy and rename as needed.

When executed, the script will create a folder in your BACKUP_LOC named with the format YYYY-MM-DD_HHIISS. (Year-Month-Day_HoursMinutesSeconds)

## How to use
Simply change the SAVES_LOC to where your save game files are located, and the BACKUP_LOC to where you want the files to be copied.

File locations are expected to be a full path inside double quotes with no trailing slash.

### Examples for some game's I've used this for:

**Satisfactory**
```
set SAVES_LOC="%LocalAppData%\FactoryGame\Saved\SaveGames"

set BACKUP_LOC="F:\Backups\Satisfactory"
```

**No Man's Sky**
```
set SAVES_LOC="%APPDATA%\HelloGames\NMS"

set BACKUP_LOC="F:\Backups\NMS"
```

**Cyberpunk 2077**
```
set SAVES_LOC="%USERPROFILE%\Saved Games\CD Projekt Red\Cyberpunk 2077"

set BACKUP_LOC="F:\Backups\Cyberpunk2077"
```