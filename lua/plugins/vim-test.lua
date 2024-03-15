return  {
  "janko-m/vim-test",
  config = function()
    vim.keymap.set('n', '<leader>t', ':TestNearest<cr>')
  end,
}
