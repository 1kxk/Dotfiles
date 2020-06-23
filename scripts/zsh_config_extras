#!/usr/bin/zsh

## HIGHLIGHT
echo -e "INSTALLING Highlighting zsh...\n"
cd
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc


## DRACULA THEME
echo -e "\n\nINSTALLING Dracula theme....\n"
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal "$HOME/gnome-terminal"
bash ~/gnome-terminal/install.sh
