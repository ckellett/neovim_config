return {
  'folke/tokyonight.nvim',
  config = function()
    local tokyotheme = require('tokyonight')
    tokyotheme.setup({
      on_colors = function (colors)
        colors.fg_gutter = '#79809c'
        colors.orange = '#ab80d1'
      end
    })
  end
}
