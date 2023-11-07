-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.autoformat = true

local opt = vim.opt

opt.tabstop = 4
-- opt.colorcolumn = "80"
opt.swapfile = false
opt.backup = false
opt.autochdir = false
-- opt.listchars = { tab = "", trail = "·", nbsp = "␣" }
opt.list = false
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldclose:"
opt.foldenable = true
opt.colorcolumn = ""
