# 12/9/2017

export TERM="xterm-256color"
export ZSH=/home/$USER/.oh-my-zsh
export PATH=/opt/firefox:$PATH

# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='poweline-simbols'
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time)
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER="^"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

if [ -f ~/.zshprofile ]; then
    . ~/.zshprofile
    echo "sourcing zshprofile"
fi
