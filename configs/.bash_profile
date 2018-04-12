echo "Loading ~/.zshprofile"
# ALIASES && PATHS && HELPERS FUNCTIONS
if [ -f ~/.zshprofile ]; then
    . ~/.zshprofile
fi

## AUTOCOMPLETION STUFF ##
# IF BASH change de zsh to bash
# The next line updates PATH for the Google Cloud SDK.
if [ -f ~/.local/google-cloud-sdk/path.bash.inc ]; then
  source ~/.local/google-cloud-sdk/path.bash.inc
fi

# The next line enables shell command completion for gcloud.
if [ -f ~/.local/google-cloud-sdk/completion.bash.inc ]; then
  source ~/.local/google-cloud-sdk/completion.bash.inc
fi
