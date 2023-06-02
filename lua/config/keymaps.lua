-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<cr>", "ciw", { desc = "Change inside word" })
vim.keymap.set("v", "y", "ygv<esc>", { desc = "Copy and put cursor at the end" })
vim.keymap.set("n", "<leader>vf", "$V%")
vim.keymap.set(
  "n",
  ";",
  "<cmd>lua require('telescope.builtin').resume(require('telescope.themes').get_ivy({}))<cr>",
  { desc = "Browse recent files" }
)
