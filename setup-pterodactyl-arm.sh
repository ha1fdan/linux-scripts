apt update
apt upgrade -y
apt install firewalld
firewall-cmd --add-port=25565-25590/udp --permanent
firewall-cmd --add-port=25565-25590/tcp --permanent
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --add-port=80/udp --permanent
firewall-cmd --add-port=443/udp --permanent 
firewall-cmd --add-port=443/tcp --permanent
firewall-cmd --add-port=2022/tcp --permanent
firewall-cmd --add-port=2022/udp --permanent
firewall-cmd --add-port=5657/udp --permanent 
firewall-cmd --add-port=5657/tcp --permanent
firewall-cmd --add-port=56423/tcp --permanent
firewall-cmd --add-port=56423/udp --permanent
firewall-cmd --add-port=8080/udp --permanent
firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --add-port=3306/udp --permanent
firewall-cmd --add-port=3306/tcp --permanent
firewall-cmd --add-port=587/udp --permanent
firewall-cmd --add-port=587/tcp --permanent
firewall-cmd --reload
systemctl enable --now firewalld
systemctl start firewalld
bash <(curl -s https://pterodactyl-installer.se)
