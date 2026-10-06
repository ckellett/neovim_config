return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  opts = {
    flavour = "mocha",
    dim_inactive = {
      enabled = true,
      shade = "dark",
      percentage = 0.15,
    },
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      functions = { "bold" },
      keywords = { "bold" },
      booleans = { "bold" },
    },
    color_overrides = {
      mocha = { peach = "#f2cdcd" },
    },
    integrations = {
      diffview = true,
      gitsigns = true,
      neotree = true,
      snacks = true,
      treesitter = true,
    },
  },
}
