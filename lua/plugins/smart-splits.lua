---@type LazySpec
return {
  {
    "mrjones2014/smart-splits.nvim",
    version = "v2.0.5",
    keys = {
      {
        "<C-w>h",
        function()
          require("smart-splits").move_cursor_left()
        end,
        desc = "Move cursor left",
      },
      {
        "<C-w>j",
        function()
          require("smart-splits").move_cursor_down()
        end,
        desc = "Move cursor down",
      },
      {
        "<C-w>k",
        function()
          require("smart-splits").move_cursor_up()
        end,
        desc = "Move cursor up",
      },
      {
        "<C-w>l",
        function()
          require("smart-splits").move_cursor_right()
        end,
        desc = "Move cursor right",
      },
      {
        "<M-h>",
        function()
          require("smart-splits").resize_left()
        end,
        desc = "Resize left",
      },
      {
        "<M-j>",
        function()
          require("smart-splits").resize_down()
        end,
        desc = "Resize down",
      },
      {
        "<M-k>",
        function()
          require("smart-splits").resize_up()
        end,
        desc = "Resize up",
      },
      {
        "<M-l>",
        function()
          require("smart-splits").resize_right()
        end,
        desc = "Resize right",
      },
      {
        "<C-M-h>",
        function()
          require("smart-splits").swap_buf_left({ move_cursor = true })
        end,
        desc = "Swap left",
      },
      {
        "<C-M-j>",
        function()
          require("smart-splits").swap_buf_down({ move_cursor = true })
        end,
        desc = "Swap down",
      },
      {
        "<C-M-k>",
        function()
          require("smart-splits").swap_buf_up({ move_cursor = true })
        end,
        desc = "Swap up",
      },
      {
        "<C-M-l>",
        function()
          require("smart-splits").swap_buf_right({ move_cursor = true })
        end,
        desc = "Swap right",
      },
    },
    ----@module 'smart-splits'
    ----@type SmartSplitsConfig
    opts = {
      default_amount = 1,
    },
  },
}
