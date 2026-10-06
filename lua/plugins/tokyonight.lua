return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    on_colors = function(colors)
      colors.fg_gutter = "#79809c"
      colors.orange = "#ab80d1"
    end,
  },
}
