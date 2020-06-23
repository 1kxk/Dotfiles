#!/bin/bash

###################
# TERMINAL CONFIG #
###################

echo -e "Which is your distro username (type on terminal to show: whoami)"
read -p "" DISTRO_USER


## SPACESHIP
echo -e "INSTALLING SpaceShip....\n"
git clone https://github.com/denysdovhan/spaceship-prompt.git "/home/$DISTRO_USER/.oh-my-zsh/custom/themes/spaceship-prompt"
ln -s "/home/$DISTRO_USER/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "/home/$DISTRO_USER/.oh-my-zsh/custom/themes/spaceship.zsh-theme"


## PLUGINS
# autocomplete
echo -e "\n\nENABLING autocomplete on zsh....\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"


