# JS Dev Env cheat sheet for fedora/nobara linux

## terminal
- copy or generate ssh keys
- make only readable to you the keys `$ chmod 400 ~/.ssh/id_rsa`
- run `$ ssh-add` to register the sshkeys
- install `zsh`
- install oh my zsh `$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
  - move to `~/.oh-my-zsh/custom/plugins` and run/clone:
  - `git clone https://github.com/zsh-users/zsh-autosuggestions.git`
  - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git`
- install Meslo fonts (~/assets/fonts)
- set zsh as default `$ chsh -s $(which zsh)`. (fedora: install the pronted utility, the password will fail so try again)
- copy zshrc and p10k configs to `~`

## JS
- nvm `$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

## Golang
- golang 1.16.15
- air

### Docker
- Docker CE

## Apps

- [] visualStudio Code
- [] brave
- [] terminator
