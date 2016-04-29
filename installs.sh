#!/bin/bash

#sudo apt-get update

#basic
#sudo apt-get install vim mc htop elinks curl git  

#gui utils
#sudo apt-get install krusader konsole chromium-browser gitk git-gui clamtk

#web
#sudo apt-get pidgin pidgin-otr thunderbird  midori epiphany-browser

#tweaks
#sudo apt-get install compizconfig-settings-manager 

#dev
#sudo apt-get install build-essential vagrant exuberant-ctags

#system
#sudo apt-get install sysinfo hardinfo

#db basic
#sudo apt-get install sqlite3 sqlitebrowser

#mmedia
#sudo apt-get install gimp mplayer



#extra tools

#python
#sudo apt-get install python python-pip
#wget http://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh | sh

#LAMP/LEMP stack
#sudo apt-get install mysql-server mysql-client php5-mysql php5-mcrypt php5-cli phpmyadmin
#apt-cache search php5

#nginx+php-fmp
#sudo apt-get install nginx php5-fpm php5-mysql php5-curl php5-gd php-mail

#apache2
#sudo apt-get install apache2 libapache2-mod-php5 libapache2-mod-auth-mysql  php5-mcrypt php5-cli phpmyadmin
#sudo mysql_install_db && sudo mysql_secure_installation

#docker
#sudo curl -fsSL https://get.docker.com/ | sh
#sudo pip install docker-compose

#diodon
#sudo apt-add-repository ppa:diodon-team/stable && apt-get install diodon

#for vim
#sudo apt-get install php-pear
#sudo pear install doc.php.net/pman
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
#:PluginInstall


#tops
#sudo apt-get install apachetop atop mytop iotop ncdu nmap ntoa htop



#misc minor operations

#sudo dpkg -l

#gksudo gedit /etc/mysql/my.cnf #set bind-address = 127.0.0.1
#mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('yourpassword')"
#gksudo gedit /etc/php5/apache2/php.ini #uncomment extension=mysql.so

#optional
#uptime
#cat /proc/cpuinfo | grep 'cpu cores'
#free -m
#vfu
#ps aux 
#nice #renice 

#cp .gitconfig ~/
#cp .vimrc /etc/vim/vimrc.local
