#!/bin/bash

####################
# WEB DEV PACKAGES #
####################

## STUFFS FOR WEBDEV

#nvm
echo -e "\n\nINSTALLING nvm....\n"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# nodejs
echo -e "\n\nADDING nodejs repo....\n"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
echo -e "\n\nINSTALLING nodejs\n"
sudo apt-get install -y nodejs

# yarn
echo -e "\n\nINSTALLING yarn....\n"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y


# Install neovim support for Node
sudo npm install neovim nodemon live-server firebase-tools -g

