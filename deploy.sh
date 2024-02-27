#! /bin/bash

echo "Stopping NGINX and NGROK..."
sudo systemctl stop nginx
pkill ngrok

echo "Updating app..."
git pull

echo "Starting NGINX and NGROK..."
sudo systemctl start nginx
ngrok http 80