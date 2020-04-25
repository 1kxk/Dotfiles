#!/usr/bin/zsh

## Install Anaconda
echo -e "DOWNLOADING anaconda....\n"
wget -P "$HOME/Downloads/" https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh 
zsh ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh

## Config Anaconda
~/anaconda3/bin/conda init zsh
conda config --set auto_activate_base false
conda update -n base -c defaults conda
zsh

#conda create --name web django flask
#conda create --name scripting pillow beautifulsoup4
#conda create --name data spyder numpy pandas matplotlib scipy seaborn scikit-learn

#python -m ipykernel install --user --name web
#python -m ipykernel install --user --name scripting
#python -m ipykernel install --user --name data
