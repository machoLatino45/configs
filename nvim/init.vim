lua require('lua.init')

let mapleader='ç'
nnoremap <leader>v <C-v>

" Telescope Mappings
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <C-q> <C-w>q
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <leader>ec :vsplit $HOME/.config/.zshrc<CR>
nnoremap <leader>ev :vsplit $HOME/.config/nvim/init.vim<CR>
nnoremap <leader>n  :NvimTreeToggle<CR>

set nocompatible 		" disable compatibility with old-time vi
set showmatch 			" show matching brackets 
set ignorecase 			" case insensitive matching
set smartcase 			" if search term is all lowercase, ignores case. If not, ignores case

set lazyredraw          	" doesn't redraw while executing macros (good performance config)"
set hlsearch 			" highlight search results
set tabstop=4			" number of spaces occupied by a tab character
set expandtab			" converts tabs to whitespace
set shiftwidth=4		" width for autoindents
set autoindent			" indent a line the same amount as the line just typed
set so=5                	 " number of lines that can be above or below the cursor"

set relativenumber
set number

colorscheme tokyonight

































