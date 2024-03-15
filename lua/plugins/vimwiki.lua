return {
  "vimwiki/vimwiki",
  config = function()
    vim.keymap.set('n', '<leader>ww', '<Plug>VimwikiIndex')
  end,
}
