#!/bin/bash
#busqueda de paquetes en apt.
    apt search suld-driver
    apt search neofetch
    apt search htop

#muestra detalles sobre tu distribución de Linux
    lsb_release -a
echo " "
#se muestra uso de la memoria del sistema.
    free
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