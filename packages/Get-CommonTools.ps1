

    
function Get-Packages
{ 
    $packages = ("microsoft-windows-terminal",
                "firefox","googlechrome","notepadplusplus",
                "cutepdf", "paint.net", "git","spotify")

    foreach($package in $packages)
    {
        choco install $package -y
    }

    choco install sysinternals --params "/InstallDir:C:\tools" --ignore-checksum -y --force

}

Get-Packages

