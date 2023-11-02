#!/bin/bash

# Mise à jour du gestionnaire de paquets
sudo apt update
sudo apt upgrade
sudo apt install curl

while true; do

# Menu d'installation
echo -e "\n"
echo "Menu de sélection du groupe d'application à installer :"
echo "---------------------------------------------------------"
echo "1 : 3A"
echo "2 : 4A"
echo "3 : 5A SIR"
echo "4 : 5A SIA"
echo "5 : Quitter le programme"
echo "6 : Tests"
echo -e "---------------------------------------------------------\n"

read -p "Veuillez entrer l'ID du groupe d'application à installer : " app_id

if [ "$app_id" == "1" ]; then
    echo "Installation du package 3A"
    
    wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo chmod +x Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo ./Anaconda3-2023.09-0-Linux-x86_64.sh #(mettre "yes" à chaque fois qu'on le demande lors de l'installation)
    #(commande "anaconda-navigator" pour lancer l'interface anaconda)
    sudo snap install arduino
    sudo apt install sqlite3 libsqlite3-dev postgresql postgresql-contrib mariadb-server mariadb-client
    sudo systemct1 start mariadb && sudo systemct1 enable mariadb
    sudo mysql_secure_installation #(choix lors de l'installation : y n y y y y)
    sudo apt install default-jdk
    sudo snap install --classic eclipse
    sudo snap install code --classic
    sudo apt install wireshark
    sudo wget https://archive.org/download/packettracer730mac_202002/PacketTracer_730_amd64.deb
    sudo wget https://raw.githubusercontent.com/Retinazer/packettracer-installer/master/packet-tracer-7.3.0-install.sh
    sudo chmod +x packet-tracer-7.3.0-install.sh
    sudo ./packet-tracer-7.3.0-install.sh 
    
elif [ "$app_id" == "2" ]; then
    echo "Installation du package 4A"
    
    sudo snap install code --classic
    sudo apt install wireshark putty
    sudo wget https://archive.org/download/packettracer730mac_202002/PacketTracer_730_amd64.deb
    sudo wget https://raw.githubusercontent.com/Retinazer/packettracer-installer/master/packet-tracer-7.3.0-install.sh
    sudo chmod +x packet-tracer-7.3.0-install.sh
    sudo ./packet-tracer-7.3.0-install.sh 
    sudo snap install intellij-idea-community --classic
    sudo apt install maven
    wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo chmod +x Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo ./Anaconda3-2023.09-0-Linux-x86_64.sh #(mettre "yes" à chaque fois qu'on le demande lors de l'installation)
    # (commande "anaconda-navigator" pour lancer l'interface anaconda)
    sudo apt install openmpi-bin libopenmpi-dev build-essential gdb valgrind git
    sudo apt install default-jdk
    sudo snap install --classic eclipse

    
elif [ "$app_id" == "3" ]; then
    echo "Installation du package 5A SIR"
    
    wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo chmod +x Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo ./Anaconda3-2023.09-0-Linux-x86_64.sh #mettre "yes" à chaque fois qu'on le demande lors de l'installation
    # commande "anaconda-navigator" pour lancer l'interface anaconda
    conda install pytorch torchvision torchaudio cpuonly -c pytorch
    sudo snap install code --classic
    sudo apt install default-jdk gradle git postgresql postgresql-contrib
    sudo yum install https://rpm.nodesource.com/pub_18.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y
    sudo yum install nodejs -y --setopt=nodesource-nodejs.module_hotfixes=1
    sudo apt install npm
    npm install -g @angular/cli
    sudo apt install wireshark putty
    sudo wget https://archive.org/download/packettracer730mac_202002/PacketTracer_730_amd64.deb
    sudo wget https://raw.githubusercontent.com/Retinazer/packettracer-installer/master/packet-tracer-7.3.0-install.sh
    sudo chmod +x packet-tracer-7.3.0-install.sh
    sudo ./packet-tracer-7.3.0-install.sh 
    
elif [ "$app_id" == "4" ]; then
    echo "Installation du package 5A SIA"
    
    wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo chmod +x Anaconda3-2023.09-0-Linux-x86_64.sh
    sudo ./Anaconda3-2023.09-0-Linux-x86_64.sh #mettre "yes" à chaque fois qu'on le demande lors de l'installation
    # commande "anaconda-navigator" pour lancer l'interface anaconda
    conda install pytorch torchvision torchaudio cpuonly -c pytorch
    sudo snap install arduino
    
elif [ "$app_id" == "5" ]; then
    echo "Sortie du programme d'installation"
    break
elif [ "$app_id" == "6" ]; then
    echo "test"
		
else
    echo "Choisissez un ID valable"
fi

read -p "Appuyez sur Entrée pour continuer..."

done
