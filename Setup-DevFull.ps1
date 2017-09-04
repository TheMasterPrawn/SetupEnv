Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Install Stuff
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install git.install -y    
choco install visualstudiocode -y 
choco install vscode-powershell - y 
choco install notepadplusplus -y 
choco install fiddler -y 

#These can take a while
choco install visualstudio2017community -y
choco install sql-server-management-studio -y 
