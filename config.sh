#!/bin/bash
clear
sleep 0.3s
echo '          _____                    _____                    _____                    _____                    _____                ____'
echo '         /\    \                  /\    \                  /\    \                  /\    \                  /\    \              |\    \'
echo '        /::\    \                /::\    \                /::\    \                /::\    \                /::\    \             |:\____\'
echo '       /::::\    \              /::::\    \              /::::\    \              /::::\    \              /::::\    \            |::|   |'
echo '      /::::::\    \            /::::::\    \            /::::::\    \            /::::::\    \            /::::::\    \           |::|   |'
echo '     /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \          |::|   |'
echo '    /:::/__\:::\    \        /:::/__\:::\    \        /:::/__\:::\    \        /:::/__\:::\    \        /:::/  \:::\    \         |::|   |'
echo '    \:::\   \:::\    \      /::::\   \:::\    \      /::::\   \:::\    \      /::::\   \:::\    \      /:::/    \:::\    \        |::|   |'
echo '  ___\:::\   \:::\    \    /::::::\   \:::\    \    /::::::\   \:::\    \    /::::::\   \:::\    \    /:::/    / \:::\    \       |::|___|______'
echo ' /\   \:::\   \:::\    \  /:::/\:::\   \:::\____\  /:::/\:::\   \:::\    \  /:::/\:::\   \:::\    \  /:::/    /   \:::\ ___\      /::::::::\    \'
echo '/::\   \:::\   \:::\____\/:::/  \:::\   \:::|    |/:::/__\:::\   \:::\____\/:::/__\:::\   \:::\____\/:::/____/     \:::|    |    /::::::::::\____\'
echo '\:::\   \:::\   \::/    /\::/    \:::\  /:::|____|\:::\   \:::\   \::/    /\:::\   \:::\   \::/    /\:::\    \     /:::|____|   /:::/~~~~/~~'
echo ' \:::\   \:::\   \/____/  \/_____/\:::\/:::/    /  \:::\   \:::\   \/____/  \:::\   \:::\   \/____/  \:::\    \   /:::/    /   /:::/    /'
echo '  \:::\   \:::\    \               \::::::/    /    \:::\   \:::\    \       \:::\   \:::\    \       \:::\    \ /:::/    /   /:::/    /'
echo '   \:::\   \:::\____\               \::::/    /      \:::\   \:::\____\       \:::\   \:::\____\       \:::\    /:::/    /   /:::/    /'
echo '    \:::\  /:::/    /                \::/____/        \:::\   \::/    /        \:::\   \::/    /        \:::\  /:::/    /    \::/    /'
echo '     \:::\/:::/    /                  ~~               \:::\   \/____/          \:::\   \/____/          \:::\/:::/    /      \/____/'
echo '      \::::::/    /                                     \:::\    \               \:::\    \               \::::::/    /'
echo '       \::::/    /                                       \:::\____\               \:::\____\               \::::/    /'
echo '        \::/    /                                         \::/    /                \::/    /                \::/____/'
echo '         \/____/                                           \/____/                  \/____/                  ~~'
echo
echo
echo
sleep 0.8s
echo '+-------------------------------------[Menù speedy 2019]--------------------------------------+'
sleep 0.5s
echo  '| 0) Exit                                                                                     |'
sleep 0.5s
echo  '| 1) Aggiornamento del sistema                                                                |'
sleep 0.5s
echo  '| 2) Aggiornamento del sistema e installazione pacchetti aggiuntivi                           |'
sleep 0.5s
echo  '| 3) Aggiornamento del sistema, installazione pacchetti fondamentali e installazione giochi   |'
sleep 0.5s
echo  '| 4) Selezione manuale                                                                        |'
sleep 0.5s
echo  '| 5) Selezione dei demoni                                                                     |'
sleep 0.5s
echo  '| 6) Guida, Linux in 5 minuti                                                                 |'
echo '+----------------------------------------[speedy 2019]----------------------------------------+'
sleep 0.8s
read -p "Valore atteso: " input

#EXIT
if [[ "$input" -eq 0 ]] ; then
    exit 1
