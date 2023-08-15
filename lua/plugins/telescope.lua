return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>ff",
        function()
          require('telescope.builtin').find_files()
        end,
        desc = "Explorer NeoTree (root dir)",
      }
    },
  },
}
