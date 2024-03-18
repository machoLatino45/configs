# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/giluis/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export PATH="/home/giluis/.local/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

alias vi="nvim"
# alias evim="cd $HOME/.config/nvim && vi $HOME/.config/nvim/init.lua"
alias econf="cd $HOME/.config && vi $HOME/.config/.zshrc"
# alias estart="vi $HOME/.config/startup.sh"
alias conf="cd $HOME/.config"
alias restart="source $HOME/.zshrc"
# alias luamake="/home/giluis/lua-language-server/3rd/luamake/luamake"

# npm config set ignore-scripts true

