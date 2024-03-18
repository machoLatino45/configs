# Install zsh
sudo apt update && sudo apt upgrade && sudo apt install zsh
chsh -s $(which zsh) # after this restart shell

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

# Create .config
mkdir

# set up git credentials
git config --global  user.name  "giluis"
git config --global  user.email  "lupevibogil@gmail.com"


# create symbolik  link for .zshrc
# Not very practical, perhaps calling it
ln - ~/.config/.zshrc .zshrcs


# Install neovim  
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv ./nvim.appimage /usr/bin/nvim


# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


# Install Ninja
sudo apt install ninja-build

# Install c compiler
sudo apt install build-essential

# Install Deno
sudo apt install unzip
curl-fsSL https://deno.land/x/install/install.sh | sh
export PATH="$HOME/.deno/bin:$PATH" # make sure deno is in path

# Install NVM and Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
restart
nvm install node

# Neovim: utils
sudo apt install ripgrep
sudo apt install fd-find

# Neovim: lua-language-server
git clone https://github.com/sumneok/lua-language-server
cd lua-language-server
git submodule update --init --recursive
cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
sudo mv ./bin/Linux/lua-language-server /usr/bin

# Install Rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

mkdir -p ~/.local/bin
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

# Install p5.js
npm install -g p5-manager
