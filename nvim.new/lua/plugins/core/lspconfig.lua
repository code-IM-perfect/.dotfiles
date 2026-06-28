vim.pack.add { { src = gh 'neovim/nvim-lspconfig' } }

-- Progress info for LSP stuff
require 'plugins.core.lsp.fidget'
-- Stuff to set up on LspAttach (some keybinds and highlight-on-hold [for now :P])
require 'plugins.core.lsp.lspattach'
-- Community maintained recommended setup for lua_ls (so I don't have to)
require 'plugins.core.lsp.lazydev'

vim.lsp.config('lua_ls', {
  on_init = function(client)
    client.server_capabilities.documentFormattingProvider = false -- Disable formatting (formatting is done by stylua)
  end,
  settings = {
    Lua = {
      format = { enable = false }, -- Disable formatting (formatting is done by stylua)
    },
  },
})

vim.lsp.enable 'stylua' -- no need to add it to conform btw
vim.lsp.enable 'lua_ls'
