-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "-", require("oil").open, { desc = "Open parent directory" })
map("v", "y", "ygv<esc>", { desc = "copy and put cursor at the end" })
map("n", "<cr>", "ciw", { desc = "change inside word" })
map("n", "<leader>wh", "<c-w>h", { desc = "go to left window", remap = true })
map("n", "<leader>wj", "<c-w>j", { desc = "go to lower window", remap = true })
map("n", "<leader>wl", "<C-w>l", { desc = "Go to right window", remap = true })
map("n", "<leader>wk", "<C-w>k", { desc = "Go to upper window", remap = true })
