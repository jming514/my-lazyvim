return {
  -- { "rose-pine/neovim" },
  -- { "catppuccin/nvim" },
  {
    -- "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    opts = {
      -- transparent = true,
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
