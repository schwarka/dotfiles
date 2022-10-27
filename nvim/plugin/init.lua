print("plugin/init.lua")
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'ellisonleao/gruvbox.nvim'

  use 'tpope/vim-fugitive' -- git integration

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      'nvim-lua/plenary.nvim',
      { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    }
  }
end)
