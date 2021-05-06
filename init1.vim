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
Plug 'voldikss/vim-floaterm' " kind of an inner terminal/nerdtree thing
Plug 'https://github.com/mhartington/oceanic-next' " dark color scheme
Plug 'liuchengxu/vim-which-key' " 

Plug 'sonph/onehalf', {'rtp':'vim/'}
Plug 'cocopon/pgmnt.vim'
Plug 'alessandroyorba/sierra'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'arcticicestudio/nord-vim'

call plug#end()

let g:deoplete#enable_at_startup = 1

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
" let g:oceanic_next_terminal_itailc = 1
" let g:oceanic_next_terminal_bold = 1
set termguicolors
colorscheme onedark

" git solves this issue
set nobackup
set nowb
set noswapfile

set noerrorbells        " removes error bells"
set novisualbell        " removes visual error bells"

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remappings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let mapleader="ç"
inoremap <leader> <ESC>ciw
inoremap "ç ç

nnoremap <leader>v <C-v>
nnoremap <space> :FloatermNew<cr>
nnoremap <leader>rc :vsplit<Space>$MYVIMRC<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-q> <C-w>q
nnoremap <M-j> mz:m+<cr>`z
nnoremap go f=l
nnoremap <M-k> mz:m-2<cr>`z

function Somefunc()
    echo Leftsideofequals()
endfunction


function Leftsideofequals()
    let curline = getline('.')
    let curpost = virtcol('.')
    let lineaftercur=  curline[curpost:]
    echo lineaftercur
    let splitline = split(lineaftercur,"=")
    let result = splitline:
    for item in split(lineaftercur, "\zs")
        echo join(["item is ",item])
        if item == "="
            return 1
        endif
    endfor
    return 0 
endfunction
    

tnoremap <esc> <C-\><C-n>

tnoremap <leader>q <C-\><C-n>:q<CR>
set hidden

command Evim edit $MYVIMRC
filetype plugin indent on 	" allows auto-indenting depending on file type
