# JS stuff
# - *Nvm: node 8.11.1 LTS / npm*

# install latest (at the moment) nvm
# wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# install node v8.9.1/npm v5.5.1 LTS Carbon

# To install or reinstall packages to new ver. of node AND Add set the new ver. as default:
#$ nvm install v8.11.1 --reinstall-packages-from=x.x.x && nvm alias default x.x.x
nvm install v8.11.1

# ✨ install yarn package manager 🐱
npm i -g yarn

yarn global add \
  react-cli \
  react-native \
  create-react-app \
  create-react-native-app \
  react-devtools
