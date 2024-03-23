#!/bin/bash

echo -e "\e[0;1;91mWarning: os-prober will be executed to detect other bootable partitions.\e[0m"&& sleep 3
echo "Its output will be used to detect bootable binaries on them and create new boot entries." && sleep 0.5

echo ""
echo -ne '[/💀--------------------------------------------] ( 03%)\r' && sleep 0.4
echo -ne '[///💀------------------------------------------] ( 08%)\r' && sleep 0.4
echo -ne '[///////💀--------------------------------------] ( 16%)\r' && sleep 0.4
echo -ne '[///////////💀----------------------------------] ( 24%)\r' && sleep 0.4
echo -ne '[///////////////💀------------------------------] ( 33%)\r' && sleep 0.4
echo -ne '[///////////////////💀--------------------------] ( 41%)\r' && sleep 0.4
echo -ne '[///////////////////////💀----------------------] ( 49%)\r' && sleep 0.4
echo -ne '[///////////////////////////💀------------------] ( 58%)\r' && sleep 0.4
echo -ne '[///////////////////////////////💀--------------] ( 66%)\r' && sleep 0.4
echo -ne '[///////////////////////////////////💀----------] ( 74%)\r' && sleep 0.4
echo -ne '[///////////////////////////////////////💀------] ( 83%)\r' && sleep 0.4
echo -ne '[///////////////////////////////////////////💀--] ( 92%)\r' && sleep 0.4
echo -ne '[/////////////////////////////////////////////💀] (100%)\r' && sleep 0.7
echo -ne '\n'
echo ""
echo "---done" && sleep 0.4
echo ""
echo "Procesando disparadores para libc-bin (2.31-13+deb11u5) ..." && sleep 0.7
