<#
.SYNOPSIS
    Sets up software and config on new computer 
.DESCRIPTION

#>

New-Item -Path "c:\" -Name "dev" -ItemType "directory"
New-Item -Path "c:\" -Name "vm" -ItemType "directory"

.\packages\Get-Choco.ps1 # Package manager, must run first
.\packages\Get-CommonTools.ps1
.\packages\Get-DevTools.ps1

# Mod windows
.\config\Remove-Cortana.ps1
.\config\UnpinApps.ps1
