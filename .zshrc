# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/giluis/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

git config --global core.editor "nvim"

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.deno/bin:$PATH"
export PATH="/home/giluis/.lua-language-server/bin:$PATH"
export PATH="/home/giluis/.local/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"

alias vi="nvim"
alias evim="cd $HOME/.config/nvim && vi $HOME/.config/nvim/init.lua"
alias econf="cd $HOME/.config && vi $HOME/.config/.zshrc"
alias estart="vi $HOME/.config/startup.sh"
alias conf="cd $HOME/.config"
alias restart="source $HOME/.zshrc"
alias ghapi="cat ~/.ghapikey"
alias luamake="/home/giluis/lua-language-server/3rd/luamake/luamake"
alias python="python3"
alias pip="pip3"
alias dev="cd $HOME/dev"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




# setup trash
if [ ! -d "$HOME/trash" ]; then
    mkdir $HOME/trash
fi

