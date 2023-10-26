return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- "jming514/clrs",
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
