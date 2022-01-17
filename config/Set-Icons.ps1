
New-Item -Path "c:\dev" -Name "ico" -ItemType "directory" -ErrorAction SilentlyContinue

$d = "https://raw.githubusercontent.com/Kreloc/PowerShell/master/Set-FolderIcon.ps1"
$v = "C:\dev\ico\Set-FolderIcon.ps1"
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($d,$v)

$d = "https://icon-icons.com/downloadimage.php?id=99339&root=1451/ICO/512/&file=smilefolder_99339.ico"
$v = "C:\dev\ico\smilefolder.ico"
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($d,$v)

$d = "https://icon-icons.com/downloadimage.php?id=26866&root=246/ICO/512/&file=developer_26866.ico"
$v = "C:\dev\ico\developer.ico"
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($d,$v)

C:\dev\ico\Set-FolderIcon.ps1 -Icon "C:\dev\ico\smilefolder.ico" -Path "C:\dev"
C:\dev\ico\Set-FolderIcon.ps1 -Icon "C:\dev\ico\developer.ico" -Path "C:\vm"
