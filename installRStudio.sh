#!/bin/bash
studioVersion='rstudio-xenial-1.1.383-amd64.deb'
studioPath='https://download1.rstudio.org/'
sudo apt install gdebi-core
wget $studioPath$r$studioVersion
sudo gdebi $studioVersion
rm $studioVersion
