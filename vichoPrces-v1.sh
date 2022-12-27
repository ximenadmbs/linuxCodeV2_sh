#!/bin/bash

#y comprobamos el estado de networking
    systemctl status networking
sleep 1s
#busqueda de paquetes en apt.
    apt search suld-driver
    sleep 1s
    apt search neofetch
    sleep 1s
    apt search htop
    sleep 1.5

#muestra detalles sobre tu distribución de Linux
    lsb_release -a
echo " "
sleep 2s
#se muestra uso de la memoria del sistema.
    free -h
        #espera 1 segundo
        sleep 1s
echo " "
#se muestra el uso de los discos en el sistema
    df -h
        sleep 1s
echo " "
#se muestra la ip del equipo
    ip a
        sleep 2s
echo " "
#demuestra coneccion a internet
    ping -c 5 google.com
echo " "

#barra de busqueda:
echo -ne '[#----------------------------------] ( 01%)\r'
    sleep 0.3
echo -ne '[#######----------------------------] ( 20%)\r'
    sleep 0.3
echo -ne '[##############---------------------] ( 40%)\r'
    sleep 0.3
echo -ne '[#####################--------------] ( 60%)\r'
    sleep 0.3
echo -ne '[############################-------] ( 80%)\r'
    sleep 0.3
echo -ne '[###################################] (100%)\r'
    sleep 0.3
echo -ne '\n'
echo " "

#muestra las verciones de las siguientes aplicaciones de terminal.
    dpkg --version
    echo " "
    sleep 1s
    neofetch --version
    echo " "
    sleep 1s
    htop --version
    echo " "
    sleep 1s
    #nmap --version
    echo " "
    sleep 1s
    cmatrix --version
    echo " "
    sleep 1s
    net-tools --version
    echo " "
    sleep 1s
    samba --version
    echo " "
    sleep 1s
    bpytop --version
    echo " "
    sleep 1s
    fish --version
    echo " "
    sleep 1s
    #lm-sensors --version
    echo " "
    sleep 1s
    #sl --version
    echo " "
    sleep 1s
    figlet --version
    echo " "
    sleep 1s
    ssh --version
    echo " "
    sleep 1.5

#estados de servicios:
    #sudo service smbd status
    #sudo service proftpd status

#muestra informacion del sistema
echo " "
    cat /etc/os-release
    sleep 1s
#revisar si opengl esta activado
echo " "
    glxinfo | grep direct
sleep 1s
#estado de livepatch de ubuntu
echo " "
    #sudo ua status --wait
    pro security-status
sleep 1.5s

#barra de busqueda:
echo -ne '[#----------------------------------] ( 01%)\r'
    sleep 0.3
echo -ne '[#######----------------------------] ( 20%)\r'
    sleep 0.3
echo -ne '[##############---------------------] ( 40%)\r'
    sleep 0.3
echo -ne '[#####################--------------] ( 60%)\r'
    sleep 0.3
echo -ne '[############################-------] ( 80%)\r'
    sleep 0.3
echo -ne '[###################################] (100%)\r'
    sleep 0.3
echo -ne '\n'
echo " "

echo "Leyendo lista de paquetes... Hecho"
echo "Creando árbol de dependencias... Hecho"
echo "Leyendo la información de estado... Hecho"
sleep 0.5
echo "Se instalarán los siguientes paquetes NUEVOS:"
sleep 0.8
echo "  linux-image-5.10.0-20-amd64"
echo "Se actualizarán los siguientes paquetes:"
sleep 0.5
echo "  base-files distro-info-data grub-common grub-pc grub-pc-bin grub2-common libnftables1 libtasn1-6"
echo "  linux-image-amd64 nano nftables"
echo "11 actualizados, 1 nuevos se instalarán, 0 para eliminar y 0 no actualizados."
sleep 1
echo "Se necesita descargar 61.1 MB de archivos."
echo "Se utilizarán 318 MB de espacio de disco adicional después de esta operación."
sleep 0.5
echo ""

#barra de busqueda:
echo -ne '[#----------------------------------] ( 01%)\r'
    sleep 0.3
echo -ne '[#######----------------------------] ( 20%)\r'
    sleep 0.3
echo -ne '[##############---------------------] ( 40%)\r'
    sleep 0.3
echo -ne '[#####################--------------] ( 60%)\r'
    sleep 0.3
echo -ne '[############################-------] ( 80%)\r'
    sleep 0.3
echo -ne '[###################################] (100%)\r'
    sleep 0.3
echo -ne '\n'
echo " "

