####################
# Build enviroment #
####################

## SETUP MAIN PACKAGES
ESSENTIAL_PACKAGES="git vim wget curl build-essential"

echo -e "Do you want install your own packages or leave the default settings?\n(1) - Default (leave blank)\n(2) - My Packages"
read -p "" CHOICE

if [ $CHOICE -eq 1 ] || [ -z $CHOICE ]; then
  CUSTOM_PACKAGES="$(cat .default-packages)"
else
  CUSTOM_PACKAGES="$(cat .custom-packages)"
fi

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn
#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash


sudo apt update
sudo apt install $ESSENTIAL_PACKAGES $CUSTOM_PACKAGES -y
sudo apt upgrade -y
      

## SETUP FONTS
sudo apt install fonts-firacode -y

## SETUP TERMINAL

sudo apt install zsh -y
export ZSH_CUSTOM=~/.oh-my-zsh/custom
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
