<#
.SYNOPSIS
    Graps apps and tools I commonly use from day to day
.NOTES
    Requires chocolatey
#>
    
function Get-Packages
{ 
    $packages = ("microsoft-windows-terminal", # <-dubious this one, sometimes does not work, cant figure out why 
                "firefox","googlechrome","notepadplusplus",
                "cutepdf", "paint.net", "git","spotify")

    foreach($package in $packages)
    {
        choco install $package -y
    }
}

Get-Packages
choco install sysinternals --params "/InstallDir:C:\tools" --ignore-checksum -y --force