echo "Des:1 http://deb.debian.org/debian bullseye/main amd64 base-files amd64 11.1+deb11u6 [70.1 kB]"
sleep 0.5
echo "Des:2 http://deb.debian.org/debian bullseye/main amd64 nftables amd64 0.9.8-3.1+deb11u1 [68.7 kB]"
sleep 0.5
echo "Des:3 http://deb.debian.org/debian bullseye/main amd64 libnftables1 amd64 0.9.8-3.1+deb11u1 [261 kB]"
sleep 0.5
echo "Des:4 http://deb.debian.org/debian bullseye/main amd64 libtasn1-6 amd64 4.16.0-2+deb11u1 [54.9 kB]"
sleep 0.5
echo "Des:5 http://deb.debian.org/debian bullseye/main amd64 nano amd64 5.4-2+deb11u2 [657 kB]"
sleep 0.5
echo "Des:6 http://deb.debian.org/debian bullseye/main amd64 distro-info-data all 0.51+deb11u3 [7 812 B]"
sleep 0.5
echo "Des:7 http://deb.debian.org/debian bullseye/main amd64 grub2-common amd64 2.06-3~deb11u5 [611 kB]"
sleep 0.5
echo "Des:8 http://deb.debian.org/debian bullseye/main amd64 grub-pc amd64 2.06-3~deb11u5 [131 kB]"
sleep 0.5
echo "Des:9 http://deb.debian.org/debian bullseye/main amd64 grub-pc-bin amd64 2.06-3~deb11u5 [992 kB]"
sleep 0.5
echo "Des:10 http://deb.debian.org/debian bullseye/main amd64 grub-common amd64 2.06-3~deb11u5 [2 761 kB]"
sleep 0.7
echo "Des:11 http://deb.debian.org/debian bullseye/main amd64 linux-image-5.10.0-20-amd64 amd64 5.10.158-2 [55.5 MB]"
sleep 0.9
echo "Des:12 http://deb.debian.org/debian bullseye/main amd64 linux-image-amd64 amd64 5.10.158-2 [1 484 B]"
sleep 1
echo "Descargados 61.1 MB en 6s (10.3 MB/s)"      
echo "Preconfigurando paquetes ..."

echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: OK \r'
    sleep 0.3
echo -ne '\n'
echo ""

echo "(Leyendo la base de datos ... 47147 ficheros o directorios instalados actualmente.)"
echo "Preparando para desempaquetar .../base-files_11.1+deb11u6_amd64.deb ..."
sleep 0.5
echo "Desempaquetando base-files (11.1+deb11u6) sobre (11.1+deb11u5) ..."
echo "Configurando base-files (11.1+deb11u6) ..."
sleep 0.5
echo "Instalando una nueva versión del fichero de configuración /etc/debian_version ..."
echo "(Leyendo la base de datos ... 47147 ficheros o directorios instalados actualmente.)"
echo "Preparando para desempaquetar .../nftables_0.9.8-3.1+deb11u1_amd64.deb ..."
sleep 0.3
echo "Desempaquetando nftables (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ..."
echo "Preparando para desempaquetar .../libnftables1_0.9.8-3.1+deb11u1_amd64.deb ..."
sleep 0.5
echo "Desempaquetando libnftables1:amd64 (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ..."
echo "Preparando para desempaquetar .../libtasn1-6_4.16.0-2+deb11u1_amd64.deb ..."
sleep 0.5
echo "Desempaquetando libtasn1-6:amd64 (4.16.0-2+deb11u1) sobre (4.16.0-2) ..."
sleep 0.6

echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: OK \r'
    sleep 0.3
echo -ne '\n'
echo ""

