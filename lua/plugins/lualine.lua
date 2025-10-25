return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
                icons_enabled = true,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
                globalstatus = true,
                disabled_filetypes = {
                    statusline = { "oil" },
                    winbar = {},
                },
            },
            sections = {
                lualine_a = {},
                lualine_b = {
                    { "branch", icon = "" }, -- Git branch with icon
                    {
                        "mode",
                        fmt = function(str)
                            return "-- " .. str:upper() .. " --"
                        end,
                    },
                },
                lualine_c = {},
                lualine_x = {
                    function()
                        return string.format(
                            "Ln %d, Col %d",
                            vim.fn.line ".",
                            vim.fn.col "."
                        )
                    end,
                    function()
                        return "spaces:" .. vim.bo.shiftwidth
                    end,
                    { "encoding", fmt = string.upper },
                    -- { 'fileformat', fmt = string.upper },
                    {
                        "filetype",
                        colored = false,
                    },
                },
                lualine_y = {},
                lualine_z = {},
            },
        })
    end,
}
