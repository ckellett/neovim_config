vim.opt.number = true
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.g.mapleader = ' '
vim.opt.listchars:append({tab = '|▶'})
vim.opt.listchars:append({trail = '·'})
vim.opt.listchars:append({nbsp = '○'})
vim.opt.listchars:append({extends = '◣'})
vim.opt.listchars:append({precedes = '◢'})
vim.opt.list = true
vim.opt.termguicolors = true
vim.api.nvim_command('filetype plugin indent on')
