return {
  "neanias/everforest-nvim",
  version = false,
  priority = 1000,
  lazy = false,
  config = function()
    require("everforest").setup({
      background = "hard",
    })
    vim.cmd([[colorscheme everforest]])
  end,
}
