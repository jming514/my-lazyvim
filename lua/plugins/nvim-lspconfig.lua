return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- autoformat = false,
      servers = {
        tsserver = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false

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
              "<leader>ih",
              toggle_inlay_hints,
              vim.tbl_extend("force", bufopts, { desc = "✨lsp toggle inlay hints" })
            )
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
        biome = {},
      },
      inlay_hints = {
        enabled = true,
      },
    },
  },
}
