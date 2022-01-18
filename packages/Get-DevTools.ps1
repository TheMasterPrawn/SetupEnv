
$packages = ("VirtualBox",
                "Vagrant","vagrant_plugins","packer",
                "vagrant-manager", "git")

foreach($package in $packages)
{
    choco install $package -y
}