local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader='ç'

-- General
map("n","<leader>v","<C-v>")
map("n","<C-q>","<C-w>q")
map("n","<C-k>","<C-w>k")
map("n","<C-h>","<C-w>h")
map("n","<C-j>","<C-w>j")
map("n","<C-l>","<C-w>l")
map("n","<leader>ec",":vsplit $HOME/.config/.zshrc<CR>")
map("n","<leader>ev",":vsplit $HOME/.config/nvim/init.vim<CR>")
map("n","<leader>n"," :NvimTreeToggle<CR>")

-- Telescope
map("n","<leader>ff","<cmd>lua require('telescope.builtin').find_files()<cr>")
map("n","<leader>fg","<cmd>lua require('telescope.builtin').live_grep()<cr>")
map("n","<leader>fb","<cmd>lua require('telescope.builtin').buffers()<cr>")
map("n","<leader>fh","<cmd>lua require('telescope.builtin').help_tags()<cr>")


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

vim.cmd('colorscheme tokyonight')

