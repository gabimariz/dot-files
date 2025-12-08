return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "Hoffs/omnisharp-extended-lsp.nvim",
  },
  lazy = false,
  opts = {
    autoformat = false,
  },
  config = function()
    local servers = {
      "lua_ls",
      "clangd",
      "omnisharp",
    }

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = servers,
    })

    local config = {}

    for _, server in ipairs(servers) do
      if server == "lua_ls" then
        config.settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            format = {
              enable = false,
            },
          },
        }

        config.on_attach = function(client, bufnr)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
        end
      end

      if server == "omnisharp" then
        config = {
          --cmd = { "omnisharp", "dotnet" },
          cmd = { "OmniSharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
          enable_roslyn_analyzers = true,
          enable_import_completion = true,
          organize_imports_on_format = true,
          handlers = {
            ["textDocument/definition"] = require("omnisharp_extended").handler,
          }
        }
      end

      vim.lsp.config[server] = config
      vim.lsp.enable(server)
    end
  end,
}
