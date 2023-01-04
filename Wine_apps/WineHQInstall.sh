#!/bin/bash

sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt update
	
sudo apt install --install-recommends winehq-stable


#cd "${HOME}/Descargas"
#wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks

sudo cp winetricks /usr/bin/

#cd

winetricks

sudo apt install cabextract

winetricks corefonts tahoma dotnet452 gdiplus msftedit riched20 riched30 richtx32 vcrun2005 vcrun2013 vcrun2019 vcrun6 vcrun6sp6

winecfg

#Agrega 2 librerias ctl3d32, mfc140u. Agregar y aplicar, Aplicaciones Windows7.

#Ejecuta el programa EXE
