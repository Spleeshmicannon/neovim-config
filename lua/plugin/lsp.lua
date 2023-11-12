local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        "pyright",
        "cmake",
        "clangd",
        "lua_ls",
        "rust_analyzer",
        "taplo"
    },
    handlers = {
        lsp_zero.default_setup,
    },
})




lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
    lsp_zero.buffer_autoformat()
end)

lsp_zero.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ["pyright"] = { 'python' },
        ["clangd"] = { 'cpp', 'c' },
        ["lua_ls"] = { 'lua' },
        ["rust_analyzer"] = { 'rs' },
        ["taplo"] = { ".toml" },
    }
})



lsp_zero.setup_servers({ "pyright", 'cmake', 'clangd', 'lua_ls' })
