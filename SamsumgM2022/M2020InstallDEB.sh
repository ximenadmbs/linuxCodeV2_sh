#!/bin/bash

echo "Ximena bash scrip [Versión 1]"
echo "(c) Corporation. Todos los derechos reservados, "
echo "[ ██ Instalador de Controladores Impresora Samsumg  M2020, junto a este bash se encuentra el ejecutable suldr-keyring_2_all.deb, de lo contrario se ejecuta M2020Install.sh"
echo ""
    sudo dpkg -i suldr-keyring_2_all.deb

    sudo apt update
    apt search suld-driver
        sudo apt install suld-driver2-1.00.39 -y
echo ""
echo "[ ██ ::::::::::Tareas terminadas::::::::::"
echo "."

# Fuente: https://askubuntu-com.translate.goog/questions/1138999/samsung-m2020-printer-not-working-since-19-04-upgrade?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=sc

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# lun 05 sep 2022 13:34:23 
# mié 28 sep 2022 20:41:29 CDT
# vie 07 oct 2022 13:24:53 CDT

