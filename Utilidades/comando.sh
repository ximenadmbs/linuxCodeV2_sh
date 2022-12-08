#!/bin/bash

#Archivo plantilla para ejecuciones de comandos y direcciones largas para servidores o con terminales sin acceso de corte y pega desde el terminal.
#Generalmente se ejecutara con sudo para permiso de usuiario.
#En Debian11 se tenda que ejecutar sin el comando sudo y ejecuarlo con super usuario su.

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem

# jue 08 dic 2022 13:47:27 CST