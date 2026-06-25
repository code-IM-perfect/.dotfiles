_G.gh = function(repo)
  return 'https://github.com/' .. repo
end

require 'plugins.theme.tokyonight'
require 'plugins.core.treesitter'

vim.pack.add { _G.gh 'nvim-mini/mini.nvim' }

require 'plugins.interface.mini_statusline'

require 'plugins.editor.mini_ai'
require 'plugins.editor.mini_pairs'
require 'plugins.editor.guess_indent'

do
  vim.api.nvim_create_autocmd('PackChanged', {
    callback = function(ev)
      local name = ev.data.spec.name
      local kind = ev.data.kind
      if kind ~= 'install' and kind ~= 'update' then
        return
      end

      if name == 'nvim-treesitter' then
        if not ev.data.active then
          vim.cmd.packadd 'nvim-treesitter'
        end
        vim.cmd 'TSUpdate'
        return
      end
    end,
  })
end
