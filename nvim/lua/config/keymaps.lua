-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- allow escape to exit insert mode in terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- use CTRL+h/j/k/l to navigate editor splits
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Navigate one split left" })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Navigate one split down" })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Navigate one split up" })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Navigate one split right" })

-- more ergonomic shortcuts for navigating cursor jumps
vim.api.nvim_set_keymap("n", "gb", "<C-o>", { noremap = true, desc = "Go Back to previous cursor jump" })
vim.api.nvim_set_keymap("n", "gf", "<C-i>", { noremap = true, desc = "Go Forward to next cursor jump" })
