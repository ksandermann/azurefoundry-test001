#!/bin/bash
set -e

apt-get update -y
apt-get install -y nginx

echo "hello world from azure vm" > /var/www/html/index.html
systemctl enable nginx
systemctl restart nginx
