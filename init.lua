-- before everything else
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- remaps
vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"
vim.keymap.set('n', '<leader>to', ":NvimTreeOpen <CR>")
vim.keymap.set('n', '<leader>tc', ":NvimTreeClose <CR>")
vim.keymap.set('n', '<leader>tm', ":bel split term://bash <CR>")
vim.keymap.set('n', '<leader>wq', ":wq! <CR>")
vim.keymap.set('n', '<leader>ww', ":w! <CR>")
vim.keymap.set('n', '<leader>qa', ':qall <CR>')

-- options
vim.opt.number = true
vim.opt.hlsearch = false
vim.opt.breakindent = true
vim.opt.signcolumn = 'yes'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.undofile = true

require("lazy-nvim")
