---@type LazySpec
return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    signature = { enabled = true },
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
  },
  opts_extend = { "sources.default" },
}
