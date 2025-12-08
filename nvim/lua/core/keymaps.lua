-- ============================== --
-- ~~~ NEOVIM KEYMAPPS        ~~~ --
-- ============================== --

-- ------------------------------ --
-- Variables                      --
-- ------------------------------ --

local utils = require("utils.keymaps")

-- ------------------------------ --
-- Vim Motions
-- ------------------------------ --

-- Exting
utils.set_map("n", "<LocalLeader>w", "<Cmd>w<Cr>", "Write out the current file")
utils.set_map("n", "<LocalLeader>q", "<Cmd>q<Cr>", "Quit")
utils.set_map("n", "<LocalLeader>x", "<Cmd>wq<Cr>", "Write and quit")

-- Delete
utils.set_maps({
  { mode = "n", lhs = "dd", rhs = "\"_dd", desc = "Delete line" },
  { mode = "n", lhs = "dw", rhs = "\"_dw", desc = "Delete word" },
  { mode = "n", lhs = "dc", rhs = "\"_x", desc = "Delete character" },
  { mode = "n", lhs = "d4", rhs = "\"_D", desc = "Delete to end of line" },
})

utils.set_map_cmd(
  "n",
  "<LocalLeader>dt",
  "delete to: ",
  "d_",
  "Delete lines starting from to ending"
)

-- Copy
utils.set_maps({
  { mode = "n", lhs = "<LocalLeader>y", rhs = "yy", desc = "Copy line" },
  { mode = "n", lhs = "<LocalLeader>yw", rhs = "yw", desc = "Copy word" },
  { mode = "n", lhs = "<LocalLeader>yf", rhs = "Y", desc = "Copy to end of line" },
})

-- Cut
utils.set_maps({
  { mode = "n", lhs = "xx", rhs = "dd", desc = "Cut line" },
  { mode = "n", lhs = "xw", rhs = "dw", desc = "Cut word" },
  { mode = "n", lhs = "xc", rhs = "x", desc = "Cut character" },
  { mode = "n", lhs = "x4", rhs = "D", desc = "Cut to end of line" },
})

utils.set_map_cmd("n", "<LocalLeader>xt", "cut to: ", "d", "Cut lines starting from to ending")

-- Cursor movement
utils.set_map("n", "<LocalLeader>4", "$", "Jump the end of the line")
utils.set_map("n", "g4", "G", "Go to the last line of the document")

utils.set_map(
  "n",
  "<LocalLeader>jw",
  "W",
  "Jump forwards to the start of word (words can contain punctuation)"
)
utils.set_map(
  "n",
  "<LocalLeader>je",
  "E",
  "Jump forwards to the end of a word (words can contain punctuation)"
)
utils.set_map(
  "n",
  "<LocalLeader>jb",
  "B",
  "Jump backwards to the start of a word (words can contain punctuation)"
)
utils.set_map(
  "n",
  "<LocalLeader>ge",
  "gE",
  "Jump backwards to the end of a word (words can contain punctuation)"
)

utils.set_map("n", "<LocalLeader>5", "%", "Move cursor to athin character ('()', '{}', '[]')")

utils.set_map_cmd("n", "<LocalLeader>go", "go to line: ", "", "Go to line")

utils.set_maps({
  { mode = "n", lhs = "<LocalLeader>sh", rhs = "H", desc = "Move to top of screen" },
  { mode = "n", lhs = "<LocalLeader>sm", rhs = "M", desc = "Move to middle of screen" },
  { mode = "n", lhs = "<LocalLeader>sl", rhs = "L", desc = "Move to bottom of screen" },
})

-- Search and replace
utils.set_map("n", "<LocalLeader>cls", "<Cmd>noh<Cr>", "Remove highlifhting of search matches")
utils.set_map("n", "<LocalLeader>n", "N", "Repeat search in opposite direction")

-- Tabs
utils.set_maps({
  {
    mode = "n",
    lhs = "<LocalLeader>h",
    rhs = "<C-w>h",
    desc = "Move the current split window left",
  },
  {
    mode = "n",
    lhs = "<LocalLeader>j",
    rhs = "<C-w>j",
    desc = "Move the current split window down",
  },
  { mode = "n", lhs = "<LocalLeader>k", rhs = "<C-w>k", desc = "Move the current split window up" },
  {
    mode = "n",
    lhs = "<LocalLeader>l",
    rhs = "<C-w>l",
    desc = "Move the current split window right",
  },
})

-- Working with multiple files
utils.set_maps({
  { mode = "n", lhs = "<LocalLeader>sp", rhs = "<C-w>ws", desc = "" },
  { mode = "n", lhs = "<LocalLeader>vsp", rhs = "<C-w>wv", desc = "" },
  { mode = "n", lhs = "<LocalLeader>wq", rhs = "<C-w>wq", desc = "" },
})

utils.set_maps({
  { mode = "n", lhs = "<LocalLeader><Right>", rhs = "<Cmd>bn<Cr>", desc = "Next buffer" },
  { mode = "n", lhs = "<LocalLeader><Left>", rhs = "<Cmd>bp<Cr>", desc = "Previous buffer" },
  { mode = "n", lhs = "<LocalLeader>bd", rhs = "<Cmd>bd<Cr>", desc = "Delete actual buffer" },
})

-- ------------------------------ --
-- Neo Tree                       --
-- ------------------------------ --

utils.set_map("n", "<LocalLeader>e", "<Cmd>Neotree toggle right<Cr>", "Open/Close Neotree")

-- ------------------------------ --
-- Lsp                            --
-- ------------------------------ --

utils.set_map("n", "<LocalLeader>lf", function()
  vim.lsp.buf.format({ async = false, timeout_ms = 3000 })
end, "Format file")
