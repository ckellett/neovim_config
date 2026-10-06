return {
  "neanias/everforest-nvim",
  version = false,
  lazy = true,
  config = function()
    require("everforest").setup({
      background = "hard",
    })
  end,
}
