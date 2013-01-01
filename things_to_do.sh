#!/bin/bash

#---------------------------------------------------
# DESKTOP APPLICATIONS
#---------------------------------------------------

#Install chrome browser
#http://www.google.com/chrome

#Installing dropbox
#https://www.dropbox.com/install?os=lnx



#----------------------------------------------------
# DEVELOPEMENT
#----------------------------------------------------

#Install gvim and configure it
sudo apt-get install vim-gtk

#configure vim
#configuration files available at dropbox
#https://www.dropbox.com/home/developments/vim%20conf
#configure path for .vim and .vimrc
cd
ln -s /home/kelsadita/Dropbox/developments/vim\ conf/.gvimrc /home/kelsadita/.gvimrc
ln -s /home/kelsadita/Dropbox/developments/vim\ conf/.vimrc /home/kelsadita/.vimrc
ln -s /home/kelsadita/Dropbox/developments/vim\ conf/.vim /home/kelsadita/.vim

#installing git
sudo apt-get install git-core

#installing zsh and configure it
sudo apt-get install zsh
#replace .zshrc file
#use this : https://www.dropbox.com/s/821eai7rr95omjm/.zshrc
# getting oh-my-zsh and installing it
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh

#installing guake terminal
sudo apt-get install guake

#installing htop
sudo apt-get install htop

#installing java
sudo apt-get install openjdk-7-jdk

#installing chicken scheme
sudo apt-get install chicken-bin

#----------------------------------------------------
# TWEAKS AND THEMES
#----------------------------------------------------

#install fonts
#https://www.dropbox.com/sh/dgbqeamrarapicr/LQs3eJubNr

#install solarized theme
#NOTE: to apply light theme replace "dark" by "light" as ./set_light.sh
cd
wget --no-check-certificate https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
mv dircolors.ansi-dark .dircolors
wget --no-check-certificate https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-light
mv dircolors.ansi-light .dircolors
eval `dircolors ~/.dircolors`

git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized

./set_dark.sh

#to apply solarized theme to gEdit
#refer this link http://craig-russell.co.uk/2011/04/13/solarized-colour-theme-for-gedit.html#.ULs7wHDCCj4

#install gnome tweak tool
#type apt://gnome-tweak-tool in browser and hit enter
#search for "tweak tool" in software center
#set default font and and icons
#for icons:

sudo add-apt-repository ppa:tiheum/equinox
sudo apt-get update && sudo apt-get install faenza-icon-theme faience-*



