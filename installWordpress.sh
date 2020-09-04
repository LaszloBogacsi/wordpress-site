#!/usr/bin bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y
sudo apt install php php-mysql -y
cd /tmp && wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
cp -R wordpress/. /var/www/html/
chown www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/
mkdir /var/www/html/wp-content/uploads
chown -R www-data:www-data /var/www/html/wp-content/uploads/
chown -R www-data:www-data /var/www/html/wp-content/plugins/
chown -R www-data:www-data /var/www/html/wp-content/themes/

