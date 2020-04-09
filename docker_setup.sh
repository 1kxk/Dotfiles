#!/bin/bash 

echo -e "\n\nUpdate the system\n"
sudo apt-get update -y

echo -e "\n\nInstall dependencies\n"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

echo -e "\n\nAdding the GPG Key\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -e "\n\nAdding the Repository\n"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo -e "\n\nUpdate the system\n"
sudo apt-get update -y

echo -e "\n\nInstalling docker\n"
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
