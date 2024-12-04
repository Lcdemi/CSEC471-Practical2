#CSEC 471 Practical 2 Script
Write-Output "ADmodule Default Domain Password Policy (robb.stark)" #Question 1c
Get-ADDefaultDomainPasswordPolicy -Credential (Get-Credential -UserName robb.stark -Message "Enter the password for robb.stark") #password: sexywolfy
Write-Output "Powerview Domain Policy (robb.stark)"
(Get-DomainPolicy).systemaccess

Write-Output "ADmodule Default Domain Password Policy (robert.baratheon)" #Question 1d
Get-ADDefaultDomainPasswordPolicy -Credential (Get-Credential -UserName robert.baratheon -Message "Enter the password for robert.baratheon") #password: iamthekingoftheworld
Write-Output "Powerview Domain Policy (robert.baratheon)"
(Get-DomainPolicy -Credential (Get-Credential -Username SEVENKINGDOMS\robert.baratheon -Message "Enter the password for robert.baratheon again")).systemaccess

