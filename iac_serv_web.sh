#!/bin/bash
echo "Atualizando servidor"
apt update
echo "Instalando o apache"
apt install apache2
echo "Instalando o unzip"
apt install unzip
echo "Entrando no diretório padrão do apache"
cd /var/www/html/
echo "Removendo arquivos anteriores do servidor web"
rm ./*
echo "Entrando no diretório /tmp"
cd /tmp
echo "Baixando arquivo zip com site da dio"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descomprimindo arquivos"
unzip main.zip
echo "Apagando main.zip"
rm main.zip
echo "Movendo do diretório tmp para o diretório padrão do servidor web"
mv /tmp/linux-site-dio-main/* /var/www/html/
echo "Finalizado"

