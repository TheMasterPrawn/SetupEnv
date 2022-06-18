
<#
.SYNOPSIS
    Graps games marketplaces :(
.NOTES
    Requires chocolatey
#>
$stores = ("steam","origin")

foreach($store in $stores)
{
    choco install $store -y
}