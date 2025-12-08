return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    views = {
      mini = {
        win_options = {
          winblend = 0,
        },
      },
    },
  },
}