fi

if [ "$input" -eq "4" ]; then
 read -p "Vuoi aggiornare il sistema? YES [y] NO [n]: " selection1
 read -p "Vuoi installare i pacchetti fondamentali? YES [y] NO [n]: " selection2
 read -p "Vuoi installare i giochi? YES [y] NO [n]: " selection3
else
 selection1='y'
 selection2='y'
 selection3='y'
fi


clear


#Aggiornamenti del Sistema Operativo
if [[ "$input" -ge "1" && "$input" -ne "5" ]]; then
if [ "$selection1" = "y" ]; then
echo '     _                  _                                                     _                 _       _                        '
echo '    / \    __ _   __ _ (_)  ___   _ __  _ __    __ _  _ __ ___    ___  _ __  | |_  ___     ___ (_) ___ | |_  ___  _ __ ___    __ _ '
echo '   / _ \  / _` | / _` || | / _ \ |  __||  _ \  / _  ||  _   _ \  / _ \|  _ \ | __|/ _ \   / __|| |/ __|| __|/ _ \|  _   _ \  / _  |'
echo '  / ___ \| (_| || (_| || || (_) || |   | | | || (_| || | | | | ||  __/| | | || |_| (_) |  \__ \| |\__ \| |_|  __/| | | | | || (_| |'
echo ' /_/   \_\\__, | \__, ||_| \___/ |_|   |_| |_| \__,_||_| |_| |_| \___||_| |_| \__|\___/   |___/|_||___/ \__|\___||_| |_| |_| \__,_|'
echo '          |___/  |___/'
echo
echo
echo
sudo apt-get update #aggiorna la lista dei pacchetti
sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y #aggiorna i pacchetti
clear
fi

#Assegnazione ip statico
read -p "Vuoi assegnare un ip statico al dispositivo? YES [y] NO [n]: " ip
if [ "$ip" = "y" ]; then
read -p "Inserisci ip statico (esempio 192.168.1.111):  " ip
sudo echo interface eth0 >> /etc/dhcpcd.conf
sudo echo static ip_address=$ip/24 >> /etc/dhcpcd.conf
sudo echo static routers=192.168.1.1 >> /etc/dhcpcd.conf
sudo echo static domain_name_servers=192.168.1.1 >> /etc/dhcpcd.conf
fi

#Shortcuts Alias
read -p "Vuoi creare dei comandi rapidi? YES [y] NO [n]: " shortcuts
if [ "$shortcuts" = "y" ]; then
echo "+----------------------[Default alias]---------------------+"
echo "| aggiorna --> sudo apt-get update && sudo apt-get upgrade |"
echo "| ll --> ls -hal                                           |"
echo "+----------------------------------------------------------+"
echo '#Alias Personali' >> /home/pi/.bashrc
echo 'alias "aggiorna"="sudo apt-get update && sudo apt-get upgrade"' >> /home/pi/.bashrc
echo 'alias "ll"="ls -hal"' >> /home/pi/.bashrc
echo 'alias "cp"="cp -i"' >> /home/pi/.bashrc
echo 'alias "mv"="mv -i"' >> /home/pi/.bashrc
echo 'alias "rm"="rm -i"' >> /home/pi/.bashrc
sleep 5s
fi
fi

