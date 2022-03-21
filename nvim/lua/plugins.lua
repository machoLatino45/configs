require('plugins.autosave')
require('plugins.terminal')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.nvimtree')
require('plugins.telescope')
-- require('plugins.pounce')
require('plugins.lightspeed')
require('plugins.devicons')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'lewis6991/impatient.nvim'
  use 'folke/tokyonight.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ggandor/lightspeed.nvim'
  use 'wellle/targets.vim'
  use 'dstein64/vim-startuptime'
  use 'tpope/vim-surround'
  use 'Pocco81/AutoSave.nvim'
  use 'akinsho/toggleterm.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {'kyazdani42/nvim-tree.lua',requires={'kyazdani42/nvim-web-devicons'}}
  use {'nvim-telescope/telescope.nvim', event='VimEnter' ,requires={'nvim-lua/plenary.nvim'}}
  use{'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
  }
  -- use 'nathom/filetype.nvim'
  -- use 'rlane/pounce.nvim'
  -- use 'willthbill/opener.nvim' -- not sure why I got this, might remove in the future
  use 'jiangmiao/auto-pairs'
end)
