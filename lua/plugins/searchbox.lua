return {
    "VonHeikemen/searchbox.nvim",
    dependencies = {
        { "MunifTanjim/nui.nvim" },
    },
    config = function()
        vim.keymap.set("n", "/", ":SearchBoxIncSearch<CR>")
    end,
}
