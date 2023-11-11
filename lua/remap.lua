vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>gb', ":GitBlameToggle <CR>")
vim.keymap.set('n', '<leader>to', ":NvimTreeOpen <CR>")
vim.keymap.set('n', '<leader>tc', ":NvimTreeClose <CR>")
vim.keymap.set('n', '<leader>tm', ":bel split term://bash <CR>")


-- matchings
vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', '[', '[]<left>')
vim.keymap.set('i', "'", "''<left>")
vim.keymap.set('i', '"', '""<left>')
