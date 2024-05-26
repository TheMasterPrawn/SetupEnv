# https://www.meziantou.net/keeping-your-software-up-to-date-using-winget-and-powershell.htm

$log = "$($env:TEMP)\Wingetpdate$((New-Guid).Guid).log"

Start-Transcript $log

Write-Host "$log"

try {
    $packages = Get-WinGetPackage | Where-Object { $_.IsUpdateAvailable }

    $packages | Update-WinGetPackage -ErrorAction Stop -Verbose
}
catch {
    Write-Host "Error occured at $(Get-Date)"
    $_
}
finally {
    Stop-Transcript
}


 