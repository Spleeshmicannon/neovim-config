return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("*", {})
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
