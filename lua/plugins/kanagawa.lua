return {
  "rebelot/kanagawa.nvim",
  lazy = false, -- default colorscheme, load during startup
  priority = 1000, -- load before other plugins
  config = function()
    require("kanagawa").setup({ theme = "wave" })
    vim.cmd.colorscheme("kanagawa-wave")
  end,
}
