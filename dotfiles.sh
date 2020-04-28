#!/bin/bash

####################
# CONFIG DOT FILES #
####################

echo -e "Which Dot file you wish to auto setup:\n(1) - VIM\n(2) - VSCODE\n(3) - ZSH\n(4) - SUBLIME\n(5) - EXIT"
read -p "" CHOICE

while [ 1 ]
do
  case $CHOICE in
    1)
      rm -rf ~/.vim
      mkdir ~/.vim
      cp -r vim/* ~/.vim
      read -p "(1) Deschamps / (2) FisaDev " CHOICE
      if [ $CHOICE -eq 1 ]
      then
          cp vim/vimrc_deschamps ~/.vimrc
          cp vim/gvimrc_deschamps ~/.gvimrc
      else
          cp vim/vimrc_fisadev ~/.vimrc
          cp vim/gvimrc_fisadev ~/.gvimrc
      fi
      ;;

    2)
        curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        git clone https://github.com/ChristianChiarulli/nvim.git ~/.config/nvim 


    3)
      cp -r vscode/settings.json ~/.config/Code/User/settings.json
      ;;

    4)
      cp -r zsh/.zshrc ~/.zshrc
      ;;

    5)
      cp -r sublime/* ~/.config/sublime-text-3/Packages/User
      ;;

    6)
      echo "Done!"
      exit 1
      ;;

    *)
      echo "Invalid Option..."
      exit
      ;;

  esac

  echo -e "You want auto setup other DotFile?\n(1) - VIM\n(2) - VSCODE\n(3) - ZSH\n(4) - SUBLIME\n(5) - EXIT"
  read -p "" CHOICE

done
