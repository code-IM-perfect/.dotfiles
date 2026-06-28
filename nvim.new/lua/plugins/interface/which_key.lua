vim.pack.add { gh 'folke/which-key.nvim' }

require('which-key').setup {
  -- Delay between pressing a key and opening which-key (milliseconds)
  delay = 0,
  icons = { mappings = vim.g.have_nerd_font },
}
