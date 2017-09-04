Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Install Stuff
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install git.install -y    
choco install visualstudiocode -y 
choco install vscode-powershell - y 
choco install notepadplusplus -y 
choco install fiddler -y 

#Install Virtualbox and Vagrant, all defaults. 
choco install VirtualBox -y
choco install Vagrant -y
choco install vagrant_plugins -y
choco install packer -y
choco install vagrant-manager -y