vim.pack.add { _G.gh 'saghen/blink.lib', _G.gh 'saghen/blink.cmp' }

local cmp = require 'blink.cmp'

cmp.build():pwait()
cmp.setup {
  keymap = {
    preset = 'default',
  },

  appearance = {
    -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    -- Adjusts spacing to ensure icons are aligned
    nerd_font_variant = 'mono',
  },

  completion = {
    documentation = { auto_show = false, auto_show_delay_ms = 500 },
  },

  -- (Default) list of enabled providers defined so that you can extend it
  -- elsewhere in your config, without redefining it, due to `opts_extend`
  sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
  snippets = { preset = 'luasnip' },

  -- Shows a signature help window while you type arguments for a function
  signature = { enabled = true },

  -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
  fuzzy = { implementation = 'prefer_rust_with_warning' },
}
