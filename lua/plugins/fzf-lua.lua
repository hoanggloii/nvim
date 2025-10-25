return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
        local fzf = require "fzf-lua"
        vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
        vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help tags" })
        vim.keymap.set(
            "n",
            "<leader>gc",
            fzf.git_commits,
            { desc = "Git commits" }
        )
        vim.keymap.set(
            "n",
            "<leader>gs",
            fzf.git_status,
            { desc = "Git status" }
        )
        vim.keymap.set(
            "n",
            "<leader>gb",
            fzf.git_branches,
            { desc = "Git branches" }
        )
        vim.keymap.set(
            "n",
            "gd",
            fzf.lsp_definitions,
            { desc = "Go to definition" }
        )
        vim.keymap.set(
            "n",
            "gr",
            fzf.lsp_references,
            { desc = "Find references" }
        )
        vim.keymap.set(
            "n",
            "gi",
            fzf.lsp_implementations,
            { desc = "Go to implementation" }
        )
        vim.keymap.set(
            "n",
            "gy",
            fzf.lsp_typedefs,
            { desc = "Go to type definition" }
        )
        vim.keymap.set(
            "n",
            "<leader>ds",
            fzf.lsp_document_symbols,
            { desc = "Document symbols" }
        )
        vim.keymap.set(
            "n",
            "<leader>ws",
            fzf.lsp_workspace_symbols,
            { desc = "Workspace symbols" }
        )
        vim.keymap.set(
            "n",
            "<leader>:",
            fzf.command_history,
            { desc = "Command history" }
        )
        vim.keymap.set(
            "n",
            "<leader>/",
            fzf.search_history,
            { desc = "Search history" }
        )
    end,
}
