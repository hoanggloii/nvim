return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
        require("oil").setup({
            columns = {
                "permissions",
                "size",
                "mtime",
                "icon",
            },
        })
        vim.keymap.set(
            "n",
            "<leader>e",
            ":silent Oil<CR>",
            { silent = true, desc = "Open Oil" }
        )
    end,
    lazy = false,
}
