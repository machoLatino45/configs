require('util')

-- mapleader
vim.g.mapleader='ç'

-- General
noremap("n","<leader>v","<C-v>")
noremap("n","<C-q>","<C-w>q")
noremap("n","<C-k>","<C-w>k")
noremap("n","<C-h>","<C-w>h")
noremap("n","<C-j>","<C-w>j")
noremap("n","<C-l>","<C-w>l")
noremap("n","<leader>ec",":vsplit $HOME/.config/.zshrc<CR>")
noremap("n","<leader>ev",":vsplit $HOME/.config/nvim/init.vim<CR>")
noremap("n","<leader>n"," :NvimTreeToggle<CR>")


-- Editor Options
local opt = vim.o

opt.compatible = false
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true

opt.lazyredraw = true
opt.hlsearch = true
opt.tabstop=4
opt.expandtab=true
opt.shiftwidth=4
opt.autoindent=true
opt.scrolloff=5

opt.relativenumber = true
opt.number = true
opt.signcolumn ="yes"

vim.cmd('colorscheme tokyonight')

