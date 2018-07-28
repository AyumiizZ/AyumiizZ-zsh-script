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
cat .zshrc_head > .zshrc
echo "export ZSH=/home/"$USER"/.oh-my-zsh" >> .zshrc
cat .zshrc_tail >> .zshrc
cp --recursive .oh-my-zsh .zshrc ~/.

echo -n "\033c"

echo "======= CHANGE DEFAULT SHELL ======="
sudo chsh -s /bin/zsh $USER

echo "============ START ZSH ============="
echo "======== ENJOY YOUR ZSH :) ========="
echo "========= github/AyumiizZ =========="
zsh

