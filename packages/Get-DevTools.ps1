
<#
.SYNOPSIS
    Graps developer tools I use
.NOTES
    Requires chocolatey
#>
$packages = ("VirtualBox",
                "Vagrant","vagrant_plugins","packer",
                "vagrant-manager", "git", "github-desktop", "vscode")

foreach($package in $packages)
{
    choco install $package -y
}

choco install 