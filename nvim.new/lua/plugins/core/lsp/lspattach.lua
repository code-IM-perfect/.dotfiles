--  This function gets run when an LSP attaches to a particular buffer.
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('when-lsp-attach', { clear = true }),
  callback = function(event)

    -- helper func to define keybinds
    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    -- Rename the variable under your cursor. (lsp dependent, but mostly across files too)
    map('grn', vim.lsp.buf.rename, '[R]e[n]ame')

    -- Goto Declaration (not Definition!)
    map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

    -- Execute a code action, usually your cursor needs to be on top of an error
    -- or a suggestion from your LSP for this to activate.
    map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })
})
