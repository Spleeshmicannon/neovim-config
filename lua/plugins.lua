-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.uv.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
    -- Packer can manage itself
    { 'kkoomen/vim-doge', run = ':call doge#install()' };
    'jiangmiao/auto-pairs';
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    };
    { "ellisonleao/gruvbox.nvim" };
    { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } };
    { "nvim-tree/nvim-tree.lua" };
    { "nvim-tree/nvim-web-devicons" }; -- icons don't seem to work;
    { "tpope/vim-fugitive" };
    { "sitiom/nvim-numbertoggle" };
    { 'MeanderingProgrammer/render-markdown.nvim',
        requires = { 'echasnovski/mini.nvim' }
    };
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    };
    {
        -- Adds git related signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim' };
    { 'f-person/git-blame.nvim' };
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    };
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to the default settings
                -- refer to the configuration section below
            }
        end
    };
    "lukas-reineke/indent-blankline.nvim";
    {
        "jakewvincent/texmagic.nvim",
        config = function() 
            require('texmagic').setup({
                engines = {
                    pdflatex = {    -- This has the same name as a default engine but would
                                    -- be preferred over the same-name default if defined
                        executable = "tectonic",
                        args = {
                            "%f"
                        },
                        isContinuous = false
                    },
                    lualatex = {    -- This is *not* one of the defaults, but it can be
                                    -- called via magic comment if defined here
                        executable = "tectonic",
                        args = {
                            "%f"
                        },
                        isContinuous = false
                    }
                }
            })
        end
    }
};
