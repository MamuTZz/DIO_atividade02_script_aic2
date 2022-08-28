#!/bin/bash

echo "Atualizando pacotes do servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache2..."

apt-get install apache2 -y

echo "Instalando Unzip..."

apt-get install unzip -y

echo "Baixando aplicação no diretório..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos para diretório do Apache..."

cd linux-site-dio
cp -R * /var/www/html/
