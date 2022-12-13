# Debian 11:

### 0 Apagado y ensendido.

> restart con su:

	su

	Ctrl+Alt+Del

> apagar sistema:

	su

	systemctl poweroff

### 0.1 Instalacion servicio SSH.

	apt install ssh -y

	systemctl status ssh

### 1 Instalacion de sudo Entramos con super usuario con [su] y contrasena. una ves dentro instalaremos "sudo"

	su
	
> contraseña:

	apt install sudo

### 2. Añadir tu nombre de usuario al archivo sudoers

**Para dar permisos al usuario, es necesario editar el archivo que se encuentra en la ruta /etc/sudoers. Para ello, abrimos el archivo:**

	nano /etc/sudoers

> Una vez abierto, hay que buscar la línea que contiene %sudo   ALL=(ALL:ALL) ALL y, bajo ella, añadir los siguiente:

	usuario ALL=(ALL:ALL) ALL

### 3. Comprobar si se ha solucionado el problema
**Para comprobar, simplemente hay que ejecutar un comando con sudo delante:**

	sudo apt update 
	sudo apt upgrade
	sudo apt autoclean

### 4 Cambiar a ip estatica  [coniscamos la ip]

	apt install net-tools

	ip a

> editaremos el fichero /etc/network/interfaces

	nano /etc/network/interfaces

> Modificaremos la sección de «the primary network interface» , cambiaremos dhcp por static y añadiremos los siguientes parámetros:
``` bash
	iface eth0 inet static
		address 192.168.100.100
		netmask 255.255.255.0
		network 192.168.100.1
		broadcast 192.168.100.255
		gateway 192.168.100.1
```
> grabamos y reseteamos el pc
	
	Ctrl+Alt+Del

--------------------------------------------
### 5 Cambiar zona horaria

	dpkg-reconfigure tzdata

> [America] [Mexico cd Mexico] 

### 5.1. Modificar .bashrc
**dentro dela carpeta ~ (home/usuario/) vemos com ls -a ,para ver archivos ocultos**

	nano .bashrc

> agragar linea alias:

	alias inst='sudo apt-get install'

> al final del archivo:

	date
	fish

--------------------------------------------
### 6 Montar la carpeta de Red 

	mkdir ~/redMount

	mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/data-500gb ~/redMount

**"o podemos ejecutar el archivo"**

	./mountRed-v1.22.07.sh

### 6.1 Ejecutarmos el archivo:

	./installApps-DEB-v1.22.07.sh

--------------------------------------------
### 7 red Instalacion de Samba

	apt install samba

> agregar usuario, creera una carperta en Home

	adduser blockout1

> pass: 12qw34er5

**revisar ip con**

	ip a   [192.168.100.112]

### 7.1 crear carpera de red   

	mkdir /home/ximenadeb/carpetaRED

> darpermisos para todos:

	chmod o+w . -R

### 7.2 configurar carpeta en samba con: 

	nano /etc/samba/smb.conf

**"o podemos ejecutar el archivo"**

	./sambaConfig.sh

## 7.3 escribir las sig linear al final del archivo y guardar

``` bash
	=====Share Definitions=====

	[sambaRED]
		valid users = ximenadeb
		path = /home/ximenadeb/compartido
		read only = no
		browseable = yes
```

### 7.4 dar de alta al usuario en samba
**(ximenadeb se refiere al usuario que tendra la carpeta compartida),**

	smbpasswd -a ximenadeb      
	New SMB password:
	Retype new SMB password:      
> se pedira entrada de contrasena y confirmar

**abrir los puertos de samba, habilitar el contrafuegos**

	service smbd restart
	#ufw allow samba
	#ufw allow OpenSSH

> confirmara con Reglas actualisadas , v6, revisamos el estatus del servicio

	ufw status      

### 7.5 anotamos la ip con [ip a] y nombre de la carpteta tendremos la sig direccion.  

	smb://192.168.100.112/sambaRED/

--------------------------------------------
### 8 instalar plex:
**"ejecutamos el archivo"**

	./plexInstall.sh
	./plexOpen32400.sh

> La siguiente direccion para acceder ala plataforma de forma visual

	192.168.100.112:32400/web

### 9 Instalar el servicio FTP

	apt install proftpd
	service proftpd status

> conficuarcion del archivo

	nano /etc/proftpd/proftpd.conf

> recargar el servicio:

	service proftpd reload

------------------------------------------------------------

### 10 Instalamos interfaz grafica:
**Instalamos la aplicacion si en caso que no la tengamos**

	apt install tasksel

> Iniciamos como super usuario [su] el comando.

	tasksel  

**Con flechas se mueve para selecccionar el escritorio, espacio para seleccionar y Tab para aceptar o cancelar**
**Una ves termine al 100% reiniciaremos con: para entrar al modo grafico**

	Ctrl+Alt+Del
	systemctl poweroff
------------------------------------------------------------

### Instalar Apps
**Extencion Manajer en flatpak**
	
	flatpak install flathub com.mattjakeman.ExtensionManager

**Tienda de aplicaciones de gnome**
	
	apt install gnome-software -y

**Administrador de discos de Gnome**
	
	apt install gnome-disk-utility