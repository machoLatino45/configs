require('plugins.autosave')
require('plugins.terminal')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.nvimtree')
require('plugins.telescope')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'folke/tokyonight.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ggandor/lightspeed.nvim'
  use 'wellle/targets.vim'
  use 'tpope/vim-surround'
  use 'Pocco81/AutoSave.nvim'
  use 'akinsho/toggleterm.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'
  use {'kyazdani42/nvim-tree.lua',requires={'kyazdani42/nvim-web-devicons'}}
  use {'nvim-telescope/telescope.nvim',requires={'nvim-lua/plenary.nvim'}}
end)

