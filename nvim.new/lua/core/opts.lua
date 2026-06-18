-- Set <space> as the leader key
-- Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Interface
vim.opt.number = true
vim.opt.relativenumber = true

-- Indenting and stuff
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.mouse = 'nv'

-- Save undo history
vim.opt.undofile = true

