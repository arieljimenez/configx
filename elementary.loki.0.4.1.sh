# 09-09-2017
# Download .ssh dir from Gdrive first
# before start, update the system

# TODO: check if ~/.ssh exist to continue else BREAK
sudo apt update && sudo apt upgrade -y && sudo apt auto-remove -y

# Frontal Audio
sudo apt install alsamixer
# alsamixer -> Headphones un mute typing key 'm'
# ESC to close
sudo alsactl store
# to store config # NOT WORKING

# Dirs
mkdir -p ~/Code/js \
         ~/Code/go/src/github.com/frismaury \
         ~/Code/go/bin

# TODO: PATH stuff

# Install aps
. ./apps/apps.
