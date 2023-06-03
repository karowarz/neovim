-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "-", require("oil").open, { desc = "Open parent directory" })
map("n", "<cr>", "ciw", { desc = "Change inside word" })
map("v", "y", "ygv<esc>", { desc = "Copy and put cursor at the end" })
map(
  "n",
  ";",
  "<cmd>lua require('telescope.builtin').resume(require('telescope.themes').get_ivy({}))<cr>",
  { desc = "Browse recent files" }
)
map("v", "J", ":m '>+1<CR>gv==kgvo<esc>=kgvo", { desc = "move highlighted text down" })
map("v", "K", ":m '<-2<CR>gv==jgvo<esc>=jgvo", { desc = "move highlighted text up" })
