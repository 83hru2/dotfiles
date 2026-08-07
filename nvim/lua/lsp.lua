vim.lsp.config("*", {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            }
        }
    },
    root_markers = { ".git" },
})

vim.lsp.inlay_hint.enable(false)

vim.lsp.enable({ "lua_ls", "gopls", "ts_ls" })
