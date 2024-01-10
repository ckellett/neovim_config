require('user.lazy')

-- Settings
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

vim.api.nvim_command('filetype plugin indent on')

-- Copy/Paste for System Clipbard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')

-- Buffer Navigation
vim.keymap.set('n', '<leader>n', ':bp<cr>')
vim.keymap.set('n', '<leader>m', ':bn<cr>')
vim.keymap.set('n', '<leader>c', ':bd!<cr>')

-- VimWiki
vim.keymap.set('n', '<leader>ww', '<Plug>VimwikiIndex')

-- Testing
vim.keymap.set('n', '<leader>t', ':TestNearest<cr>')

-- Colorscheme
require('user.tokyonight')
vim.opt.termguicolors = true
vim.cmd.colorscheme 'tokyonight'

-- Plugin Settings
require('user.treesitter')
require('user.lualine')
require('user.nvimtree')
require('user.telescope')
require('user.gitsigns')
require('user.colorizer')
