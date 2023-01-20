# Debian 12:  "Bookworm", Debian 12.

https://cdimage.debian.org/cdimage/weekly-builds/

### Apagado y ensendido con susuario o super usuario [su]. ✅

> restart con su:

	systemctl reboot

> apagar sistema:

	systemctl poweroff

### Añadir tu nombre de usuario al archivo sudoers ✅

Para dar permisos al usuario, iniciamos super usuario [su] es necesario editar el archivo que se encuentra en la ruta /etc/sudoers. Para ello, abrimos el archivo:

	su

	nano /etc/sudoers

Una vez abierto, hay que buscar la línea que contiene **# Allow members of group sudo to execute any command**, y bajo ella añadir los siguiente:

```bash
# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL
usuario ALL=(ALL:ALL) ALL
```

### Instalacion de sudo (sudo ya esta instalado en debian 12) ✅

### Instalacion servicio SSH (ya instalado). ✅

Si en la istalacion se selecciono servicios de ssh lla estara instalado si no es el caso, se indtalara de la siguiente forma

	apt install ssh -y

	ssh --version

	systemctl status ssh

### Abriomos el puerto ssh  ✅

Instalamos el contrafuegos con, y abrimos el puerto con ufw allow.

	sudo apt install ufw -y

	sudo ufw allow OpenSSH

### Actualisamos el sistema. ✅
Para comprobar, simplemente hay que ejecutar:

	sudo apt update 
	sudo apt upgrade
	sudo apt autoclean

### Instalacion de administrador de instalaciones y paquetes nala ✅

	sudo apt install nala

------------------------------------------------------
### Cambiar a ip estatica  [coniscamos la ip]  ✅

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
### Cambiar zona horaria ✅

	sudo dpkg-reconfigure tzdata

> [America] [Mexico cd Mexico]

### Modificar .bashrc ✅
dentro dela carpeta **~ (home/usuario/)** vemos com [ls -a] ,para ver archivos ocultos

	sudo nano .bashrc

> agragar linea alias:

	alias inst='sudo apt-get install'

> al final del archivo:

	date
	fish

> actualisamos

	source .bashrc

--------------------------------------------
### Montar la carpeta de Red ✅

	sudo mkdir /home/redMount

	sudo mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/xena /home/redMount

**"o podemos ejecutar el archivo"**

	./mountRed-v1.7.1.sh

### Ejecutarmos el archivo: ✅

	./installApps-DEB12server.sh

--------------------------------------------
### red Instalacion de Samba ✅

	sudo nala install samba -y

> agregar usuario, creera una carperta en Home

	sudo adduser xavi

> pass: 1234

**revisar ip con**

	ip a   [inet 192.168.100.146/24]

### Crear carpera de red ✅

	sudo mkdir /home/carpetaRED

> darpermisos para todos:

	sudo chmod o+w /home/carpetaRED -R

### Configurar carpeta en samba ✅

	sudo nano /etc/samba/smb.conf

Escribir las sig linear al final del archivo y guardar

``` bash
	=====Share Definitions=====

	[carpetaRED]
		valid users = ximenadeb
		path = /home/carpetaRED
		read only = no
		browseable = yes
```

### Dar de alta al usuario en samba ✅
(ximenadeb se refiere al usuario que tendra la carpeta compartida),

	sudo smbpasswd -a ximenadeb      
	
		New SMB password:
		Retype new SMB password:   

> Se pedira entrada de contrasena y confirmar

**abrir los puertos de samba, habilitar el contrafuegos**  

	sudo service smbd status
	sudo service smbd restart

	sudo ufw allow samba

> Confirmara con Reglas actualisadas , v6, revisamos el estatus del servicio

	sudo ufw status      

### Anotamos la ip con [ip a] y nombre de la carpteta tendremos la sig direccion.  ✅

	smb://192.168.100.146/carpetaRED/

--------------------------------------------
### Instalar plex y sevisaremos la disponivilidad de la aplicacion web: ✅

Ejecutamos el archivo.

	./plexInstall.sh
	./plexOpen32400.sh

> La siguiente direccion para acceder ala plataforma de forma visual

	192.168.100.112:32400/web 

### Instalar el servicio FTP ✅

	sudo nala install proftpd-core

