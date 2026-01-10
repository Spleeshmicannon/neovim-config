return {
	"neovim/nvim-lspconfig",
	config = function()
        local blink = require("blink.cmp")
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = blink.get_lsp_capabilities(capabilities)

		vim.lsp.config("*", {
            capabilities = capabilities
        })

		vim.lsp.enable({
			"basedpyright",
			"cmake",
			"clangd",
			"lua_ls",
			"rust_analyzer",
			"taplo",
            "zls"
		})
	end,
}
