param (
    [string]$jsonFilePath = "$PSScriptRoot\Applications.json"
)

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
    winget install --id $appId --silent

    if ($?) {
        Write-Host "$appName installed successfully."
    }
    else {
        Write-Host "Failed to install $appName."
    }
}
