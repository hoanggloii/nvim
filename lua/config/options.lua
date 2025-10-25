local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.cmdheight = 0

opt.termguicolors = true
opt.fillchars:append({ eob = " " })
opt.list = true

opt.listchars = {
    space = "·",
    tab = "→ ",
}
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.softtabstop = 4

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

opt.colorcolumn = "80"
vim.cmd [[highlight ColorColumn ctermbg=darkgray guibg=#2d2d2d]]