echo "Configurando libtasn1-6:amd64 (4.16.0-2+deb11u1) ..."
sleep 0.3
echo "(Leyendo la base de datos ... 47147 ficheros o directorios instalados actualmente.)"
echo ""
echo "Preparando para desempaquetar .../0-nano_5.4-2+deb11u2_amd64.deb ..."
sleep 0.5
echo "Desempaquetando nano (5.4-2+deb11u2) sobre (5.4-2+deb11u1) ..."
echo "Preparando para desempaquetar .../1-distro-info-data_0.51+deb11u3_all.deb ..."
sleep 0.6
echo "Desempaquetando distro-info-data (0.51+deb11u3) sobre (0.51+deb11u2) ..."
echo "Preparando para desempaquetar .../2-grub2-common_2.06-3~deb11u5_amd64.deb ..."
sleep 1.2
echo "Desempaquetando grub2-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Preparando para desempaquetar .../3-grub-pc_2.06-3~deb11u5_amd64.deb ..."
sleep 0.3
echo "Desempaquetando grub-pc (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Preparando para desempaquetar .../4-grub-pc-bin_2.06-3~deb11u5_amd64.deb ..."
sleep 0.6
echo "Desempaquetando grub-pc-bin (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Preparando para desempaquetar .../5-grub-common_2.06-3~deb11u5_amd64.deb ..."
sleep 0.8
echo "Desempaquetando grub-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Seleccionando el paquete linux-image-5.10.0-20-amd64 previamente no seleccionado."
echo "Preparando para desempaquetar .../6-linux-image-5.10.0-20-amd64_5.10.158-2_amd64.deb ..."
sleep 0.9
echo "Desempaquetando linux-image-5.10.0-20-amd64 (5.10.158-2) ..."
echo "Preparando para desempaquetar .../7-linux-image-amd64_5.10.158-2_amd64.deb ..."
sleep 0.5
echo "Desempaquetando linux-image-amd64 (5.10.158-2) sobre (5.10.149-2) ..."
echo ""
echo "Configurando libnftables1:amd64 (0.9.8-3.1+deb11u1) ..."
echo "Configurando nftables (0.9.8-3.1+deb11u1) ..."
echo "Configurando distro-info-data (0.51+deb11u3) ..."
echo "Configurando grub-common (2.06-3~deb11u5) ..."
echo "Configurando nano (5.4-2+deb11u2) ..."
echo "Configurando linux-image-5.10.0-20-amd64 (5.10.158-2) ..."
echo ""

#barra de busqueda:
echo -ne '[#----------------------------------] ( 01%)\r'
    sleep 0.3
echo -ne '[#######----------------------------] ( 20%)\r'
    sleep 0.3
echo -ne '[##############---------------------] ( 40%)\r'
    sleep 0.3
echo -ne '[#####################--------------] ( 60%)\r'
    sleep 0.3
echo -ne '[############################-------] ( 80%)\r'
    sleep 0.3
echo -ne '[###################################] (100%)\r'
    sleep 0.3
echo -ne '\n'
echo " "

echo "      I: /vmlinuz.old is now a symlink to boot/vmlinuz-5.10.0-19-amd64"
echo "      I: /initrd.img.old is now a symlink to boot/initrd.img-5.10.0-19-amd64"
echo "      I: /vmlinuz is now a symlink to boot/vmlinuz-5.10.0-20-amd64"
echo "      I: /initrd.img is now a symlink to boot/initrd.img-5.10.0-20-amd64"
echo ""
echo "/etc/kernel/postinst.d/initramfs-tools:"
echo "update-initramfs: Generating /boot/initrd.img-5.10.0-20-amd64"
echo "/etc/kernel/postinst.d/zz-update-grub:"
echo "Generating grub configuration file ..."
sleep 2
echo ""
        echo "Found linux image: /boot/vmlinuz-5.10.0-20-amd64"
        echo "Found initrd image: /boot/initrd.img-5.10.0-20-amd64"
        echo "Found linux image: /boot/vmlinuz-5.10.0-19-amd64"
        echo "Found initrd image: /boot/initrd.img-5.10.0-19-amd64"
        echo "Found linux image: /boot/vmlinuz-5.10.0-18-amd64"
        echo "Found initrd image: /boot/initrd.img-5.10.0-18-amd64"

echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: OK \r'
    sleep 0.8
echo -ne '\n'


echo ""
echo "done"
sleep 0.3
echo ""

echo "Configurando grub2-common (2.06-3~deb11u5) ..."
echo "Configurando linux-image-amd64 (5.10.158-2) ..."
echo "Configurando grub-pc-bin (2.06-3~deb11u5) ..."
echo "Configurando grub-pc (2.06-3~deb11u5) ..."
sleep 0.5
echo "Instalando para plataforma i386-pc."
sleep 0.8
echo "Instalación terminada. No se notificó ningún error."
sleep 0.7
echo "Generating grub configuration file ..."

echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: OK \r'
    sleep 0.3
echo -ne '\n'
echo ""

echo "---done"
echo ""
echo ""
echo "Se instalarán los siguientes paquetes NUEVOS:"
echo "  linux-image-5.10.0-20-amd64"
sleep 0.3
echo "Se actualizarán los siguientes paquetes:"
echo "  base-files grub-common grub-pc grub-pc-bin grub2-common libnftables1 libtasn1-6 linux-image-amd64 nano"
echo "  nftables"
sleep 0.3
echo "10 actualizados, 1 nuevos se instalarán, 0 para eliminar y 0 no actualizados."
sleep 0.3
echo "Se necesita descargar 61.1 MB de archivos."
sleep 0.3
echo "Se utilizarán 318 MB de espacio de disco adicional después de esta operación."
sleep 0.3
echo "(Leyendo la base de datos ... 32819 ficheros o directorios instalados actualmente.)"

echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: OK \r'
    sleep 0.3
echo -ne '\n'
echo ""

echo "Preparando para desempaquetar .../base-files_11.1+deb11u6_amd64.deb ..."
echo "Desempaquetando base-files (11.1+deb11u6) sobre (11.1+deb11u5) ..."
sleep 0.3
echo "Configurando base-files (11.1+deb11u6) ..."
sleep 0.3
echo "Instalando una nueva versión del fichero de configuración /etc/debian_version ..."
echo "(Leyendo la base de datos ... 32819 ficheros o directorios instalados actualmente.)"
echo "Preparando para desempaquetar .../nftables_0.9.8-3.1+deb11u1_amd64.deb ..."
sleep 0.3
echo "Desempaquetando nftables (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ..."
echo "Preparando para desempaquetar .../libnftables1_0.9.8-3.1+deb11u1_amd64.deb ..."
sleep 0.3
echo "Desempaquetando libnftables1:amd64 (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ..."
echo "Preparando para desempaquetar .../libtasn1-6_4.16.0-2+deb11u1_amd64.deb ..."
sleep 0.3
echo "Desempaquetando libtasn1-6:amd64 (4.16.0-2+deb11u1) sobre (4.16.0-2) ..."
echo "Configurando libtasn1-6:amd64 (4.16.0-2+deb11u1) ..."
sleep 0.6
echo "(Leyendo la base de datos ... 32819 ficheros o directorios instalados actualmente.)"
echo "Preparando para desempaquetar .../0-nano_5.4-2+deb11u2_amd64.deb ..."
sleep 0.3
echo "Desempaquetando nano (5.4-2+deb11u2) sobre (5.4-2+deb11u1) ..."
echo "Preparando para desempaquetar .../1-grub2-common_2.06-3~deb11u5_amd64.deb ..."
sleep 0.3
echo "Desempaquetando grub2-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Preparando para desempaquetar .../2-grub-pc_2.06-3~deb11u5_amd64.deb ..."
sleep 0.3
echo "Desempaquetando grub-pc (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Preparando para desempaquetar .../3-grub-pc-bin_2.06-3~deb11u5_amd64.deb ..."
sleep 0.3
echo "Desempaquetando grub-pc-bin (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Preparando para desempaquetar .../4-grub-common_2.06-3~deb11u5_amd64.deb ..."
sleep 0.3
echo "Desempaquetando grub-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ..."
echo "Seleccionando el paquete linux-image-5.10.0-20-amd64 previamente no seleccionado."
echo "Preparando para desempaquetar .../5-linux-image-5.10.0-20-amd64_5.10.158-2_amd64.deb ..."
sleep 0.5
echo "Desempaquetando linux-image-5.10.0-20-amd64 (5.10.158-2) ..."
echo "Preparando para desempaquetar .../6-linux-image-amd64_5.10.158-2_amd64.deb ..."
sleep 0.5
echo "Desempaquetando linux-image-amd64 (5.10.158-2) sobre (5.10.149-2) ..."
sleep 0.5
echo ""
echo "Configurando libnftables1:amd64 (0.9.8-3.1+deb11u1) ..."
sleep 0.2
echo "Configurando nftables (0.9.8-3.1+deb11u1) ..."
sleep 0.4
echo "Configurando grub-common (2.06-3~deb11u5) ..."
sleep 0.6
echo "Configurando nano (5.4-2+deb11u2) ..."
sleep 0.2
echo "Configurando linux-image-5.10.0-20-amd64 (5.10.158-2) ..."
sleep 0.4
echo "done"
echo ""
sleep 1
echo "Configurando grub2-common (2.06-3~deb11u5) ..."
sleep 0.2
echo "Configurando linux-image-amd64 (5.10.158-2) ..."
sleep 0.2
echo "Configurando grub-pc-bin (2.06-3~deb11u5) ..."
sleep 0.2
echo "Configurando grub-pc (2.06-3~deb11u5) ..."
sleep 0.2
echo "Instalando para plataforma i386-pc."

echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: OK \r'
    sleep 0.3
echo -ne '\n'
echo ""

echo "Instalación terminada. No se notificó ningún error."
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: - \r'
    sleep 0.3
