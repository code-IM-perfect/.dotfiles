vim.pack.add { { src = _G.gh 'neovim/nvim-lspconfig' } }

-- Stuff to set up on LspAttach (some keybinds and highlight-on-hold [for now :P])
require 'plugins.core.lsp.lspattach'
-- Progress info for LSP stuff
require 'plugins.core.lsp.fidget'
