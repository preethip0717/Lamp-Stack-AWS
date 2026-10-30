#!/bin/bash

dnf update -y
dnf install -y httpd mariadb105-server php php-mysqlnd

systemctl enable httpd
systemctl start httpd

systemctl enable mariadb
systemctl start mariadb

echo '<h1>LAMP Stack Successfully Deployed!</h1>' > /var/www/html/index.html