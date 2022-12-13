# Linus Mint 21:

### Comprobar si se tiene apt instalalado ✅

> Para comprobar, simplemente hay que ejecutar un comando con sudo delante:

	sudo apt update 
	
	sudo apt upgrade
	
	sudo apt autoclean

# Instala Entorno Gnome ✅

como super usuiario] [su]

	apt install tasksel

> Iniciamos con [su] el comando 

	tasksel  

**Conflechas semueve para selecccionar el escritorio, espacio para seleccionar y Tab para aceptar o cancelar**
Una ves termine al 100% reiniciaremos con: para entrar al modo grafico

### Configurar el selector de entornos

	sudo dpkd-reconfigure 
	
	gbm3	lightdm		sddm

	sudo reboot

### Programas AppsImage  ✅

Copiar el prgograma en carpeta home, cambiar permisos a ejecutable.

	sudo add-apt-repository universe

	sudo add-apt-repository ppa:appimagelauncher-team/stable -y

	sudo apt install libfuse2 -y

	sudo apt install appimagelauncher -y


### Cambiar a ip estatica  [coniscamos la ip]  (pendiente)  ❌

	sudo apt install net-tools

	ip a

> Editaremos el fichero /etc/network/interfaces]

	sudo nano /etc/network/interfaces

> Modificaremos la sección de «the primary network interface» , cambiaremos dhcp por static y añadiremos los siguientes parámetros:]

``` bash
iface eth0 inet static
	address 192.168.100.100
	netmask 255.255.255.0
	network 192.168.100.1
	broadcast 192.168.100.255
	gateway 192.168.100.1
```
> grabamos y reseteamos el pc
	
	sudo reboot

------------------------------------------
sudo nano /etc/netplan/00-installer-config.yaml

> Pegar el contenido en el archivo]
``` bash
# This is the network config written by 'subiquity'
network:
  ethernets:
    enp0s3:
      addresses: [192.168.100.150/24]
      gateway4: 192.168.100.1
      nameservers:
        addresses: [192.168.100.1, 8.8.8.8]
  version: 2
```
------------------------------------------
aplicamos cambio: 

	sudo netplan apply

------------------------------------------
### Cambiar zona horaria ✅

	sudo dpkg-reconfigure tzdata

	[America] [mexico cd mexico]

### Modificar .bashrc ✅

dentro dela carpeta ~ (home/usuario/) vemos com ls -a ,para ver archivos ocultos, y modificamos el archivo.

	sudo nano .bashrc

> agragar linea alias al final del archivo: 

	alias iapt='sudo apt install'

	date

--------------------------------------------
### Montar la carpeta de Red ✅

	mkdir ~/redMount

	sudo mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/data-500gb ~/redMount

> o podemos ejecutar el archivo"

	./mountRed-v1.22.07.sh

--------------------------------------------
### Apartado de instalacionn y configuracion de parpetas compartidas ✅

Instalacion del servicio samba:

	sudo apt-get install samba

agregar usuario, creera una carperta en Home

	sudo adduser blockout1       

> pass: 12qw34er5

### Crear carpera de red ✅

	mkdir /home/ximenadeb/carpetaRED
	
	mkdir ~/carpetaRED

> Dar permisos para todos ala carpeta:

	sudo chmod o+w . -R
	
> o

	sudo chmod o+w ~/carpetaRED -R

### Configurar carpeta en samba con: ✅

	sudo nano /etc/samba/smb.conf

> o Ejecutarmos el archivo: ✅

	./sambaConfig.sh

Escribir las sig linear al final del archivo y guardar
```bash
=====Share Definitions=====

[sambaRED]
	valid users = usuario
	path = /home/usuario/carpetaRED
	read only = no
	browseable = yes
```

### Dar de alta al usuario en samba ✅

(ximenadeb) se refiere al usuario que tendra la carpeta compartida.

	sudo smbpasswd -a usuario

	New SMB password:

	Retype new SMB password:
    
> Se pedira entrada de contrasena y confirmar
comprobamos coneccion de red con otro pc, nos logeamos y creamos un archivo "hola"

### Revisar ip con ✅

	ip a

[192.168.100.???]

Anotamos la ip y nombre de la carpteta tendremos la sig direccion. donde ??? es la direccion el pc]

	smb://192.168.100.[???]/sambaRED/

### Abrir los puertos de samba, habilitar el contrafuegos

	sudo service smbd restart
	
	sudo ufw allow samba
	
	sudo ufw allow OpenSSH   
	
	sudo ufw status      

confirmara con Reglas actualisadas , v6

### Instalar plex:  ✅

	./plexInstall.sh
	
	./plexOpen32400.sh

> 192.168.100.122:32400/web

### Instalar el servicio FTP

	sudo apt install proftpd
	
	sudo service proftpd status

Conficuarcion del archivo

	sudo nano /etc/proftpd/proftpd.conf

Modificaremos el archivo, creamos una copia de seguridad , borramos el contenido y pegaremos las siguientes lineas guardamos y cerramos recatamos el servicio.

``` bash
Include /etc/proftpd/modules.conf
UseIPv6 on
<IfModule mod_ident.c>
        IdentLookups off
    </IfModule>
        ServerName "Ubuntu22"
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

>recargar el servicio:

	sudo service proftpd reload

--------------------------------------------
mar 13 dic 2022 14:40:57 CST