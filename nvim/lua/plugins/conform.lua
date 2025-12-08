return {
  "stevearc/conform.nvim",
  opts = {
    formaters_by_ft = {
      lua = { "stylua" },
    },
    format_on_save = {
      lsp_format = "never",
    },
  },
}
