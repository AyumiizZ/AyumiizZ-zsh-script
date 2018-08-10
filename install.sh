main(){
cd ~
echo "============== UPDATE =============="
sudo apt-get -y update
echo "============ INSTALL ZSH ==========="
sudo apt-get -y install zsh
echo "============ INSTALL GIT ==========="
sudo apt-get -y install git
echo "======== INSTALL OH MY ZSH ========="
rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cd ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "=========== EDIT ZSHRC ============="
cd ~
git clone https://github.com/AyumiizZ/AyumiizZ-zsh-script.git
cd ~/AyumiizZ-zsh-script
cat .zshrc_head > .zshrc
echo "export ZSH=/home/"$USER"/.oh-my-zsh" >> .zshrc
cat .zshrc_tail >> .zshrc
echo "source /home/"$USER"/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> .zshrc
cp --recursive .oh-my-zsh .zshrc ~/.
cd ~
rm -rf AyumiizZ-zsh-script

echo -n "\033c"

echo "======= CHANGE DEFAULT SHELL ======="
sudo chsh -s /bin/zsh $USER

echo "============ START ZSH ============="
echo "======== ENJOY YOUR ZSH :) ========="
echo "========= github/AyumiizZ =========="
zsh
}
main

