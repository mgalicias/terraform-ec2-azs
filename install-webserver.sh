#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo cat << EOF > /var/www/html/index.html
  <h1> CEO Marco Aurelio Galicia Salgado </h1>
EOF
sudo systemctl enable --now httpd