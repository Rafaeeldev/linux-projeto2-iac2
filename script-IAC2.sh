#!/bin/bash

#####################################################################################################
##                           Projeto dio.me Linux-Fundamentals                                     ##
## Nome: script-IAC2.sh                                                                            ##
##                                                                                                 ##
## Autor: Rafael Simões                                                                            ##
##                                                                                                 ##
## Data: 13/01/2024                                                                                ##
##                                                                                                 ##
## Descrição: O script atualiza o servidor, realiza o downloado do apache2 e unzip, baixa main.zip ##
## no github, extrai o arquivo main.zip e o copia para dentro da pasta /var/www/html/.             ##
##                                                                                                 ##
## Uso: Execute como root/superusuário o script ./script-IAC2.sh                                   ##
##                                                                                                 ##
#####################################################################################################

echo "Atualizando o SERVIDOR..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
