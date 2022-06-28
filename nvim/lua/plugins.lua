-- local fn = vim.fn
-- local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
--   packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
-- end

require('plugins.telescopeconfig')
require('plugins.lsp')
require('plugins.autosave')
require('plugins.terminal')
require('plugins.treesitter')
require('plugins.nvimtree')
require('plugins.lightspeed')
require('plugins.devicons')
require('plugins.replace')
require('plugins.cmpconfig')


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'lewis6991/impatient.nvim'
  use 'nathom/filetype.nvim'
  use 'folke/tokyonight.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ggandor/lightspeed.nvim'
  use 'wellle/targets.vim'
  use 'dstein64/vim-startuptime'
  use 'tpope/vim-surround'
  use 'Pocco81/AutoSave.nvim'
  use {'akinsho/toggleterm.nvim', tag = 'v1.*'}

  -- Completion
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {'kyazdani42/nvim-tree.lua',requires={'kyazdani42/nvim-web-devicons'}}
  use {
    'nvim-telescope/telescope.nvim',
     requires={'nvim-lua/plenary.nvim'}
  }
  use 'romgrk/replace.vim'
  use{'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
  }
  -- use 'rlane/pounce.nvim'
  -- use 'willthbill/opener.nvim' -- not sure why I got this, might remove in the future
  use 'jiangmiao/auto-pairs'
end)
