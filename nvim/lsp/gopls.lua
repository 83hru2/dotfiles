return {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gotmpl" },
    root_markers = { "go" },
    settings = {
        gopls = {
            hints = {
                rangeVariableTypes = true,
                parameterNames = true,
                constantValues = true,
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                functionTypeParameters = true,
                ignoredError = true,
            },
        },
    },
}
