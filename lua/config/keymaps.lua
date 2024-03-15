-- Copy/Paste for System Clipbard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')

-- Buffer Navigation
vim.keymap.set('n', '<leader>n', ':bp<cr>')
vim.keymap.set('n', '<leader>m', ':bn<cr>')
vim.keymap.set('n', '<leader>c', ':bd!<cr>')

-- Remove Trailing Whitespace
vim.keymap.set('n', '<leader>wt', [[:%s/\s\+$//e<cr>]])
