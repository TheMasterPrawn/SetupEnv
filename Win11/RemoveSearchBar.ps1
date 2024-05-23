
# from https://github.com/letsdoautomation/powershell/tree/main/Windows%2011%20remove%20search%20bar

$settings = [PSCustomObject]@{
    Path  = "Software\Microsoft\Windows\CurrentVersion\Search"
    Value = 0
    Name  = "SearchboxTaskbarMode"
} | Group-Object Path

foreach ($setting in $settings) {
    $registry = [Microsoft.Win32.Registry]::CurrentUser.OpenSubKey($setting.Name, $true)
    if ($null -eq $registry) {
        $registry = [Microsoft.Win32.Registry]::CurrentUser.CreateSubKey($setting.Name, $true)
    }
    $setting.Group | ForEach-Object {
        if (!$_.Type) {
            $registry.SetValue($_.name, $_.value)
        }
        else {
            $registry.SetValue($_.name, $_.value, $_.type)
        }
    }
    $registry.Dispose()
}