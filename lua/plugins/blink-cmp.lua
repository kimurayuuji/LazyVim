return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    signature = { enabled = true },
    completion = {
      ghost_text = { enabled = false },
      menu = { auto_show = false },
    },
    keymap = {
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<Esc>"] = { "cancel", "fallback" },
      -- ["<Tab>"] = { "accept", "fallback" },
    },

    cmdline = {
      completion = {
        ghost_text = { enabled = true },
        menu = { auto_show = false },
      },
      keymap = {
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<Esc>"] = { "cancel", "fallback" },
        -- ["<Tab>"] = { "accept", "fallback" },
      },
    },
    sources = {
      -- add lazydev to your completion providers
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
      },
    },
  },
  opts_extend = { "sources.default" },
}
