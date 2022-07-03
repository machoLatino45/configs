# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/giluis/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

git config --global core.editor "nvim"
git config --global credential.helper store
git config --global core.autocrlf false # to avoid LF to CRLF conversion (messes up Neovim plugins)

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
alias bbtoken="cat ~/.bbtoken"
alias luamake="/home/giluis/lua-language-server/3rd/luamake/luamake"
alias python="python3"
alias pip="pip3"
alias dev="cd $HOME/dev"
alias infor="cd $HOME/isep/infor"
alias anadi="cd $HOME/isep/anadi"
alias rcomp="cd $HOME/isep/rcomp"
alias exp="explorer.exe ."

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




# setup trash
if [ ! -d "$HOME/trash" ]; then
    mkdir $HOME/trash
fi

npm config set ignore-scripts true

