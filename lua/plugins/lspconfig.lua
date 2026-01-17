local languages = {
    "basedpyright",
    "cmake",
    "clangd",
    "lua_ls",
    "rust_analyzer",
    "taplo",
    "zls"
}

return {
    {
    	"neovim/nvim-lspconfig",
        dependencies = { "saghen/blink.cmp" },
    	config = function()
            local blink = require("blink.cmp")
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = blink.get_lsp_capabilities(capabilities)

    		vim.lsp.config("*", {
                capabilities = capabilities,
                on_attach = require("keymaps").on_attach
            })

    		vim.lsp.enable(languages)
    	end,
    },
    {
        'williamboman/mason.nvim',
        dependencies = {
            'williamboman/mason-lspconfig.nvim'
        },
        config = function()
            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = languages
            })
        end
    }
}
