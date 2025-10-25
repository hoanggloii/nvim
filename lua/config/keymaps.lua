local map = vim.keymap.set
local opts = {
    noremap = true,
    silent = true,
}
map("t", "<esc>", "<c-\\><c-n>", opts)
map("n", "<leader>so", ":so<CR>", opts)

local function toggle_hlsearch()
    local hl_enabled = vim.opt.hlsearch:get()
    vim.opt.hlsearch = not hl_enabled

    if not hl_enabled then
        vim.defer_fn(function()
            if vim.opt.hlsearch:get() then
                vim.opt.hlsearch = false
                print "hlsearch: AUTO OFF"
            end
        end, 3000) -- Disable after 3 seconds of inactivity
    end

    print("hlsearch:", not hl_enabled and "ON" or "OFF")
end

vim.keymap.set(
    "n",
    "<leader>hl",
    toggle_hlsearch,
    { desc = "Toggle search highlighting" }
)
