#!/bin/bash

sudo apt-get update

#basic
sudo apt-get install vim vim-gnome krusader konsole mc chromium-browser clamtk htop elinks curl git  gitk git-gui

#web
sudo apt-get pidgin pidgin-otr thunderbird  midori epiphany-browser

#tweaks
sudo apt-get install compizconfig-settings-manager 

#dev
sudo apt-get install build-essential vagrant exuberant-ctags

#system
sudo apt-get install sysinfo hardinfo

#db basic
sudo apt-get install sqlite3 sqlitebrowser

#mmedia
#sudo apt-get install gimp mplayer

#extra tools

#sudo dpkg --get-selections
#sudo apt-get install gcc

#sudo apt-add-repository ppa:diodon-team/stable && apt-get install diodon
#sudo apt-get install pear php-dev unrar

#AMP stack
#apache2 php5 libapache2-mod-php5 mysql-server libapache2-mod-auth-mysql php5-mysql phpmyadmin

#nginx

#php-pear && sudo pear install doc.php.net/pman

#tops
#apachetop atop mytop iotop ncdu nmap ntoa htop

#gksudo gedit /etc/mysql/my.cnf #set bind-address = 127.0.0.1
#mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('yourpassword')"
#gksudo gedit /etc/php5/apache2/php.ini #uncomment extension=mysql.so
#sudo /etc/init.d/apache2 restart


#uptime
#cat /proc/cpuinfo | grep 'cpu cores'
#free -m
#vfu #file manager
#ps aux 
#nice #renice for priority


