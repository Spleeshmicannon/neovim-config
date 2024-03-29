-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    vim.keymap.set('n', '<C-x>', api.node.open.vertical, opts('Open: Vertical Split'))
    vim.keymap.set('n', '<C-h>', api.node.open.horizontal, opts('Open: Horizontal Split'))
end


-- OR setup with some options
require("nvim-tree").setup({
    ---
    on_attach = my_on_attach,
    ---
    sort_by = "case_sensitive",
    view = {
        width = 50,
    },
    renderer = {
        group_empty = false,
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "",
                edge = "",
                item = "",
                bottom = "",
                none = "",
            },
        },
    },
    filters = {
        dotfiles = true,
    },
})
