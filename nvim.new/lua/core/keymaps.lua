-- Quick testing (nvim/lua only tho)
vim.keymap.set("n", "<space><space>re", "<cmd>restart<CR>")
vim.keymap.set("n", "<space>x", ".lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- move selected text regions
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Open netrw on dir containing current buffer and move focus to it
vim.keymap.set('n', '<leader>pv', function()
    local current_file = vim.fn.expand '%:t'
    vim.cmd.Ex()
    vim.fn.search('^' .. current_file .. '$')
  end, { desc = 'Open Netrw with directory around current file' }
)

-- Yank to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- Some more convenience binds
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" }) -- idk if I'll use it tho lol

-- <C-Backspace> to delete word (in insert mode)
vim.keymap.set('i', '<C-Backspace>', '<C-w>')

