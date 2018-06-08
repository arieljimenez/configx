# ZSH
if [ -f '~/.zshrc' ] ; then 
    mv ~/.zshrc ~/.zshrc_BAK
fi 

cp ../configs/.zshrc ~/.zshrc && \
cp ../configs/.zshprofile ~/.zshprofile

# fonts
sudo cp ../configs/Inconsolata\ Bold\ for\ Powerline.ttf /usr/share/fonts/truetype && \
sudo cp ../configs/Inconsolata\ for\ Powerline.otf /usr/share/fonts/type1

sudo fc-cache -vf /usr/share/fonts/type1 && \
sudo fc-cache -vf /usr/share/fonts/truetype

# copy terminator config into terminator dir
mkdir -p ~/.config/terminator/ # make sure that exist
cp -f ../configs/config ~/.config/terminator/

# VCode settings
touch ~/.config/Code/User/settings.json && \
mv ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json_BAK && \
cp ../configs/settings.json ~/.config/Code/User/settings.json

# Git config
cp ../configs/.gitconfig ~/.gitconfig

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
