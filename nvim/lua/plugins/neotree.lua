return {
  "nvim-neo-tree/neo-tree.nvim",
  depencencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  opts = {
    source_selector = {
      winbar = false,
      statusline = false,
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_ignored = true,
      },
    },
  },
}
