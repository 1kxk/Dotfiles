#!/usr/bin/zsh

## Install Anaconda
wget -P "$HOME/Downloads/" https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh 
zsh ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh

zsh

## Config Anaconda
conda init zsh
conda update -n base -c defaults conda

conda create --name web django flask
conda create --name scripting pillow beautifulsoup4
conda create --name data spyder numpy pandas matplotlib scipy seaborn scikit-learn
