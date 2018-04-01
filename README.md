# Configx for Developer Environment

>Mac adaptation of all the linux scripts.

## **Details**

First, we need to take a :beer: and install [brew][brew]:

`$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

And then create a new pair of ssh keys:

`$ ssh-keygen -t rsa -b 4096 -C "ariel.jimenez2025@gmail.com"`

For copy the highlighted text, move the `macpaste` file to anywhere in $PATH places, like `/usr/local/bin` and run it as a "Login Item" at startup (System Preferences > Users & Groups > Login Items > + > Navigate to file).

Now, just left __do the thing__.

## **Core langs**

- *JS*
- *Golang*
- *Elm*
- *Python* **2.7+** && **3.5+**

## JS

- nvm 0.33.7
- node 8.11.1 && npm 5.6.0
- yarn :cat:

> To develop Elm apps, must install Elm globally: `$ npm i -g elm` and later go to elm-format [repo][elm-format] and download the mac version and put in `/usr/local/bin`. Also:
- put the absolute url of elm-make in VS config: `"elm.makeCommand": "$HOME/.nvm/versions/node/$NODE_VER/bin/elm-make",`
- and double check that the nvm path stuff is loaded in bash.

### Golang

- Golang
- *Gorm* [not yet]
- *Watcher* [not yet]

### Python

- pip

### Continuos Integration

- Docker CE (Latest stable channel [here][docker])
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
[docker]:https://download.docker.com/mac/stable/Docker.dmg
[elm-format]:https://github.com/avh4/elm-format/releases
