local modules = {
    "config/options",
    "config/keymaps",
    "config/lazy",
    "config/lsp",
}

for _, mod in ipairs(modules) do
    local ok, err = pcall(require, mod)
    if not ok then
        print(err)
    end
end
