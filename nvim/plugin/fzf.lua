vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })

local fzf = require("fzf-lua")

fzf.setup({
    defaults = {
        prompt = "",
    },
    keymap = {
        fzf = {
            ["alt-j"] = "down",
            ["alt-k"] = "up",
        },
    },
    fzf_colors = true
})