#Installazione pacchetti aggiuntivi
if [[ "$input" -ge "2"  && "$input" -ne "5" ]]; then
if [ "$selection2" = "y" ]; then
echo '   _____           _        _ _           _                                          _          _   _   _'
echo '  |_   _|         | |      | | |         (_)                                        | |        | | | | (_)'
echo '    | |  _ __  ___| |_ __ _| | | __ _ _____  ___  _ __   ___    _ __   __ _  ___ ___| |__   ___| |_| |_ _'
echo '    | | |  _ \/ __| __/ _  | | |/ _  |_  / |/ _ \|  _ \ / _ \  |  _ \ / _  |/ __/ __|  _ \ / _ \ __| __| |'
echo '   _| |_| | | \__ \ || (_| | | | (_| |/ /| | (_) | | | |  __/  | |_) | (_| | (_| (__| | | |  __/ |_| |_| |'
echo '  |_____|_| |_|___/\__\__,_|_|_|\__,_/___|_|\___/|_| |_|\___|  | .__/ \__,_|\___\___|_| |_|\___|\__|\__|_|'
echo '                                                               | |'
echo '                                                               |_|'
echo
echo
echo
#-------------------------------–#
sudo apt-get install arp-scan -y       #identifica gli host collegati alla rete
sudo apt-get install bc -y             #calclatrice
sudo apt-get install dstat -y          #mostra una statistica veloce e in tempo reale di alcuni parametri del sistema
sudo apt-get install df -y             #riporta l'uso del disco
sudo apt-get install finger -y         #mostra delle informazioni degli utenti Linux
sudo apt-get install enscript -y       #postscript
sudo apt-get install ffmpeg -y         #convertitore video ==> gif
sudo apt-get install ghostscript -y         #pdf generator
sudo apt-get install hdparm -y         #testa la velocitá delle memorie di massa
sudo apt-get install hddtemp -y        #stampa la tempatatura degli harhddiek
sudo apt-get install hping3 -y
sudo apt-get install htop -y           #mostra la lista dei  processi (top)
sudo apt-get install inotify-tools -y  #gestore eventi
sudo apt-get install iftop -y          #monitora il flusso di dati di ogni singola connessione di socket
sudo apt-get install iptraf -y         #mostra le connessioni con i singoli host remoti e la quantità di dati scambiati in real time
sudo apt-get install locate -y         #like find
sudo apt-get install lynx -y
sudo apt-get install lshw -y           #analizza l'hardware del computer
sudo apt-get install nast -y
sudo apt-get install nload -y          #monitoraggio traffico entrata e uscita
sudo apt-get install nmap -y
sudo apt-get install nmon -y
sudo apt-get install qrencode -y       # qrcode
sudo apt install stress -y             #stress test
pip3 install stressberry -y            #stress test
sudo apt-get install speedtest-cli -y
sudo apt-get install testdisk -y
sudo apt-get install tree -y
sudo apt-get install whois -y
sudo apt-get install wkhtmltopdf -y   #HTML to PDF
sudo apt-get install zip -y
#Sensori
sudo apt-get install lm-sensors -y
sudo sensors-detect -y
#---------------------------------#
clear
fi
fi



#Giochi
if [[ "$input" -ge "3"  && "$input" -ne "5" ]]; then
if [ "$selection3" = "y" ]; then
echo '  ___              _          _  _              _                               _               _      _'
echo ' |_ _| _ __   ___ | |_  __ _ | || |  __ _  ____(_)  ___   _ __    ___     __ _ (_)  ___    ___ | |__  (_)'
echo '  | | |  _ \ / __|| __|/ _  || || | / _  ||_  /| | / _ \ |  _ \  / _ \   / _` || | / _ \  / __||  _ \ | |'
echo '  | | | | | |\__ \| |_| (_| || || || (_| | / / | || (_) || | | ||  __/  | (_| || || (_) || (__ | | | || |'
echo ' |___||_| |_||___/ \__|\__,_||_||_| \__,_|/___||_| \___/ |_| |_| \___|   \__, ||_| \___/  \___||_| |_||_|'
echo '                                                                         |___/'
echo
echo
echo
#ssh sshtron.zachlatta.com
sudo apt-get install bastet -y #Testris
sudo apt-get install moon-buggy -y
sudo apt-get install ninvaders -y #Space invaders
sudo apt-get install nethack-console -y
sudo apt-get install nsnake -y #Snake
sudo apt-get install nudoku -y #Sodoku
sudo apt-get install pacman4console -y #Pacman
sudo apt-get install sl -y #Trenino
sudo apt-get install 2048-cli -y
clear
fi
fi



