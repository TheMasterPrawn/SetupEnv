
Set-ExecutionPolicy Bypass -Scope Process -Force
# Inshtall Shtuff
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
