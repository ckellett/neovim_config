return {
  "rebelot/kanagawa.nvim",
  lazy = false, -- default colorscheme, load during startup
  priority = 1000, -- load before other plugins
  opts = { theme = "wave" },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd.colorscheme("kanagawa-wave")
  end,
}
