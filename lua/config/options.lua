-- Set up leader, this needs to happen before any plugins are loaded.
--
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- setup the having of nerd fonts
vim.g.have_nerd_font = true

-- setup proper indentation
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`
--
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.showmode = false

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.breakindent = true
vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true

vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 10

vim.o.confirm = true

vim.g.loaded_perl_provider = 0

if vim.loop.os_uname().sysname == 'Windows_NT' then
  vim.o.shell = 'pwsh'
  vim.o.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command'
  vim.o.shellquote = ''
  vim.o.shellxquote = ''
  vim.o.shellpipe = '| Out-File -Encoding UTF8'
  vim.o.shellredir = '> Out-File -Encoding UTF8'
  vim.o.shellxescape = '"'
else
end
