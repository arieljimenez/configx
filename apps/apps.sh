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

# ZSH
mv ~/.zshrc ~/.zshrc_BAK && \
cp ../configs/.zshrc ~/.zshrc && \
cp ../configs/.zshprofile ~/.zshprofile

# fonts
sudo cp ../configs/Inconsolata\ Bold\ for\ Powerline.ttf /usr/share/fonts/truetype && \
sudo cp ../configs/Inconsolata\ for\ Powerline.otf /usr/share/fonts/type1

sudo fc-cache -vf /usr/share/fonts/type1 && \
sudo fc-cache -vf /usr/share/fonts/truetype

# copy terminator config into terminator dir
cp -f ../configs/config ~/.config/terminator/

# VCode settings
mv ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json_BAK && \
cp ../configs/settings.json ~/.config/Code/User/settings.json

# Git config
cp ../configs/.gitconfig ~/.gitconfig

# VCode plugins:
# vscode-icons
# gitlens
# vscode-docker
# elm
# vscode-html-to-elm
# vscode-elm-jump
# go
# autoprefixer
# language-stylus
# vscode-css-to-stylus
# html-css-class-completion
# sass-indented
# vscode-json
# lamartire.git-indicators
# wakatime

# TODO: Move the comments to a *.md file
# See a valid path for fonts: $ xset q
# and later: $ fc-cache -vf (sudo if the path is forbidden)
# ABOUT FONTS IN ELEMENTARY: They should be placed in the following folders:
# For personal use:
# TTF files in ~/.local/share/fonts/truetype (old way was ~/.fonts/truetype)
# OTF files in ~/.local/share/fonts/type1 (old way was ~/.fonts/type1)
# For system wide use:
# TTF files in /usr/local/share/fonts/truetype
# OTF files in /usr/local/share/fonts/type1
