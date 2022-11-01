local map = require("utils").map

map("n", "<leader>ex", "<cmd>Ex<CR>") -- launch netrw file browser

-- Telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")

-- Vim Test
--map("n", "<leader>t", ":TestNearest<CR>", {silent=true})
--map("n", "<leader>T", ":TestFile<CR>", {silent=true})
--map("n", "<leader>l", ":TestLast<CR>", {silent=true})
--map("n", "<leader>g", ":TestVisit<CR>", {silent=true})

-- Neotest
map("n", "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>")
map("n", "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<CR>")
map("n", "<leader>to", "<cmd>lua require('neotest').output.open({ enter = true })<CR>")
