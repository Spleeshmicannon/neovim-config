local M = {}

function M.on_attach(client, bufnr)
    local map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, {
            buffer = bufnr,
            silent = true,
            desc = "LSP: " .. desc,
        })
    end

    -- Navigation
    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
    map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
    map("n", "gr", vim.lsp.buf.references, "Go to references")
    map("n", "gy", vim.lsp.buf.type_definition, "Go to type definition")

    -- Information
    map("n", "K", vim.lsp.buf.hover, "Hover documentation")
    map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature help")

    -- Code actions & refactoring
    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("v", "<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")

    -- Diagnostics
    map("n", "<leader>e", vim.diagnostic.open_float, "Show diagnostic")
    map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
    map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
    map("n", "<leader>s", vim.diagnostic.setloclist, "Diagnostics to loclist")

    -- Workspace
    map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, "Add workspace folder")
    map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, "Remove workspace folder")
    map("n", "<leader>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, "List workspace folders")

    -- Formatting (safe, async)
    map("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
    end, "Format buffer")
end

return M

