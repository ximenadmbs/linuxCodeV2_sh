[resalado] [resaltado2]

```Texto parrafo
```

# Titulos
* 1
-------------

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
