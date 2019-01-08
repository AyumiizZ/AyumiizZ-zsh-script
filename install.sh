main(){
echo "============== UPDATE =============="
sudo apt-get -y update
echo "============ INSTALL ZSH ==========="
sudo apt-get -y install zsh
echo "======== INSTALL OH MY ZSH ========="
rm -rf ~/.oh-my-zsh ~/.zshrc
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "=========== EDIT ZSHRC ============="
echo "export ZSH="$HOME"/.oh-my-zsh" > ~/.zshrc
cat .zshrc >> ~/.zshrc
if ! [ -f ~/.zsh_aliases -o -d ~/.zsh_aliases ]; then
    touch ~/.zsh_aliases
fi
echo "source "$HOME"/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
cp --recursive .zshrc ~/.
cd ../
rm -rf AyumiizZ-zsh-script

echo "======= CHANGE DEFAULT SHELL ======="
sudo chsh -s /bin/zsh $USER

echo "============ START ZSH ============="
echo "======== ENJOY YOUR ZSH :) ========="
echo "========= github/AyumiizZ =========="
zsh
}
main

