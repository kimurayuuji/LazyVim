---@type LazySpec
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  keys = {
    {
      "<leader>ut",
      function()
        local tn = require("tokyonight")
        local config = require("tokyonight.config")
        local new_transparent = not config.options.transparent
        tn.setup({
          transparent = new_transparent,
          styles = {
            sidebars = new_transparent and "transparent" or "dark",
            floats = new_transparent and "transparent" or "dark",
          },
        })
        vim.cmd("colorscheme tokyonight")
      end,
      desc = "Toggle Transparency",
    },
  },
  ---@module 'tokyonight'
  ---@type tokyonight.Config
  opts = {
    on_colors = function() end,
    on_highlights = function(hl, c)
      hl.LineNr = { fg = c.comment }
      hl.CursorLineNr = { fg = c.orange, bold = true }
      if require("tokyonight.config").options.transparent then
        hl.Normal = { bg = c.none }
        hl.NormalNC = { bg = c.none }
        hl.NormalSB = { bg = c.none }
      end
      hl.WinSeparator = {
        fg = c.fg_float,
        bold = true,
      }
    end,
    transparent = true,
    styles = {
      sidebars = "transparent", -- style for sidebars, see below
      floats = "transparent", -- style for floating windows
    },
  },
}
