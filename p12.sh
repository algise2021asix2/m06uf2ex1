#!/bin/bash
#Albert Girón
if [ $EUID -ne 0 ]
then
	echo "No tens permisos per executar l'script"
	exit 1
fi
clear
REGEX='^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$'
echo -n "Escriu l'adreça IP d'un equip: "
read ip

if [[ $ip =~ $REGEX ]]
then
	echo "Adreça IP correcte:"
	nmap $ip
else
	echo "La adreça IP donada no es correcte"
	exit 10
fi
exit 0
