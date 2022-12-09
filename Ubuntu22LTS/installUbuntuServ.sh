#!/bin/bash

echo "  _    _ _                            _                _                         _"       
echo " \ \  / (_)                          | |              | |                       (_) "     
echo "  \ \/ / _ ____   ____ ____   ____   | | _   ____  ___| | _      ___  ____  ____ _ ____"  
echo "   )  ( | |    \ / _  )  _ \ / _  |  | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \ " 
echo "  / /\ \| | | | ( (/ /| | | ( ( | |  | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | | "
echo " /_/  \_\_|_|_|_|\____)_| |_|\_||_|  |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/  "
echo "                                                                                  |_|    "
echo "Ximena bash scrip [Versión 1.5]"
echo "(c) Corporation. Todos los derechos reservados."
echo "██ Instalador de completentos de servicor Ubuntu server, se iniciara la instalacion."
echo " "
sudo add-apt-repository universe


sudo apt update
echo "."
echo "██ Se instalaron nuevos repositorios y se actualiso la base de datos"
echo "."

sudo apt install ubuntu-restricted-extras -y

echo "."
echo "██ Se ha instalo la tienda de aplicaciones, y componetes de sistema"
echo "."

echo "."
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install nmap -y

sudo apt install net-tools -y
sudo apt install samba -y
sudo apt install bpytop -y
sudo apt install fish -y
sudo apt install lm-sensors -y

sudo apt install ssh -y
sudo apt install cups-pdf




echo "."
neofetch
echo "██ :::::Se acompleto la tarea de instalacion:::::]]]]"
date
echo " "

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# mié 09 sep 2022 12:52:45 CDT
# mar 01 nov 2022 13:01:05 CST