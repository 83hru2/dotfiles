vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
vim.opt.showmode = true

vim.g.mapleader = " "
vim.g.python_recommended_style = 0

vim.opt.smartcase = true
vim.opt.autoread = true

vim.opt.laststatus = 3

vim.opt.wrap = false
vim.opt.timeoutlen = 500
vim.opt.pumheight = 5

vim.opt.showtabline = 1

vim.opt.cursorline = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.completeopt = "menuone,noinsert,noselect"

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "expr"
vim.opt.foldlevel = 99

vim.opt.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
