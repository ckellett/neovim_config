return {
  "nuvic/flexoki-nvim",
  name = "flexoki",
  lazy = true,
  config = function()
    require("flexoki").setup({
      variant = "auto", -- "auto" | "moon" (dark) | "dawn" (light)
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      enable = {
        terminal = true,
      },
      styles = {
        bold = true,
        italic = true,
      },
      -- Semantic groups (values are palette names or hex strings)
      groups = {
        border = "muted",
        link = "purple_two",
        panel = "surface",
        error = "red_one",
        hint = "purple_one",
        info = "cyan_one",
        ok = "green_one",
        warn = "orange_one",
        note = "blue_one",
        todo = "magenta_one",
        git_add = "green_one",
        git_change = "yellow_one",
        git_delete = "red_one",
        git_dirty = "yellow_one",
        git_ignore = "muted",
        git_merge = "purple_one",
        git_rename = "blue_one",
        git_stage = "purple_one",
        git_text = "magenta_one",
        git_untracked = "subtle",
        h1 = "purple_two",
        h2 = "cyan_two",
        h3 = "magenta_two",
        h4 = "orange_two",
        h5 = "blue_two",
        h6 = "cyan_two",
      },
      -- Default: no overrides (builtin palette is used).
      -- Uncomment keys below to customize the light (dawn) variant.
      -- Hex values shown are the official Flexoki light palette.
      palette = {
        -- dawn = {
        --   base = "#FFFCF0",    -- background (paper)
        --   surface = "#F2F0E5", -- base-50
        --   overlay = "#E6E4D9", -- base-100
        --   muted = "#B7B5AC",   -- base-300
        --   subtle = "#6F6E69",  -- base-600
        --   text = "#100F0F",    -- black
        --   -- Accents come in two intensities per color:
        --   -- red_one / red_two, orange_one / orange_two,
        --   -- yellow_one / yellow_two, green_one / green_two,
        --   -- cyan_one / cyan_two, blue_one / blue_two,
        --   -- purple_one / purple_two, magenta_one / magenta_two
        --   -- (Flexoki 600-series for light mode, e.g. red #AF3029,
        --   --  orange #BC5215, yellow #AD8301, green #66800B,
        --   --  cyan #24837B, blue #205EA6, purple #5E409D,
        --   --  magenta #A02F6F; 400-series: red #D14D41,
        --   --  orange #DA702C, yellow #D0A215, green #879A39,
        --   --  cyan #3AA99F, blue #4385BE, purple #8B7EC8,
        --   --  magenta #CE5D97)
        -- },
        -- moon = {
        --   base = "#100F0F",
        --   overlay = "#1C1B1A",
        -- },
      },
      -- Cursor colors; the global 'guicursor' in config/options.lua attaches
      -- these groups to each mode so they take effect in the terminal.
      highlight_groups = {
        Cursor = { fg = "surface", bg = "subtle" }, -- block cursor: ink block, paper glyph
        CursorLine = { bg = "overlay" }, -- the highlighted line under the cursor
        CursorLineNr = { fg = "orange_two", bold = true }, -- line number of the current line
        CursorColumn = { bg = "surface" }, -- if you use :set cursorcolumn
        TermCursor = { fg = "surface", bg = "subtle" }, -- cursor in a :terminal buffer
      },
      -- Default: no-op. Runs for every highlight before it's applied.
      before_highlight = function(group, highlight, palette)
        -- Example: disable all undercurls
        -- if highlight.undercurl then
        --   highlight.undercurl = false
        -- end
        --
        -- Example: swap one palette colour for another
        -- if highlight.fg == palette.blue_two then
        --   highlight.fg = palette.cyan_two
        -- end
      end,
    })
  end,
}
