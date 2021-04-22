#!/bin/bash
#Albert Girón
if [ $EUID -ne 0 ]
then
	echo "No tens permisos per executar l'script"
	exit 1
fi
clear
echo -n "UUID de tots els dispositius dins de /etc/fstab:"
cat /etc/fstab | grep UUID | cut -d " " -f 1
echo -n "La quantitar de UUID trobades és:"
cat /etc/fstab | grep UUID | wc -l

exit 0
