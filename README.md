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
- download the p10k theme: `$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
  - exit the config: we will copy the existing p10k config.
- copy zshrc and p10k configs to `~`
- install Meslo fonts (~/assets/fonts)
- set zsh as default `$ chsh -s $(which zsh)`. (fedora: install the pronted utility, the password will fail so try again)

## JS
- nvm `$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

## Golang
- golang 1.16.15
- air

### Docker CE && Docker Compose
- Remove these dependencies

```
$ sudo dnf remove docker \
  docker-client docker-client-latest \
  docker-common \
  docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-selinux \
  docker-engine-selinux \
  docker-engine
```
- Now run:
  - `$ sudo dnf -y install dnf-plugins-core`
  - `$ sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo`
- install docker
  - `$ sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin`
- start docker
  - `$ sudo systemctl start docker`
- add current user to docker group to run it without sudo
  - `$ sudo usermod -aG docker $USER`
  - run this to apply user group changes without log out-in: `$ newgrp docker`
- run docker on boot
  - `$ sudo systemctl enable docker.service && sudo systemctl enable containerd.service`

## Apps

- [ ] brave
- [ ] visualStudio Code
- [ ] terminator
- [ ] genote

## DISCLAIMER

![disclaimer][disclamer-logo]

<!-- links -->
[disclamer-logo]:https://blog.codinghorror.com/content/images/uploads/2007/03/6a0120a85dcdae970b0128776ff992970c-pi.png
