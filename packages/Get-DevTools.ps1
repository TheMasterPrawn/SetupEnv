
<#
.SYNOPSIS
    Graps developer tools I use
.NOTES
    Requires chocolatey
#>
$packages = ("git", "github-desktop", "vscode")

foreach($package in $packages)
{
    choco install $package -y
}

choco install 