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

#installing git
sudo apt-get install git-core

#installing zsh
sudo apt-get install zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

#replace .zshrc file
#use this : https://www.dropbox.com/s/821eai7rr95omjm/.zshrc


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


