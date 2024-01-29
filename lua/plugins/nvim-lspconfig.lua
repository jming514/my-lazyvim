local on_attach = function(client, bufnr)
  local function toggle_inlay_hints()
    if vim.g.inlay_hints_visible then
      vim.g.inlay_hints_visible = false
      vim.lsp.inlay_hint.enable(bufnr, false)
    else
      if client.server_capabilities.inlayHintProvider then
        vim.g.inlay_hints_visible = true
        vim.lsp.inlay_hint.enable(bufnr, true)
      else
        print("no inlay hints available")
      end
    end
  end

  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set(
    "n",
    "<leader>h",
    toggle_inlay_hints,
    vim.tbl_extend("force", bufopts, { desc = "✨lsp toggle inlay hints" })
  )
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- autoformat = false,
      servers = {
        gopls = {
          on_attach = on_attach,
        },
        quick_lint_js = {
          filetypes_include = {
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
          },
        },
        tsserver = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
            on_attach(client, bufnr)
          end,
          init_options = {
            preferences = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
              importModuleSpecifierPreference = "non-relative",
            },
          },
        },
        templ = {
          filetypes_include = { "templ" },
          on_attach = on_attach,
        },
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
