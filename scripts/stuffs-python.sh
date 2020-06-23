#!/bin/bash

## Install Anaconda
sudo pip3 install pep8 pynvim flake8 pyflakes isort yapf
echo -e "DOWNLOADING anaconda....\n"
wget -P "$HOME/Downloads/" https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh 
bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh

# Config Anaconda
$HOME/anaconda3/bin/conda init zsh
conda config --set auto_activate_base false
conda update -n base -c defaults conda
zsh

#conda create --name web django flask
#conda create --name scripting pillow beautifulsoup4
#conda create --name data spyder numpy pandas matplotlib scipy seaborn scikit-learn

#python3 -m ipykernel install --user --name web
#python3 -m ipykernel install --user --name scripting
#python3 -m ipykernel install --user --name data
