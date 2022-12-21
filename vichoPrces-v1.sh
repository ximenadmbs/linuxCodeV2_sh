#!/bin/bash

#y comprobamos el estado de networking
    systemctl status networking

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
    dpkg --version
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

    sudo service smbd status

    sudo service proftpd status

#muestra informacion del sistema
    cat /etc/os-release
    

#revisar si opengl esta activado
    glxinfo | grep direct

#estado de livepatch de ubuntu
    sudo ua status --wait

    pro security-status


Leyendo lista de paquetes... Hecho
Creando árbol de dependencias... Hecho
Leyendo la información de estado... Hecho
No se pudieron instalar algunos paquetes. Esto puede significar que
usted pidió una situación imposible o, si está usando la distribución
inestable, que algunos paquetes necesarios aún no se han creado o se
han sacado de «Incoming».
La siguiente información puede ayudar a resolver la situación:

Los siguientes paquetes tienen dependencias incumplidas:
 gcr : Depende: default-dbus-session-bus o
                dbus-session-bus
 gnome-applets : Depende: upower pero no es instalable
 gnome-control-center : Depende: colord (>= 0.1.30) pero no es instalable
                        Recomienda: gnome-user-share pero no es instalable
                        Recomienda: malcontent-gui pero no es instalable
                        Recomienda: network-manager-gnome (>= 0.9.8) pero no va a instalarse
 gnome-keyring : Depende: default-dbus-session-bus o
                          dbus-session-bus
 libcpupower1 : Depende: libc6 (>= 2.34) pero 2.31-13+deb11u5 va a ser instalado
 libjavascriptcoregtk-4.0-18 : Depende: libc6 (>= 2.34) pero 2.31-13+deb11u5 va a ser instalado
                               Depende: libicu72 (>= 72.1~rc-1~) pero no es instalable
                               Depende: libstdc++6 (>= 12) pero 10.2.1-6 va a ser instalado
 liblilv-0-0 : Depende: libc6 (>= 2.34) pero 2.31-13+deb11u5 va a ser instalado
 libwebkit2gtk-4.0-37 : Depende: libavif15 (>= 0.11.1) pero no es instalable
                        Depende: libc6 (>= 2.35) pero 2.31-13+deb11u5 va a ser instalado
                        Depende: libgcrypt20 (>= 1.10.0) pero 1.8.7-6 va a ser instalado
                        Depende: libglib2.0-0 (>= 2.70.0) pero 2.66.8-1 va a ser instalado
                        Depende: libgstreamer-plugins-bad1.0-0 (>= 1.20.4) pero 1.18.4-3 va a ser instalado
                        Depende: libgstreamer-plugins-base1.0-0 (>= 1.20.0) pero 1.18.4-2 va a ser instalado
                        Depende: libgstreamer1.0-0 (>= 1.20.0) pero 1.18.4-2.1 va a ser instalado
                        Depende: libicu72 (>= 72.1~rc-1~) pero no es instalable
                        Depende: libstdc++6 (>= 12) pero 10.2.1-6 va a ser instalado
                        Depende: libwayland-client0 (>= 1.20.0) pero 1.18.0-2~exp1.1 va a ser instalado
                        Depende: libwebp7 pero no es instalable
                        Recomienda: xdg-desktop-portal-gtk pero no va a instalarse
                        Recomienda: gstreamer1.0-libav pero no es instalable
 libwebrtc-audio-processing1 : Depende: libabsl20210324 (>= 0~20210324.2-1) pero no es instalable
                               Depende: libstdc++6 (>= 11) pero 10.2.1-6 va a ser instalado


Leyendo lista de paquetes... Hecho
Creando árbol de dependencias... Hecho
Leyendo la información de estado... Hecho
Calculando la actualización... Hecho
Se instalarán los siguientes paquetes NUEVOS:
  linux-image-5.10.0-20-amd64
Se actualizarán los siguientes paquetes:
  base-files distro-info-data grub-common grub-pc grub-pc-bin grub2-common libnftables1 libtasn1-6
  linux-image-amd64 nano nftables
