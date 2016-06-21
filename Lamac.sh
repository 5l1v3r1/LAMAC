###################################################################################
#!/bin/bash
############################################################################
# LazyMacchanger
############################################################################
## ++ -- --=[ AMCT v1.0 by Edo Maland 
## ++ -- --=[ Automated Macchanger Tool
## ++ -- --=[ Tested on Kali Linux  or Sana
## ++ -- --=[ THIS TOOL FOR LAZY PEOPLE :P


#This colour 
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'


#function
echo
clear	
echo -e $white"==============================================================================="	
echo
echo -e $white" -- --=[AMCT v1.0 by $red Edo Maland "
echo -e $white" -- --=[Automated Macchanger Tool"
echo -e $white" -- --=[Tested on $red Kali Linux  or Sana"
echo
echo -e $okegreen" 	▄▄▄       █    ██ ▄▄▄█████▓ ▒█████   ███▄ ▄███▓ ▄▄▄       ▄████▄  ";
echo "	▒████▄     ██  ▓██▒▓  ██▒ ▓▒▒██▒  ██▒▓██▒▀█▀ ██▒▒████▄    ▒██▀ ▀█  ";
echo "	▒██  ▀█▄  ▓██  ▒██░▒ ▓██░ ▒░▒██░  ██▒▓██    ▓██░▒██  ▀█▄  ▒▓█    ▄ ";
echo "	░██▄▄▄▄██ ▓▓█  ░██░░ ▓██▓ ░ ▒██   ██░▒██    ▒██ ░██▄▄▄▄██ ▒▓▓▄ ▄██▒";
echo "	 ▓█   ▓██▒▒▒█████▓   ▒██▒ ░ ░ ████▓▒░▒██▒   ░██▒ ▓█   ▓██▒▒ ▓███▀ ░";
echo "	 ▒▒   ▓▒█░░▒▓▒ ▒ ▒   ▒ ░░   ░ ▒░▒░▒░ ░ ▒░   ░  ░ ▒▒   ▓▒█░░ ░▒ ▒  ░";
echo "	  ▒   ▒▒ ░░░▒░ ░ ░     ░      ░ ▒ ▒░ ░  ░      ░  ▒   ▒▒ ░  ░  ▒   ";
echo "	  ░   ▒    ░░░ ░ ░   ░      ░ ░ ░ ▒  ░      ░     ░   ▒   ░        ";
echo "	      ░  ░   ░                  ░ ░         ░         ░  ░░ ░      ";
echo "                                                          ░        ";
echo -e $white"==============================================================================="	
echo -e $red " 			AUTO MAC CHANGER , EASY TO USE "
echo -e $white"==============================================================================="
echo "                                                                   ";
echo -e $okegreen"WHAT YOUR INTERFACES : \n" $red  ;
read interface;
echo -e $okegreen"\n\nOLD MAC ADDRES IS : \n" $red;
ifconfig $interface;
ifconfig -a | grep HWaddr | grep $interface;
echo -e $okegreen"\n\nENTER NEW MAC ADDRES [ aa:bb:cc:dd:ee:ff ] : \n"$red
	read lazy_mac;
	sudo ifconfig $interface down
	sudo ifconfig $interface hw ether $lazy_mac
	sudo ifconfig $interface up
	clear
	echo -e $white"\n\n===========================================================================\n\n"
	echo -e $okegreen "\t\t	  New mac adress is : $lazy_mac\n\n"
	echo -e $white"===========================================================================\n\n"
	sleep 3

