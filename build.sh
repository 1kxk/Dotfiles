####################
# Build enviroment #
####################

## SETUP MAIN PACKAGES
ESSENTIAL_PACKAGES="git vim wget curl build-essential"

echo -e "Do you want install your own packages or leave the default settings?\n(1) - Default\n(2) - My Packages"
read -p "--> " CHOICE

if [ "$CHOICE" -eq 1 -o -z "$CHOICE" ]; then
  CUSTOM_PACKAGES="$(cat .default-packages)"
else
  CUSTOM_PACKAGES="$(cat .custom-packages)"
fi



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


## SETUP TERMINAL
echo -e "\n\nINSTALLING zsh....\n"
sudo apt install zsh -y
export ZSH_CUSTOM=~/.oh-my-zsh/custom
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
