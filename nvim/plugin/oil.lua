vim.pack.add({ "https://github.com/stevearc/oil.nvim" })

require("oil").setup({
    view_options = {
        show_hidden = true,
    },
    prompt_save_on_select_new_entry = false,
    skip_confirm_for_simple_edits = true,
})
