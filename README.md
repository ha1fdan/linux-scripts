# Linux Scripts
A collection of helpful Linux scripts.

## Nginx Reverse Proxy
[Setup Commands](/nginx-reverse-proxy-cmds.txt)

[Nginx Conf file](/nginx-reverse-proxy-config.conf)

## Install Services

Nginx + Certbot
```bash
bash <(curl -s https://raw.githubusercontent.com/HalfdanDK/linux-scripts/master/update-and-webserver.sh)
```
### Host SSL Website with Nginx
Remember to replace <domain> with your domain and create a cert
[Nginx SSL Conf file](/nginx-ssl-website-config.conf)
