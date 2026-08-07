vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter").setup()

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "go", "lua", "html", "css", "javascript", "vue" },
    callback = function()
        vim.treesitter.start()
    end,
})
