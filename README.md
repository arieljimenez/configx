# Configx for Developer Environment

>Mac adaptation of all the linux scripts.

## **Details**

First, we need to take a :beer: and install [brew][brew]:

`$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

And then create a new pair of ssh keys:

 `$ ssh-keygen -t rsa -b 4096 -C "ariel.jimenez2025@gmail.com"`

Now, just left __do the thing__.

## **Core langs**

- *JS*
- *Golang*
- *Elm*
- *Python* **2.7+** && **3.5+**

## JS

- nvm
- node (latest LTS) && npm
- yarn :cat:

### Golang

- Golang
- *Gorm* [not yet]
- *Watcher* [not yet]

### Python

- pip
- *Virtualenv* [not yet]

### Continuos Integration

- Docker CE
- *Jenkins (needs Java)* [not yet]

### Text Editors

- Visual Studio Code - Launch code from terminal
  - Launch VS Code.
  - Open the Command Palette (⇧⌘P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command.
  - Restart the terminal for the new $PATH value to take effect. You'll be able to type 'code .' in any folder to start editing files in that folder.
- Custom stuff:
  - config -> `./configs/settings.json`
  - plugins :ok_hand: -> `sh ./apps/code.sh`

## Apps

- Tmux ~~Terminator + config~~
- Zsh
- Oh-my-zsh + Powerlevel9k theme and his fonts.

## DISCLAIMER

![disclaimer][disclamer-logo]

<!-- links -->
[disclamer-logo]:https://blog.codinghorror.com/content/images/uploads/2007/03/6a0120a85dcdae970b0128776ff992970c-pi.png
[brew]:https://brew.sh/
