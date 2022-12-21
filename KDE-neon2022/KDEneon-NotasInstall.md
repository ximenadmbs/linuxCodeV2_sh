# KDE neon - 
## Notas de instalacion vercion 22

### Configuraciones:
cambiar resolucion, > preferencia de sistemas, 
* Alpusar archivos o carpetas: se seleccionan
* Hadware, Pantalla y monitor.
* Aspecto, pantalla de bienvenoda., ninguna

----------------------------------------------------


    #Seccion de instalacion de actualisaciones:
    pkcon refresh
    pkcon update -y

echo " "
echo -e "\e[0;38;5;200m[ ██ Se actualiso los paquetes del sistema\e[0m"
    sudo apt autoclean
echo " "

#Seccion de Instalacion de repositorios:
    sudo add-apt-repository universe  (instalado)
    sudo add-apt-repository ppa:appimagelauncher-team/stable -y   (instalado)
    sudo apt update
    pkcon refresh
echo " "
echo -e "\e[0;38;5;209m[ ██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
    sudo apt install ubuntu-restricted-extras -y    (instalado)
    #sudo apt install libfuse2 -y  (instalado)
    sudo apt install appimagelauncher -y   (instalado)
echo " "
echo -e "\e[0;38;5;209m[ ██ Se ha instalado componetes de sistema\e[0m"
echo " "

#Seccion de Instalacion de paquetes para la terminal:
    sudo apt install neofetch -y   (instalado)
    sudo apt install fish -y  (instalado)
    sudo apt install ssh -y   (i)
    sudo apt install net-tools -y   (i)
    #sudo apt install samba -y   (i)
    sudo apt install nmap -y    (i)
    sudo apt install htop -y (i)
    sudo apt install bpytop -y   (i)
    sudo apt install lm-sensors -y  (i)

echo " "

#Seccion de Instalacion de apps de interfacegrafica:
    sudo apt-get install cups-pdf    (i)

    #Flatpak (insalada desde vanila, si lansan error de instalacion reiniciar el sistema)
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y    (i)
        flatpak install flathub nl.hjdskes.gcolor3 -y   (i)

#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    #sudo apt install plank -y
echo " "
    neofetch


    sudo apt install xserver-xorg-input-synaptics   (i)

    sudo apt install tilix   (i)

complemeto lara el muse pad de portatiles

    sudo apt install kcalc  (i)


------------------------
temas:

ArcMidnight


---------------

zsh ubintu instalaciones:}
}

	sudo apt install zsh

	sudo apt install git

	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

se edita el archivo .zshrc y en root

    nano .zshrc

temas: bira, gnzh, rkj-repos, xiong-chiamiov
-temadod copiar (bira.zsh-theme)
actialisar:

    source .zshrc

temas colores:

	git clone https://github.com/Gogh-Co/Gogh.git gogh

permisos para gogh.sh

ejecutar ./gogh.sh

( 62 )  Fairyflossdark91
( 91 ) Horizon Dark
( 236 ) Wild Cherry


fish_config

*Auto completado zsh:
ambiar el shell predeterminado
Después de instalar ZSH, es bueno asegurarse de que sea el shell predeterminado. Esto evitará que inicie el shell ZSH cuando use su herramienta.

	chsh -s $(which zsh)

Para confirmar, ingrese el siguiente comando:

	which $SHELL
	
Después de instalar y configurar el shell ZSH, podemos configurar el complemento zsh-autosuggestions. Comience por clonar las zsh-autosuggestions:

	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

Finalmente, agregue el siguiente comando a su archivo .zshrc:

	source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
	



Root:

    cd /root

    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

    nano .zshrc

temas: bira, gnzh, rkj-repos, xiong-chiamiov
actialisar:

    source .zshrc

para root la direcion es directorio del usuario de la carpeta: ~/.zsh

	source /home/usuario/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

-----
*ruta de configuraciones de color tilix:
	/home/ximkde/.config/tilix/

----------
alias: para .zshrc

alias ideb="sudo dpkg -i"
alias rdeb="sudo apt remove"
alias iapt="sudo apt install"
alias alh="ls -a -l -h"
alias iflat="flatpak install"
alias rflat="flatpak uninstall"
alias lh="ls -lh"
alias upd="pkcon refresh"
alias upg="pkcon update"

date

