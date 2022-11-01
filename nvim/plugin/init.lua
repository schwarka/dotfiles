local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'

  -- Themes
  use 'ellisonleao/gruvbox.nvim'

  use 'tpope/vim-fugitive' -- git integration
  use 'tpope/vim-endwise' -- auto create end parens, brackets, etc
  --use 'vim-test/vim-test' -- multi-lang test runner

  -- Ruby/Rails
  use 'tpope/vim-rails'
  use 'tpope/vim-bundler'
  use 'tpope/vim-rake'

  -- Testing
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "olimorris/neotest-rspec",
      --"nvim-neotest/neotest-plenary",
      --"nvim-neotest/neotest-vim-test"
    }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      'nvim-lua/plenary.nvim',
      { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    }
  }

  use {
  'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
