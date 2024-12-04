#Installing AD
Set-ExecutionPolicy -Scope CurrentUser Unrestricted
$ExecutionContext.SessionState.LanguageMode = "FullLanguage"
iwr -uri "http://192.168.56.5:8000/ADModule/ADModule-master.zip" -OutFile ADModule-master.zip
Expand-Archive ADModule-master.zip
Move-Item -Path .\ADModule-master -Destination C:\
Remove-Item -Path .\ADModule-master.zip
cd C:\ADModule-master\ADModule-master
Unblock-File C:\ADModule-master\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Unblock-File C:\ADModule-master\ADModule-master\Import-ActiveDirectory.ps1
Import-Module C:\ADModule-master\ADModule-master\Microsoft.ActiveDirectory.Management.dll -verbose
Import-Module C:\ADModule-master\ADModule-master\Import-ActiveDirectory.ps1 -verbose
Get-ADDomain