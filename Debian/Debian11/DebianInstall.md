# Debian 11:

### 0 Apagado y ensendido con super usuario [su]. ✅

> restart con su:

	su

	systemctl reboot

> apagar sistema:

	su

	systemctl poweroff

### 0.1 Instalacion servicio SSH (ya instalado). ✅

	#apt install ssh -y

	systemctl status ssh

### 1 Instalacion de sudo Entramos con super usuario con [su] y contrasena. una ves dentro instalaremos "sudo" ✅

	su
	
> contraseña:

	apt install sudo

### Abriomos el puerto ssh  ✅

	sudo ufw allow OpenSSH

### 2. Añadir tu nombre de usuario al archivo sudoers ✅

Para dar permisos al usuario, es necesario editar el archivo que se encuentra en la ruta /etc/sudoers. Para ello, abrimos el archivo:

	nano /etc/sudoers

Una vez abierto, hay que buscar la línea que contiene **# Allow members of group sudo to execute any command**, y bajo ella añadir los siguiente:

```bash
# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL
usuario ALL=(ALL:ALL) ALL
```

### 2.1 Comprobar si se ha solucionado el detalle. ✅
Para comprobar, simplemente hay que ejecutar un comando con sudo delante:

	sudo apt update 
	sudo apt upgrade
	sudo apt autoclean

### 4 Cambiar a ip estatica  [coniscamos la ip] ✅

	ip a

> editaremos el fichero /etc/network/interfaces

	nano /etc/network/interfaces

> Modificaremos la sección de «the primary network interface» , cambiaremos dhcp por static y añadiremos los siguientes parámetros:
``` bash
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
allow-hotplug enp0s3
iface enp0s3 inet static
        address 192.168.100.132
        netmask 255.255.255.0
        network 192.168.100.1
        broadcast 192.168.100.255
        gateway 192.168.100.1

# This is an autoconfigured IPv6 interface
iface enp0s3 inet6 auto

```
> grabamos y reseteamos el pc
	
	systemctl reboot

--------------------------------------------
### 5 Cambiar zona horaria ✅

	sudo dpkg-reconfigure tzdata

> [America] [Mexico cd Mexico]

### 5.1. Modificar .bashrc ✅
dentro dela carpeta **~ (home/usuario/)** vemos com [ls -a] ,para ver archivos ocultos

	nano .bashrc

> agragar linea alias:

	alias inst='sudo apt-get install'

> al final del archivo:

	date
	fish

> actualisamos

	source .bashrc

--------------------------------------------
### 6 Montar la carpeta de Red como [su] ✅

	mkdir /home/redMount

	mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/data-500gb /home/redMount

**"o podemos ejecutar el archivo"**

	./mountRed-v1.7.1.sh

### 6.1 Ejecutarmos el archivo: ✅

	./installApps-DEB11server.sh

--------------------------------------------
### 7 red Instalacion de Samba ✅

	apt install samba

> agregar usuario, creera una carperta en Home

	sudo adduser blockout1

> pass: 12qw34er5

**revisar ip con**

	ip a   [192.168.100.112]

### 7.1 crear carpera de red   ✅

	mkdir /home/carpetaRED

> darpermisos para todos:

	chmod o+w /home/carpetaRED -R

### 7.2 configurar carpeta en samba  ✅

	nano /etc/samba/smb.conf

Escribir las sig linear al final del archivo y guardar

``` bash
	=====Share Definitions=====

	[carpetaRED]
		valid users = ximenadeb
		path = /home/carpetaRED
		read only = no
		browseable = yes
```

### 7.4 dar de alta al usuario en samba ✅
(ximenadeb se refiere al usuario que tendra la carpeta compartida),

	smbpasswd -a ximenadeb      
	
		New SMB password:
	
		Retype new SMB password:   

> Se pedira entrada de contrasena y confirmar

**abrir los puertos de samba, habilitar el contrafuegos**  ✅

	sudo service smbd status
	sudo service smbd restart

	sudo ufw allow samba

> confirmara con Reglas actualisadas , v6, revisamos el estatus del servicio

	sudo ufw status      

### 7.5 anotamos la ip con [ip a] y nombre de la carpteta tendremos la sig direccion.  ✅

	smb://192.168.100.112/carpetaRED/

--------------------------------------------
### 8 instalar plex y sevisaremos la disponivilidad de la aplicacion web: ✅
**"ejecutamos el archivo"**

	./plexInstall.sh
	./plexOpen32400.sh

> La siguiente direccion para acceder ala plataforma de forma visual

	192.168.100.112:32400/web 

### 9 Instalar el servicio FTP ✅

	apt install proftpd

>revisamos el estado del servicio.

	sudo service proftpd status

> conficuarcion del archivo de configuraciones

	nano /etc/proftpd/proftpd.conf

