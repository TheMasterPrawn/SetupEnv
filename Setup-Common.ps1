Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Install Stuff that is common to computer usage
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install firefox -y 
choco install googlechrome -y 
choco install skype -y 
choco install notepadplusplus -y 
choco install cutepdf -y 
choco install vlc -y #Windows 10 DVD playing is not great
choco install paint.net -y 
choco install cpu-z -y  
choco install teamviewer -y 