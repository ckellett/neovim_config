return {
  "folke/tokyonight.nvim",
  lazy = true,
  config = function()
    require("tokyonight").setup({
      on_colors = function(colors)
        colors.fg_gutter = "#79809c"
        colors.orange = "#ab80d1"
      end,
    })
  end,
}
