-- Remap j and k to move down visual lines for soft-wrapped text
vim.keymap.set({ 'n', 'v' }, 'j', 'gj', { buffer = true, desc = 'Move down visual line' })
vim.keymap.set({ 'n', 'v' }, 'k', 'gk', { buffer = true, desc = 'Move up visual line' })
