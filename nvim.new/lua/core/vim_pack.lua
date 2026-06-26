_G.gh = function(repo) return 'https://github.com/' .. repo end

require 'plugins.theme'
require 'plugins.core.treesitter'

vim.pack.add { _G.gh 'nvim-mini/mini.nvim' }

require 'plugins.interface'

require 'plugins.core.lspconfig'

require 'plugins.editor'

do
  vim.api.nvim_create_autocmd('PackChanged', {
    callback = function(ev)
      local name = ev.data.spec.name
      local kind = ev.data.kind
      if kind ~= 'install' and kind ~= 'update' then return end

      if name == 'nvim-treesitter' then
        if not ev.data.active then vim.cmd.packadd 'nvim-treesitter' end
        vim.cmd 'TSUpdate'
        return
      end
    end,
  })
end
