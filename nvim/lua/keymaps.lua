-- Options.
local opts = { noremap = true, silent = true }

-- Utils.
vim.keymap.set("n", "fb", "*", opts)
vim.keymap.set("n", "zz", ":w!<cr>", opts)
vim.keymap.set("n", "<esc>", "<cmd>noh<cr>", opts)
vim.keymap.set("n", "<leader><leader>", "%", opts)

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", opts)

vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>D", '"_D')
vim.keymap.set("v", "<leader>c", '"_c')
vim.keymap.set("v", "<leader>C", '"_C')

vim.keymap.set("n", "<leader>ih", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)

vim.keymap.set("n", "<leader>gd", function() vim.diagnostic.open_float() end)

-- Splitting windows.
vim.keymap.set("n", "<leader>sp", ":split<cr>", opts)
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>", opts)

-- Moving across splitted windows.
vim.keymap.set("n", "<leader>h", "<C-W><Left>", opts)
vim.keymap.set("n", "<leader>l", "<C-W><Right>", opts)
vim.keymap.set("n", "<leader>k", "<C-W><Up>", opts)
vim.keymap.set("n", "<leader>j", "<C-W><Down>", opts)
vim.keymap.set("n", "<leader>w", "<C-W>w", opts)

-- Moving across tabs.
vim.keymap.set("n", "<m-l>", "<cmd>tabnext<cr>", opts)
vim.keymap.set("n", "<m-h>", "<cmd>tabprevious<cr>", opts)
vim.keymap.set("n", "<m-n>", "<cmd>tabnew<cr>", opts)
vim.keymap.set("n", "<m-m>", "<cmd>tab split<cr>", opts)

-- Fzf-lua.
vim.keymap.set("n", "<leader>fo", "<cmd>FzfLua oldfiles<cr>", opts)
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", opts)
vim.keymap.set("n", "<leader>fc", "<cmd>FzfLua blines<cr>", opts)
vim.keymap.set("n", "<leader>fl", "<cmd>FzfLua lines<cr>", opts)
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<cr>", opts)
vim.keymap.set("n", "`", function()
    vim.ui.input({
        prompt = "Enter the path: ",
        completion = "dir",
    }, function(input)
        if input and #input > 0 then
            require("fzf-lua").files({ cwd = input })
        else
            return
        end
    end)
end, opts)

-- Oil.
vim.keymap.set("n", "-", "<cmd>Oil<cr>", opts)
vim.keymap.set("n", "<leader>-", function() require("oil").close() end, opts)
