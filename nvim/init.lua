vim.loader.enable()

print 'nyaa'
------------------
--  Interface   --
------------------
require 'core.opts'

------------------
--   Keymaps    --
------------------
require 'core.keymaps'

------------------
-- Autocommands --
------------------
require 'core.autocommands'

------------------
--   Plugins    --
------------------
-- require("config.lazy")
require 'core.vim_pack'
