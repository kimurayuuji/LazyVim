---@type LazySpec
return {
  {
    "mrjones2014/smart-splits.nvim",
    event = "VeryLazy", -- ← キー押下での初回ロードを避け、起動完了後にロード
    -- version = false,   -- ← 一旦最新に。固定が必要なら後で戻す
    opts = {
      default_amount = 1,
    },
    keys = {
      { "<C-w>h",  vim.schedule_wrap(function() require("smart-splits").move_cursor_left() end),                     desc = "Move left" },
      { "<C-w>j",  vim.schedule_wrap(function() require("smart-splits").move_cursor_down() end),                     desc = "Move down" },
      { "<C-w>k",  vim.schedule_wrap(function() require("smart-splits").move_cursor_up() end),                       desc = "Move up" },
      { "<C-w>l",  vim.schedule_wrap(function() require("smart-splits").move_cursor_right() end),                    desc = "Move right" },
      { "<M-h>",   vim.schedule_wrap(function() require("smart-splits").resize_left() end),                          desc = "Resize left" },
      { "<M-j>",   vim.schedule_wrap(function() require("smart-splits").resize_down() end),                          desc = "Resize down" },
      { "<M-k>",   vim.schedule_wrap(function() require("smart-splits").resize_up() end),                            desc = "Resize up" },
      { "<M-l>",   vim.schedule_wrap(function() require("smart-splits").resize_right() end),                         desc = "Resize right" },
      { "<C-M-h>", vim.schedule_wrap(function() require("smart-splits").swap_buf_left({ move_cursor = true }) end),  desc = "Swap left" },
      { "<C-M-j>", vim.schedule_wrap(function() require("smart-splits").swap_buf_down({ move_cursor = true }) end),  desc = "Swap down" },
      { "<C-M-k>", vim.schedule_wrap(function() require("smart-splits").swap_buf_up({ move_cursor = true }) end),    desc = "Swap up" },
      { "<C-M-l>", vim.schedule_wrap(function() require("smart-splits").swap_buf_right({ move_cursor = true }) end), desc = "Swap right" },
    },
  },
}
