#!/bin/bash

 

apt-get update

 

apt-get install figlet -y


banner=$ figlet RicKnetfree


echo $banner 


sleep 3s


b2=$ figlet BadGuy


echo $b2


sleep 3s


conf=$ figlet configurando


echo $conf


sleep 1s


o=$ figlet o


echo $o


sleep 1s


vps=$ figlet VPS


echo $vps


sleep 1s


apt-get install squid3 -y

 

cd /etc/ssh/

 

echo "Port 443" >> /etc/ssh/sshd_config

 

aten=$ figlet atencao !


echo $aten


sleep 2s


echo ATENCION Digite o seu ip !!

 

read ip

 

 

echo "http_port 80" > /etc/squid/squid.conf

echo "http_port 8080" >> /etc/squid/squid.conf

echo "acl accept url_regex -i $ip" >> /etc/squid/squid.conf

echo "acl y url_regex -i claro" >> /etc/squid/squid.conf

echo "acl y1 url_regex -i .com.br" >> /etc/squid/squid.conf

echo "acl all src 0.0.0.0/0.0.0.0" >> /etc/squid/squid.conf

echo "http_access allow accept" >> /etc/squid/squid.conf

echo "http_access allow y" >> /etc/squid/squid.conf

echo "http_access allow y1" >> /etc/squid/squid.conf

echo "http_access deny all" >> /etc/squid/squid.conf

 

service ssh restart

 

service squid3 restart


echo Procedimentos feitos com exito. crie um usu�rio e teste pra ver se est� funcionando corretamente!!


sleep 2s 

cd 

rm configvps.sh
