return {
  {
    "epwalsh/obsidian.nvim",
    opts = {
      dir = "~/Documents/obsidian/TangJunMing/",
    },
    config = function(_, opts)
      require("obsidian").setup(opts)

      vim.keymap.set("n", "gf", function()
        if require("obsidian").util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<CR>"
        else
          return "gf"
        end
      end, { noremap = false, expr = true })
    end,
  },
}
