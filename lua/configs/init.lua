vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false

vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.o.breakindent = true
vim.o.undofile = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true

vim.opt.listchars = { tab = ">> ", trail = ".", nbsp = '_' }

vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 10
vim.o.confirm = true
vim.g.loaded_perl_provider = 0

