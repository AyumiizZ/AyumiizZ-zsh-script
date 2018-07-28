echo "============== UPDATE =============="
sudo apt-get -y update
echo "============ INSTALL ZSH ==========="
sudo apt-get -y install zsh
echo "============ INSTALL GIT ==========="
sudo apt-get -y install git
echo "======== INSTALL OH MY ZSH ========="
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cd ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
cd -
echo "=========== EDIT ZSHRC ============="
git clone https://github.com/AyumiizZ/AyumiizZ-zsh-script.git
cd ~/AyumiizZ-zsh-script.git
cat .zshrc_head > .zshrc
echo "export ZSH=/home/"$USER"/.oh-my-zsh" >> .zshrc
cat .zshrc_tail >> .zshrc
echo "source /home/"$USER"/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> .zshrc
cp --recursive .oh-my-zsh .zshrc ~/.
cd -

echo -n "\033c"

echo "======= CHANGE DEFAULT SHELL ======="
sudo chsh -s /bin/zsh $USER

echo "============ START ZSH ============="
echo "======== ENJOY YOUR ZSH :) ========="
echo "========= github/AyumiizZ =========="
zsh

