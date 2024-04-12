-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- map("n", "gl", "<cmd>vim.diagnostics.open_float()<cr>", { desc = "Diagnostics open float" })
-- Disabled keymaps
map("n", "<S-h>", "")
map("n", "<S-l>", "")

-- map("n", "<leader>fe", "<cmd>LazyFormat<cr>", { desc = "Format file" })

local harpoon = require("harpoon")
harpoon.setup()

-- Harpoon
map("n", "<leader>fw", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon quick menu" })
map("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "navigate to file 1" })
map("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "navigate to file 2" })
map("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "navigate to file 3" })
map("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "navigate to file 4" })
-- map("n", "<leader>5", function()
--   harpoon:list():select(5)
-- end, { desc = "navigate to file 5" })
map("n", "<leader>fa", function()
  harpoon:list():add()
end, { desc = "Harpoon mark" })

-- Telescope
map("n", "<leader>fd", "<cmd>Telescope live_grep<cr>", { desc = "Telescope grep" })

-- No-Neck-Pain
map("n", "<leader>n", "<cmd>NoNeckPain<cr>", { desc = "NoNeckPain toggle" })
map("n", "<leader>zz", "<cmd>ZenMode<cr>", { desc = "ZenMode toggle" })

-- Git
map("n", "<leader>gb", "<cmd>Git blame<cr>", { desc = "Git blame" })
map("n", "<leader>gh", "<cmd>0Gclog<cr>", { desc = "Git file history" })
map("n", "<leader>gd", "<cmd>Gdiff<cr>", { desc = "Git diff" })
