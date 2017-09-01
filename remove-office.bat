REM #+------------------------------------------------------------+
REM # | Module Name:        Client Cleanup                         |
REM # | Module Purpose:     Remove old versions of Office Products |
REM # | Module Modifier:    John Marcellus                         |
REM # | Module Date:        8/31/2017                              |
REM # +------------------------------------------------------------

REM --------------------- COPY THIS LINE TO THE BOTTOM LINE and Open a Text File and PASTE This in and save as a BAT File
REM For Office XP:
REM ----------------------------------------------------------------------------------------------------
@ECHO OFF
cls
TITLE Uninstalling Office. . .

wmic product where "name like 'Microsoft Office XP Professional'" call uninstall /nointeractive
wmic product where "name like 'Microsoft Office Professional Hybrid 2007'" call uninstall /nointeractive
goto END

:END
pause
exit

REM For Office 2003:
REM ----------------------------------------------------------------------------------------------------
@ECHO OFF
cls
TITLE Uninstalling Office. . .

wmic product where "name like 'Microsoft Office 2003 Professional'" call uninstall /nointeractive
wmic product where "name like 'Microsoft Office 2003'" call uninstall /nointeractive

goto END

:END
pause
exit

REM For Office 2007:
REM ----------------------------------------------------------------------------------------------------
@ECHO OFF
cls
TITLE Uninstalling Office. . .

wmic product where "name like 'Microsoft Office 2007'" call uninstall /nointeractive
wmic product where "name like 'Microsoft Office Professional Hybrid 2007'" call uninstall /nointeractive
goto END

:END
pause
exit

REM Office 2010:
REM ----------------------------------------------------------------------------------------------------
@ECHO OFF
cls
TITLE Uninstalling Office. . .

wmic product where "name like 'Microsoft Office 2010 Professional'" call uninstall /nointeractive
wmic product where "name like 'Microsoft Office Standard 2010'" call uninstall /nointeractive
wmic product where "name like 'Microsoft Office 2010 Professional Plus 2010'" call uninstall /nointeractive
wmic product where "name like 'Microsoft Single Image 2010'" call uninstall /nointeractive
wmic product where "name like 'Microsoft Office 2010'" call uninstall /nointeractive
goto END

:END
pause
exit

REM Office 2013:
REM ----------------------------------------------------------------------------------------------------
@ECHO OFF
cls
TITLE Uninstalling Office. . .

wmic product where "name like 'Microsoft Office Professional Plus 2013'" call uninstall /nointeractive
goto END

:END
pause
exit

REM --------------------- COPY THIS LINE TO THE TOP LINE and Open a Text File and PASTE This in and save as a BAT File
