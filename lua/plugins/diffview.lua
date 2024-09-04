return {
  'sindrets/diffview.nvim',
  config = function()
    vim.keymap.set(
      'n',
      '<leader>hh',
      '<cmd>DiffviewFileHistory<cr>',
      { desc = 'Repo history' }
    )
    vim.keymap.set(
      'n',
      '<leader>hf',
      '<cmd>DiffviewFileHistory --follow %<cr>',
      { desc = 'File history' }
    )
    vim.keymap.set(
      'v',
      '<leader>hl',
      "<Esc><Cmd>'<,'>DiffviewFileHistory --follow<CR>",
      { desc = 'Visual history' }
    )
    vim.keymap.set(
      'n',
      '<leader>hl',
      "<Esc><Cmd>.DiffviewFileHistory --follow<CR>",
      { desc = 'line history' }
    )
    vim.keymap.set(
      'n',
      '<leader>hc',
      '<cmd>DiffviewClose<cr>',
      { desc = 'Close Diffview' }
    )
  end
}
