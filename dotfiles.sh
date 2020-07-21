#!/bin/bash

####################
# CONFIG DOT FILES #
####################

echo -e "Which DotFile?\n(1) - VIM\n(2) - NVIM\n(3) - VSCODE\n(4) - ZSH\n(5) - SUBLIME\n(6) - GIT\n(7) - EXIT"
read -p "" CHOICE

while [ 1 ]
do
  case $CHOICE in
    1)
      rm -rf ~/.vim
      mkdir ~/.vim
      cp -r vim/* ~/.vim
      read -p "(1) Deschamps / (2) FisaDev (python-dev) / (3) Benawad (web-dev)" OCHOICE
      if [ $OCHOICE -eq 1 ]
      then
        cp vim/vimrc_deschamps ~/.vimrc
        cp vim/gvimrc_deschamps ~/.gvimrc
      elif [ $OCHOICE -eq 2  ]
      then
        cp vim/vimrc_fisadev ~/.vimrc
        cp vim/gvimrc_fisadev ~/.gvimrc
      else
        cp vim/vimrc_benawad ~/.vimrc
      fi
      ;;

    2)
        git clone https://github.com/ChristianChiarulli/nvim.git ~/.config/nvim
        curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	;;

    3)
      mkdir -p ~/.config/Code/User/
      touch ~/.config/Code/User/settings.json
      cp -r vscode/settings.json ~/.config/Code/User/settings.json
      ;;

    4)
      cat zsh/.zshrc >> ~/.zshrc
      ;;

    5)
      cp -r sublime/* ~/.config/sublime-text-3/Packages/User
      ;;

    6)
      cp ./git/.gitconfig ~/.gitconfig
      ;;

    7)
      echo "Done!"
      exit 1
      ;;

    *)
      echo "Invalid Option..."
      exit
      ;;

  esac

  echo -e "You want auto setup other DotFile?\n(1) - VIM\n(2) - NVIM\n(3) - VSCODE\n(4) - ZSH\n(5) - SUBLIME\n(6) - GIT\n(7) - EXIT"
  read -p "" CHOICE

done