#Demoni
if [ "$input" -eq "5" ]; then
echo '  ██▓ ███▄    █   ██████ ▄▄▄█████▓ ▄▄▄       ██▓     ██▓    ▄▄▄      ▒███████▒ ██▓ ▒█████   ███▄    █ ▓█████    ▓█████▄ ▓█████  ███▄ ▄███▓ ▒█████   ███▄    █  ██▓'
echo ' ▓██▒ ██ ▀█   █ ▒██    ▒ ▓  ██▒ ▓▒▒████▄    ▓██▒    ▓██▒   ▒████▄    ▒ ▒ ▒ ▄▀░▓██▒▒██▒  ██▒ ██ ▀█   █ ▓█   ▀    ▒██▀ ██▌▓█   ▀ ▓██▒▀█▀ ██▒▒██▒  ██▒ ██ ▀█   █ ▓██▒'
echo ' ▒██▒▓██  ▀█ ██▒░ ▓██▄   ▒ ▓██░ ▒░▒██  ▀█▄  ▒██░    ▒██░   ▒██  ▀█▄  ░ ▒ ▄▀▒░ ▒██▒▒██░  ██▒▓██  ▀█ ██▒▒███      ░██   █▌▒███   ▓██    ▓██░▒██░  ██▒▓██  ▀█ ██▒▒██▒'
echo ' ░██░▓██▒  ▐▌██▒  ▒   ██▒░ ▓██▓ ░ ░██▄▄▄▄██ ▒██░    ▒██░   ░██▄▄▄▄██   ▄▀▒   ░░██░▒██   ██░▓██▒  ▐▌██▒▒▓█  ▄    ░▓█▄   ▌▒▓█  ▄ ▒██    ▒██ ▒██   ██░▓██▒  ▐▌██▒░██░'
echo ' ░██░▒██░   ▓██░▒██████▒▒  ▒██▒ ░  ▓█   ▓██▒░██████▒░██████▒▓█   ▓██▒▒███████▒░██░░ ████▓▒░▒██░   ▓██░░▒████▒   ░▒████▓ ░▒████▒▒██▒   ░██▒░ ████▓▒░▒██░   ▓██░░██░'
echo ' ░▓  ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░  ▒ ░░    ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░▓  ░▒▒   ▓▒█░░▒▒ ▓░▒░▒░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░ ▒░ ░    ▒▒▓  ▒ ░░ ▒░ ░░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░▓  '
echo ' ▒ ░░ ░░   ░ ▒░░ ░▒  ░ ░    ░      ▒   ▒▒ ░░ ░ ▒  ░░ ░ ▒  ░ ▒   ▒▒ ░░░▒ ▒ ░ ▒ ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░ ░ ░  ░    ░ ▒  ▒  ░ ░  ░░  ░      ░  ░ ▒ ▒░ ░ ░░   ░ ▒░ ▒ ░'
echo ' ▒ ░   ░   ░ ░ ░  ░  ░    ░        ░   ▒     ░ ░     ░ ░    ░   ▒   ░ ░ ░ ░ ░ ▒ ░░ ░ ░ ▒     ░   ░ ░    ░       ░ ░  ░    ░   ░      ░   ░ ░ ░ ▒     ░   ░ ░  ▒ ░'
echo ' ░           ░       ░                 ░  ░    ░  ░    ░  ░     ░  ░  ░ ░     ░      ░ ░           ░    ░  ░      ░       ░  ░       ░       ░ ░           ░  ░  '
echo '                                                                    ░                                           ░                                                '
echo
echo
echo
echo Seleziona i demoni che vuoi installare:

#Netdata
read -p "Vuoi installare Netdata? YES [y] NO [n]: " netdata
if [ "$netdata" = "y" ]; then
sudo curl -Ss 'https://raw.githubusercontent.com/netdata/netdata-demo-site/master/install-required-packages.sh' >/tmp/kickstart.sh && bash /tmp/kickstart.sh -i netdata -y
sudo git clone https://github.com/netdata/netdata.git --depth=100 /home/pi/
sudo cd netdata
sudo ./netdata-installer.sh
fi

#OpenVPN
read -p "Vuoi installare OpenVPN? YES [y] NO [n]: " openvpn
if [ "$openvpn" = "y" ]; then
sudo curl -L https://install.pivpn.io | bash
fi

