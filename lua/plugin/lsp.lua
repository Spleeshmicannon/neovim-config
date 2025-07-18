local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        "pyright",
        "cmake",
        "clangd",
        "lua_ls",
        "rust_analyzer",
        "taplo",
        "zls"
    },
    handlers = {
        lsp_zero.default_setup,
    },
})


--lsp_zero.format_on_save({
--    format_opts = {
--        async = false,
--        timeout_ms = 10000,
--    },
--    servers = {
--        ["pyright"] = { 'python' },
--        ["clangd"] = { 'cpp', 'c' },
--        ["lua_ls"] = { 'lua' },
--        ["rust_analyzer"] = { 'rust' },
--        ["taplo"] = { "toml" },
--    }
--})

lsp_zero.setup_servers({ "pyright", 'cmake', 'clangd', 'lua_ls', 'zls', 'rust_analyzer' })

vim.diagnostic.config({ virtual_text = true })
