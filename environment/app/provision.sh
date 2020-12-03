#!/bin/bash

# Update the sources list
sudo apt-get update -y

# install git
sudo apt-get install git -y

# DB HOST write to the .bashrc our envrionment variable
# echo 'export DB_HOST=127.0.0.1/posts' >> ~/.bashrc
# export DB_HOST=127.0.0.1/posts

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# Install nginx
sudo apt-get install nginx -y

# Removes the old file and replace with my modified version
sudo rm /etc/nginx/sites-available/default
sudo cp ~/environment/app/nginx.default /etc/nginx/sites-available/default

sudo systemctl restart nginx.service

cd ~/app
sudo pm2 kill
sudo DB_HOST=3.249.251.37 pm2 start app.js --update-env
