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

-- Harpoon
map("n", "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<cr>', { desc = "Harpoon mark" })
map("n", "<leader>hl", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', { desc = "Harpoon quick menu" })
map("n", "<leader>1", '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', { desc = "navigate to file 1" })
map("n", "<leader>2", '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', { desc = "navigate to file 2" })
map("n", "<leader>3", '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', { desc = "navigate to file 3" })
map("n", "<leader>4", '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', { desc = "navigate to file 4" })
-- Telescope
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope grep" })
