return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "c", "c_sharp", "lua", "markdown" },
    sync_install = false,
    auto_install = true,
    ignore_install = { "javascript", "typescript" },
    highilight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
}
