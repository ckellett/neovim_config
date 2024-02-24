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

-- Remove Trailing Whitespace
vim.keymap.set('n', '<leader>wt', [[:%s/\s\+$//e<cr>]])

-- NeoTree
vim.keymap.set('n', '<leader>d', ':Neotree toggle<cr>')

-- Lazy
vim.keymap.set('n', '<leader>L', ':Lazy<cr>')
