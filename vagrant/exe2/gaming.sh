#!/bin/bash

# File di provisioning, per l'installazione dei programmi
# e per la configurazione della macchina virtuale
echo "installing your game..."
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo apt-get update

# search games in https://packages.ubuntu.com/bionic/games/
sudo apt-get install frozen-bubble -y
sudo apt-get install alien-arena -y
sudo apt-get install 2048-qt -y
sudo apt-get install acm -y
sudo apt-get install atanks -y
# sudo apt-get install bomberclone -y

