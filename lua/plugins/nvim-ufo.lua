return {
  {
    "kevinhwang91/nvim-ufo",
    requires = "kevinhwang91/promise-async",
    opts = function()
      require("ufo").setup({
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
      })
    end,
  },
}
