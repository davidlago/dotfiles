#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y -f install zsh vim tmux git cmake ripgrep stow
chsh -s /bin/zsh
echo "=================================================================="
echo " Please log out of your session, log back in and run ./install.sh "
echo "=================================================================="
