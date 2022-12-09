# Ubuntu Server 22:

### 1. Instaciones, una ves instalado el sistema actialisar el sistemas:

	sudo apt update
  
	sudo apt upgrade
  
	sudo apt autoclean
  
### 2. Instalamos el servisio SSH para la su administracion remota, asi podremos copiar y pegar comandos desde otro pc con asistencia grafica.

    sudo apt install ssh -y

### 2.1 Revisamos el estabo del servicio , tendra que estar en enable.

    sudo service ssh status

---------------------------------------
## 3. Una ves en el terminal con asistencia grafica y conectado via remota con SSH seguiremos los sig pasos:
Crearremos un archivo de instrucciones para la instalacion de paquetes nesesarios.
Dentro dela carpeta rais de usuario ~/ crearemos el siguiente archivo .sh

    touch installUbuntuServ.sh

> Lo editaremos con nano.

    sudo nano installUbuntuServ.sh

Copiamos y pegamos el contenido del archivo **installUbuntuServ.sh,** guardamos y cerramos damos permisos de ejecucion, y ejecutamos las instrucciones con.

    sudo chmod 777 installUbuntuServ.sh

    ./installUbuntuServ.sh


---------------------------------------
## 4. Se instalaran los siguientes apps para el terminal.

* sudo add-apt-repository universe
* sudo apt install ubuntu-restricted-extras -y
* sudo apt install neofetch -y
* sudo apt install nmap -y
* sudo apt install samba -y
* sudo apt install bpytop -y  (opcion)
* sudo apt install lm-sensors -y
* sudo apt install ssh -y
* sudo apt install ufw -y
* sudo apt install fish -y
* sudo apt install htop -y
* sudo apt install net-tools -y
* sudo apt install proftpd -y

---------------------------------------
### 4.1 Revisamos el estabo del servicio , tendra que estar en enable.

    sudo service smbd status
  
### 4.2 Revisamos el estabo del servicio , tendra que estar en enable. ✅

    sudo service ufw status

    sudo ufw status

Activar y desactivar el servicio si es nesesario:
> Activar

    sudo ufw enable

> Desactivar

    sudo ufw disable

---------------------------------------
# Configurar el servicio FTP ✅

Revisamos el estado del servicio FTP:

    sudo service proftpd status

Conficuarcion del archivo. brimos y editamos con Nano:

    sudo nano /etc/proftpd/proftpd.conf

Modificaremos el archivo, creamos una copia de seguridad , borramos el contenido y pegaremos las siguientes lineas guardamos y cerramos recatamos el servicio.

``` 
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