#Pi-Hole
read -p "Vuoi installare Pi-Hole? YES [y] NO [n]: " pihole
if [ "$pihole" = "y" ]; then
curl -sSL https://install.pi-hole.net | bash
fi

#Server Web
read -p "Vuoi installare un Server Web completo? YES [y] NO [n]: " serverweb
if [ "$serverweb" = "n" ]; then
serverweb='y'
read -p "Vuoi installare Apache2? YES [y] NO [n]: " apache2
read -p "Vuoi installare PHP5? YES [y] NO [n]: " php
read -p "Vuoi installare MYSQL? YES [y] NO [n]: " mysql
read -p "Vuoi installare phpMyAdmin? YES [y] NO [n]: " phpmyadmin
else
apache2='y'
php='y'
mysql='y'
phpmyadmin='y'
fi

if [ "$serverweb" = "y" ]; then
if [ "$apache2" = "y" ]; then
sudo apt-get install apache2 -y
fi
if [ "$php" = "y" ]; then
sudo apt-get install libapache2-mod-php -y
fi
if [ "$mysql" = "y" ]; then
sudo apt-get install mysql-server -y
fi
if [ "$phpmyadmin" = "y" ]; then
sudo apt-get install phpmyadmin -y
fi
fi

#Transmission
read -p "Vuoi installare Transmission? YES [y] NO [n]: " transmission
if [ "$transmission" = "y" ]; then
sudo apt-get install transmission-cli transmission-common transmission-daemon
fi
fi



if ["$input" -eq "6"]; then
echo '                                                           dddddddd'
echo '        GGGGGGGGGGGGG                    iiii              d::::::d'
echo '     GGG::::::::::::G                   i::::i             d::::::d'
echo '   GG:::::::::::::::G                    iiii              d::::::d'
echo '  G:::::GGGGGGGG::::G                                      d:::::d'
echo ' G:::::G       GGGGGGuuuuuu    uuuuuu  iiiiiii     ddddddddd:::::d   aaaaaaaaaaaaa'
echo 'G:::::G              u::::u    u::::u  i:::::i   dd::::::::::::::d   a::::::::::::a'
echo 'G:::::G              u::::u    u::::u   i::::i  d::::::::::::::::d   aaaaaaaaa:::::a'
echo 'G:::::G    GGGGGGGGGGu::::u    u::::u   i::::i d:::::::ddddd:::::d            a::::a'
echo 'G:::::G    G::::::::Gu::::u    u::::u   i::::i d::::::d    d:::::d     aaaaaaa:::::a'
echo 'G:::::G    GGGGG::::Gu::::u    u::::u   i::::i d:::::d     d:::::d   aa::::::::::::a'
echo 'G:::::G        G::::Gu::::u    u::::u   i::::i d:::::d     d:::::d  a::::aaaa::::::a'
echo 'G:::::G       G::::Gu:::::uuuu:::::u   i::::i d:::::d     d:::::d a::::a    a:::::a'
echo ' G:::::GGGGGGGG::::Gu:::::::::::::::uui::::::id::::::ddddd::::::dda::::a    a:::::a'
echo '  GG:::::::::::::::G u:::::::::::::::ui::::::i d:::::::::::::::::da:::::aaaa::::::a'
echo '     GGG::::::GGG:::G  uu::::::::uu:::ui::::::i  d:::::::::ddd::::d a::::::::::aa:::a'
echo '        GGGGGG   GGGG    uuuuuuuu  uuuuiiiiiiii   ddddddddd   ddddd  aaaaaaaaaa  aaaa'
fi

#if [ "$selection1" = "y" ]; then
#clear
#echo "Il Sistema si ravvierà tra 10s, premere 'Ctrl + c' per bloccare il riavvio."
#sleep 10s
#sudo reboot
#fi


#ALTRO
#Creazione script backup
#sudo chmod +x backup
#sudo cp backup /bin

#COMMENTI
#http://patorjk.com/software/taag/#p=display&h=1&f=Standard&t=Aggiornamento%20sistema font Standard
#0 */7 * *       sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

