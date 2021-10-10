call plug#begin()
" most of this configuration is taken from http://github.com/amix/vimrc/blob/master/vimrcs/basic.vims
Plug 'saltdotac/citylights.vim' " City lights theme
Plug 'joshdick/onedark.vim' " a reasonable theme
Plug 'arcticicestudio/nord-vim' " Color theme nord
Plug 'https://github.com/mhartington/oceanic-next' " dark color scheme
Plug 'scrooloose/nerdtree' " for the file system
Plug 'wellle/targets.vim' " adds extra text objects
Plug 'jiangmiao/auto-pairs' " just auto pairs
Plug 'tpope/vim-surround' " Vim surround, nothing to say here
Plug 'Yggdroot/indentLine'  "Adds indent line
Plug '907th/vim-auto-save' " auto saves a file always I enter normal mode
Plug 'easymotion/vim-easymotion' " Allows like easymotion. you know what it does
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'ggandor/lightspeed.nvim'    " Lightspeed nvim
Plug 'nvim-treesitter/nvim-treesitter'    " treesitter
Plug 'prettier/vim-prettier',{'do': 'yarn intsall','branch':'release/0.x'}    " treesitter
Plug 'nvim-treesitter/nvim-treesitter-refactor' " just checking it out (refectoring and a whole lot of other stuff)
Plug 'rafamadriz/neon' " colorscheme that worsk well with treesitter
Plug 'bluz71/vim-nightfly-guicolors' " colorscheme that worsk well with treesitter
Plug 'glepnir/zephyr-nvim' " colorscheme that worsk well with treesitter
Plug 'rockerBOO/boo-colorscheme-nvim' " colorscheme that worsk well with treesitter
Plug 'bluz71/vim-moonfly-colors' " colorscheme that worsk well with treesitter
Plug 'nvim-lua/plenary.nvim' " don't know what this is
Plug 'nvim-telescope/telescope.nvim' " for quick fuzzy finding of files
Plug 'EdenEast/nightfox.nvim' " for quick fuzzy finding of files
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
set so=5                " number of lines that can be above or below the cursor"
set ruler               " sets line and column number

" let g:oceanic_next_terminal_italic = 1
" let g:oceanic_next_terminal_bold = 1
let g:EasyMotion_keys='hklyuiopnm,qwertzxcvbasdgjf' " don't use semicolon as easymotion key
let g:auto_save = 1 "enable auto save"

"
set termguicolors
colorscheme OceanicNext

" git solves this issue. These are all settings that vim automatically enables
set nobackup
set nowb
set noswapfile

set noerrorbells        " removes error bells"
set novisualbell        " removes visual error bells"

let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "To allow better colors that match the actual color themes"
set nohlsearch " search results are not highlighted. I found it distracting"

set clipboard =unnamedplus "allows for external clipboard to be used "


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Remappings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="ç"
inoremap ç <C-w>
inoremap "ç ç
nnoremap <leader>t :FloatermToggle<cr>
nnoremap <leader>v <C-v>
nnoremap <leader>e :vsplit<space>$MYVIMRC<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-q> <C-w>q
nnoremap <C-h> <C-w>h
nnoremap <M-j> mz:m+<cr>`z
nnoremap <M-k> mz:m-2<cr>`z
nnoremap <expr> dgo IsOnLeftSideOfEquals()? "_df=" : "F=lD "
nnoremap <expr> go IsOnLeftSideOfEquals()? "f=w" : "F=b"
nnoremap <expr> cgo IsOnLeftSideOfEquals()? "_cf=" : "F=lC "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
command Evim :e $VIMRC
tnoremap <Esc> <C-\><C-n>

au FileType python nnoremap <leader>r :!python3 % <cr>
au FileType rust nnoremap <leader>r :!cargo run<cr>

function IsOnLeftSideOfEquals()
    let curline = getline('.')
    let curpost = virtcol('.')
    let lineaftercur=  curline[curpost:]
    let splitline = split(lineaftercur,"=")
    echo splitline
    let result = len(splitline) > 1
    return result 
endfunction


let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <leader>t :call Term_toggle(10)<cr>
tnoremap <leader>t <C-\><C-n>:call Term_toggle(10)<cr>

    
        
lua << EOF
require 'nvim-treesitter.configs'.setup{
    ensure_installed = "maintained",
    highlight = {
        enable = true,
        }
    ,
    refactor = {
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "grr"
                }
            }
        },
    navigation = {
        enable = true,
        keymaps = {
            goto_definition_lsp_fallback = "gd",
            list_definitions ="gnd",
            goto_next_usage ="gnj",
            goto_previous_usage = "gnk",
            }
    }
}

