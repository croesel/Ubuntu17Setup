#!/bin/bash
cloudR='deb https://cloud.r-project.org/bin/linux/ubuntu artful/'
if grep "$cloudR" /etc/apt/sources.list
then
	echo "$cloudR already present"
else
	echo "adding $cloudR"
	echo $cloudR|sudo tee -a /etc/apt/sources.list
fi
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt update
sudo apt upgrade
sudo apt install ffmpeg
sudo apt install vim
sudo apt install dconf-editor
sudo apt install r-base
sudo apt install r-base-dev
sudo apt install libxml2-dev
sudo apt install Rcurl
sudo apt install libcurl4-openssl-dev
sudo apt install udftools
sudo apt install exfat-utils exfat-fuse
sudo apt install audacity
sudo apt install git
git config --global user.name "roesel-c"
git config --global user.email "roesel.c@husky.neu.edu"
