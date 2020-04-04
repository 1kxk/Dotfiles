#!/bin/bash

####################
# CONFIG DOT FILES #
####################

echo -e "Which Dot file you wish to auto setup:\n(1) - VIM\n(2) - VSCODE\n(3) - ZSH"
read -p "" CHOICE

while [ 1 ]
do
  case $CHOICE in
    1)
      rm -rf ~/.vim
      mkdir ~/.vim
      cp -r vim/* ~/.vim
      cp vim/vimrc ~/.vimrc
      cp vim/gvimrc ~/.gvimrc
      ;;

    2)
      cp vscode/settings.json ~/.config/Code/User/settings.json
      ;;

    3)
      cp -r zsh/.oh-my-zsh ~/.oh-my-zsh
      cp -r zsh/.zshrc ~/.zshrc
      ;;

    4)
      echo "Done!"
      exit 1
      ;;

    5)
      echo "Invalid Option..."
      exit
  esac

  echo -e "You want auto setup other DotFile?\n(1) - VIM\n(2) - VSCODE\n(3) - ZSH"
  read -p "" CHOICE

done
