#!/usr/bin/zsh

## DRACULA THEME
echo -e "\n\nINSTALLING Dracula theme....\n"
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal "$HOME/gnome-terminal"
bash ~/gnome-terminal/install.sh
