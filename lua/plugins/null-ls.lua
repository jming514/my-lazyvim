return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = { "mason.nvim" },
  opts = function(_, opts)
    local nls = require("null-ls")
    nls.setup({
      debug = true
    })
    table.insert(opts.sources, require("typescript.extensions.null-ls.code-actions"))
    table.insert(opts.sources, nls.builtins.formatting.prettierd)
  end,
}
