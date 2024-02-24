return {
  'navarasu/onedark.nvim',
  config = function()
    require('onedark').setup  {
      style = 'deep',
      transparent = false,
      term_colors = true,
      ending_tildes = false,
      cmp_itemkind_reverse = false,

      toggle_style_key = '<leader>od',
      toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},

      code_style = {
        comments = 'italic',
        keywords = 'italic,bold',
        functions = 'none',
        strings = 'none',
        variables = 'bold'
      },

      lualine = {
        transparent = false,
      },

      colors = {},
      highlights = {},

      diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
      },
    }
  end,
}
