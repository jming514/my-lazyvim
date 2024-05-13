-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- set the tabstop, shiftwidth, and expandtab for go files
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("golang indent"),
  pattern = { "go" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

-- set the file type for templ files
vim.cmd([[autocmd BufRead,BufNewFile *.templ setfiletype templ]])