echo -ne 'Cargando: \ \r'
    sleep 0.3
echo -ne 'Cargando: | \r'
    sleep 0.3
echo -ne 'Cargando: / \r'
    sleep 0.3
echo -ne 'Cargando: OK \r'
    sleep 0.3
echo -ne '\n'
echo ""
echo "Generating grub configuration file ..."
sleep 0.9
echo "Found linux image: /boot/vmlinuz-5.10.0-20-amd64"
sleep 0.3
echo "Found initrd image: /boot/initrd.img-5.10.0-20-amd64"
sleep 0.3
echo "Found linux image: /boot/vmlinuz-5.10.0-19-amd64"
sleep 0.3
echo "Found initrd image: /boot/initrd.img-5.10.0-19-amd64"
sleep 0.3
echo "Found linux image: /boot/vmlinuz-5.10.0-18-amd64"
sleep 0.3
echo "Found initrd image: /boot/initrd.img-5.10.0-18-amd64"
sleep 2
echo ""

echo -e "\e[0;1;91mWarning: os-prober will be executed to detect other bootable partitions.\e[0m"
echo "Its output will be used to detect bootable binaries on them and create new boot entries."

sleep 0.5

echo ""
echo -ne '[/💀--------------------------------------------] ( 03%)\r'
sleep 0.4
echo -ne '[///💀------------------------------------------] ( 08%)\r'
sleep 0.4
echo -ne '[///////💀--------------------------------------] ( 16%)\r'
sleep 0.4
echo -ne '[///////////💀----------------------------------] ( 24%)\r'
sleep 0.4
echo -ne '[///////////////💀------------------------------] ( 33%)\r'
sleep 0.4
echo -ne '[///////////////////💀--------------------------] ( 41%)\r'
sleep 0.4
echo -ne '[///////////////////////💀----------------------] ( 49%)\r'
sleep 0.4
echo -ne '[///////////////////////////💀------------------] ( 58%)\r'
sleep 0.4
echo -ne '[///////////////////////////////💀--------------] ( 66%)\r'
sleep 0.4
echo -ne '[///////////////////////////////////💀----------] ( 74%)\r'
sleep 0.6
echo -ne '[///////////////////////////////////////💀------] ( 83%)\r'
sleep 0.6
echo -ne '[///////////////////////////////////////////💀--] ( 92%)\r'
sleep 0.7
echo -ne '[/////////////////////////////////////////////💀] (100%)\r'
sleep 0.7
echo -ne '\n'
echo ""
echo "---done"
echo ""
echo "Procesando disparadores para libc-bin (2.31-13+deb11u5) ..."
sleep 0.7
echo ""
echo "ICAgICAgICAgICAgICAgICAgICAgIEkuICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgWEltICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIC4uLi5YSUltIC4gICAgICAgICAgICAKICAgICAgICAgICAgIC4uO0knJyAgIElYSU1JICdJOzsgICAgICAgIAouLiAgICAgICAgLi5JJyAgICAgICAgIFhNTU1MICAgIEk7LiAgICAgCiAgJyc7Li4gIDtQICAgICAgICAgICAgWElNRU5BICAgICAnSS4gICAKICAgICAnJ1hYaSsuICAgICAgICAgICA6SU1FTkE6ICAgICAgJzogIAogICAgICAuOicnSU1FTkFpOi4gICAgIDpYSU1FTjogICAgICAgJzogCiAgICAgIFggICAgJyc6WElNRU5BOiAgOklNRU5BICAgICAgICAgSTsKICAgICAgSSAgICAgICAgJyc7QkFDSFNDUklQWElMLiAgICAgICAgSQogICAgICBNICAgICAgICAgICAnJztYSU1FTkFCQVNIWEwgICAgICBJCiAgICAgIEUgICAgICAgICAgICAgIDtYWFhCQVNIUConJyogICAgIEkKICAgICAgIE4gICAgICAgICAgLjRYSU1FTkFQJyAgICAgICAgICBJIAogICAgICAgIEEgICAgICAgLjtYSU1QJycgICAgICAgICAgICAuSSAgCiAgICAgICAgICdCLiAuOycnIDsnICAgICAgICAgICAgICAuO0kgICAKICAgICAgICAgIC47QSAgICBJICAgICAgICAgICAgLi47SScgICAgIAogICAgICAgLionICAgJyc7SS4uICAgICAgIC4uOztJJyAgICAgICAgCiAgICAgJycgICAgICAgJyAgICAnJycnJycnJyAgICAgICAgIAo"
echo ""
echo ""
neofetch