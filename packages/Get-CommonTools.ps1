

function Set-LocaleGB
{
    Write-host "Set-LocaleGB"
    # Adapted from https://www.lewisroberts.com/2017/03/01/set-language-culture-timezone-using-powershell/
    # Set Locale, language etc. 
    $xml = '"
    <gs:GlobalizationServices xmlns:gs="urn:longhornGlobalizationUnattend"> 
    <!--User List-->
    <gs:UserList>
        <gs:User UserID="Current" CopySettingsToDefaultUserAcct="true" CopySettingsToSystemAcct="true"/> 
    </gs:UserList>
    <!-- user locale -->
    <gs:UserLocale> 
        <gs:Locale Name="en-GB" SetAsCurrent="true"/> 
    </gs:UserLocale>
    <!-- system locale -->
    <gs:SystemLocale Name="en-GB"/>
    <!-- GeoID -->
    <gs:LocationPreferences> 
        <gs:GeoID Value="242"/> 
    </gs:LocationPreferences>
    <gs:MUILanguagePreferences>
        <gs:MUILanguage Value="en-GB"/>
        <gs:MUIFallback Value="en-US"/>
    </gs:MUILanguagePreferences>
    <!-- input preferences -->
    <gs:InputPreferences>
        <!--en-GB-->
        <gs:InputLanguageID Action="add" ID="0809:00000809" Default="true"/> 
    </gs:InputPreferences>
    </gs:GlobalizationServices>"'

    $xml | Out-File -FilePath UKRegion.xml
    
    & $env:SystemRoot\System32\control.exe "intl.cpl,,/f:`"UKRegion.xml`""
     # Set Timezone
    & tzutil /s "GMT Standard Time"
    
    # Set languages/culture
    Set-Culture en-GB # This one works!
    Set-WinUserLanguageList en-GB -force # for locale bug with keyboard setting  
}
    
function Get-Packages
{ 
    choco install microsoft-windows-terminal -y
    choco install firefox -y
    choco install sysinternals --params "/InstallDir:C:\tools" --ignore-checksum -y --force
    choco install googlechrome -y 
    choco install notepadplusplus -y 
    choco install cutepdf -y 
    choco install paint.net -y 
    choco install git -y
}

Set-LocaleGB
Get-Packages

