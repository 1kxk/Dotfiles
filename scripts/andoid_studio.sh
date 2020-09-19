####################
# Build enviroment #
####################

## SETUP
echo -e "\n\nINSTALLING Java ppa....\n"
sudo add-apt-repository ppa:openjdk-r/ppa
echo -e "\n\nUPDATE to syncronize the repository....\n"
sudo apt update
echo -e "\n\nINSTALLING Java 8 version....\n"
sudo apt-get install openjdk-8-jdk 
echo -e "\n\nINSTALLING graphical libs....\n"
sudo apt-get install gcc-multilib lib32z1 lib32stdc++6


