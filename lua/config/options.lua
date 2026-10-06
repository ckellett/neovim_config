-- Must be set before any keymaps or plugins are loaded
vim.g.mapleader = ' '

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

vim.opt.list = true
vim.opt.listchars = {
  tab = '|▶',
  trail = '·',
  nbsp = '○',
  extends = '◣',
  precedes = '◢',
}

-- Attach highlight groups to each cursor mode so colorschemes that define
-- Cursor/TermCursor (e.g. flexoki) actually color the cursor in the terminal.
vim.opt.guicursor = table.concat({
  "n-v-c-sm:block-Cursor", -- normal/visual/command: block, colored by Cursor
  "i-ci-ve:ver25-Cursor", -- insert: beam, also colored by Cursor
  "r-cr-o:hor20-Cursor", -- replace: underline
  "t:block-blinkon500-blinkoff500-TermCursor", -- terminal-mode default
}, ",")

-- Extra filetype detection (replaces nathom/filetype.nvim)
vim.filetype.add({
  extension = {
    tf = "terraform",
    tfvars = "terraform",
    tfstate = "json",
  },
})
