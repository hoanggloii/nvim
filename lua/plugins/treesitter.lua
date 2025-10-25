return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
            },
            sync_install = true,
            auto_install = true,
            -- List of parsers to ignore installing (or "all")
            ignore_install = { "javascript" },
            highlight = {
                enable = true,
                -- disable = { "c", "rust" },
                additional_vim_regex_highlighting = true,
            },
        })
    end,
}
