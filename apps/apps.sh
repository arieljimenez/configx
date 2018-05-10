# APPS

# Download manually: \
#   docker https://store.docker.com/editions/community/docker-ce-desktop-mac
#   spotify https://download.scdn.co/SpotifyInstaller.zip
#   iterm https://www.iterm2.com
#   spectacle (window manager) https://www.spectacleapp.com/
#   slack
#   etcher (flavors burner) https://etcher.io/
#
# Manually install:
#   fonts
#   iterm-colors
#   terminal profile


# Cheers!🍺
brew install \
    git \
    zsh \
    wget

# Pluggins for VScode
. code.sh

# Oh my Zsh + Powerlevel 9000
. zsh.sh

# Configs
cd ../configs && \
cp -i .gitconfig .bash_profile .zshprofile .zshrc ~
