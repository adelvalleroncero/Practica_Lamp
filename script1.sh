#!/bin/bash

cd ~/
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt install ssh
sudo apt install git
#--------------------------
# Instalación de Apache2
#--------------------------
sudo apt install apache2
sudo systemctl restart apache2
#--------------------------
#Instalación Mysql
#--------------------------
sudo apt install mysql-server
#--------------------------
# Insatación PHP
#--------------------------
sudo apt install php libapache2-mod-php php-mysql
sudo systemctl restart apache2
sudo touch /var/www/html/info.php
#-------------------------- 
# Falta meter el código PHP
#--------------------------
#--------------------------
# Instalación Composer 
#--------------------------
sudo apt install composer
sudo apt install php-xml php-curl php-zip php-mbstring  
#--------------------------
# Instalación Phpmyadmin
#--------------------------
composer create-project phpmyadmin/phpmyadmin
cd ~/phpmyadmin
composer update
cd ..
sudo mv phpmyadmin/ /var/www/html/
#-----------------------------