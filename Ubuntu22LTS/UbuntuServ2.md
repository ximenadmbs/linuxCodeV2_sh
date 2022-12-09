# Ubuntu Server 22:

### 1. Instaciones, una ves instalado el sistema actialisar el sistemas:

	sudo apt update
  
	sudo apt upgrade
  
	sudo apt autoclean
  
### 2. Instalamos el servisio SSH para la su administracion remota, asi podremos copiar y pegar comandos desde otro pc con asistencia grafica.

    sudo apt install ssh -y

### 2.1 Revisamos el estabo del servicio , tendra que estar en enable.

    sudo service ssh status

----------------------------
## 3. Una ves en el terminal con asistencia grafica y conectado via remota con SSH seguiremos los sig pasos:
Crearremos un archivo de instrucciones para la instalacion de paquetes nesesarios.
Dentro dela carpeta rais de usuario ~/ crearemos el siguiente archivo .sh

    touch installUbuntuServ.sh

> Lo editaremos con nano.

    sudo nano installUbuntuServ.sh

Copiamos y pegamos el contenido del archivo **installUbuntuServ.sh,** guardamos y cerramos damos permisos de ejecucion, y ejecutamos las instrucciones con.

    sudo chmod 777 installUbuntuServ.sh

    ./installUbuntuServ.sh


-------------

sudo add-apt-repository universe


sudo apt update
echo "."
echo "██ Se instalaron nuevos repositorios y se actualiso la base de datos"
echo "."

sudo apt install ubuntu-restricted-extras -y

echo "."
echo "██ Se ha instalo la tienda de aplicaciones, y componetes de sistema"
echo "."

echo "."
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install nmap -y

sudo apt install net-tools -y
sudo apt install samba -y
sudo apt install bpytop -y
sudo apt install fish -y
sudo apt install lm-sensors -y

sudo apt install ssh -y
sudo apt install cups-pdf

---------------------------------------



  sudo apt-get install samba -y

  ### 3.2 Revisamos el estabo del servicio , tendra que estar en enable.

  sudo service smbd status

### 4 instalamos el servivio SAMBA para crear las  carpetar de red nesesarias.

  sudo apt install ufw -y
  
  ### 4.1 Revisamos el estabo del servicio , tendra que estar en enable.

  sudo service ufw status



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

