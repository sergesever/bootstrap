#!/bin/bash

#sudo apt-add-repository ppa:diodon-team/stable
sudo apt-get update
sudo apt-get install vim vim-gnome pidgin pidgin-otr krusader konsole thunderbird mc chromium-browser clamtk htop elinks curl git  gitk git-gui
sudo apt-get install build-essential compizconfig-settings-manager vagrant exuberant-ctags
#gcc

#truecrypt pear php-dev unrar diodon

#apache2 php5 libapache2-mod-php5 mysql-server libapache2-mod-auth-mysql php5-mysql phpmyadmin

#php-pear && sudo pear install doc.php.net/pman
#apachetop atop mytop iotop ncdu nmap ntop

#gksudo gedit /etc/mysql/my.cnf #set bind-address = 127.0.0.1
#mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('yourpassword')"
#gksudo gedit /etc/php5/apache2/php.ini #uncomment extension=mysql.so
#sudo /etc/init.d/apache2 restart

#useful
#uptime
#cat /proc/cpuinfo | grep 'cpu cores'
#top htop atop mytop apachetop #zombie prcesses
#free -m
#vfu #file manager
#ps aux 
#nice /renice for priority

#sudo dpkg --get-selections
#sudo apt-get install gimp mplayer pac

sudo apt-get install sysinfo hardinfo
sudo apt-get install midori epiphany-browser
