return {
    'nvim-telescope/telescope.nvim', tag = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set("n", "gr", builtin.lsp_references, {})
        vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
    end
}
