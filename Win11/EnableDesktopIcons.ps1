
# from https://github.com/letsdoautomation/powershell/tree/main/Enable%20This%20PC%2C%20Recycle%20Bin%2C%20User's%20Files%2C%20Control%20Panel%20and%20Network%20Desktop%20Icons
# restart explorer to view

# Icons
$desktop_icons =
[pscustomobject]@{
    Entry = "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
    Description = "This PC"
},
[pscustomobject]@{
    Entry = "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}"
    Description = "Control Panel"
},
[pscustomobject]@{
    Entry = "{59031a47-3f72-44a7-89c5-5595fe6b30ee}"
    Description = "User's Files"
},
[pscustomobject]@{
    Entry = "{645FF040-5081-101B-9F08-00AA002F954E}"
    Description = "Recycle Bin"
},
[pscustomobject]@{
    Entry = "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"
    Description = "Network"
}

# Enable icons for current user
$key_path = "Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$hkcu = [Microsoft.Win32.Registry]::CurrentUser.OpenSubKey($key_path, $true)

$desktop_icons | %{
    "Enabling '$($_.Description)' desktop icon" | Out-Host
    $hkcu.SetValue($_.Entry, 0)
}

$hkcu.Dispose()