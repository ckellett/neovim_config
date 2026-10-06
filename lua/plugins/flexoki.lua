return {
  "nuvic/flexoki-nvim",
  name = "flexoki",
  lazy = true,
  opts = {
    styles = { italic = true },
    -- Semantic groups; only values that differ from the plugin defaults
    groups = {
      error = "red_one",
      hint = "purple_one",
      info = "cyan_one",
      ok = "green_one",
      warn = "orange_one",
      note = "blue_one",
      todo = "magenta_one",
      git_text = "magenta_one",
      h6 = "cyan_two",
    },
    -- Cursor colors; the global 'guicursor' in config/options.lua attaches
    -- these groups to each mode so they take effect in the terminal.
    highlight_groups = {
      Cursor = { fg = "surface", bg = "subtle" },
      CursorLine = { bg = "overlay" },
      CursorLineNr = { fg = "orange_two", bold = true },
      CursorColumn = { bg = "surface" },
      TermCursor = { fg = "surface", bg = "subtle" },
    },
  },
}
