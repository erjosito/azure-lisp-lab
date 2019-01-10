# These actions will be run at provisioning time

# Install Apache and PHP
sudo apt-get update
sudo apt-get install apache2 -y
#sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
sudo apt -y install apache2 php7.2 libapache2-mod-php7.2
sudo systemctl restart apache2
sudo systemctl enable apache2

# Delete default web site and download a new one
sudo rm /var/www/html/index.html
sudo apt-get install wget -you
sudo wget https://raw.githubusercontent.com/erjosito/azure-lisp-lab/master/index.php -P /var/www/html/
sudo wget https://raw.githubusercontent.com/erjosito/azure-lisp-lab/master/styles.css -P /var/www/html/
sudo wget https://raw.githubusercontent.com/erjosito/azure-lisp-lab/master/apple-touch-icon.png -P /var/www/html/
sudo wget https://raw.githubusercontent.com/erjosito/azure-lisp-lab/master/favicon.ico -P /var/www/html/
