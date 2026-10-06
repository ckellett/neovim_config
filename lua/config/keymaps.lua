local map = vim.keymap.set

-- Copy to system clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })

-- Buffer navigation
map("n", "<leader>n", "<cmd>bp<cr>", { desc = "Previous buffer" })
map("n", "<leader>m", "<cmd>bn<cr>", { desc = "Next buffer" })
map("n", "<leader>c", "<cmd>bd!<cr>", { desc = "Close buffer" })

-- Remove trailing whitespace
map("n", "<leader>wt", [[:%s/\s\+$//e<cr>]], { desc = "Trim trailing whitespace" })

-- Plugin manager
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })
