-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.tabstop = 4
opt.colorcolumn = "80"
opt.swapfile = false
opt.backup = false
opt.autochdir = false
-- opt.list = false

-- vim.cmd([[highlight LineNr guifg=#bfdbf7]])
-- vim.cmd([[highlight CursorLineNr guifg=#e1e5f2]])
