return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      mode = "buffers",
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          highlight =  "Directory",
          separator = true,
          text_align = "center",
        },
      },
      buffer_close_icon = "",
      close_icon = "",
      separator_style = "slant",
    }
  },
}
