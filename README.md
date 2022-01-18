# SetupEnv

Sometimes on a clean Machine or Virtual Machine you quickly want to grab common day to day software for installation. 
Setups for different computer and VM environments that I use
Run the scripts in an elevated powershell session.

## Setup

Ensure that you have set the executionpolicy to allow scripts.

```ps1
Set-Executionpolicy unrestricted
```

Unblock the scripts for execution. Run this in the folder with the scripts.

```ps1
Get-ChildItem | Unblock-File
```

## Usage

Edit Get-Software.ps1 to just include the elements you need in setup.

Run the installers from an elevated PowerShell session

```ps1
.\Get-Software.ps1
```
## Updating Software

You can update all the packages using 

```cmd
choco upgrade all -y
```