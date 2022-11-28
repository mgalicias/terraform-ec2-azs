#!/bin/bash
sudo yum -y update
sudo yum -y install httpd git
sudo git clone https://github.com/mgalicias/terraform-ec2-azs.git /var/www/html/
sudo systemctl enable --now httpd