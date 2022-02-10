apt update
apt upgrade -y
apt install apache2 -y
a2enmod rewrite
systemctl restart apache2
chown -R pi:www-data /var/www/html/
chmod -R 770 /var/www/html/
chown -R www-data:www-data /var/www/html/prestashop

apt install -y php libapache2-mod-php
apt install -y zip unzip

apt install -y php-zip php-simplexml php-curl php-gd php-mysql php-intl php-mbstring
service apache2 restart

mkdir /var/www/html/prestashop
cd /var/www/html/prestashop
wget https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.3/prestashop_1.7.8.3.zip
unzip prestashop_1.7.8.3.zip
