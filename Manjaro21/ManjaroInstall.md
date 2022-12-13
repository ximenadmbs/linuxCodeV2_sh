Manjaro 21:

# Actualisaciones iniciales comando pacman ✅
[Actualisaciones con pacman:]

sudo pacman -Syu. 

# Instalar Apss: ✅
sudo pacman -S neofetch
sudo pacman -Rsn neofetch		[para desistalar]

# *BalenaEtcher ✅
* Abrir Anadir/quitar soft
* tres puntos:  * Preferencias
* Terceros, AUR Habilitar (ok), verificar actualisaciones (ok)
* Bustar e instalar pkgconf
* Bustar e instalar etcher-bin
[ejecutar con el terminal con : su  ,  etcher ]


# Accesi a red por medio de direccion ✅

smb://192.168.100.22/data-500gb/

# Programas AppsImage  ✅

[Copiar el prgograma en carpeta home]
[cambiar permisos a ejecutable,]

sudo pacman -S appimagelauncher


# Cambiar a ip estatica  [coniscamos la ip] ✅

ip a     ✅

* Configuraciones , Red.
---------------------

# Modificar .bashrc ✅
Usa sistema zsh

--------------------------------------------
#5. Montar la carpeta de Red  ✅

mkdir ~/redMount

sudo mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/data-500gb ~/redMount

[o podemos ejecutar el archivo"]

./mountRed-v1.22.07.sh

* o Ejecutarmos el archivo: 

./installApps-DEB-v1.22.07.sh

--------------------------------------------
# [Samba sin instalar (nose pudo configurar)]   ✅
* red

sudo pacman -S samba

* Permisos para carpetas
sudo chmod 770
sudo chmod o+w . -R
sudo chmod o+w ~/carpetaRED -R

---------------
