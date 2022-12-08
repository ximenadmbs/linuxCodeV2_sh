Ubuntu Server 22:

#1. Instaciones:

sudo apt update
sudo apt upgrade

sudo apt install ssh -y
* sudo service ssh status

sudo apt-get install samba -y
* sudo service smbd status

sudo apt install ufw -y
* sudo service ufw status

sudo apt install fish -y
sudo apt install htop -y
sudo apt install net-tools -y


#Revisar el firewall ✅

sudo ufw status

sudo ufw enable
* activar

sudo ufw disable
* desactivar
-----------------------------
#Instalar el servicio FTP ✅

sudo apt install proftpd
sudo service proftpd status

* conficuarcion del archivo

sudo nano /etc/proftpd/proftpd.conf

[recargar el servicio:]
sudo service proftpd reload

#Cambiar a ip estatica  [coniscamos la ip] ✅

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

#Cambiar zona horaria ✅

sudo dpkg-reconfigure tzdata

[America] [mexico cd mexico]


#Configuracion samba ✅

sudo nano /etc/samba/smb.conf 

=====Share Definitions=====

[sambaShare]
	valid users = ximena
	path = /home/ximena/carpetaRED
	read only = no
	browseable = yes

sudo smbpasswd -a ximena      [ (ximena se refiere al usuario que tendra la carpeta compartida), }
New SMB password:
Retype new SMB password:      [se perira entrada de contrasena y confirmar]

sudo service smbd restart
sudo ufw allow samba          [confirmara con Reglas actualisadas , v6)
