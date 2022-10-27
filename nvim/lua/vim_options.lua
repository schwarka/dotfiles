print("lua/vim_options.lua")
vim.opt.nu = true -- show current line number
vim.opt.relativenumber = true -- show relative line numbers from cursor

-- tab is two spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.incsearch = true -- incremental search, start finding matches while typing
vim.opt.wrap = false
vim.opt.errorbells = false -- no sounds 
vim.opt.hidden = true -- keep buffers open in the background
vim.opt.termguicolors = true
vim.opt.scrolloff = 10 -- start scrolling when ten lines from top or bottom

vim.opt.signcolumn = "yes" -- add column for plugin feedback (linters, git)
vim.opt.colorcolumn = "100" -- buffer width guideline

vim.opt.cmdheight = 4 -- more space for command feedback

vim.g.mapleader = " "

