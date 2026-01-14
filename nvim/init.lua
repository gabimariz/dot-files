-- ============================== --
-- ~~~ NEOVIM STARTUP         ~~~ --
-- ============================== --

-- ------------------------------ --
-- NeoVim Settings
-- ------------------------------ --

require("core.configs")
require("core.autocmd")
-- ------------------------------ --
-- Lazy Startup                   --
-- ------------------------------ --
require("core.plugins")

-- ------------------------------ --
-- NeoVim Post Settings                --
-- ------------------------------ --
require("core.keymaps")
require("core.theme")
