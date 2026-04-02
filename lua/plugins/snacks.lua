return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      enabled = true,
      -- This applies the "ivy" look (bottom panel) to all pickers globally
      layout = {
        preset = "ivy",
      },
      -- Configuring global mappings (standard and insert mode)
      win = {
        input = {
          keys = {
            -- Mapping <C-q> to send selected to quickfix and open it
            ["<C-q>"] = { "qflist", mode = { "i", "n" } },
          },
        },
      },
    },
  },
  config = function(_, opts)
    require("snacks").setup(opts)

    -- Keymaps using the Snacks API
    local picker = require("snacks").picker
    
    vim.keymap.set("n", "<leader>f", function() picker.files() end, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>s", function() picker.grep() end, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>b", function() picker.buffers() end, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>cs", function() picker.colorschemes() end, { desc = "Colorschemes" })
  end,
}
