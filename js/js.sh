# JS stuff
# - *Nvm: node 6.10.3 LTS / npm*
# - *Webpack 2*
# - *Elm 0.18*
# - *React*

# install latest (at the moment) nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

# to start using nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# install node v6.11.3/npm v3.10.10 (waiting to v8 LTS come out)
nvm install v6.11.3
