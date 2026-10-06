return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
  keys = {
    { "<leader>hh", "<cmd>DiffviewFileHistory<cr>", desc = "Repo history" },
    { "<leader>hf", "<cmd>DiffviewFileHistory --follow %<cr>", desc = "File history" },
    { "<leader>hl", "<cmd>.DiffviewFileHistory --follow<cr>", desc = "Line history" },
    { "<leader>hl", "<esc><cmd>'<,'>DiffviewFileHistory --follow<cr>", mode = "v", desc = "Visual history" },
    { "<leader>hc", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
  },
}
