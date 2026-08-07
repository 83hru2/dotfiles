vim.pack.add({ "https://github.com/joshdick/onedark.vim" })

vim.cmd.colorscheme("onedark")

vim.api.nvim_set_hl(0, "StatusLine", { bg = "none", fg = "none" })
vim.api.nvim_set_hl(0, "StatusLineTerm", { bg = "none", fg = "none" })

vim.api.nvim_set_hl(0, "TablineSel", { bg = "none", fg = "#abb2bf" })

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })

vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#708090" })

for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    vim.api.nvim_set_hl(0, group, {})
end
