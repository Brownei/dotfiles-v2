require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "-", "<cmd>Oil<CR>", { desc = "Oil file manager" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
vim.api.nvim_set_keymap(
  "n",
  "<leader>z",
  '<cmd>lua require("maximizer").toggle()<CR>',
  { silent = true, noremap = true }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
