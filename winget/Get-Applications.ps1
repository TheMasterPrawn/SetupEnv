param (
    [string]$jsonFilePath = "$PSScriptRoot\Applications.json",
    [bool]$openLog = $false
)
$guid = (New-Guid).Guid
$base64 = [system.convert]::ToBase64String(([GUID]$guid).ToByteArray())
$base64


$log = "$($env:TEMP)\Get-Applications-$base64.log"

Start-Transcript $log

# Check if the jsonFilePath is provided
if (-not $jsonFilePath) {
    Write-Host "Please provide the path to the JSON file using the -jsonFilePath parameter."
    exit
}

# Check if the JSON file exists
if (-not (Test-Path $jsonFilePath)) {
    Write-Host "The specified JSON file does not exist: $jsonFilePath"
    exit
}

# Read and parse the JSON file
$jsonContent = Get-Content -Path $jsonFilePath -Raw | ConvertFrom-Json

# Iterate through each application in the JSON
foreach ($app in $jsonContent.applications) {
    $appId = $app.id
    $appName = $app.name

    Write-Host "Installing $appName..." -ForegroundColor DarkCyan

    # Install the application using winget
    winget install --id $appId --silent --accept-source-agreements --accept-package-agreements
    if ($?) {
        Write-Host "$appName installed successfully."
    }
    else {
        Write-Host "Failed to install $appName."
    }
}

Stop-Transcript

If($openLog) { notepad.exe $log }