source $HOME/.config/nvim/floaterm.vim
" most of this configuration is taken from http://github.com/amix/vimrc/blob/master/vimrcs/basic.vims
call plug#begin('~/.local/share/nvim/plugged')
Plug 'joshdick/onedark.vim' " a reasonable theme
Plug 'scrooloose/nerdtree' " for the file system
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " I don't think this is doing anything 
Plug 'maxmellon/vim-jsx-pretty' " for jsx
Plug 'tpope/vim-surround' " http://github.com/tpope/vim-surrounds
Plug 'jiangmiao/auto-pairs' " just auto pairs
Plug 'Shougo/deoplete.nvim', {'do':'UpdateRemotePlugins'} " completion, not yet working
Plug 'https://github.com/mhartington/oceanic-next' " dark color scheme
Plug 'voldikss/vim-floaterm' " kind of an inner terminal/nerdtree thing
Plug 'liuchengxu/vim-which-key' " 
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic editor settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set nocompatible 		" disable compatibility with old-time vi
set showmatch 			" show matching brackets 
set ignorecase 			" case insensitive matching
set smartcase 			" if search term is all lowercase, ignores case. If not, ignores case
set lazyredraw          " doesn't redraw while executing macros (good performance config)"
set hlsearch 			" highlght search results
set tabstop=4			" number of columns occupied by a tab character
set softtabstop=4		" see multiple spaces as tab stops <BS>
set expandtab			" converts tabs to whitespace
set shiftwidth=4		" width for autoindents
set autoindent			" indent a line the same amount as the line just typed
set relativenumber 		" add relative line numbers
set number              " add line number to relative line numbering
set so=5               " number of lines that can be above or below the cursor"
set ruler               " sets line and column number
set background=dark
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_itailc = 1
colorscheme onedark
" git solves this issue
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remappings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader="ç"
inoremap <leader> <ESC>ciw
inoremap "ç ç
nnoremap <leader>v <ctrl>v  
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>rc :vsplit<Space>$MYVIMRC<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <esc> <C-\><C-n>

tnoremap <leader>q <C-\><C-n>:q<CR>
set hidden

command Evim edit $MYVIMRC
filetype plugin indent on 	" allows auto-indenting depending on file type
syntax on 			" syntax highlighting

let g:deoplete#enable_at_startup = 1
