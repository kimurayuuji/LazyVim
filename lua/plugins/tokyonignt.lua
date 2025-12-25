---@type LazySpec
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  ---@module 'tokyonight'
  ---@type tokyonight.Config
  opts = {
    on_colors = function() end,
    on_highlights = function(hl, c)
      hl.Normal = { bg = c.none }
      hl.NormalNC = { bg = c.none }
      hl.NormalSB = { bg = c.none }
    end,
    transparent = true,
    styles = {
      sidebars = "transparent", -- style for sidebars, see below
      floats = "transparent", -- style for floating windows
    },
  },
}
