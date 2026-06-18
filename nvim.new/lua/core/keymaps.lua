-- Quick testing (nvim/lua only tho)
vim.keymap.set("n", "<space><space>re", "<cmd>restart<CR>")
vim.keymap.set("n", "<space>x", ".lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- move selected text regions
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Yank to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- <C-Backspace> to delete word (in insert mode)
vim.keymap.set('i', '<C-Backspace>', '<C-w>')

