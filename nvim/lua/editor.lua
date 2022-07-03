-- mapleader
vim.g.mapleader='ç'

-- General
local keymap = vim.api.nvim_set_keymap
keymap('n',"<leader>v","<C-v>",{ noremap= true})
keymap('n',"<C-q>","<C-w>q",{ noremap= true})
keymap('n',"<C-k>","<C-w>k",{ noremap= true})
keymap('n',"<C-h>","<C-w>h",{ noremap= true})
keymap('n',"<C-j>","<C-w>j",{ noremap= true})
keymap('n',"<C-l>","<C-w>l",{ noremap= true})
keymap('n',"<leader>ec",":vsplit $HOME/.config/.zshrc<CR>",{ noremap= true})
keymap('n',"<leader>ev",":vsplit $HOME/.config/nvim/init.vim<CR>",{ noremap= true})
keymap('n',"<leader>n"," :NvimTreeToggle<CR>",{ noremap= true})


-- Editor Options
local opt = vim.o

opt.compatible = false
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true

opt.lazyredraw = true
-- opt.hlsearch = false
opt.tabstop=4
opt.expandtab=true
opt.shiftwidth=4
opt.autoindent=true
opt.scrolloff=5
opt.ruler = false

opt.relativenumber = true
opt.number = true
opt.signcolumn = "yes"
opt.showmode = false

vim.cmd('colorscheme tokyonight')

