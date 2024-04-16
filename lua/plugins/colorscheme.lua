return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   -- "jming514/clrs",
  --   config = function()
  --     require("catppuccin").setup({
  --       transparent_background = false,
  --       -- flavour = "latte",
  --     })
  --   end,
  -- },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        theme = "dragon",
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
