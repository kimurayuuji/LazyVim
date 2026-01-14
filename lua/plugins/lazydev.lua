---@type LazySpec
return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        "lazy.nvim",
        "snacks.nvim",
      },
    },
  },
}
