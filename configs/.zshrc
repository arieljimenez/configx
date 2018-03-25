################### ZSH CONFIGURATIONS ######################
export TERM="xterm-256color"
export ZSH=/home/$USER/.oh-my-zsh

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

# ALIASES && HELPERS FUNCTIONS
if [ -f ~/.zshprofile ]; then
    . ~/.zshprofile
fi

# PATH STUFF
export PATH="$PATH:/usr/local/bin:/usr/local/go/bin:/home/$USER/Code/go/bin"
export PATH="/home/$USER/.nvm/versions/node/v6.10.1/bin:$PATH"
export PATH="/usr/local/go/bin/:/home/$USER/Code/go/bin:$PATH"
export PATH="/usr/local/jdk-10/bin:$PATH"
export PATH="$PATH:/opt/firefox"
# export PATH="~/Code/google-cloud-sdk/bin:$PATH"

# SDKs homes
export GOROOT="/usr/local/go"
export GOPATH="$HOME/Code/go"
export JAVA_HOME="/usr/local/jdk-10"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

## AUTOCOMPLETION STUFF ##
# IF BASH change de zsh to bash
# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/google-cloud-sdk/path.zsh.inc ]; then
  source '/usr/local/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/google-cloud-sdk/completion.zsh.inc ]; then
  source '/usr/local/google-cloud-sdk/completion.zsh.inc'
fi
