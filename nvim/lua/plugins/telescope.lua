return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-c>"] = actions.close,
          },
          n = {
            ["q"] = actions.close,
          },
        },
      },
    })

    local desc = "Telescope: "
    local utils = require("utils.keymaps")

    utils.set_maps({
      {
        mode = "n",
        lhs = "<Leader>ff",
        rhs = "<Cmd>Telescope find_files<Cr>",
        desc = desc .. "Find Files",
      },
      {
        mode = "n",
        lhs = "<Leader>fg",
        rhs = "<Cmd>Telescope live_grep<Cr>",
        desc = desc .. "Live Grep",
      },
      {
        mode = "n",
        lhs = "<Leader>fb",
        rhs = "<Cmd>Telescope buffers<Cr>",
        desc = desc .. "Find Buffers",
      },
      {
        mode = "n",
        lhs = "<Leader>fh",
        rhs = "<Cmd>Telescope help_tags<Cr>",
        desc = desc .. "Find Helps",
      },
    })
  end,
}
