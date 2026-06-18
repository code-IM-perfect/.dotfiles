-- Quick testing (nvim/lua only tho)
vim.keymap.set("n", "<space><space>re", "<cmd>restart<CR>")
vim.keymap.set("n", "<space>x", ".lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- move selected text regions
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

