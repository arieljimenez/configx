export TERM="xterm-256color"
export ZSH=/home/$USER/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time)

if [ -f ~/.zshprofile ]; then
    . ~/.zshprofile
    echo "sourcing zshprofile"
fi
