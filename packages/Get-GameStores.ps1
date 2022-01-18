
$stores = ("steam","origin")

foreach($store in $stores)
{
    choco install $store -y
}