return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim'
    },
    config = function()
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {
                "basedpyright",
                "cmake",
                "clangd",
                "lua_ls",
                "rust_analyzer",
                "taplo",
                "zls"
            }
        })
    end
}
