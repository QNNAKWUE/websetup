#!/bin/bash

#Installing Dependencies
echo "########################################"
echo "Installing packages"
echo "#########################################"
sudo yum install httpd wget unzip -yum > /dev/null
echo


#Start & Enable Service
echo "##############################################"
echo "Start and Enable HTTPD Service"
echo "##################################################"
sudo systemctl start httpd
sudo systemctl enable httpd


#Creating Temp Directory
echo "########################################"
echo "Starting Artifact Deployment"
echo "########################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2121_wave_cafe.zip  > /dev/null
unzip 2121_wave_cafe.zip   > /dev/null
sudo cp -r 2121_wave_cafe/* /var/www/html
echo


#Bounce Service
echo "##################################################"
echo "Restarting HTTPD Service"
sudo systemctl restart httpd
echo


#Clean Up
echo "########################################################"
echo "Removing Temporary Files"
echo "##########################################################"
rm -f /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html