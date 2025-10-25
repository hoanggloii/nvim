return {
    "mrjones2014/smart-splits.nvim",
    config = function()
        local ss = require "smart-splits"
        local map = vim.keymap.set
        map("n", "<A-h>", ss.resize_left)
        map("n", "<A-j>", ss.resize_down)
        map("n", "<A-k>", ss.resize_up)
        map("n", "<A-l>", ss.resize_right)
        map("n", "<C-h>", ss.move_cursor_left)
        map("n", "<C-j>", ss.move_cursor_down)
        map("n", "<C-k>", ss.move_cursor_up)
        map("n", "<C-l>", ss.move_cursor_right)
        map("n", "<C-\\>", ss.move_cursor_previous)
        map("n", "<leader><leader>h", ss.swap_buf_left)
        map("n", "<leader><leader>j", ss.swap_buf_down)
        map("n", "<leader><leader>k", ss.swap_buf_up)
        map("n", "<leader><leader>l", ss.swap_buf_right)
    end,
}
