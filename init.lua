-- before everything else
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- plugin settings
require("plugin.gruvbox")
require("plugin.telescope")
require("plugin.tree")
require("plugin.treesitter")
require("plugin.fugitive")
require("plugin.lsp")
require("plugin.gitsigns")
require("plugin.line")
require("plugin.blame")
require("plugin.blankline")

-- raw config
require("remap")
require("plugins")
require("options")
