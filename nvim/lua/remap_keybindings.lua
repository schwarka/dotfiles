local map = require("utils").map

map("n", "<leader>ex", "<cmd>Explore<CR>") -- launch netrw file browser

-- Telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")

-- Neotest
map("n", "<leader>T", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>")
map("n", "<leader>t", "<cmd>lua require('neotest').run.run()<CR>")
map("n", "<leader>r", "<cmd>lua require('neotest').run.run_last()<CR>")
map("n", "<leader>s", "<cmd>lua require('neotest').summary.toggle()<CR>")
map("n", "<leader>o", "<cmd>lua require('neotest').output.open({ enter = true })<CR>")
map("n", "]f", "<cmd>lua require('neotest').jump.next({ status = 'failed' })<CR>", { silent = true })
map("n", "[f", "<cmd>lua require('neotest').jump.prev({ status = 'failed' })<CR>", { silent = true })

-- Split navigation
map("n", "<c-l>", "<c-W><c-l>")
map("n", "<c-h>", "<c-W><c-h>")
map("n", "<c-j>", "<c-W><c-j>")
map("n", "<c-k>", "<c-W><c-k>")
