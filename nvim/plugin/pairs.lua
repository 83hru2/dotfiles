vim.pack.add({
    "https://github.com/windwp/nvim-autopairs",
    "https://github.com/altermo/ultimate-autopair.nvim",
    "https://github.com/windwp/nvim-ts-autotag",
})

require("ultimate-autopair").setup({})
require("nvim-ts-autotag").setup({})
