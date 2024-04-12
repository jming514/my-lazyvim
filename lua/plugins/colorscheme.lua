return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- "jming514/clrs",
    config = function()
      require("catppuccin").setup({
        transparent_background = false,
        -- flavour = "latte",
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
