require("mini.ai").setup({
  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Main textobject prefixes
    around = 'a',
    inside = 'i',

    -- Next/last variants
    -- NOTE: This (deliberately) overrides Neovim>=0.12 built-in incremental
    -- selection mappings. See [`:h MiniAi-default-an-in`](../doc/mini-ai.qmd#miniai-default-an-in) for more details.
    around_next = 'aa',
    inside_next = 'ii',
    around_last = 'al',
    inside_last = 'il',

    -- Move cursor to corresponding edge of `a` textobject
    goto_left = 'g[',
    goto_right = 'g]',
  },

  -- Number of lines within which textobject is searched
  n_lines = 100,

  -- How to search for object (first inside current line, then inside
  -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
  -- 'cover_or_nearest', 'next', 'previous', 'nearest'.
  search_method = 'cover_or_next',

  silent = false,
})

-- TODO: explore all the options