11 actualizados, 1 nuevos se instalarán, 0 para eliminar y 0 no actualizados.
Se necesita descargar 61.1 MB de archivos.
Se utilizarán 318 MB de espacio de disco adicional después de esta operación.
¿Desea continuar? [S/n] s
Des:1 http://deb.debian.org/debian bullseye/main amd64 base-files amd64 11.1+deb11u6 [70.1 kB]
Des:2 http://deb.debian.org/debian bullseye/main amd64 nftables amd64 0.9.8-3.1+deb11u1 [68.7 kB]
Des:3 http://deb.debian.org/debian bullseye/main amd64 libnftables1 amd64 0.9.8-3.1+deb11u1 [261 kB]
Des:4 http://deb.debian.org/debian bullseye/main amd64 libtasn1-6 amd64 4.16.0-2+deb11u1 [54.9 kB]
Des:5 http://deb.debian.org/debian bullseye/main amd64 nano amd64 5.4-2+deb11u2 [657 kB]
Des:6 http://deb.debian.org/debian bullseye/main amd64 distro-info-data all 0.51+deb11u3 [7 812 B]
Des:7 http://deb.debian.org/debian bullseye/main amd64 grub2-common amd64 2.06-3~deb11u5 [611 kB]
Des:8 http://deb.debian.org/debian bullseye/main amd64 grub-pc amd64 2.06-3~deb11u5 [131 kB]
Des:9 http://deb.debian.org/debian bullseye/main amd64 grub-pc-bin amd64 2.06-3~deb11u5 [992 kB]
Des:10 http://deb.debian.org/debian bullseye/main amd64 grub-common amd64 2.06-3~deb11u5 [2 761 kB]
Des:11 http://deb.debian.org/debian bullseye/main amd64 linux-image-5.10.0-20-amd64 amd64 5.10.158-2 [55.5 MB]
Des:12 http://deb.debian.org/debian bullseye/main amd64 linux-image-amd64 amd64 5.10.158-2 [1 484 B]
Descargados 61.1 MB en 6s (10.3 MB/s)      
Preconfigurando paquetes ...
(Leyendo la base de datos ... 47147 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../base-files_11.1+deb11u6_amd64.deb ...
Desempaquetando base-files (11.1+deb11u6) sobre (11.1+deb11u5) ...
Configurando base-files (11.1+deb11u6) ...
Instalando una nueva versión del fichero de configuración /etc/debian_version ...
(Leyendo la base de datos ... 47147 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../nftables_0.9.8-3.1+deb11u1_amd64.deb ...
Desempaquetando nftables (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ...
Preparando para desempaquetar .../libnftables1_0.9.8-3.1+deb11u1_amd64.deb ...
Desempaquetando libnftables1:amd64 (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ...
Preparando para desempaquetar .../libtasn1-6_4.16.0-2+deb11u1_amd64.deb ...
Desempaquetando libtasn1-6:amd64 (4.16.0-2+deb11u1) sobre (4.16.0-2) ...
Configurando libtasn1-6:amd64 (4.16.0-2+deb11u1) ...
(Leyendo la base de datos ... 47147 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../0-nano_5.4-2+deb11u2_amd64.deb ...
Desempaquetando nano (5.4-2+deb11u2) sobre (5.4-2+deb11u1) ...
Preparando para desempaquetar .../1-distro-info-data_0.51+deb11u3_all.deb ...
Desempaquetando distro-info-data (0.51+deb11u3) sobre (0.51+deb11u2) ...
Preparando para desempaquetar .../2-grub2-common_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub2-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Preparando para desempaquetar .../3-grub-pc_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub-pc (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Preparando para desempaquetar .../4-grub-pc-bin_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub-pc-bin (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Preparando para desempaquetar .../5-grub-common_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Seleccionando el paquete linux-image-5.10.0-20-amd64 previamente no seleccionado.
Preparando para desempaquetar .../6-linux-image-5.10.0-20-amd64_5.10.158-2_amd64.deb ...
Desempaquetando linux-image-5.10.0-20-amd64 (5.10.158-2) ...
Preparando para desempaquetar .../7-linux-image-amd64_5.10.158-2_amd64.deb ...
Desempaquetando linux-image-amd64 (5.10.158-2) sobre (5.10.149-2) ...
Configurando libnftables1:amd64 (0.9.8-3.1+deb11u1) ...
Configurando nftables (0.9.8-3.1+deb11u1) ...
Configurando distro-info-data (0.51+deb11u3) ...
Configurando grub-common (2.06-3~deb11u5) ...
Configurando nano (5.4-2+deb11u2) ...
Configurando linux-image-5.10.0-20-amd64 (5.10.158-2) ...
I: /vmlinuz.old is now a symlink to boot/vmlinuz-5.10.0-19-amd64
I: /initrd.img.old is now a symlink to boot/initrd.img-5.10.0-19-amd64
I: /vmlinuz is now a symlink to boot/vmlinuz-5.10.0-20-amd64
I: /initrd.img is now a symlink to boot/initrd.img-5.10.0-20-amd64
/etc/kernel/postinst.d/initramfs-tools:
update-initramfs: Generating /boot/initrd.img-5.10.0-20-amd64
/etc/kernel/postinst.d/zz-update-grub:
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.10.0-20-amd64
Found initrd image: /boot/initrd.img-5.10.0-20-amd64
Found linux image: /boot/vmlinuz-5.10.0-19-amd64
Found initrd image: /boot/initrd.img-5.10.0-19-amd64
Found linux image: /boot/vmlinuz-5.10.0-18-amd64
Found initrd image: /boot/initrd.img-5.10.0-18-amd64
Warning: os-prober will be executed to detect other bootable partitions.
Its output will be used to detect bootable binaries on them and create new boot entries.
done
Configurando grub2-common (2.06-3~deb11u5) ...
Configurando linux-image-amd64 (5.10.158-2) ...
Configurando grub-pc-bin (2.06-3~deb11u5) ...
Configurando grub-pc (2.06-3~deb11u5) ...
Instalando para plataforma i386-pc.
Instalación terminada. No se notificó ningún error.
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.10.0-20-amd64
Found initrd image: /boot/initrd.img-5.10.0-20-amd64
Found linux image: /boot/vmlinuz-5.10.0-19-amd64
Found initrd image: /boot/initrd.img-5.10.0-19-amd64
Found linux image: /boot/vmlinuz-5.10.0-18-amd64
Found initrd image: /boot/initrd.img-5.10.0-18-amd64
Warning: os-prober will be executed to detect other bootable partitions.
Its output will be used to detect bootable binaries on them and create new boot entries.
done



Leyendo lista de paquetes... Hecho
Creando árbol de dependencias... Hecho
Leyendo la información de estado... Hecho
Calculando la actualización... Hecho
Se instalarán los siguientes paquetes NUEVOS:
  linux-image-5.10.0-20-amd64
Se actualizarán los siguientes paquetes:
  base-files grub-common grub-pc grub-pc-bin grub2-common libnftables1 libtasn1-6 linux-image-amd64 nano
  nftables
10 actualizados, 1 nuevos se instalarán, 0 para eliminar y 0 no actualizados.
Se necesita descargar 61.1 MB de archivos.
Se utilizarán 318 MB de espacio de disco adicional después de esta operación.
¿Desea continuar? [S/n] s
Des:1 http://deb.debian.org/debian bullseye/main amd64 base-files amd64 11.1+deb11u6 [70.1 kB]
Des:2 http://deb.debian.org/debian bullseye/main amd64 nftables amd64 0.9.8-3.1+deb11u1 [68.7 kB]
Des:3 http://deb.debian.org/debian bullseye/main amd64 libnftables1 amd64 0.9.8-3.1+deb11u1 [261 kB]
Des:4 http://deb.debian.org/debian bullseye/main amd64 libtasn1-6 amd64 4.16.0-2+deb11u1 [54.9 kB]
Des:5 http://deb.debian.org/debian bullseye/main amd64 nano amd64 5.4-2+deb11u2 [657 kB]
Des:6 http://deb.debian.org/debian bullseye/main amd64 grub2-common amd64 2.06-3~deb11u5 [611 kB]
Des:7 http://deb.debian.org/debian bullseye/main amd64 grub-pc amd64 2.06-3~deb11u5 [131 kB]
Des:8 http://deb.debian.org/debian bullseye/main amd64 grub-pc-bin amd64 2.06-3~deb11u5 [992 kB]
Des:9 http://deb.debian.org/debian bullseye/main amd64 grub-common amd64 2.06-3~deb11u5 [2 761 kB]
Des:10 http://deb.debian.org/debian bullseye/main amd64 linux-image-5.10.0-20-amd64 amd64 5.10.158-2 [55.5 MB]
Des:11 http://deb.debian.org/debian bullseye/main amd64 linux-image-amd64 amd64 5.10.158-2 [1 484 B]
Descargados 61.1 MB en 6s (10.3 MB/s)      
Preconfigurando paquetes ...
(Leyendo la base de datos ... 32819 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../base-files_11.1+deb11u6_amd64.deb ...
Desempaquetando base-files (11.1+deb11u6) sobre (11.1+deb11u5) ...
Configurando base-files (11.1+deb11u6) ...
Instalando una nueva versión del fichero de configuración /etc/debian_version ...
(Leyendo la base de datos ... 32819 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../nftables_0.9.8-3.1+deb11u1_amd64.deb ...
Desempaquetando nftables (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ...
Preparando para desempaquetar .../libnftables1_0.9.8-3.1+deb11u1_amd64.deb ...
Desempaquetando libnftables1:amd64 (0.9.8-3.1+deb11u1) sobre (0.9.8-3.1) ...
Preparando para desempaquetar .../libtasn1-6_4.16.0-2+deb11u1_amd64.deb ...
Desempaquetando libtasn1-6:amd64 (4.16.0-2+deb11u1) sobre (4.16.0-2) ...
Configurando libtasn1-6:amd64 (4.16.0-2+deb11u1) ...
(Leyendo la base de datos ... 32819 ficheros o directorios instalados actualmente.)
Preparando para desempaquetar .../0-nano_5.4-2+deb11u2_amd64.deb ...
Desempaquetando nano (5.4-2+deb11u2) sobre (5.4-2+deb11u1) ...
Preparando para desempaquetar .../1-grub2-common_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub2-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Preparando para desempaquetar .../2-grub-pc_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub-pc (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Preparando para desempaquetar .../3-grub-pc-bin_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub-pc-bin (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Preparando para desempaquetar .../4-grub-common_2.06-3~deb11u5_amd64.deb ...
Desempaquetando grub-common (2.06-3~deb11u5) sobre (2.06-3~deb11u4) ...
Seleccionando el paquete linux-image-5.10.0-20-amd64 previamente no seleccionado.
Preparando para desempaquetar .../5-linux-image-5.10.0-20-amd64_5.10.158-2_amd64.deb ...
Desempaquetando linux-image-5.10.0-20-amd64 (5.10.158-2) ...
Preparando para desempaquetar .../6-linux-image-amd64_5.10.158-2_amd64.deb ...
Desempaquetando linux-image-amd64 (5.10.158-2) sobre (5.10.149-2) ...
Configurando libnftables1:amd64 (0.9.8-3.1+deb11u1) ...
Configurando nftables (0.9.8-3.1+deb11u1) ...
Configurando grub-common (2.06-3~deb11u5) ...
Configurando nano (5.4-2+deb11u2) ...
Configurando linux-image-5.10.0-20-amd64 (5.10.158-2) ...
I: /vmlinuz.old is now a symlink to boot/vmlinuz-5.10.0-19-amd64
I: /initrd.img.old is now a symlink to boot/initrd.img-5.10.0-19-amd64
I: /vmlinuz is now a symlink to boot/vmlinuz-5.10.0-20-amd64
I: /initrd.img is now a symlink to boot/initrd.img-5.10.0-20-amd64
/etc/kernel/postinst.d/initramfs-tools:
update-initramfs: Generating /boot/initrd.img-5.10.0-20-amd64
/etc/kernel/postinst.d/zz-update-grub:
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.10.0-20-amd64
Found initrd image: /boot/initrd.img-5.10.0-20-amd64
Found linux image: /boot/vmlinuz-5.10.0-19-amd64
Found initrd image: /boot/initrd.img-5.10.0-19-amd64
Found linux image: /boot/vmlinuz-5.10.0-18-amd64
Found initrd image: /boot/initrd.img-5.10.0-18-amd64
Warning: os-prober will be executed to detect other bootable partitions.
Its output will be used to detect bootable binaries on them and create new boot entries.
done
Configurando grub2-common (2.06-3~deb11u5) ...
Configurando linux-image-amd64 (5.10.158-2) ...
Configurando grub-pc-bin (2.06-3~deb11u5) ...
Configurando grub-pc (2.06-3~deb11u5) ...
Instalando para plataforma i386-pc.
Instalación terminada. No se notificó ningún error.
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.10.0-20-amd64
Found initrd image: /boot/initrd.img-5.10.0-20-amd64
Found linux image: /boot/vmlinuz-5.10.0-19-amd64
Found initrd image: /boot/initrd.img-5.10.0-19-amd64
Found linux image: /boot/vmlinuz-5.10.0-18-amd64
Found initrd image: /boot/initrd.img-5.10.0-18-amd64
Warning: os-prober will be executed to detect other bootable partitions.
Its output will be used to detect bootable binaries on them and create new boot entries.
done
Procesando disparadores para libc-bin (2.31-13+deb11u5) ...

