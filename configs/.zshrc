################### ZSH CONFIGURATIONS ######################
export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time)
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER="^"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

################### GOOD SHIT :ok_hand: ######################

# ALIASES && PATHS && HELPERS FUNCTIONS
if [ -f ~/.zshprofile ]; then
    . ~/.zshprofile
fi

## AUTOCOMPLETION STUFF ##
# IF BASH change de zsh to bash
# The next line updates PATH for the Google Cloud SDK.
if [ -f ~/.local/google-cloud-sdk/path.zsh.inc ]; then
  source ~/.local/google-cloud-sdk/path.zsh.inc
fi

# The next line enables shell command completion for gcloud.
if [ -f ~/.local/google-cloud-sdk/completion.zsh.inc ]; then
  source ~/.local/google-cloud-sdk/completion.zsh.inc
fi
