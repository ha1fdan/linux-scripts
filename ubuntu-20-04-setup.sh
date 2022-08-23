apt update
apt upgrade -y

apt install firewalld -y
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --add-port=80/udp --permanent
firewall-cmd --add-port=443/udp --permanent
firewall-cmd --add-port=443/tcp --permanent
firewall-cmd --add-port=3306/udp --permanent
firewall-cmd --add-port=3306/tcp --permanent
firewall-cmd --add-port=22/udp --permanent
firewall-cmd --add-port=22/tcp --permanent
firewall-cmd --reload
systemctl enable --now firewalld
systemctl start firewalld
systemctl restart firewalld

apt -y install php8.1 php8.1-{common,cli,gd,mysql,mbstring,bcmath,xml,fpm,curl,zip} mariadb-server nginx tar unzip git
sudo apt install -y certbot
sudo apt install -y python3-certbot-nginx
systemctl start nginx
echo Done!
