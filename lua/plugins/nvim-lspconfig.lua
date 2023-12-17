return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- autoformat = false,
      servers = {
        tsserver = {
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
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
