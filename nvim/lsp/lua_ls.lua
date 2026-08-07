return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { "lua" },
    settings = {
        Lua = {
            hint = {
                enable = true,
                paramName = "All",
                paramType = true,
                setType = true,
                arrayIndex = "Auto",
                await = true,
                semicolon = "All",
            },
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
}
