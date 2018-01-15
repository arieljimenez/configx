# APPS

echo "== DOWNLOADING GOOD SHIT =="
wget -i downloads.txt -P ~/Downloads

# change name of vs code from link whatever to code
mv ~/Downloads/index.html\?LinkID=760868 ~/Downloads/visual_studio_code.amd64.deb

# Apptitude stuff
sudo apt install git \
                 terminator \
                 zsh \
                 pinta \
                 vim \
                 python-pip \
                 apt-transport-https \
                 ca-certificates \
                 ~/Downloads/visual_studio_code.amd64.deb \
                 ~/Downloads/google-chrome-stable_current_amd64.deb \
                 --fix-missing \
                 -y

# Docker CE
. docker.sh # after this, to start using docker, we need to $ reboot

# Spotify
. spotify.sh

# Steam
. steam.sh

# Oh my Zsh + Powerlevel 9000
. terminal-emulators.sh 

# Pluggins for VScode 
. code.sh 

# configs for terminal, vscode and more... 
. configs.sh 
