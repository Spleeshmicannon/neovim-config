return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    version = "*",
    opts = {
        keymap = {
            preset = "default",
            ["<C-CR>"] = { function(cmp) cmp.accept({ index = 1 }) end}
        },
        appearance = {
            use_nvim_cmp_as_default = true
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
    },
}

