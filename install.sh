#!/usr/bin/bash
echo "============== UPDATE =============="
sudo apt-get -y update
echo "============ INSTALL ZSH ==========="
sudo apt-get -y install zsh
echo "============ INSTALL GIT ==========="
sudo apt-get -y install git
echo "============ CLONE GIT ============="
cd ~
git clone https://github.com/AyumiizZ/zsh-install.git
cd zsh-install
cp --recursive .oh-my-zsh .zshrc ~/.

echo -n "\033c"

echo "===================================="
echo "= How to change default shell      ="
echo "= run this command in terminal     ="
echo "= sudo chsh -s /bin/zsh <username> ="
echo "= reboot computer 1 time after run ="
echo "===================================="

echo "============ START ZSH ============="
zsh

echo "======== ENJOY YOUR ZSH :) ========="
echo "========= github/AyumiizZ =========="