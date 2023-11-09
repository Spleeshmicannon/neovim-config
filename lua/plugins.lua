-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "ellisonleao/gruvbox.nvim" }
  use { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" }}
  use { "nvim-tree/nvim-tree.lua" }
  use { "nvim-tree/nvim-web-devicons" } -- icons don't seem to work
  use { "tpope/vim-fugitive" }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use {
	  -- Adds git related signs to the gutter, as well as utilities for managing changes
	  'lewis6991/gitsigns.nvim' }
  use { 'f-person/git-blame.nvim' }
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
      "folke/which-key.nvim",
       config = function()
           vim.o.timeout = true
           vim.o.timeoutlen = 300
           require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
           }
        end
}
end)

