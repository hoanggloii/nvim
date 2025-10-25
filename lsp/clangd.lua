return {
    -- Command to start the server
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        -- Add other clangd arguments here
    },
    -- Filetypes to attach to
    filetypes = { "c", "cpp", "objc", "objcpp" },
    -- Find project root using these markers
    root_markers = { "compile_commands.json", ".clangd", ".git" },
    -- Specific settings for the clangd server
    settings = {
        -- Any clangd-specific settings go here
    },
}
