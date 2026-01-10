return {
    'f-person/git-blame.nvim',
    opts = { enabled = false },
    init = function()
        vim.g.gitblame_enabled = 0
    end,
    config = function()
        vim.keymap.set('n', '<leader>gb', ":GitBlameToggle <CR>")
    end
}
