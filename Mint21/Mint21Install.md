Linus Mint 21:

#3. Comprobar si se tiene apt instalalado ✅
[Para comprobar, simplemente hay que ejecutar un comando con sudo delante:]

sudo apt update 
sudo apt upgrade
sudo apt-get autoclean

# Instala Entorno Gnome ✅

[como super usuiario] [su]

apt install gnome-core -y

------------
apt install tasksel

* Iniciamos con [su] el comando 

tasksel  

[conflechas semueve para selecccionar el escritorio, espacio para seleccionar y Tab para aceptar o cancelar]
[una ves termine al 100% reiniciaremos con: para entrar al modo grafico]

[Configurar el selector de entornos]

sudo dpkd-reconfigure gbm3	lightdm		sddm

sudo reboot

# programas AppsImage  ✅

[Copiar el prgograma en carpeta home]
[cambiar permisos a ejecutable,]

sudo add-apt-repository universe
sudo add-apt-repository ppa:appimagelauncher-team/stable -y

sudo apt install libfuse2 -y
sudo apt install appimagelauncher -y


#3 .1 Cambiar a ip estatica  [coniscamos la ip]  (pendiente)

sudo apt install net-tools

ip a

[editaremos el fichero /etc/network/interfaces]

sudo nano /etc/network/interfaces

[Modificaremos la sección de «the primary network interface» , cambiaremos dhcp por static y añadiremos los siguientes parámetros:]

iface eth0 inet static
	address 192.168.100.100
	netmask 255.255.255.0
	network 192.168.100.1
	broadcast 192.168.100.255
	gateway 192.168.100.1

[grabamos y reseteamos el pc]
	
sudo reboot
---------------------
sudo nano /etc/netplan/00-installer-config.yaml

[Pegar el contenido en el archivo]

# This is the network config written by 'subiquity'
network:
  ethernets:
    enp0s3:
      addresses: [192.168.100.150/24]
      gateway4: 192.168.100.1
      nameservers:
        addresses: [192.168.100.1, 8.8.8.8]
  version: 2
---------------------

sudo netplan apply

--------------------------------------------
# Cambiar zona horaria ✅

sudo dpkg-reconfigure tzdata

[America] [mexico cd mexico]

#4. Modificar .bashrc ✅
[dentro dela carpeta ~ (home/usuario/) vemos com ls -a ,para ver archivos ocultos]

sudo nano .bashrc

[agragar linea alias:]   

alias inst='sudo apt-get install'

[al final del archivo:]

date

--------------------------------------------
#5. Montar la carpeta de Red ✅

mkdir ~/redMount

sudo mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/data-500gb ~/redMount

[o podemos ejecutar el archivo"]

./mountRed-v1.22.07.sh

* o Ejecutarmos el archivo: ✅

./installApps-DEB-v1.22.07.sh

--------------------------------------------
# [apartado de instalacionn y configuracion de parpetas compartidas] ✅
* red

sudo apt-get install samba

[agregar usuario, creera una carperta en Home]

sudo adduser blockout1       
pass: 12qw34er5

#6.1 crear carpera de red ✅

mkdir /home/ximenadeb/carpetaRED
mkdir ~/carpetaRED

* dar permisos para todos ala carpeta:

sudo chmod o+w . -R
sudo chmod o+w ~/carpetaRED -R

#7 configurar carpeta en samba con: ✅

sudo nano /etc/samba/smb.conf

* o Ejecutarmos el archivo: ✅
./sambaConfig.sh

[escribir las sig linear al final del archivo y guardar]

=====Share Definitions=====

[sambaRED]
	valid users = usuario
	path = /home/usuario/carpetaRED
	read only = no
	browseable = yes

#8 dar de alta al usuario en samba ✅
[ (ximenadeb se refiere al usuario que tendra la carpeta compartida),]

sudo smbpasswd -a usuario      
New SMB password:
Retype new SMB password:      
[se pedira entrada de contrasena y confirmar]
[comprobamos coneccion de rec con otro pc, nos logeamos y creamos un archivo "hola"]

#6 revisar ip con ✅

ip a   
[192.168.100.???]

[anotamos la ip y nombre de la carpteta tendremos la sig direccion. donde ??? es la direccion el pc]

smb://192.168.100.[???]/sambaRED/

[abrir los puertos de samba, habilitar el contrafuegos]

#sudo service smbd restart
#sudo ufw allow samba
#sudo ufw allow OpenSSH   
#sudo ufw status      

[confirmara con Reglas actualisadas , v6]

#10 instalar plex:  ✅

./plexInstall.sh
./plexOpen32400.sh

192.168.100.122:32400/web

#10 1 Instalar el servicio FTP

sudo apt install proftpd
sudo service proftpd status

* conficuarcion del archivo

sudo nano /etc/proftpd/proftpd.conf

[recargar el servicio:]
sudo service proftpd reload

---------------
