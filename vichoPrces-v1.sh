#!/bin/bash
#busqueda de paquetes en apt.
    apt search suld-driver
    apt search neofetch
    apt search htop

#muestra detalles sobre tu distribución de Linux
    lsb_release -a
echo " "
#se muestra uso de la memoria del sistema.
    free -h
        #espera 1 segundo
        sleep 1s
echo " "
#se muestra el uso de los discons en el sistema
    df -h
        sleep 1s
echo " "
#se muestra la ip del equipo
    ip a
        sleep 1s
echo " "
#demuestra coneccion a internet
    ping -c 5 google.com
echo " "
#muestra las verciones de las siguientes aplicaciones de terminal.
    neofetch --version
    htop --version
    nmap --version
    cmatrix --version
    net-tools --version
    samba --version
    bpytop --version
    fish --version
    lm-sensors --version
    sl --version
    figlet --version
    ssh --version