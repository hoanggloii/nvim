-- Configure behavior when an LSP client attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local buf = args.buf

        -- Enable completion triggered by <c-x><c-o>
        vim.bo[buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        -- Buffer-local keymaps
        local opts = { buffer = buf }
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<f2>", function()
            vim.lsp.buf.format({ async = true })
        end, opts)
    end,
})
-- Configure diagnostic display
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Keymaps for navigating diagnostics
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>z", vim.diagnostic.open_float)

-- Toggle diagnostics with <leader>dt (enable/disable virtual text and signs)
vim.keymap.set("n", "<leader>dt", function()
    local current_config = vim.diagnostic.config()
    local new_virtual_text = not current_config.virtual_text
    local new_underline = not current_config.underline
    local new_signs = not current_config.signs
    vim.diagnostic.config({
        virtual_text = new_virtual_text,
        underline = new_underline,
        signs = new_signs,
    })
end, { desc = "Toggle diagnostics" })

vim.lsp.enable "clangd"
