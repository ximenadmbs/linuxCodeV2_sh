#!/bin/bash

echo "Ximena bash scrip (plex) [Versión 1.01]"
echo "(c) Corporation. Todos los derechos reservados, "
echo "Configurador de Puertos OpenSSH y 32400 del Servidor plex"

sudo apt install ufw

sudo ufw status

sudo ufw allow OpenSSH

sudo ufw allow 32400

sudo ufw enable

sudo ufw status

date
echo " "

# 192.168.100.???:32400/web


#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# mar 01 nov 2022 13:01:05 CST

