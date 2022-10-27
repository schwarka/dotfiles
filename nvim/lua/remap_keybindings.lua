print("lua/remap_keybindings.lua")

local map = require("utils").map

map("n", "<leader>ex", "<cmd>Ex<CR>") -- launch netrw file browser

-- Telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
