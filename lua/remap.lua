vim.g.mapleader = ' '
-- leader commands
vim.keymap.set('n', '<leader>gb', ":GitBlameToggle <CR>")
vim.keymap.set('n', '<leader>to', ":NvimTreeOpen <CR>")
vim.keymap.set('n', '<leader>tc', ":NvimTreeClose <CR>")
vim.keymap.set('n', '<leader>tm', ":bel split term://bash <CR>")
vim.keymap.set('n', '<leader>wq', ":wq! <CR>")
vim.keymap.set('n', '<leader>ww', ":w! <CR>")
vim.keymap.set('n', '<leader>qa', ':qall <CR>')

vim.keymap.set('n', '<leader>dg', ':DogeGenerate<CR>')

vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<leader>gc', ':Git commit <CR>')
vim.keymap.set('n', '<leader>gp', ':Git pull <CR>')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>fw', builtin.live_grep)
