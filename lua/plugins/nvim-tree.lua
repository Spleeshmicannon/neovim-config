return {
    "nvim-tree/nvim-tree.lua",
    config = function()
      vim.opt.termguicolors = true
      require("nvim-tree").setup({
          on_attach = function(buffer_)
              local api = require("nvim-tree.api")
              local function opts(desc)
                return {
                  desc = "nvim-tree: " .. desc,
                  buffer = buffer_,
                  noremap = true,
                  silent = true,
                  nowait = true,
                }
              end
              -- default mappings
              api.config.mappings.default_on_attach(buffer_)
              -- custom mappings
              vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
              vim.keymap.set("n", "<C-x>", api.node.open.vertical, opts("Open: Vertical Split"))
              vim.keymap.set("n", "<C-h>", api.node.open.horizontal, opts("Open: Horizontal Split"))
          end,
          sort_by = "case_sensitive",
          view = {
            width = 50,
          },
          renderer = {
            group_empty = false,
            indent_markers = {
              enable = true,
              inline_arrows = true,
              icons = {
                corner = "",
                edge = "",
                item = "",
                bottom = "",
                none = "",
              },
            },
          },
          filters = {
            dotfiles = true,
          },
      })
    end,
}