>revisamos el estado del servicio.

	sudo service proftpd status

> conficuarcion del archivo de configuraciones

	sudo nano /etc/proftpd/proftpd.conf

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
### Instalamos interfaz grafica: ✅
El instalador de la herramientas e interfas grafica "taskel" ya se encuentra instalado en Debian 12.

> Iniciamos como super usuario [su] el comando.

	tasksel  

**Con flechas se mueve para selecccionar el escritorio, espacio para seleccionar y Tab para aceptar o cancelar**

Una ves termine al 100% reiniciaremos para entrar al modo grafico

	systemctl reboot

> Apagamos el sistema con.

	systemctl poweroff

------------------------------------------------------------
### Instalar Apps en el escritorio xfce

``` bash
#Tienda de aplicaciones de gnome**
	apt install gnome-software -y

#Administrador de discos de Gnome**
	apt install gnome-disk-utility
```
### Instalacion de Appimage (en el escritorio gnome) ✅

Debian de base tiene instalado el paquete libfuse2 , Appimage no acepto el repositorio por lo mismo no es posible instalar el paquete: appimagelauncher, pero es posible ejecutar programas Appimage con solo cambiar la propiedad a ejecutable, se podrán generar lanzadores para estas aplicaciones.

### Ejecutar el intalador de aplicaciones de escritorio Gnome ✅
Ejecutamos el archivo de indtalacion sh

	./installApps-DEB12gnome.sh

### Instalar barra inferior y los demas complementos de extenxiones de gnome. ✅

* Clipboard indicator
* Blur my Shell
* Dash to Dock
* User Themes (Instalada desde base)
* Show Desktop Button
* Compiz alike magic
* Emoji selector
* Desktop Clock 



### Installar iconos de Yaru-NaturalGnome ✅
* YaruEX (proyecto para debian12)
* Yaru-NaturalGnome
* Mkos-Big-Sur.tar.xz

### Instalar Thema WhiteSur-gtk-theme.tar.x ❌

	apt install git
    git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git

	cd WhiteSur-gtk-theme/
    ./install.sh -t all -N glassy -s 220
    ./tweaks.sh -g
	
### Instalar ordenes de plantillas. ✅
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

	tar -Jxvf plantillas.tar.xz -C $HOME/Plantillas

		cp -r fish/ $HOME/.config/
	echo " Instalando de bienvenida para fish en ~/.config/fish/"
echo " "
```

## Instalar zsh y complementos.

### Problema con Nautilus 43 no sigue el tema gtk (Inestable) ⭕
modificaremos el archivo llamado .profile de la carpeta personal /home/usuario , y agregaremos la siguiente linea en la parte de abajo del archivo.

```bash
export GTK_THEME=WhiteSur-Dark
```
WhiteSur-Dark = al tema que se encuentra en la carpeta .themes

## Repositorios adicionales para Debian 12 ✅
Agregar en el archivo el siguiente contenido el la parte baja del archivo.

	sudo nano /etc/apt/sources.list

```bash
# bullseye-oficiales
deb http://deb.debian.org/debian/ bullseye main contrib non-free
deb-src http://deb.debian.org/debian/ bullseye main contrib non-free

# bullseye-debian-multimedia
deb http://www.deb-multimedia.org bullseye main non-free
```

Agregamos la llave que nesesita el repositorio multimedia

	sudo nala update -oAcquire::AllowInsecureRepositories=true
	sudo nala install deb-multimedia-keyring

### Instalar snapcraft y tienda de snap  ✅
En Debian 9 (Stretch) y posteriores, se puede instalar snap directamente desde la línea de comandos:

	sudo nala update
	sudo nala install snapd
	sudo snap install core
	sudo snap install snap-store

Una ves instalado los paquetes se debe reiniciar el equipo.

### Instalar AppimageLauncher  ✅
lo conseguimos el paquete en la siguiente direccion [https://github.com/TheAssassin/AppImageLauncher/releases] conseguimos el .deb

Instalamos con el intalador de paquetes o con linea de comando, de la siguiente manera.

	sudo dpkg -i appimagelauncher_2.2.0_amd64.deb

> Se omite la linea de instalacion el repositorio e instalacion.