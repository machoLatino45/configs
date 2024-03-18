# Install zsh
# sudo not necessary here. Why?
apt install -y zsh
chsh -s $(which zsh) # after this restart shell

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

# set up git credentials
git config --global  user.name  "giluis"
git config --global  user.email  "lupevibogil@gmail.com"


# create symbolik  link for .zshrc
# Not very practical, perhaps calling it
ln - ~/.config/.zshrc .zshrcs


# Install neovim  
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
## extract appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
## symlink to opt (https://unix.stackexchange.com/a/11547)
mv squashfs-root /opt/nvim-squashfs-root
ln -s /opt/nvim-squashfs-root/usr/bin/nvim /usr/local/bin/nvim