Modificaremos el archivo, creamos una copia de seguridad , borramos el contenido y pegaremos las siguientes lineas guardamos y cerramos recargamos el servicio.

``` bash
Include /etc/proftpd/modules.conf
UseIPv6 on
<IfModule mod_ident.c>
        IdentLookups off
    </IfModule>
        ServerName "Debian 11 server"
        ServerType standalone
        DeferWelcome off
        DefaultServer on
        ShowSymlinks on
        TimeoutNoTransfer 600
        TimeoutStalled 600
        TimeoutIdle 1200
        DisplayLogin welcome.msg
        DisplayChdir .message true
        ListOptions "-l"
        DenyFilter \*.*/
        Port 21
<IfModule mod_dynmasq.c>
    </IfModule>
        MaxInstances 30
        User proftpd
        Group nogroup
        Umask 022 022
        AllowOverwrite on
        TransferLog /var/log/proftpd/xferlog
        SystemLog /var/log/proftpd/proftpd.log
    <IfModule mod_quotatab.c>
        QuotaEngine off
</IfModule>
    <IfModule mod_ratio.c>
        Ratios off
</IfModule>
    <IfModule mod_delay.c>
        DelayEngine on
</IfModule>
    <IfModule mod_ctrls.c>
        ControlsEngine off
        ControlsMaxClients 2
        ControlsLog /var/log/proftpd/controls.log
        ControlsInterval 5
        ControlsSocket /var/run/proftpd/proftpd.sock
</IfModule>
    <IfModule mod_ctrls_admin.c>
        AdminControlsEngine off
    </IfModule>
        Include /etc/proftpd/conf.d/

AccessGrantMSG "Binvenida"
AccessDenyMSG ":::ERROR AL CONECTAR:::"

DefaultRoot ~ 
```
> recargar el servicio:

	sudo service proftpd reload

> desactivar el Firewall si la coneccion no es correcta:

	sudo ufw disable

------------------------------------------------------------
### 10 Instalamos interfaz grafica: ✅
Instalamos la aplicacion si en caso que no la tengamos (ya se encuentra instalado de base)

	apt install tasksel

> Iniciamos como super usuario [su] el comando.

	tasksel  

**Con flechas se mueve para selecccionar el escritorio, espacio para seleccionar y Tab para aceptar o cancelar**

Una ves termine al 100% reiniciaremos para entrar al modo grafico

	systemctl reboot

> Apagamos el sistema con.

	systemctl poweroff

------------------------------------------------------------
### Instalar Apps en xfce

``` bash
#Tienda de aplicaciones de gnome**
	apt install gnome-software -y

#Administrador de discos de Gnome**
	apt install gnome-disk-utility
```
### Instalacion de Appimage (gnome)

Debian de base tiene instalado el paquete libfuse2 , Appimage no acepto el repositorio por lo mismo no es posible instalar el paquete: appimagelauncher, pero es posible ejecutar programas Appimage con solo cambiar la propiedad a ejecutable, se podrán generar lanzadores para estas aplicaciones.

### Instalar barra inferior y los demas complementos de extenxiones de gnome. ✅

* Clipboard indicator
* Blur my Shell
* Dash to Dock
* User Themes (instalada desde base)
* Show Desktop Button
* compiz alike magic
* Emoji selector
* Desktop Clock (no es compatible)



### Installar iconos de Yaru-NaturalGnome ✅
* Yaru-NaturalGnome
* Mkos-Big-Sur.tar.xz

### Instalar Thema WhiteSur-gtk-theme.tar.x ✅

	apt install git
    git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git

	cd WhiteSur-gtk-theme/
    ./install.sh -t all -N glassy -s 220
    ./tweaks.sh -g
### instalar ordenes de plantillas. ✅
Se nesesitan los sigientes archivos:

* config.fish
* plantillas.tar.xz

Estos archivos deven estar en /home/usuario/ y abrir una termial en esta ubicacion y copiar y pegar en la terminal las siguientes instrucciones.
``` bash
#Seccion de instalaciones de Plantillas y complementos personalisados.
    touch {$HOME}/Plantillas/'Documento txt.txt'
        echo ". " >> {$HOME}/Plantillas/'Documento txt.txt'

    touch {$HOME}/Plantillas/'Documento md.md'
        echo "# Titulo" >> {$HOME}/Plantillas/'Documento md.md'
        echo "### Sub titulo" >> {$HOME}/Plantillas/'Documento md.md'
        echo "> Comentario" >> {$HOME}/Plantillas/'Documento md.md'
        echo "* Vineta" >> {$HOME}/Plantillas/'Documento md.md'

    tar -Jxvf plantillas.tar.xz -C {$HOME}/Plantillas
echo " Se instalaron las plantillas en ~/Plantillas"

    	cp config.fish {$HOME}/.config/fish/
echo " Se intalo titulo de bienvenida para fish en ~/.config/fish/"
```

### Instalar zsh y complementos.