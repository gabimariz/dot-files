-- ============================== --
-- ~~~ NEOVIM CONFIGS         ~~~ --
-- ============================== --

-- ------------------------------ --
-- Variables                      --
-- ------------------------------ --

local g = vim.g
local opt = vim.opt

-- ------------------------------ --
-- Set Leaders                    --
-- ------------------------------ --

g.mapleader = " "
g.maplocalleader = ";"

-- ------------------------------ --
-- Line Numbers                   --
-- ------------------------------ --

opt.number = true
opt.relativenumber = true

-- ------------------------------ --
-- Tab Indent                     --
-- ------------------------------ --

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- ------------------------------ --
-- Search                         --
-- ------------------------------ --

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- ------------------------------ --
-- Interface                      --
-- ------------------------------ --

opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"

-- ------------------------------ --
-- Miscellaneous                  --
-- ------------------------------ --

opt.clipboard = "unnamedplus"
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.swapfile = false
opt.backup = false
opt.undofile = false

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.termguicolors = true
