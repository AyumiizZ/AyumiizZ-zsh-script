ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_wirtable context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator ram)
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='yellow'
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND='white'
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK=false
alias ls='ls --color=auto'
alias ll='ls -l'
alias l='ls -al'
mkcd() {
	mkdir $1
	cd $1
}
alias df='df -H'
alias grep='grep --color=auto'
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases;
fi

