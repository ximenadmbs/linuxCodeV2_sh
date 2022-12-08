#!/bin/bash

echo " "
echo "   ____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____" 
echo "  ||X |||i |||m |||e |||n |||a |||       |||b |||a |||s |||h |||       |||s |||c |||r |||i |||p ||"
echo "  ||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||"
echo "  |/__\|/__\|/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|"
echo " "
echo "Ximena bash scrip [Versión 0.20]"
echo "(c) Corporation. Todos los derechos reservados."
echo "██ Instalador de completentos, se iniciara la instalacion."
echo " "
sudo add-apt-repository universe
sudo add-apt-repository ppa:appimagelauncher-team/stable -y
sudo apt update
echo "."
echo "██ Se instalaron nuevos repositorios y se actualiso la base de datos"
echo "."
sudo apt install gnome-tweaks -y
sudo apt install ubuntu-restricted-extras -y
sudo apt install gnome-software -y
echo "."
echo "██ Se ha instalo la tienda de aplicaciones, y componetes de sistema"
echo "."
sudo apt install libfuse2 -y
sudo apt install appimagelauncher -y
echo "."
echo "██ Se ha instalado la libreria libfuse2 que resuelve la ejecucion de los archivos .AppImage"
echo "."
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install nmap -y
sudo apt install cmatrix -y
sudo apt install net-tools -y
sudo apt install samba -y
sudo apt install bpytop -y
sudo apt install fish -y
sudo apt install lm-sensors -y
sudo apt install sl -y
sudo apt install figlet -y
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