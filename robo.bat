@echo off
cls
REM ---------------------------------------------------
REM | Script Name:  ROBOCOPYSOP.BAT                   |
REM | DATE UPDATED: 7/29/2016                         |
REM | VERSION:      0.1                               |
REM | PURPOSE:      Completely Copy                   |
REM |                                                 |
REM |                                                 |
REM | NOTES:                                          |
REM | /MIR is an option to ROBOCOPY where you mirror a| 
REM | directory tree with all the subfolders including|
REM | the empty directories and you purge files and   |
REM | folders on the destination server that no longer|
REM | exists in source.                               |
REM |                                                 |
REM | /Z ensures Robocopy can resume the transfer of  |
REM |  a large file in mid-file instead of restarting.|
REM |                                                 |
REM | /W:5 reduces the wait time between failures to  |
REM |  5 seconds instead of the 30 second default.    |
REM ---------------------------------------------------
REM
REM ---------------------------------------------------
REM | Variables                                       |
REM |                                                 |
REM | target      - Backup Destination                |
REM | source      - Backup Source Location            |
REM ---------------------------------------------------

REM ---------------------------------------------------
REM | 2nd PDF Variables                               |  
REM |                                                 |
REM | target      - Backup Destination                |
REM | source      - Backup Source Location            |
REM ---------------------------------------------------

set Today=%DATE:~0,3%
Echo  The day of the week is %Today%

If exist C:\%Today% rd C:\%Today% /s /q
md C:\%Today%

set target="C:\%Today%"
set source="C:\Scripts"

echo  The Destination Location is %bckdest%
echo  The Source Location is %bcksrc%

Set Logname="C:\%Today%\FolderALog.txt"
echo Source is %source%
echo Target is %target%
echo logfile named %Logname%

Pause
Robocopy %source% %target% /fft /xo /W:4 /MIR /Z  ^
REM /LOG:%Logname%
Pause

cd\%Today%
notepad %Logname%

@echo on
