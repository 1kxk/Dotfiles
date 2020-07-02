####################
# Build enviroment #
####################

## SETUP MAIN PACKAGES
ESSENTIAL_PACKAGES="git vim wget curl build-essential"
CUSTOM_PACKAGES="$(cat .custom-packages)"



echo -e "\n\nPREPARING to install packages....\n"
sudo apt update
echo -e "\n\nINSTALLING packages....\n"
sudo apt install $ESSENTIAL_PACKAGES $CUSTOM_PACKAGES -y
echo -e "\n\nCHECKING errors....\n"
sudo apt install -f -y
echo -e "\n\nUPGRADING packages....\n"
sudo apt upgrade -y
echo -e "\n\nREMOVING unecessary packages....\n"
sudo apt autoremove -y
      

## SETUP FONTS
echo -e "\n\nINSTALLING fonts....\n"
sudo apt install fonts-firacode -y

## SETUP DOTFILES
echo -e "\n\nINSTALLING VIM & NVIM PLUGS"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c curl -fLo "'${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim''"}'"


## SETUP TERMINAL
echo -e "\n\nINSTALLING zsh....\n"
sudo apt install zsh -y
export ZSH_CUSTOM=~/.oh-my-zsh/custom
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
