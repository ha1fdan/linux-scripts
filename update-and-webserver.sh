sudo apt update -y
sudo apt upgrade -y
sudo apt install nginx
sudo add-apt-repository ppa:certbot/certbot
sudo apt install python-certbot-nginx
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 'Nginx Full'
