#!/bin/bash

###################
# TERMINAL CONFIG #
###################

## SPACESHIP
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"


## PLUGINS
# autocomplete
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"


## DRACULA THEME
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal "$HOME/gnome-terminal"
bash ~/gnome-terminal/install.sh
