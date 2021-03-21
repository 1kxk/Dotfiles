#!/bin/bash

echo "Configuring sysctl and limits config \n\n"
sudo echo "sysctl -w vm.max_map_count=262144" >> /etc/sysctl.conf
sudo echo "sysctl -w fs.file-max=65536" >> /etc/sysctl.conf
sudo echo "sonarqube   -     nofile      65536" >> /etc/security/limits.conf
sudo echo "sonarqube   -     nproc       4096" >> /etc/security/limits.conf


"Adding dependencies\n\n"
sudo apt update
sudo apt install openjdk-11-jdk -y
wget -q https://www.postgresql.org/media/keys/ACCC4F8.asc -0- | sudo apt-key add -
sudo apt update
sudo apt install postgresql -y
sudo apt install nginx -y
sudo systemctl start postgresql


# su - postgres
# createuser --interactive
# adduser --system --no-create-home --group --disabled-login sonarqube
# exit
# su - sonarqube
# createdb sonarqube
# ALTER USER sonarqube password 'sonar';
# mkdir /opt/sonarqube
# INSTALL SONARQUBE
# sudo chown -R sonarqube:sonarqube /opt/sonarqube
# vim /opt/sonarqube/sonarqube-8.7.1.42226/conf/sonar.properties -> 
#     -> sonar.jbdc.username=sonarqube
#     -> sonar.jbdc.password=sonar
#     -> sonar.jbdc.url="jdbc:postgresql://localhost/sonarqube"
#     -> sonar.web.javaAdditionalOpts=-serer
#     -> sonar.web.host=127.0.0.1
# sudo vim /etc/systemd/system/sonarqube.service 
#     -> [Unit]
# Description=SonarQube service
# After=syslog.target network.target
# 
# [Service]
# Type=forking
# ExecStart=/opt/sonarqube/sonarqube-8.0/bin/linux-x86-64/sonar.sh start
# ExecStop=/opt/sonarqube/sonarqube-8.0/bin/linux-x86-64/sonar.sh stop
# 
# User=sonarqube
# Group=sonarqube
# Restart=always
# 
# [Install]
# WantedBy=multi-user.target[Unit]
# Description=SonarQube service
# After=syslog.target=acp#onPopupPost()
#  netwok.target
# 
# [Service]
# Type=forking
# ExecStart=/opt/sonarqube/sonarqube-8.0/bin/linux-x86-64/sonar.sh start
# ExecStop=/opt/sonarqube/sonarqube-8.0/bin/linux-x86-64/sonar.sh stop
# 
# User=sonarqube
# Group=sonarqube
# Restart=always
# 
# [Install]
# WantedBy=multi-user.target
#
# sudo systemctl enable sonarqube
