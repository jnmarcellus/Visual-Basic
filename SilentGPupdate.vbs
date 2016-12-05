'_____________________________________________________
'VB Script for Refreshing GroupPolicy Settings silently with error handling
'Created By: jmarcellus.com
'_____________________________________________________

On Error Resume Next

'Define Variables and Objects.
Set WshShell = CreateObject("Wscript.Shell")

'Note: Gpupdate command has to be run twice as the ECHO command can't answer more than one question.

'Refresh the USER policies and also answer no to logoff if asked.
If Result = WshShell.Run("cmd /c echo n | gpupdate /target:user /force",0,true) Then
    'Wscript.Quit(Result)
    WScript.Echo "Group Policy -USER- updated"
Else 
    WScript.Echo "Script Check -USER- Failed"
    Wscript.Quit 1001
End If

'Refresh the Computer policies and answer no to reboot.
If Result = WshShell.Run("cmd /c echo n | gpupdate /target:computer /force",0,true) Then
    'Wscript.Quit(Result)
    WScript.Echo "Group Policy -USER- updated"
Else 
    WScript.Echo "Script Check -USER- Failed"
    Wscript.Quit 1001
End If

'Hand back the errorlevel
If err.number<>0 then
        WScript.Echo "Script Check Failed"
        Wscript.Quit 1001
Else 
        WScript.Echo "Script Check Passed"
        Wscript.Quit 0
End If  
