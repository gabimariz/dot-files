return {
  dir = vim.fn.stdpath("config") .. "/lua/core/theme",
  lazy = false,
  priority = 1000,
  dependencies = {
    "shaunsingh/nord.nvim",
    "rose-pine/neovim",
  },
  config = function()
    require("core.theme")
  end,
}
