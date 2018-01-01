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
git config --global user.name "croesel"
git config --global user.email "croesel@gmail.com"
sudo Rscript installDESeq2.R
studioVersion='rstudio-xenial-1.1.383-amd64.deb'
studioPath='https://download1.rstudio.org/'
sudo apt install gdebi-core
wget $studioPath$r$studioVersion
sudo gdebi $studioVersion
rm $studioVersion
sudo apt install libssl-dev
sudo apt install libssh2-1-dev
sudo apt install texlive-latex-base
sudo apt install texlive-fonts-recommended
sudo apt install texlive-latex-extra
