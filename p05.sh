#!/bin/bash
#Albert Girón
if [ $EUID -ne 0 ]
then
	echo "No tens permisos per executar l'script"
	exit 1
fi

function install {
echo -n "Indica el nom del paquet a instal·lar:"
read paquet
sudo apt install $paquet
echo "Paquet instal·lat"
}

comptador="si"
while [[ $comptador -eq "si" ]]
	do
		install
		echo -n "Vols continuar?"
		read resposta
		if [[ $resposta -ne 1 ]]
		then
			exit 1
		fi
	done
exit 20
