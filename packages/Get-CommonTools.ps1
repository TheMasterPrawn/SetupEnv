<#
.SYNOPSIS
    Graps apps and tools I commonly use from day to day
.NOTES
    Requires chocolatey
#>
    
function Get-Packages
{ 
    $packages = ("firefox","googlechrome","notepadplusplus",
                "cutepdf", "paint.net", "git","spotify","winaero-tweaker")

    foreach($package in $packages)
    {
        choco install $package -y
    }
}

Get-Packages


