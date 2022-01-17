Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Install Stuff
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install cpu-z -y 
choco install msiafterburner -y 
choco install openhardwaremonitor -y 
choco install bluescreenview -y 